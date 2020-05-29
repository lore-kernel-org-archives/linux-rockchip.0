From: Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: [PATCH v2 0/3] media: rockchip: Introduce driver for the camera interface on PX30
Date: Fri, 29 May 2020 15:04:02 +0200
Message-ID: <20200529130405.929429-1-maxime.chevallier@bootlin.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Cc: Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hello everyone,

Here's a V2 of the series adding very basic support for the camera interface on
the Rockchip PX30 SoC.

Thanks to everyone that commented on the first series, your reviews were
very helpful :)

This Camera Interface is also supported on other Rockchip SoC such as
the RK1808, RK3128, RK3288 and RK3288, but for now I've only been able to
test it on the PX30, using a PAL format.

This driver is mostly based on the driver found in Rockchip's BSP, that
has been trimmed down to support the set of features that I was able to test,
that is pretty much a very basic one-frame capture and video streaming
with GStreamer. 

This first draft only supports the Parallel interface, although the
controller has support for BT656 and CSI2.

Finally, this controller has an iommu that could be used in this driver,
but as of today I've not been able to get it to work.

Any review is welcome.

Thanks,

Maxime

--- Changes since V1 ---

 - Took reviews from Rob, Hans, Robin and Heiko into account :
  - Renamed the clocks in the binding
  - Fixed the DT schema compiling
  - Fixed a few typos
  - Used the clk bulk API
  - Used the reset array API
  - Changed a few helpers for more suitable ones
  - Rebased on 5.7-rc7



Maxime Chevallier (3):
  media: dt-bindings: media: Document Rockchip CIF bindings
  media: rockchip: Introduce driver for Rockhip's camera interface
  arm64: dts: rockchip: Add the camera interface description of the PX30

 .../bindings/media/rockchip-cif.yaml          |  100 ++
 arch/arm64/boot/dts/rockchip/px30.dtsi        |   12 +
 drivers/media/platform/Kconfig                |   13 +
 drivers/media/platform/Makefile               |    1 +
 drivers/media/platform/rockchip/cif/Makefile  |    3 +
 drivers/media/platform/rockchip/cif/capture.c | 1170 +++++++++++++++++
 drivers/media/platform/rockchip/cif/dev.c     |  358 +++++
 drivers/media/platform/rockchip/cif/dev.h     |  213 +++
 drivers/media/platform/rockchip/cif/regs.h    |  256 ++++
 9 files changed, 2126 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip-cif.yaml
 create mode 100644 drivers/media/platform/rockchip/cif/Makefile
 create mode 100644 drivers/media/platform/rockchip/cif/capture.c
 create mode 100644 drivers/media/platform/rockchip/cif/dev.c
 create mode 100644 drivers/media/platform/rockchip/cif/dev.h
 create mode 100644 drivers/media/platform/rockchip/cif/regs.h

-- 
2.25.4
