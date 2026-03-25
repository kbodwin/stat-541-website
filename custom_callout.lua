local ci = pandoc.Header(2, "Check In")

function Callout(callout)
  -- do something with the callout
  -- callout.type = "check-in"

  return callout
  -- note that custom AST nodes are passed by reference. You can
  -- return the value if you choose, but you do not need to.
end

--local iconex = image.new(images/icons/example.png)

function Div(el)
    if el.classes:includes('callout-example') then
      local content = el.content
      local callout = quarto.Callout(
        {title="Example", type="example", content=content, appearance="default"}
      )
      return callout
    end
    
    if el.classes:includes('callout-check-in') then
      local content = el.content
      local callout = quarto.Callout(
        {title="Check In", type="check-in", content=content, appearance="default"}
      )
      return callout
    end
    
    if el.classes:includes('callout-required-reading') then
      local content = el.content
      local callout = quarto.Callout(
        {title="Required Reading", type="required-reading", content=content, appearance="default"}
      )
      return callout
    end
    
    if el.classes:includes('callout-required-video') then
      local content = el.content
      local callout = quarto.Callout(
        {title="Required Video", type="required-video", content=content, appearance="default"}
      )
      return callout
    end
    
    if el.classes:includes('callout-practice-exercise') then
      local content = el.content
      local callout = quarto.Callout(
        {title="Practice Exercise", type="practice-exercise", content=content, appearance="default"}
      )
      return callout
    end
    
    if el.classes:includes('callout-opinion') then
      local content = el.content
      local callout = quarto.Callout(
        {title="Just our opinion...", type="opinion", content=content, appearance="default"}
      )
      return callout
    end
    
    if el.classes:includes('callout-learn-more') then
      local content = el.content
      local callout = quarto.Callout(
        {title="Learn More", type="learn-more", content=content, appearance="default"}
      )
      return callout
    end
    
end 
