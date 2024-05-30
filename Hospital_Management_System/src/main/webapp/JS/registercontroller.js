
function alertTest(){
var heading=document.getElementById('response')
heading.innerHTML='Register SuccessFully !!!'
heading.style.color='green'
heading.style.fontSize='1.1rem'
heading.style.fontFamily='Inria Serif-Regular' 
heading.style.fontWeight='800' 
heading.style.letterSpacing='normal' 
heading.style.textAlign='center' 
setTimeout(()=>{document.getElementById('response').innerHTML='' 
},2400)
}