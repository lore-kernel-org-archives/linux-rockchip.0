From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 0/4] media: staging: rkisp1: cap: various fixes for capture formats
Date: Thu, 26 Mar 2020 21:16:06 +0100
Message-ID: <20200326201610.31762-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

This patchset fixes various issues related to
the supported formats in the rkisp1 capture.

Patches summary:

patch 1 - fixes a wrong assignments to the register that swaps the
'u', 'v' planes in YUV semiplanar formats.

patch 2 - sets the register from patch 1 only if the format is semiplanar.

patch 3 - adds support to planar YUV formats with swapped u,v planes
by swapping the addresses of the planes

patch 4 - removes some packed YUV formats that are not supported
by the driver.

Dafna Hirschfeld (4):
  media: staging: rkisp1: cap: fix issues when writing to uv swap
    register
  media: staging: rkisp1: cap: support uv swap only for semiplanar
    formats
  media: staging: rkisp1: cap: support uv swapped plane formats
  media: staging: rkisp1: cap: remove unsupported formats

 drivers/staging/media/rkisp1/rkisp1-capture.c | 55 ++++++++++---------
 1 file changed, 28 insertions(+), 27 deletions(-)

-- 
2.17.1
