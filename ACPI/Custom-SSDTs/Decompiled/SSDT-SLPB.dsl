/*
 * Attempts to fix Power Button support
 *
 * Source:
 *   https://github.com/midi1996/X2G2-opencore-hackintosh/blob/master/files/ACPI/SSDT-SLPB.aml
 */
DefinitionBlock ("", "SSDT", 2, "Slav", "SLPB", 0x00000000)
{
    External (_SB_.SLPB, DeviceObj)

    Scope (\_SB.SLPB)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0B)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

