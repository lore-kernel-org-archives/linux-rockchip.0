From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 0/3] media: rockchip: Introduce driver for the camera
 interface on PX30
Date: Mon, 1 Jun 2020 20:45:14 +0200
Message-ID: <CAAFQd5AVD+LhYZziqNUfga1sCp98MMu+ESgBMagS1n6++ae=pg@mail.gmail.com>
References: <20200529130405.929429-1-maxime.chevallier@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200529130405.929429-1-maxime.chevallier@bootlin.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Maxime Chevallier <maxime.chevallier@bootlin.com>, Helen Koike <helen.koike@collabora.com>, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Linux Media Mailing List <linux-media@vger.kernel.org>, linux-devicetree <devicetree@vger.kernel.org>, "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Maxime,

On Fri, May 29, 2020 at 3:04 PM Maxime Chevallier
<maxime.chevallier@bootlin.com> wrote:
>
> Hello everyone,
>
> Here's a V2 of the series adding very basic support for the camera interface on
> the Rockchip PX30 SoC.
>
> Thanks to everyone that commented on the first series, your reviews were
> very helpful :)
>
> This Camera Interface is also supported on other Rockchip SoC such as
> the RK1808, RK3128, RK3288 and RK3288, but for now I've only been able to
> test it on the PX30, using a PAL format.

How does this hardware relate to the one handled by the rkisp1 driver
that is available under staging/media/rkisp1? It was written with
RK3399 in mind, but I have a loose recollection that the hardware in
RK3288 was roughly the same.

+Helen Koike +Dafna Hirschfeld working on the rkisp1 driver.

Best regards,
Tomasz

>
> This driver is mostly based on the driver found in Rockchip's BSP, that
> has been trimmed down to support the set of features that I was able to test,
> that is pretty much a very basic one-frame capture and video streaming
> with GStreamer.
>
> This first draft only supports the Parallel interface, although the
> controller has support for BT656 and CSI2.
>
> Finally, this controller has an iommu that could be used in this driver,
> but as of today I've not been able to get it to work.
>
> Any review is welcome.
>
> Thanks,
>
> Maxime
>
> --- Changes since V1 ---
>
>  - Took reviews from Rob, Hans, Robin and Heiko into account :
>   - Renamed the clocks in the binding
>   - Fixed the DT schema compiling
>   - Fixed a few typos
>   - Used the clk bulk API
>   - Used the reset array API
>   - Changed a few helpers for more suitable ones
>   - Rebased on 5.7-rc7
>
>
>
> Maxime Chevallier (3):
>   media: dt-bindings: media: Document Rockchip CIF bindings
>   media: rockchip: Introduce driver for Rockhip's camera interface
>   arm64: dts: rockchip: Add the camera interface description of the PX30
>
>  .../bindings/media/rockchip-cif.yaml          |  100 ++
>  arch/arm64/boot/dts/rockchip/px30.dtsi        |   12 +
>  drivers/media/platform/Kconfig                |   13 +
>  drivers/media/platform/Makefile               |    1 +
>  drivers/media/platform/rockchip/cif/Makefile  |    3 +
>  drivers/media/platform/rockchip/cif/capture.c | 1170 +++++++++++++++++
>  drivers/media/platform/rockchip/cif/dev.c     |  358 +++++
>  drivers/media/platform/rockchip/cif/dev.h     |  213 +++
>  drivers/media/platform/rockchip/cif/regs.h    |  256 ++++
>  9 files changed, 2126 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-cif.yaml
>  create mode 100644 drivers/media/platform/rockchip/cif/Makefile
>  create mode 100644 drivers/media/platform/rockchip/cif/capture.c
>  create mode 100644 drivers/media/platform/rockchip/cif/dev.c
>  create mode 100644 drivers/media/platform/rockchip/cif/dev.h
>  create mode 100644 drivers/media/platform/rockchip/cif/regs.h
>
> --
> 2.25.4
>
