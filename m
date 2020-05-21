From: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH 1/2] PCI: rockchip: Enable IO base and limit registers
Date: Thu, 21 May 2020 10:49:21 +0530
Message-ID: <CANAwSgStorF2HwcTYFC6Q6NzZtYq9qL-LLwq9ZU10oTgXVe9aw@mail.gmail.com>
References: <1590023130-137406-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <1590023130-137406-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-pci-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, Simon Xue <xxm@rock-chips.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 21 May 2020 at 06:35, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> According to RK3399 user manual, bit 9 in PCIE_RC_BAR_CONF should
> be set, otherwise accessing to IO base and limit registers would
> fail.
>
> [    0.411318] pci_bus 0000:00: root bus resource [bus 00-1f]
> [    0.411822] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfbdfffff]
> [    0.412440] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0xfbe00000-0xfbefffff])
> [    0.413665] pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> [    0.414698] pci 0000:01:00.0: reg 0x10: initial BAR value 0x00000000 invalid
> [    0.415412] pci 0000:01:00.0: reg 0x18: initial BAR value 0x00000000 invalid
> [    0.418456] pci 0000:00:00.0: BAR 8: assigned [mem 0xfa000000-0xfa0fffff]
> [    0.419065] pci 0000:01:00.0: BAR 1: assigned [mem 0xfa000000-0xfa007fff pref]
> [    0.419728] pci 0000:01:00.0: BAR 6: assigned [mem 0xfa008000-0xfa00ffff pref]
> [    0.420377] pci 0000:01:00.0: BAR 0: no space for [io  size 0x0100]
> [    0.420935] pci 0000:01:00.0: BAR 0: failed to assign [io  size 0x0100]
> [    0.421526] pci 0000:01:00.0: BAR 2: no space for [io  size 0x0004]
> [    0.422084] pci 0000:01:00.0: BAR 2: failed to assign [io  size 0x0004]
> [    0.422687] pci 0000:00:00.0: PCI bridge to [bus 01]
> [    0.423135] pci 0000:00:00.0:   bridge window [mem 0xfa000000-0xfa0fffff]
> [    0.423794] pcieport 0000:00:00.0: enabling device (0000 -> 0002)
> [    0.424566] pcieport 0000:00:00.0: Signaling PME through PCIe PME interrupt
> [    0.425182] pci 0000:01:00.0: Signaling PME through PCIe PME interrupt
>
> 01:00.0 Class 0700: Device 1c00:3853 (rev 10) (prog-if 05)
>         Subsystem: Device 1c00:3853
>         Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
>         Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
>         Interrupt: pin A routed to IRQ 230
>         Region 0: I/O ports at <unassigned> [disabled]
>         Region 1: Memory at fa000000 (32-bit, prefetchable) [disabled] [size=32K]
>         Region 2: I/O ports at <unassigned> [disabled]
>         [virtual] Expansion ROM at fa008000 [disabled] [size=32K]
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
>  drivers/pci/controller/pcie-rockchip.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index c53d132..f82452b 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c
> @@ -407,8 +407,11 @@ void rockchip_pcie_cfg_configuration_accesses(
>  {
>         u32 ob_desc_0;
>
> -       /* Configuration Accesses for region 0 */
> -       rockchip_pcie_write(rockchip, 0x0, PCIE_RC_BAR_CONF);
> +       /*
> +        * Configuration Accesses for region 0.
> +        * Bit 9 is for enabling IO base and limit registers.
> +        */
> +       rockchip_pcie_write(rockchip, BIT(9), PCIE_RC_BAR_CONF);
>
>         rockchip_pcie_write(rockchip,
>                             (RC_REGION_0_ADDR_TRANS_L + RC_REGION_0_PASS_BITS),
> --
> 2.7.4
>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
