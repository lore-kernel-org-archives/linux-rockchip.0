Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50F59CD98EE
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 02:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CdiT1xKEcqmKrS9U43t12qlxPaYXcAgvOZxUHfHX7yI=; b=h7Srn9M0kaTSKF
	qCalWPOJzAK4q+/Pmm+3WujWqYWacTIjIrCA2Vs2UHnAHN9+b+W/kcPj0wwe9KWE7jEJ/ASI0TdgD
	831H5OPxVPi5clIU3fFUF8ADysfitVsgt6QAhKO9wpvfg/n6ml69PUwH/LsN70khdqmlWi0/c155E
	us8ekQgmBzDvFT2PW+VF3f6R/mV6sErREyS/qcGbNtcb94oBaA9YjdDgOSQbVNZ8m5M7LIe8uX18w
	TyA3PjX/hcD6zFyXNR/bQovPgeyo2t1pg8hfRm/Ck52PdAguVfDCaJk41cwvaNQfzzs7o66Lc9Ns4
	Faq+GQXcRHQOJz4CJmvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsI-0000000GU8G-3Wj9;
	Wed, 17 Jun 2026 02:19:30 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsF-0000000GU6r-2PBV
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 02:19:29 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-9157d3f2098so615213785a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 19:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781662766; x=1782267566; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xIfiVseohRJOgI8N6Y+Kj1p4rISAysOPz5TsHQvMuzs=;
        b=BJu4HLbwtYrLE4RrTO4PNn7vQMzvLY5bRwFxuAFwgdKLNGjUy4PvEJh54USH0K1IjH
         IblSebbms8xp3mugAkhklyYGleM+WZZ7wTVFl5Lt5RwUF72W3aBSPf3BD1jmHFDizCEH
         jjFM2KRgOqZyNjiNORiR7iSdFiF+TTCSPlzzyIl8WaaTJ5v3VOc797mI5CnyuCks+k3A
         0N47MzLUAlDWDKy3yJTGJ8QysejzYZ6m7HjiwzrLtFVbBqa5S/0CcS21p1iW8Q/QnD+T
         Rhs4HtvZcxOvIl3aYb9hVfG/Cu+LGlsN33XbIaiS9G/1c4WraFHpHdz4/v5FxjRTVOtJ
         P6aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781662766; x=1782267566;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xIfiVseohRJOgI8N6Y+Kj1p4rISAysOPz5TsHQvMuzs=;
        b=USlHsHrIgmJjLM8sADtcN7/pCOVDklznIpb0PO45HdttB/yRrJxrOW3n2kixnC9FPn
         LgVorJc/904lSPZsF7HbYCm3HXvCulAt+Wh5t+wuhqP8wuH6MpQ4fm3ZSDKz5aHZlpFI
         kJ7ar4hwQdIj6j/frs4BWJO5tuTK74VGn4AoTbPTuW/6Rx4hCczOK5VD6bhaAgtWM8GS
         ka1FSX8wdqAv2+u8b1o6NeecAj21APuec2uV6urxcpBdcMWj+/9NMM7h7wMYKtNlWnZd
         wc5oAmgED92Dx4qlhuw5ilGgFrD6nkjA66QaBmjCW3uj1zOq7zRyrLU+VbqCCOdrvJ4O
         Z3bg==
X-Forwarded-Encrypted: i=1; AFNElJ+tWeM00cB7LVFK68FdqzzcyneOutcO4HxCr6qkHio/XOLtWU9CLy6gv+ffJvZvktg0uasfcgisQxWbSdDl5A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwAys9lku2fb0YNOW7psuwG9fnRLxYnXMOX/v3HN5hn0dPnzaDn
	6HWL4sc7vsfB28L6h2jUQynKUPl/dGx1hedJMl4NohbxHpFoekhEhzs8
X-Gm-Gg: Acq92OE2ZLVMQEPT/LLBxoP+KKVbaDw+TzyuSCI0npIVtGEsWPiTEHx1A878IUsbALj
	a/gdnnyyWkjvUiENMqpoo8L/4PjLSDXQ6NBEKgSC1aH3cRcj+OwVv0cudYTWS8s79amJvwAcemh
	63h91McRalWn/gceI9d4KaGnHwt/2um5HIxF23+EkCziYPD3fCfKr0GiB7OtESf+N+SPyUlup1F
	j/2aOEvZCbbnesYSqFuI14t6dCPeGTdoy+PQnn23Fs5Jk0BUPRfbTn9lwPGVFk/tc5ErSkWy9g5
	4u0sHt+UIDV5ygZOYxLN3pAU9uYWxwG32BxfJXqhhzH7TR/LoFrVvDe70ix89EuElo9ubTuJ7Ee
	R1ivgsAvYJwIdU9m0CzV6y+AJIPwJ0ufboBOGvYYJnectNY0vXT5x0m41UbaOUIW5QdJYjVf844
	1gcEdh/qnajjUHlHVkNh2Gi0lVeozmv+ukN4HkAUHaCwPuVFWZrQIAfV1URPBjemPOO7LcU0AmY
	Ix2qSC/sv2TrsqInpOq71WrdsIP9gA66h+Jxv6ub2E=
X-Received: by 2002:a05:620a:44d2:b0:915:b9f6:718c with SMTP id af79cd13be357-91dbb94528bmr273219585a.28.1781662765542;
        Tue, 16 Jun 2026 19:19:25 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9161a006e35sm1657646285a.28.2026.06.16.19.19.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 19:19:25 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yunfei Dong <yunfei.dong@mediatek.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Kees Cook <kees@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/9] media: bound stateless HEVC/AV1 tile counts
