MEMORY
{
  /* 256K limit for now, even though the '20A has 1M */
  FLASH (rx) : ORIGIN = 0x00000000, LENGTH = 0x00040000
  /* 128K limit, even though the '20A has 256K */
  RAM (rwx) : ORIGIN = 0x20000000, LENGTH = 0x0002000
}
