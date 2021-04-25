function init() {
    var checkboxes = document.getElementsByTagName('input');
    for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].addEventListener('click', toggleColor, false);
    }
}
function toggleColor() {
    var device = this.value;
    switch (device) {
        case 'religion': {
        var religion = document.querySelectorAll('.religion');
        for (var i = 0; i < religion.length; i++) {
            religion[i].classList.toggle('on');
        };
        };
        break;
        case 'economy': {
        var economy = document.querySelectorAll('.economy');
        for (var i = 0; i < economy.length; i++) {
            economy[i].classList.toggle('on');
            
        };
        };
        break;
        case 'foreign': {
        var foreign = document.querySelectorAll('.foreign');
        for (var i = 0; i < foreign.length; i++) {
            foreign[i].classList.toggle('on');
        };
        };
        break;
        case 'slavery': {
        var slavery = document.querySelectorAll('.slavery');
        for (var i = 0; i < slavery.length; i++) {
            slavery[i].classList.toggle('on');
        };
        };
        break;
        case 'civil': {
        var civil = document.querySelectorAll('.civil');
        for (var i = 0; i < civil.length; i++) {
            civil[i].classList.toggle('on');
        };
        };
        break;
        case 'govt': {
        var govt = document.querySelectorAll('.govt');
        for (var i = 0; i < govt.length; i++) {
            govt[i].classList.toggle('on');
        };
        };       
        break;
    }
}

window.onload = init;