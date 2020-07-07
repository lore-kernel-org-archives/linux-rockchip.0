From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 0/2] change fields of uapi struct rkisp1_cif_isp_ctk_config
Date: Tue,  7 Jul 2020 19:08:43 +0200
Message-ID: <20200707170845.28845-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

The struct rkisp1_cif_isp_ctk_config represents a 3x3 matrix
and an offset vector for the color correction. It is nicer
to represent those with a 3x3 array and a 3-array fields.

- First patch repalces 9 fields 'coeff*' with one field coeff[3][3]
- Second patch replaces 3 fields 'ct_offset_{rgb}' with one field 'ct_offset[3]'

Dafna Hirschfeld (2):
  media: staging: rkisp1:: replace 9 coeff* fields with a 3x3 array
  media: staging: rkisp1: replace 3 fields 'ct_offset_*' with one array

 drivers/staging/media/rkisp1/rkisp1-params.c  | 24 +++++++------------
 .../staging/media/rkisp1/uapi/rkisp1-config.h | 20 +++++-----------
 2 files changed, 15 insertions(+), 29 deletions(-)

-- 
2.17.1
