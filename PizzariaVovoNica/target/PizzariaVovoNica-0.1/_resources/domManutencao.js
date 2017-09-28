function main() {
  var btnNovo = document.querySelector("#novo");
  var cancelaNovo = document.querySelector("#cancelanovo");
  var cancelaEditar = document.querySelector("#cancelaeditar");

  cancelaEditar.addEventListener("click", editarCancela);
  btnNovo.addEventListener("click", abrirNovo);
  cancelaNovo.addEventListener("click", novoCancela);
}

function abrirNovo() {
  document.querySelector("#nevoa").style.display = "block";
  document.querySelector("#janelanovo").style.display = "block";
}

function abrirEditar(form) {
  inputs = [];
  inputs = document.querySelectorAll(".inputseditar");
  var select = document.querySelector("#selecteditar");
  var optionBacon = document.createElement("option");
  var optionCalabresa = document.createElement("option");
  var optionFrango = document.createElement("option");
  var optionLombo = document.createElement("option");
  var optionVegetais = document.createElement("option");
  var optionFrutos = document.createElement("option");
  var optionPresunto = document.createElement("option");
  var optionQueijo = document.createElement("option");
  var optionEspeciais = document.createElement("option");
  var optionDoces = document.createElement("option");
  var optionPromo = document.createElement("option");
  optionBacon.innerHTML = "Bacon";
  optionBacon.setAttribute("value", "BACON");
  optionCalabresa.innerHTML = "Calabresa";
  optionCalabresa.setAttribute("value", "CALABRESA");
  optionFrango.innerHTML = "Frango";
  optionFrango.setAttribute("value", "FRANGO");
  optionLombo.innerHTML = "Lombo";
  optionLombo.setAttribute("value", "LOMBO");
  optionVegetais.innerHTML = "Vegetais";
  optionVegetais.setAttribute("value", "VEGETAIS");
  optionFrutos.innerHTML = "Frutos";
  optionFrutos.setAttribute("value", "FRUTOS");
  optionPresunto.innerHTML = "Presunto";
  optionPresunto.setAttribute("value", "PRESUNTO");
  optionQueijo.innerHTML = "Queijo";
  optionQueijo.setAttribute("value", "QUEIJO");
  optionEspeciais.innerHTML = "Especiais";
  optionEspeciais.setAttribute("value", "ESPECIAIS");
  optionDoces.innerHTML = "Pizzas Doces";
  optionDoces.setAttribute("value", "DOCES");
  optionPromo.innerHTML = "Promoção";
  optionPromo.setAttribute("value", "PROMOCAO");

  for (var i = 0; i < inputs.length; i++) {
    inputs[i].value = form[i].value;
  }
  if (form[4].value == 'BACON') {
    select.appendChild(optionBacon);
    select.appendChild(optionCalabresa);
    select.appendChild(optionFrango);
    select.appendChild(optionLombo);
    select.appendChild(optionVegetais);
    select.appendChild(optionFrutos);
    select.appendChild(optionPresunto);
    select.appendChild(optionQueijo);
    select.appendChild(optionEspeciais);
    select.appendChild(optionDoces);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'CALABRESA') {
    select.appendChild(optionCalabresa);
    select.appendChild(optionBacon);
    select.appendChild(optionFrango);
    select.appendChild(optionLombo);
    select.appendChild(optionVegetais);
    select.appendChild(optionFrutos);
    select.appendChild(optionPresunto);
    select.appendChild(optionQueijo);
    select.appendChild(optionEspeciais);
    select.appendChild(optionDoces);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'FRANGO') {
    select.appendChild(optionFrango);
    select.appendChild(optionCalabresa);
    select.appendChild(optionBacon);
    select.appendChild(optionLombo);
    select.appendChild(optionVegetais);
    select.appendChild(optionFrutos);
    select.appendChild(optionPresunto);
    select.appendChild(optionQueijo);
    select.appendChild(optionEspeciais);
    select.appendChild(optionDoces);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'LOMBO') {
    select.appendChild(optionLombo);
    select.appendChild(optionFrango);
    select.appendChild(optionCalabresa);
    select.appendChild(optionBacon);
    select.appendChild(optionVegetais);
    select.appendChild(optionFrutos);
    select.appendChild(optionPresunto);
    select.appendChild(optionQueijo);
    select.appendChild(optionEspeciais);
    select.appendChild(optionDoces);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'VEGETAIS') {
    select.appendChild(optionVegetais);
    select.appendChild(optionLombo);
    select.appendChild(optionFrango);
    select.appendChild(optionCalabresa);
    select.appendChild(optionBacon);
    select.appendChild(optionFrutos);
    select.appendChild(optionPresunto);
    select.appendChild(optionQueijo);
    select.appendChild(optionEspeciais);
    select.appendChild(optionDoces);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'FRUTOS') {
    select.appendChild(optionFrutos);
    select.appendChild(optionVegetais);
    select.appendChild(optionLombo);
    select.appendChild(optionFrango);
    select.appendChild(optionCalabresa);
    select.appendChild(optionBacon);
    select.appendChild(optionPresunto);
    select.appendChild(optionQueijo);
    select.appendChild(optionEspeciais);
    select.appendChild(optionDoces);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'PRESUNTO') {
    select.appendChild(optionPresunto);
    select.appendChild(optionFrutos);
    select.appendChild(optionVegetais);
    select.appendChild(optionLombo);
    select.appendChild(optionFrango);
    select.appendChild(optionCalabresa);
    select.appendChild(optionBacon);
    select.appendChild(optionQueijo);
    select.appendChild(optionEspeciais);
    select.appendChild(optionDoces);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'QUEIJO') {
    select.appendChild(optionQueijo);
    select.appendChild(optionPresunto);
    select.appendChild(optionFrutos);
    select.appendChild(optionVegetais);
    select.appendChild(optionLombo);
    select.appendChild(optionFrango);
    select.appendChild(optionCalabresa);
    select.appendChild(optionBacon);
    select.appendChild(optionEspeciais);
    select.appendChild(optionDoces);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'ESPECIAIS') {
    select.appendChild(optionEspeciais);
    select.appendChild(optionQueijo);
    select.appendChild(optionPresunto);
    select.appendChild(optionFrutos);
    select.appendChild(optionVegetais);
    select.appendChild(optionLombo);
    select.appendChild(optionFrango);
    select.appendChild(optionCalabresa);
    select.appendChild(optionBacon);
    select.appendChild(optionDoces);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'DOCES') {
    select.appendChild(optionDoces);
    select.appendChild(optionEspeciais);
    select.appendChild(optionQueijo);
    select.appendChild(optionPresunto);
    select.appendChild(optionFrutos);
    select.appendChild(optionVegetais);
    select.appendChild(optionLombo);
    select.appendChild(optionFrango);
    select.appendChild(optionCalabresa);
    select.appendChild(optionBacon);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'PROMOCAO') {
    select.appendChild(optionPromo);
    select.appendChild(optionDoces);
    select.appendChild(optionEspeciais);
    select.appendChild(optionQueijo);
    select.appendChild(optionPresunto);
    select.appendChild(optionFrutos);
    select.appendChild(optionVegetais);
    select.appendChild(optionLombo);
    select.appendChild(optionFrango);
    select.appendChild(optionCalabresa);
    select.appendChild(optionBacon);

  } else {
    select.appendChild(optionBacon);
    select.appendChild(optionCalabresa);
    select.appendChild(optionFrango);
    select.appendChild(optionLombo);
    select.appendChild(optionVegetais);
    select.appendChild(optionFrutos);
    select.appendChild(optionPresunto);
    select.appendChild(optionQueijo);
    select.appendChild(optionEspeciais);
    select.appendChild(optionDoces);
    select.appendChild(optionPromo);
  }

  document.querySelector("#nevoa").style.display = "block";
  document.querySelector("#janelaeditar").style.display = "block";

  return false;
}

function novoCancela() {
  var campos = [];
  campos = document.querySelectorAll(".inputsnovo");
  for (var i = 0; i < campos.length; i++) {
    campos[i].value = '';
  }
  document.querySelector("#nevoa").style.display = "none";
  document.querySelector("#janelanovo").style.display = "none";
}

function editarCancela() {
  var myNode = document.getElementById("selecteditar");
  while (myNode.firstChild) {
    myNode.removeChild(myNode.firstChild);
  }
  document.querySelector("#nevoa").style.display = "none";
  document.querySelector("#janelaeditar").style.display = "none";
}

window.addEventListener("load", main);
