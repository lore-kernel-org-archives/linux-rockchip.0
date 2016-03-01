From: Jung Zhao <jung.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v3 0/3] Add Rockchip VP8 Video Decoder Driver
Date: Tue,  1 Mar 2016 10:22:57 +0800
Message-ID: <1456798977-8514-1-git-send-email-jung.zhao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, posciak-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Mauro Carvalho Chehab <mchehab-JPH+aEBZ4P+UEJcrhfAQsw@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Guennadi Liakhovetski <g.liakhovetski-Mmb7MZpHnFY@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
Cc: Pawel Osciak <posciak-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org, alpha.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, herman.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The purpose of this series is to add Rockchip VPU driver for
hw video codec in Rockchip's RK3229 and RK3288 SOCs. Rockchip
Video VPU Driver is able to handle video decoding of in a
range of formats(Now only support VP8, and more formats will
be supported in future).

The VPU driver depends on Request API[1] and RK IOMMU[2].

[1]http://www.spinics.net/lists/linux-media/msg95733.html
[2]http://www.gossamer-threads.com/lists/linux/kernel/2347458

Since VP8 headers and controls for the V4L2 API and framework
and the changes to videobuf2 were authored and written by
Pawel Osciak <posciak-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> and Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>.
These parts are 'NOT FOR REVIEW' and will be submitted by
themselves. But these patches are very important for Rockchip VPU
Driver, I cherrypick them from Chromium OS Tree[3] and use
for reference here.

[3]https://chromium.googlesource.com/chromiumos/third_party/kernel


Changes in v3:
- set DMA_ATTR_ALLOC_SINGLE_PAGES(Douglas)

Changes in v2:
- add [NOT FOR REVIEW] tag for patches from Chromium OS Tree suggested by Tomasz
- update copyright message
- list all the related signed-off names
- add more description suggested by Enric
- fix format error of commit message suggested by Tomasz

Jung Zhao (1):
  media: vcodec: rockchip: Add Rockchip VP8 decoder driver

Pawel Osciak (2):
  [NOT FOR REVIEW] v4l: Add private compound control type.
  [NOT FOR REVIEW] v4l: Add VP8 low-level decoder API controls.

 drivers/media/platform/Kconfig                     |   11 +
 drivers/media/platform/Makefile                    |    1 +
 drivers/media/platform/rockchip-vpu/Makefile       |    7 +
 .../media/platform/rockchip-vpu/rkvpu_hw_vp8d.c    |  798 ++++++++++
 .../platform/rockchip-vpu/rockchip_vp8d_regs.h     | 1594 ++++++++++++++++++++
 drivers/media/platform/rockchip-vpu/rockchip_vpu.c |  812 ++++++++++
 .../platform/rockchip-vpu/rockchip_vpu_common.h    |  439 ++++++
 .../media/platform/rockchip-vpu/rockchip_vpu_dec.c | 1007 +++++++++++++
 .../media/platform/rockchip-vpu/rockchip_vpu_dec.h |   33 +
 .../media/platform/rockchip-vpu/rockchip_vpu_hw.c  |  295 ++++
 .../media/platform/rockchip-vpu/rockchip_vpu_hw.h  |  100 ++
 drivers/media/v4l2-core/v4l2-ctrls.c               |   13 +
 drivers/media/v4l2-core/v4l2-ioctl.c               |    1 +
 include/media/v4l2-ctrls.h                         |    2 +
 include/uapi/linux/v4l2-controls.h                 |   94 ++
 include/uapi/linux/videodev2.h                     |    5 +
 16 files changed, 5212 insertions(+)
 create mode 100644 drivers/media/platform/rockchip-vpu/Makefile
 create mode 100644 drivers/media/platform/rockchip-vpu/rkvpu_hw_vp8d.c
 create mode 100644 drivers/media/platform/rockchip-vpu/rockchip_vp8d_regs.h
 create mode 100644 drivers/media/platform/rockchip-vpu/rockchip_vpu.c
 create mode 100644 drivers/media/platform/rockchip-vpu/rockchip_vpu_common.h
 create mode 100644 drivers/media/platform/rockchip-vpu/rockchip_vpu_dec.c
 create mode 100644 drivers/media/platform/rockchip-vpu/rockchip_vpu_dec.h
 create mode 100644 drivers/media/platform/rockchip-vpu/rockchip_vpu_hw.c
 create mode 100644 drivers/media/platform/rockchip-vpu/rockchip_vpu_hw.h

-- 
1.9.1
