From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v2 0/2] media: staging: rkisp1: allow simultaneous streaming from multiple capture devices
Date: Mon, 16 Mar 2020 18:00:42 -0300
Message-ID: <20200316210044.595312-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: mchehab@kernel.org, linux-kernel@vger.kernel.org, tfiga@chromium.org, linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com, kernel@collabora.com, Helen Koike <helen.koike@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

This series adds support for simultaneous streaming from both capture
devices (rkisp1_selfpath and rkisp1_mainpath).

It depends on the following series for multistream to work properly, but
it doesn't mean it can't be merged before:

	"media: add v4l2_pipeline_stream_{enable,disable} helpers"
	https://patchwork.linuxtv.org/cover/62233/

And it is also available at:

	https://gitlab.collabora.com/koike/linux/tree/rockchip/isp/multistream

Patch 1/2 fixes return error handling from pm functions, which was
preventing the second stream to start.

Patch 2/2 serializes start/stop streaming calls, since they both
and modify shared variables.

Changes in v2:
- Rebased on media/master
- Removed the following patch from the series:
"media: staging: rkisp1: do not call s_stream if the entity is still in use"
It was replaced by "media: add v4l2_pipeline_stream_{enable,disable} helpers"
https://patchwork.linuxtv.org/cover/62233/

This series was tested with:
============================

SEN_DEV=/dev/v4l-subdev3
ISP_DEV=/dev/v4l-subdev0
RSZ_SP_DEV=/dev/v4l-subdev2
RSZ_MP_DEV=/dev/v4l-subdev1
CAP_SP_DEV=/dev/video1
CAP_MP_DEV=/dev/video0

WIDTH=1920
HEIGHT=1080
RAW_CODE=SRGGB10_1X10
YUV_CODE=YUYV8_2X8

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$RAW_CODE -d $SEN_DEV

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$RAW_CODE -d $ISP_DEV
v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $ISP_DEV

v4l2-ctl --set-subdev-selection pad=2,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $ISP_DEV
v4l2-ctl --set-subdev-fmt pad=2,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $ISP_DEV

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_SP_DEV
v4l2-ctl --set-subdev-fmt pad=1,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_SP_DEV

v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $RSZ_SP_DEV

v4l2-ctl --set-subdev-fmt pad=0,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_MP_DEV
v4l2-ctl --set-subdev-fmt pad=1,width=$WIDTH,height=$HEIGHT,code=$YUV_CODE -d $RSZ_MP_DEV

v4l2-ctl --set-subdev-selection pad=0,target=crop,top=0,left=0,width=$WIDTH,height=$HEIGHT -d $RSZ_MP_DEV

v4l2-ctl -v width=$WIDTH,height=$HEIGHT,pixelformat=NV12 -d $CAP_SP_DEV
v4l2-ctl -v width=$WIDTH,height=$HEIGHT,pixelformat=NV12 -d $CAP_MP_DEV

sleep 1

v4l2-ctl --stream-mmap --stream-count=100 -d $CAP_SP_DEV --stream-to=/tmp/test_sp.raw &
v4l2-ctl --stream-mmap --stream-count=100 -d $CAP_MP_DEV --stream-to=/tmp/test_mp.raw &

wait
echo "Completed"

Helen Koike (2):
  media: staging: rkisp1: cap: fix return values from pm functions
  media: staging: rkisp1: cap: serialize start/stop stream

 drivers/staging/media/rkisp1/rkisp1-capture.c | 13 +++++++++++--
 drivers/staging/media/rkisp1/rkisp1-common.h  |  2 ++
 drivers/staging/media/rkisp1/rkisp1-dev.c     |  2 ++
 3 files changed, 15 insertions(+), 2 deletions(-)

-- 
2.25.0
