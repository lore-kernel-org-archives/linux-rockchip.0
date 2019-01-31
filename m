From: ayaka <ayaka@soulik.info>
Subject: [PATCH 0/4] WIP: rockchip mpp for v4l2 video decoder
Date: Thu, 31 Jan 2019 11:13:29 +0800
Message-ID: <20190131031333.11905-1-ayaka@soulik.info>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: Randy 'ayaka' Li <ayaka@soulik.info>, acourbot@chromium.org, nicolas@ndufresne.ca, paul.kocialkowski@bootlin.com, jernej.skrabec@gmail.com, joro@8bytes.org, mchehab@kernel.org, maxime.ripard@bootlin.com, hverkuil@xs4all.nl, ezequiel@collabora.com, thomas.petazzoni@bootlin.com, randy.li@rock-chips.com, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

From: Randy 'ayaka' Li <ayaka@soulik.info>

Hello
  Those patches are based on the previous vendor driver I post before,
but it can apply without the previous one.
  I really want to make it work before FOSDEM and I didn't. And upcoming
the lunar new year holiday would last two week.

  I have verified the v4l2 part but I meet a problem with power or
clock, it would be a complex problem, I would handle to solve it after I
am back. But I just tell my design on this kind dirver.

A few questions I think you may ask I would like to answer it here.

1. Why it is based on the previous vendor driver ?
The vendor driver I post to mail list is a clean version which having a
efficient work flow and those platform dependency controls having been
merged into it.

For the stateless device, V4L2 is just another interface for userspace
to translate it into registers.

2. Why use a structure to store register infomation not marco ?
I really don't want to define many marcos for a device having more than
a hundred of registers. And there are many fields in a registers.

For the VDPU1/VDPU2 which would support more than 10 video codecs, these
two devices would re-use many registers for many codecs, It would be
hard to show the conflict relations between them in marco but more easy
with C union and structure.

BTW, I would prefer to write a number of registers into the device
though AHB bus not just generate one then write one, you can save some
times here.


Besides the two previous answers. I really have a big problem with v4l2
design. Which would driver wait the work of the previous picture is
done, leading a large gap time more idle of the device. 

I am ok the current face that v4l2 stateless driver is not stateless.
But it would limit the ability of stateless decoder. It is more flexible
to those videos having different resolution or orientation sequences.

But I don't like the method to reconstruct the bitstream in driver, it
is a bad idea to limit what data the device want. Those problem is
mainly talking in the HEVC slice thread. And it was ironic for the VPx
serial codec, which mixed compressed data and umcompress header together
and twisted. Even for the ITU H serial codec, it would become a problem
in SVC or Google Android CTS test.

And thanks kwiboo, ezequielg and Paulk, I copy some v4l2 code from their
code.

Randy Li (1):
  staging: video: rockchip: add video codec

ayaka (3):
  [WIP]: staging: video: rockchip: add v4l2 common
  [WIP] staging: video: rockchip: vdpu2
  [TEST]: rockchip: mpp: support qtable

 drivers/staging/Kconfig                       |    2 +
 drivers/staging/Makefile                      |    1 +
 drivers/staging/rockchip-mpp/Kconfig          |   54 +
 drivers/staging/rockchip-mpp/Makefile         |    8 +
 drivers/staging/rockchip-mpp/mpp_debug.h      |   87 ++
 drivers/staging/rockchip-mpp/mpp_dev_common.c | 1365 +++++++++++++++++
 drivers/staging/rockchip-mpp/mpp_dev_common.h |  215 +++
 drivers/staging/rockchip-mpp/mpp_dev_rkvdec.c |  878 +++++++++++
 drivers/staging/rockchip-mpp/mpp_dev_vdpu2.c  |  755 +++++++++
 drivers/staging/rockchip-mpp/mpp_service.c    |  197 +++
 drivers/staging/rockchip-mpp/mpp_service.h    |   38 +
 drivers/staging/rockchip-mpp/rkvdec/hal.h     |   53 +
 drivers/staging/rockchip-mpp/rkvdec/regs.h    |  395 +++++
 drivers/staging/rockchip-mpp/vdpu2/hal.h      |   52 +
 drivers/staging/rockchip-mpp/vdpu2/mpeg2.c    |  253 +++
 drivers/staging/rockchip-mpp/vdpu2/regs.h     |  699 +++++++++
 16 files changed, 5052 insertions(+)
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
 create mode 100644 drivers/staging/rockchip-mpp/rkvdec/regs.h
 create mode 100644 drivers/staging/rockchip-mpp/vdpu2/hal.h
 create mode 100644 drivers/staging/rockchip-mpp/vdpu2/mpeg2.c
 create mode 100644 drivers/staging/rockchip-mpp/vdpu2/regs.h

-- 
2.20.1
