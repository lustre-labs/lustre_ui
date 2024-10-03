// IMPORTS ---------------------------------------------------------------------

import lustre/attribute.{type Attribute}
import lustre/element.{type Element}
import lustre/element/html

// CONSTANTS -------------------------------------------------------------------

const base_classes = "min-h-8 inline-flex items-center justify-center whitespace-nowrap translate-y-0"

const focus_classes = "focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring"

const active_classes = "active:translate-y-px"

const disabled_classes = "disabled:pointer-events-none disabled:opacity-50"

// ELEMENTS --------------------------------------------------------------------

fn button(
  attributes: List(Attribute(msg)),
  children: List(Element(msg)),
) -> Element(msg) {
  html.button(
    [
      attribute.class(base_classes),
      attribute.class(disabled_classes),
      attribute.class(focus_classes),
      attribute.class(active_classes),
      ..attributes
    ],
    children,
  )
}

pub fn clear(
  attributes: List(Attribute(msg)),
  children: List(Element(msg)),
) -> Element(msg) {
  let colour_classes = "bg-transparent"
  let hover_classes = "hover:bg-w-tint"

  button(
    [
      attribute.class(colour_classes),
      attribute.class(hover_classes),
      ..attributes
    ],
    children,
  )
}

pub fn outline(
  attributes: List(Attribute(msg)),
  children: List(Element(msg)),
) -> Element(msg) {
  let colour_classes = "bg-transparent border border-w-solid"
  let hover_classes = "hover:border-w-solid-subtle"

  button(
    [
      attribute.class(colour_classes),
      attribute.class(hover_classes),
      ..attributes
    ],
    children,
  )
}

pub fn soft(
  attributes: List(Attribute(msg)),
  children: List(Element(msg)),
) -> Element(msg) {
  let colour_classes = "bg-w-tint-subtle"
  let hover_classes = "hover:bg-w-tint"

  button(
    [
      attribute.class(colour_classes),
      attribute.class(hover_classes),
      ..attributes
    ],
    children,
  )
}

pub fn solid(
  attributes: List(Attribute(msg)),
  children: List(Element(msg)),
) -> Element(msg) {
  let colour_classes = "bg-w-solid text-w-solid-text"
  let hover_classes = "hover:bg-w-solid-subtle"

  button(
    [
      attribute.class(colour_classes),
      attribute.class(hover_classes),
      ..attributes
    ],
    children,
  )
}

// ATTRIBUTES ------------------------------------------------------------------
// BORDER RADIUS

pub fn square() -> Attribute(msg) {
  attribute.class("rounded-none")
}

pub fn round() -> Attribute(msg) {
  attribute.class("rounded-w-sm")
}

pub fn pill() -> Attribute(msg) {
  attribute.class("rounded-w-xl")
}

// SIZE

pub fn icon() -> Attribute(msg) {
  attribute.class("size-9")
}

pub fn small() -> Attribute(msg) {
  attribute.class("h-8 px-w-sm")
}

pub fn medium() -> Attribute(msg) {
  attribute.class("h-9 px-w-md py-w-sm")
}

pub fn large() -> Attribute(msg) {
  attribute.class("h-10 px-w-lg")
}

// COLOURS

pub fn base() -> Attribute(msg) {
  attribute.class("base")
}

pub fn primary() -> Attribute(msg) {
  attribute.class("primary")
}

pub fn secondary() -> Attribute(msg) {
  attribute.class("secondary")
}

pub fn success() -> Attribute(msg) {
  attribute.class("success")
}

pub fn warning() -> Attribute(msg) {
  attribute.class("warning")
}

pub fn danger() -> Attribute(msg) {
  attribute.class("danger")
}
