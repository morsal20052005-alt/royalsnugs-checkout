<!-- ROYAL SNUGGLES: keep checkout visible on mobile; paste AFTER original cart HTML in SAME embed. -->
<style>
#rs-cart.rs-cart{
  position:fixed!important;top:0!important;right:0!important;bottom:0!important;
  height:100dvh!important;max-height:100dvh!important;
  width:min(100%,455px)!important;display:flex!important;flex-direction:column!important;
  overflow:hidden!important;background:#fff;z-index:99999!important;
}
#rs-cart .rs-cart-head{flex:0 0 auto!important;padding:12px 16px!important}
#rs-cart .rs-cart-head h2{font-size:20px!important}
#rs-cart .rs-cart-items{
  flex:1 1 auto!important;min-height:0!important;max-height:none!important;
  overflow-y:auto!important;padding:8px 14px!important;
}
#rs-cart .rs-cartitem{padding:8px 0!important;gap:10px!important}
#rs-cart .rs-cartitem img{height:68px!important;width:59px!important;object-fit:contain!important}
#rs-cart .rs-cart-footer{
  flex:0 0 auto!important;overflow:visible!important;
  padding:10px 16px max(12px,env(safe-area-inset-bottom))!important;
  background:#fff!important;box-shadow:0 -5px 22px #32103b18;
}
#rs-cart .rs-cart-footer h3{display:none!important}
#rs-cart .rs-summary{padding:6px 0 10px!important}
#rs-cart .rs-checkout{display:block!important;width:100%!important;min-height:52px!important;padding:12px!important;font-size:15px!important}
#rs-cart .rs-checkout-note,#rs-cart .rs-demo{display:none!important}
#rs-shade.rs-shade{z-index:99998!important}
@media(max-width:600px){
 #rs-cart.rs-cart{left:0!important;right:0!important;width:100%!important}
}
</style>
<script>
(function(){
  var cart=document.getElementById('rs-cart');if(!cart)return;
  function reveal(){
    if(!cart.classList.contains('open'))return;
    // Square embeds can scroll independently. Jump the EMBED content to its top.
    window.scrollTo(0,0);
    cart.scrollTop=0;
    var itemList=cart.querySelector('.rs-cart-items');if(itemList)itemList.scrollTop=0;
  }
  var observer=new MutationObserver(reveal);
  observer.observe(cart,{attributes:true,attributeFilter:['class']});
  if(cart.classList.contains('open'))reveal();
})();
</script>
