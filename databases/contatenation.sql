select NAME,
STREET_ADDRESS || ' ' || city || ', ' || STATE || ' ' || ZIP as ZIP_ADDRESS

from CUSTOMER;