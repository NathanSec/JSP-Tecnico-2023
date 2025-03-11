/**
 * Validação de Formulário
 */
function validar(){
	let modelo = frmSneaker.modelo.value
	let collab = frmSneaker.collab.value
	if(modelo === ""){
		alert('Preencha o campo Modelo')
		frmSneaker.modelo.focus()
		return false
	} else if (collab === ""){
		alert('Preencha o campo Collab')
		frmSneaker.collab.focus()
		return false
	} else{
		document.forms["frmSneaker"].submit()
	}

}