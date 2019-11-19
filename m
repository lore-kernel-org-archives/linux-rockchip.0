From: Tom Cubie <tom@radxa.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4 board
Date: Tue, 19 Nov 2019 08:44:06 +0800
Message-ID: <CAFjve-AT6c-yweF0mOPea-caG3n43nZzVPcwef-qp+n35JN9ig@mail.gmail.com>
References: <20191117101545.6406-1-matwey@sai.msu.ru> <1784520.t1z2W423De@phil>
 <CAJs94EZPLedH4w3+5vfJA+f+1+zLETBdETpqNPytp3LG63az9Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAJs94EZPLedH4w3+5vfJA+f+1+zLETBdETpqNPytp3LG63az9Q@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Mark Rutland <mark.rutland@arm.com>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>, Ezequiel Garcia <ezequiel@collabora.com>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi, Matwey

On Tue, Nov 19, 2019 at 2:41 AM Matwey V. Kornilov
<matwey.kornilov@gmail.com> wrote:
>
> Current schematics
> (https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi4_v13_sch_20181112.pdf)
> is controversial on 1.8 supply:
>
> On sheet 15 it says that 1.8 is supplied by VCC_1V8
> at the same time on sheet 3 it says that it is supplied by VCCA_1V8

I am sorry for the confusion of the schematic. Please ignore the power
tree on sheet 3, it's from the original reference design, I think we
have different power paths on ROCK Pi 4. Please refer the circuits
starting from sheet 5 below. It reflects the real hardware. We will
fix the power tree and upload a new version of the schematic.

>
> >
> > Thanks
> > Heiko
> >
> >
>
>
> --
> With best regards,
> Matwey V. Kornilov
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip



-- 
radxa rock pi 4 - the next generation Pi.

radxa.com