Date: Tue, 16 Jun 2026 22:18:57 -0400
Message-ID: <20260617021906.2746743-1-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_191927_697731_00EA7C89 
X-CRM114-Status: GOOD (  12.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The stateless HEVC and AV1 controls carry tile counts that several SoC
decoder drivers consume as loop bounds and array indices when laying out
fixed-size hardware descriptor buffers. std_validate_compound() does not
bound them, so a crafted HEVC PPS or AV1 frame control can drive
out-of-bounds writes and an AV1 divide-by-zero in the rkvdec, hantro,
rockchip and mediatek decoders.

  1-2  reject out-of-range HEVC and AV1 tile counts in
       std_validate_compound() (one patch per codec). For AV1 the per-
       dimension bound is V4L2_AV1_MAX_TILE_{COLS,ROWS} and the total is
       V4L2_AV1_MAX_TILE_COUNT.
  3    add <media/v4l2-hevc.h> with bounded tile-count helpers.
  4-5  use the helpers in rkvdec and hantro instead of open-coding the
       clamp; rkvdec also bails before indexing the hardware
       parameter-set table with an out-of-range HEVC PPS id.
  6    guard the rockchip VPU981 AV1 divisor against tile_cols == 0 and
       keep the descriptor writes inside the AV1_MAX_TILES buffer.
  7    reject a rockchip AV1 frame whose tile_cols * tile_rows exceeds the
       submitted tile group entry count or the AV1_MAX_TILES descriptor
       capacity, which set_tile_info() would otherwise read past or leave
       under-described while programming the larger geometry.
  8    bound the mediatek AV1 tile-start copy.
  9    KUnit coverage for the tile-count validation.

Changes since v2:
  - Split the combined HEVC+AV1 validation into one patch per codec, each
    with a single Fixes tag (Benjamin Gaignard).
  - Move the AV1 total-tile bound into validate_av1_tile_info() using the
    uAPI V4L2_AV1_MAX_TILE_COUNT, instead of clamping tile_cols/tile_rows
    in the rockchip driver, which would have corrupted the values written
    to the hardware registers (Benjamin Gaignard's NACK on v2 4/6).
  - Add <media/v4l2-hevc.h> with shared bounded tile-count helpers so
    rkvdec and hantro no longer duplicate the clamp (Benjamin Gaignard).
  - New patch 7: reject a rockchip AV1 frame that claims more tiles than
    the submitted tile group entry array holds (set_tile_info() indexes
    it by tile_cols * tile_rows) or more than AV1_MAX_TILES (the hardware
    descriptor buffer), which would otherwise leave the hardware
    programmed for more tiles than the buffer describes. mediatek already
    guards the entry count; rockchip now guards both.

checkpatch --strict: 0 errors on all nine. Patches 3 and 9 each carry one
"added file ... does MAINTAINERS need updating?" warning for the new
<media/v4l2-hevc.h> and the KUnit test file; both already fall under the
existing include/media/ and drivers/media/v4l2-core/ MAINTAINERS entries,
so no MAINTAINERS change is needed. (checkpatch's SPDX sub-check did not
run in my environment -- spdxcheck.py needs python3-ply -- but the SPDX
headers are present on both new files.)

The tile-count validation is exercised with KUnit (patch 9): in-range
HEVC/AV1 counts pass, out-of-range per-dimension counts and an AV1 grid
whose product exceeds V4L2_AV1_MAX_TILE_COUNT are rejected, and the
zero-initialised AV1 frame control that v4l2-compliance and existing
userspace submit still passes.

v2: https://lore.kernel.org/all/20260614155609.3107600-1-michael.bommarito@gmail.com/

Michael Bommarito (9):
  media: v4l2-ctrls: validate HEVC tile counts
  media: v4l2-ctrls: validate AV1 tile counts
  media: hevc: add bounded tile-count helpers
  media: rkvdec: bound HEVC tile loops and PPS id to the array capacity
  media: verisilicon: hantro: bound G2 HEVC tile loop to the buffer
    capacity
  media: verisilicon: rockchip: guard VPU981 AV1 divisor and tile buffer
  media: verisilicon: rockchip: reject AV1 frames exceeding the tile
    capacity
  media: mediatek: vcodec: bound AV1 tile-start copy to the array
    capacity
  media: v4l2-ctrls: add KUnit tests for compound control tile
    validation

 .../vcodec/decoder/vdec/vdec_av1_req_lat_if.c |   5 +-
 .../rockchip/rkvdec/rkvdec-hevc-common.c      |  14 +-
 .../platform/rockchip/rkvdec/rkvdec-hevc.c    |   7 +-
 .../rockchip/rkvdec/rkvdec-vdpu381-hevc.c     |   2 +
 .../platform/verisilicon/hantro_g2_hevc_dec.c |   6 +-
 .../verisilicon/rockchip_vpu981_hw_av1_dec.c  |  57 +++++--
 drivers/media/v4l2-core/Kconfig               |  12 ++
 .../media/v4l2-core/v4l2-ctrls-core-test.c    | 145 ++++++++++++++++++
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |  36 +++++
 include/media/v4l2-hevc.h                     |  41 +++++
 10 files changed, 306 insertions(+), 19 deletions(-)
 create mode 100644 drivers/media/v4l2-core/v4l2-ctrls-core-test.c
 create mode 100644 include/media/v4l2-hevc.h


base-commit: e24a98d6884a6e4203a77a94f070a59fcab95208
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
