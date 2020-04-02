From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH v2 0/5] media: staging: rkisp1: cap: various fixes for capture formats
Date: Thu,  2 Apr 2020 21:04:14 +0200
Message-ID: <20200402190419.15155-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This patchset fixes various issues related to
the supported formats in the rkisp1 capture.

Patches summary:

patches 1,2 - fixes a wrong assignments to the register that swaps the
'u', 'v' planes in YUV semiplanar formats.

patch 3 - sets the register from patch 1 only if the format is semiplanar.

patch 4 - adds support to planar YUV formats with swapped u,v planes
by swapping the addresses of the planes

patch 5 - removes some packed YUV formats that are not supported
by the driver.

changes from v1:
- split the first patch from v1 into two separate patches, the first is a cleanup patch
the second fixes a bug.

Dafna Hirschfeld (5):
  media: staging: rkisp1: cap: cleanup in mainpath config for uv swap
    format
  media: staging: rkisp1: cap: fix value written to uv swap register in
    selfpath
  media: staging: rkisp1: cap: support uv swap only for semiplanar
    formats
  media: staging: rkisp1: cap: support uv swapped plane formats
  media: staging: rkisp1: cap: remove unsupported formats

 drivers/staging/media/rkisp1/rkisp1-capture.c | 55 ++++++++++---------
 1 file changed, 28 insertions(+), 27 deletions(-)

-- 
2.17.1
