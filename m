From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH 0/4] media: staging: rkisp1: fixes related to the uapi lsc struct
Date: Thu, 25 Jun 2020 20:50:13 +0200
Message-ID: <20200625185017.16493-1-dafna.hirschfeld@collabora.com>
Return-path: <linux-media-owner@vger.kernel.org>
Sender: linux-media-owner@vger.kernel.org
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Fix several issues related to the struct rkisp1_cif_isp_lsc_config
defined in:
drivers/staging/media/rkisp1/uapi/rkisp1-config.h

The issues are mentioned in comments from Tomasz Figa:
https://patchwork.kernel.org/patch/10267411/#21766475

Dafna Hirschfeld (4):
  media: staging: rkisp1: remove two unused fields in uapi struct
  media: staging: rkisp1: set "*_data_tbl" fields in
    rkisp1_cif_isp_lsc_config as 2D arries
  media: staging: rkisp1: replace to identical macros with one
  media: staging: rkisp1: change type of fields in
    'rkisp1_cif_isp_lsc_config' from u32 to u16

 drivers/staging/media/rkisp1/rkisp1-params.c  | 32 +++++++++----------
 drivers/staging/media/rkisp1/rkisp1-regs.h    |  1 -
 .../staging/media/rkisp1/uapi/rkisp1-config.h | 29 ++++++++---------
 3 files changed, 28 insertions(+), 34 deletions(-)

-- 
2.17.1
