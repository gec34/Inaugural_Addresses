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
        case 'military': {
        var military = document.querySelectorAll('.military');
        for (var i = 0; i < military.length; i++) {
            military[i].classList.toggle('on');
        };
        };
        break;
        case 'civil_rights': {
        var civil_rights = document.querySelectorAll('.civil_rights');
        for (var i = 0; i < civil_rights.length; i++) {
            civil_rights[i].classList.toggle('on');
        };
        };
        break;
        case 'government': {
        var government = document.querySelectorAll('.government');
        for (var i = 0; i < government.length; i++) {
            government[i].classList.toggle('on');
        };
        };       
        break;
    }
}

window.onload = init;