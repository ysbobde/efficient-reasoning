import re

def extract_from_boxed(text):
    """Extract content from \boxed{} LaTeX commands."""
    boxed_pattern = r"\\boxed\{(.*?)\}"
    matches = re.findall(boxed_pattern, text)
    if matches:
        return matches[0].strip()
    return text

# Function to use in your script
def extract_and_normalize(text):
    """Extract from boxed, then normalize to standard True/False format."""
    extracted = extract_from_boxed(text)
    if extracted.lower() in ['true', 'yes', '1']:
        return "True"
    elif extracted.lower() in ['false', 'no', '0']:
        return "False"
    return extracted