From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v2 0/2] media: hantro/rkvdec handle unsupported H.264 bitstreams
Date: Thu,  9 Jul 2020 13:36:33 -0300
Message-ID: <20200709163635.42996-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
List-Id: linux-rockchip.vger.kernel.org

Hi all,

Small patchset to add a check at TRY_EXT_CTRLS time,
via the H264 SPS control and reject unsupported bitstreams.

Properly refusing to decode unsupported bitstreams
allows applications to cleanly fallback to software
decoding.

Note that Rockchip VDEC hardware is capable of decoding High-10
and High-422 bitstreams. This needs more work, so for now
they are refused.

The same approach can be use on Cedrus, but since I'm not
very familiar there, I'll leave that to others.

Applies on top of media master.

v2:
* Use p_new instead of p_cur.
* s/PPS/SPS in commit log.

Ezequiel Garcia (2):
  rkvdec: h264: Refuse to decode unsupported bitstream
  hantro: h264: Refuse to decode unsupported bitstream

 drivers/staging/media/hantro/hantro_drv.c | 29 ++++++++++++++++++++---
 drivers/staging/media/rkvdec/rkvdec.c     | 27 +++++++++++++++++++++
 2 files changed, 53 insertions(+), 3 deletions(-)

-- 
2.27.0
