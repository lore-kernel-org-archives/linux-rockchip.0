From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v3 0/6] media: staging: rkisp1: cap: various fixes for capture formats
Date: Wed,  8 Apr 2020 13:48:16 +0200
Message-ID: <20200408114822.27360-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

This patchset fixes various issues related to
the supported formats in the rkisp1 capture.

This patchset is rebased on top of v3 of the patchset:
"rkisp1: use enum v4l2_pixel_encoding instead of rkisp1_fmt_pix_type"

Patches summary:

patches 1,2 - fixes a wrong assignments to the register that swaps the
'u', 'v' planes in YUV semiplanar formats.

patch 3 - writes to the uv swap with "off" if swapping is not needed.

patch 4 - sets the uv swap register only if the format is semiplanar.

patch 5 - adds support to planar YUV formats with swapped u,v planes
by swapping the addresses of the planes

patch 6 - removes some packed YUV formats that are not supported
by the driver.

changes from v1:
- split the first patch from v1 into two separate patches, the first is a cleanup patch
the second fixes a bug.

changes from v2:
- rebasing the patchset on top of v3 of
"rkisp1: use enum v4l2_pixel_encoding instead of rkisp1_fmt_pix_type"
- patches 1,2: replace "reg = reg | .." with "reg |= .."
- adding patch 3 to change the logic of wrrting to uv swap reg
- patches 4,5: checking if format is (semi)planar using the info pointer and not using the write_format value
- patch 4: using the "swap" define to swap the cb, cr addresses





Dafna Hirschfeld (6):
  media: staging: rkisp1: cap: cleanup in mainpath config for uv swap
    format
  media: staging: rkisp1: cap: fix value written to uv swap register in
    selfpath
  media: staging: rkisp1: cap: change the logic for writing to uv swap
    register
  media: staging: rkisp1: cap: support uv swap only for semiplanar
    formats
  media: staging: rkisp1: cap: support uv swapped plane formats
  media: staging: rkisp1: cap: remove unsupported formats

 drivers/staging/media/rkisp1/rkisp1-capture.c | 50 +++++++++----------
 1 file changed, 24 insertions(+), 26 deletions(-)

-- 
2.20.1
