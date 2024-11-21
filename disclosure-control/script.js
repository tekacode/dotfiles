document.addEventListener("DOMContentLoaded", function () {
  const contextMenu = document.getElementById("contextMenu");
  const menuList = document.getElementById("menuList");
  let currentCell = null;

  document.querySelectorAll("#dataTable td").forEach((cell) => {
    cell.addEventListener("contextmenu", function (event) {
      event.preventDefault();
      currentCell = event.target;
      updateContextMenu();
      showContextMenu(event.pageX, event.pageY);
    });
  });

  function updateContextMenu() {
    // Clear previous content options
    menuList.innerHTML = '';

    // Add 'Hide Cell' option
    const hideOption = document.createElement('li');
    hideOption.textContent = 'Hide Cell';
    hideOption.addEventListener('click', function () {
      if (currentCell) {
        currentCell.classList.add('hidden');
        hideContextMenu();
      }
    });
    menuList.appendChild(hideOption);

    // Add 'Show Cell' option
    const showOption = document.createElement('li');
    showOption.textContent = 'Show Cell';
    showOption.addEventListener('click', function () {
      if (currentCell) {
        currentCell.classList.remove('hidden');
        hideContextMenu();
      }
    });
    menuList.appendChild(showOption);

    // Add dynamic content option
    const contentOption = document.createElement('li');
    contentOption.textContent = `Cell Content: ${currentCell.textContent}`;
    contentOption.addEventListener('click', function () {
      alert(currentCell.textContent); // Replace with your desired action
      hideContextMenu();
    });
    menuList.appendChild(contentOption);
  }

  document.addEventListener("click", function () {
    hideContextMenu();
  });

  function showContextMenu(x, y) {
    contextMenu.style.left = `${x}px`;
    contextMenu.style.top = `${y}px`;
    contextMenu.style.display = "block";
  }

  function hideContextMenu() {
    contextMenu.style.display = "none";
  }
});
