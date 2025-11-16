// Minimal placeholder JS to prevent 404 HTML fallback and to resume AudioContext on user gesture.
(function(){
  // Try to resume any suspended AudioContext after a user gesture.
  function resumeAudio(){
    try{
      var Ctx = window.AudioContext || window.webkitAudioContext;
      if(!Ctx) return;
      // If any audio context exists on window, try to resume it.
      if(window.audioContext && window.audioContext.state === 'suspended'){
        window.audioContext.resume().catch(function(){});
      } else {
        // Create a short-lived context and resume it to satisfy autoplay restrictions.
        var ctx = new Ctx();
        if(ctx.state === 'suspended') ctx.resume().catch(function(){});
        // keep a reference so GC doesn't immediately collect it
        window.__resumeAudioCtx = ctx;
      }
    }catch(e){}
  }
  document.addEventListener('click', resumeAudio, {once:true, passive:true});
  document.addEventListener('keydown', resumeAudio, {once:true, passive:true});
})();
