function remove_tasks(link) {
  var inputs = document.getElementsByTagName('input');
  for(var i = 0; i < inputs.length; i++) {
    if(inputs[i].type.toLowerCase() == 'hidden') {
      inputs[i].value = 1;
    }
  }
  link.parentNode.style.display = 'none';
}

function add_tasks(link) {
  var new_id = new Date().getTime();
  var li = document.createElement("li");
  var label = document.createElement("LABEL");
  var textField = document.createElement("input");
  var hidden_field = document.createElement("input");
  var removeLink = document.createElement("a");
  var statusLabel = document.createElement("LABEL");
  var statusSelector = document.createElement("select");
  statusLabel.innerHTML = "Status";
  label.innerHTML = "Description";
  textField.name = "project[tasks_attributes]["+new_id+"][description]";
  textField.id = "project_tasks_description_" +  new_id;
  hidden_field.name = "project[tasks_attributes]["+new_id+"][_destroy]";
  hidden_field.type = "hidden";
  hidden_field.id = "project_tasks__destroy_"+ new_id;
  hidden_field.value = "false";
  statusSelector.name = "project[tasks_attributes]["+new_id+"][status]";
  statusSelector.id = "project_tasks_status_" +  new_id;
  
  removeLink.onclick = function() {
    remove_fields(this);
  };
  removeLink.href = "#";
  removeLink.innerHTML = "remove";
  li.appendChild(label);
  li.appendChild(textField);
  li.appendChild(statusLabel);
  li.appendChild(statusSelector);
  li.appendChild(hidden_field);
  li.appendChild(removeLink);
  document.getElementById("tasks").appendChild(li);


}
