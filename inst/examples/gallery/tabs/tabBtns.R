tabBtns <- f7Tab(
  tabName = "FABs",
  icon = f7Icon("circle_grid_hex"),
  active = FALSE,

  # FABS
  f7Fabs(
    position = "right-top",
    color = "yellow",
    sideOpen = "bottom",
    lapply(1:4, function(i) f7Fab(paste0("btn", i), label = i, flag = paste0("btn", i)))
  ),
  lapply(1:4, function(i) textOutput(paste0("res", i))),

  f7Fabs(
    extended = TRUE,
    label = "Menu",
    position = "center-center",
    color = "purple",
    sideOpen = "center",
    lapply(5:8, function(i) f7Fab(inputId = paste0("btn", i), label = i))
  ),
  lapply(5:8, function(i) textOutput(paste0("res", i))),

  f7Fabs(
    position = "left-bottom",
    color = "pink",
    sideOpen = "top",
    lapply(9:12, function(i) f7Fab(paste0("btn", i), label = i, flag = paste0("btn", i)))
  ),
  br(),



  # segments
  f7Segment(
    container = "row",
    f7Button(color = "blue", label = "My button", fill = FALSE),
    f7Button(color = "green", label = "My button", href = "https://www.google.com", fill = FALSE),
    f7Button(color = "yellow", label = "My button", fill = FALSE)
  ),
  f7BlockTitle(title = "Filled Buttons in a segment/rounded container"),
  f7Segment(
    rounded = TRUE,
    container = "segment",
    f7Button(color = "black", label = "Action Button", inputId = "button2"),
    f7Button(color = "green", label = "My button", href = "https://www.google.com"),
    f7Button(color = "yellow", label = "My button")
  ),
  f7BlockTitle(title = "Outline Buttons in a segment/shadow container"),
  f7Segment(
    shadow = TRUE,
    container = "segment",
    f7Button(label = "My button", outline = TRUE, fill = FALSE),
    f7Button(label = "My button", outline = TRUE, fill = FALSE),
    f7Button(label = "My button", outline = TRUE, fill = FALSE)
  ),
  f7BlockTitle(title = "Rounded Buttons in a segment container"),
  f7Segment(
    container = "segment",
    f7Button(color = "blue", label = "My button", rounded = TRUE),
    f7Button(color = "green", label = "My button", rounded = TRUE),
    f7Button(color = "yellow", label = "My button", rounded = TRUE)
  ),
  f7BlockTitle(title = "Buttons of different size in a row container"),
  f7Segment(
    container = "row",
    f7Button(color = "pink", label = "My button", shadow = TRUE),
    f7Button(color = "purple", label = "My button", size = "large", shadow = TRUE),
    f7Button(color = "orange", label = "My button", size = "small", shadow = TRUE)
  ),

  br(), br(),
  f7BlockTitle(title = "Click on the black action button to update the value"),
  textOutput("val"),
  br(), br(),

  # Menus
  f7Button("toggleMenu", "Toggle menu"),
  f7Menu(
    f7MenuDropdown(
      id = "menu1",
      label = "Menu 1",
      f7MenuItem(inputId = "menuItem1", "Item 1"),
      f7MenuItem(inputId = "menuItem2", "Item 2"),
      f7MenuDropdownDivider(),
      f7MenuItem(inputId = "menuItem3", "Item 3")
    )
  )
)
