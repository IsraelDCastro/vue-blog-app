export function useGetAttribute(id) {
  const domElement = document.getElementById(id);
  const attributes = domElement?.attributes ?? [];
  const dynamicAttributes = Array.from(attributes)
    .filter((attr) => attr.name.startsWith("data-"))
    .reduce((obj, attr) => ({ ...obj, [attr.name]: attr.value }), {});

  return {
    id,
    domElement,
    dynamicAttributes
  };
}
