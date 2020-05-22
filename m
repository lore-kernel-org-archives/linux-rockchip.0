From: Anand Moon <linux.amoon@gmail.com>
Subject: =?UTF-8?B?UmU6IFtQQVRDSCAxLzJdIFBDSTogcm9ja2NoaXA6IEVuYWJsZSBJTyBiYXNlIGFuZCBsaQ==?=
        =?UTF-8?B?bWl0IHJlZ2lzdGVyc+OAkOivt+azqOaEj++8jOmCruS7tueUsWxpbnV4LXJvY2tjaGlwLWJvdW5jZXMr?=
        =?UTF-8?B?c2hhd24ubGluPXJvY2stY2hpcHMuY29tQGxpc3RzLmluZnJhZGVhZC5vcmfku6Plj5HjgJE=?=
Date: Fri, 22 May 2020 17:59:14 +0530
Message-ID: <CANAwSgSzoc5TaO6ks9kdN7W+xDo1STbtsA0dUpsk8hqP6swkYg@mail.gmail.com>
References: <1590023130-137406-1-git-send-email-shawn.lin@rock-chips.com>
 <CANAwSgRXuMQaytB4BXL89JQAmU=XutBXj6iMhfKdZp3JwM9a4g@mail.gmail.com> <eb0acd3d-92d0-db00-78e4-8a17033f7f0a@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <eb0acd3d-92d0-db00-78e4-8a17033f7f0a@rock-chips.com>
Sender: linux-pci-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Simon Xue <xxm@rock-chips.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Shawn

On Fri, 22 May 2020 at 08:30, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
>
> =E5=9C=A8 2020/5/21 18:51, Anand Moon =E5=86=99=E9=81=93:
> > Hi Shawn,
> >
> > On Thu, 21 May 2020 at 06:35, Shawn Lin <shawn.lin@rock-chips.com> wrot=
e:
> >>
> >> According to RK3399 user manual, bit 9 in PCIE_RC_BAR_CONF should
> >> be set, otherwise accessing to IO base and limit registers would
> >> fail.
> >>
> >> [    0.411318] pci_bus 0000:00: root bus resource [bus 00-1f]
> >> [    0.411822] pci_bus 0000:00: root bus resource [mem 0xfa000000-0xfb=
dfffff]
> >> [    0.412440] pci_bus 0000:00: root bus resource [io  0x0000-0xfffff]=
 (bus address [0xfbe00000-0xfbefffff])
> >> [    0.413665] pci 0000:00:00.0: bridge configuration invalid ([bus 00=
-00]), reconfiguring
> >> [    0.414698] pci 0000:01:00.0: reg 0x10: initial BAR value 0x0000000=
0 invalid
> >> [    0.415412] pci 0000:01:00.0: reg 0x18: initial BAR value 0x0000000=
0 invalid
> >> [    0.418456] pci 0000:00:00.0: BAR 8: assigned [mem 0xfa000000-0xfa0=
fffff]
> >> [    0.419065] pci 0000:01:00.0: BAR 1: assigned [mem 0xfa000000-0xfa0=
07fff pref]
> >> [    0.419728] pci 0000:01:00.0: BAR 6: assigned [mem 0xfa008000-0xfa0=
0ffff pref]
> >> [    0.420377] pci 0000:01:00.0: BAR 0: no space for [io  size 0x0100]
> >> [    0.420935] pci 0000:01:00.0: BAR 0: failed to assign [io  size 0x0=
100]
> >> [    0.421526] pci 0000:01:00.0: BAR 2: no space for [io  size 0x0004]
> >> [    0.422084] pci 0000:01:00.0: BAR 2: failed to assign [io  size 0x0=
004]
> >> [    0.422687] pci 0000:00:00.0: PCI bridge to [bus 01]
> >> [    0.423135] pci 0000:00:00.0:   bridge window [mem 0xfa000000-0xfa0=
fffff]
> >> [    0.423794] pcieport 0000:00:00.0: enabling device (0000 -> 0002)
> >> [    0.424566] pcieport 0000:00:00.0: Signaling PME through PCIe PME i=
nterrupt
> >> [    0.425182] pci 0000:01:00.0: Signaling PME through PCIe PME interr=
upt
> >>
> >> 01:00.0 Class 0700: Device 1c00:3853 (rev 10) (prog-if 05)
> >>          Subsystem: Device 1c00:3853
> >>          Control: I/O- Mem- BusMaster- SpecCycle- MemWINV- VGASnoop- P=
arErr- Stepping- SERR- FastB2B- DisINTx-
> >>          Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfast >TAbo=
rt- <TAbort- <MAbort- >SERR- <PERR- INTx-
> >>          Interrupt: pin A routed to IRQ 230
> >>          Region 0: I/O ports at <unassigned> [disabled]
> >>          Region 1: Memory at fa000000 (32-bit, prefetchable) [disabled=
] [size=3D32K]
> >>          Region 2: I/O ports at <unassigned> [disabled]
> >>          [virtual] Expansion ROM at fa008000 [disabled] [size=3D32K]
> >>
> >> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> >> ---
> >
> > I have old development board Odroid N1 (RK3399),  It has onboard PCIe
> > 2 dual sata bridge.
> > I have tested this patch, but I am still getting following log on
> > Odroid N1 board.
> > Is their any more configuration needed for sata ports ?
>
> Thanks for testing. I made a mistake that it should be bit 19, so
> can you try using BIT(19)?
>

Nop enable this bit dose not solve the issue see at my end.

But as per RK3399 TMR  17.6.7.1.45 Root Complex BAR Configuration Register
their are many bits that are not tuned correctly.
I tried to set some bit to BAR Configuration register. but it dose not
work at my end.
I feel some more core configuration is missing.
If I have some update I will share it with you.

-Anand
