From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4 board
Date: Mon, 18 Nov 2019 21:40:47 +0300
Message-ID: <CAJs94EZPLedH4w3+5vfJA+f+1+zLETBdETpqNPytp3LG63az9Q@mail.gmail.com>
References: <20191117101545.6406-1-matwey@sai.msu.ru> <1784520.t1z2W423De@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1784520.t1z2W423De@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Ezequiel Garcia <ezequiel@collabora.com>, Akash Gajjar <akash@openedev.com>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

=D0=BF=D0=BD, 18 =D0=BD=D0=BE=D1=8F=D0=B1. 2019 =D0=B3. =D0=B2 03:46, Heiko=
 Stuebner <heiko@sntech.de>:
>
> Hi Matwey,
>
> Am Sonntag, 17. November 2019, 11:15:37 CET schrieb Matwey V. Kornilov:
> > Radxa Rock Pi 4 is equipped with M.2 PCIe slot,
> > so enable PCIe for the board.
> >
> > The changes has been tested with Intel SSD 660p series device.
> >
> >     01:00.0 Class 0108: Device 8086:f1a8 (rev 03)
> >
> > Signed-off-by: Matwey V. Kornilov <matwey@sai.msu.ru>
>
> applied the patch, but you could do a follow-up that mimics
> https://lore.kernel.org/linux-arm-kernel/20191117140728.917-1-linux.amoon=
@gmail.com/
>
> aka find out from the schematics where the 0.9 and 1.8 supplies come from=
.

Current schematics
(https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi4_v13_sch_20181112.pdf)
is controversial on 1.8 supply:

On sheet 15 it says that 1.8 is supplied by VCC_1V8
at the same time on sheet 3 it says that it is supplied by VCCA_1V8

>
> Thanks
> Heiko
>
>


--=20
With best regards,
Matwey V. Kornilov
