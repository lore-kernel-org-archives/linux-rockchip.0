From: Randy Li <randy.li@rock-chips.com>
Subject: [PATCH v2 0/6] [WIP]: rockchip mpp for v4l2 video deocder
Date: Thu,  7 Mar 2019 18:03:10 +0800
Message-ID: <20190307100316.925-1-randy.li@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-media@vger.kernel.org
Cc: paul.kocialkowski@bootlin.com, maxime.ripard@bootlin.com, joro@8bytes.org, ayaka@soulik.info, Randy Li <randy.li@rock-chips.com>, linux-kernel@vger.kernel.org, jernej.skrabec@gmail.com, nicolas@ndufresne.ca, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org, posciak@chromium.org, thomas.petazzoni@bootlin.com, groeck@chromium.org, mchehab@kernel.org, ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Although I really want to push those work after I added more codec
supports, but I found it is more urge to do those in v4l2 core framework and
userspace.

I would use this driver to present the current problems, write down a
summary here and I would reply to those threads later to push forward.

1. Slice construction is a bad idea. I think I have said my reason in
the IRC and mail before, vp9 is always good example.

And it would request the driver to update QP table/CABAC table every
slice.

I would make something to describe a buffer with some addtional meta
data.

But the current request API limit a buffer with associated with
an request buffer, which prevent sharing some sequence data, but it 
still can solve some problems.

2. Advantage DMA memory control.
I think I need to do some work at v4l2 core.

2.1 The DMA address of each planes. I have sent a mail before talked
about why multiple planes is necessary for the rockchip platform. And
it maybe required by the other platforms.

2.2 IOMMU resume
The most effective way to restore the decoder from critical error is
doing a restting  by reset controller.
Which would leading its slave IOMMU reset at the same time. Then none of
those v4l2 buffers are mapping in the IOMMU.

3. H.264 and HEVC header
I still think those structure have some not necessary fileds in dpb or
reference part, which I don't think hardware decoder would care about
that or can be predict from the other information.

I would join to talk later.

4. The work flow of V4L2
I need a method to prepare the register set before the device acutally
begin the transaction. Which is necessary for those high frame rate usecase.

Also it is useful for those device would share some hardware resources
with the other device and it can save more power.

I think I need to do some work at v4l2 core.

Randy Li (6):
  arm64: dts: rockchip: add power domain to iommu
  staging: video: rockchip: add v4l2 decoder
  [TEST]: rockchip: mpp: support qptable
  staging: video: rockchip: add video codec
  arm64: dts: rockchip: boost clocks for rk3328
  arm64: dts: rockchip: add video codec for rk3328

 .../arm64/boot/dts/rockchip/rk3328-rock64.dts |   32 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      |  116 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |    2 +
 drivers/staging/Kconfig                       |    2 +
 drivers/staging/Makefile                      |    1 +
 drivers/staging/rockchip-mpp/Kconfig          |   34 +
 drivers/staging/rockchip-mpp/Makefile         |   10 +
 drivers/staging/rockchip-mpp/mpp_debug.h      |   87 ++
 drivers/staging/rockchip-mpp/mpp_dev_common.c | 1367 +++++++++++++++++
 drivers/staging/rockchip-mpp/mpp_dev_common.h |  212 +++
 drivers/staging/rockchip-mpp/mpp_dev_rkvdec.c |  997 ++++++++++++
 drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c  |  619 ++++++++
 drivers/staging/rockchip-mpp/mpp_service.c    |  197 +++
 drivers/staging/rockchip-mpp/mpp_service.h    |   38 +
 drivers/staging/rockchip-mpp/rkvdec/hal.h     |   63 +
 drivers/staging/rockchip-mpp/rkvdec/hevc.c    |  166 ++
 drivers/staging/rockchip-mpp/rkvdec/regs.h    |  608 ++++++++
 drivers/staging/rockchip-mpp/vdpu2/hal.h      |   52 +
 drivers/staging/rockchip-mpp/vdpu2/mpeg2.c    |  277 ++++
 drivers/staging/rockchip-mpp/vdpu2/regs.h     |  699 +++++++++
 20 files changed, 5575 insertions(+), 4 deletions(-)
 create mode 100644 drivers/staging/rockchip-mpp/Kconfig
 create mode 100644 drivers/staging/rockchip-mpp/Makefile
 create mode 100644 drivers/staging/rockchip-mpp/mpp_debug.h
 create mode 100644 drivers/staging/rockchip-mpp/mpp_dev_common.c
 create mode 100644 drivers/staging/rockchip-mpp/mpp_dev_common.h
 create mode 100644 drivers/staging/rockchip-mpp/mpp_dev_rkvdec.c
 create mode 100644 drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c
 create mode 100644 drivers/staging/rockchip-mpp/mpp_service.c
 create mode 100644 drivers/staging/rockchip-mpp/mpp_service.h
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/hal.h
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/hevc.c
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/regs.h
 create mode 100644 drivers/staging/rockchip-mpp/vdpu2/hal.h
 create mode 100644 drivers/staging/rockchip-mpp/vdpu2/mpeg2.c
 create mode 100644 drivers/staging/rockchip-mpp/vdpu2/regs.h

-- 
2.20.1
