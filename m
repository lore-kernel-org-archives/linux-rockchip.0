Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6668CD98C5
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZWvW7+iaEsU712rljX1f/j4dNc2JIEYkavu3YXMKvrM=; b=PKR1BB8qhmmMou
	hNWJ+7Qv+dp2JAN7Cn5TggcE7+IQk+c6ZiaRGior/wREWF735SRVIWstn41l7dQwaHR6TYZB7p16G
	l2s2Jmo8GKxc7IctVa5/7HNv31Sk4E7ud8UMckFhnEdo8pqwbdJOb7Vvm1/nf5y022KSdWJ6ivZe1
	UQPO2r+ZOL/Tq5dRvee9GZmNdQXzQTS+eOPEYqtbVXon5GlCOynhllzi5REuxomvRhklIxcC6M8iV
	t1bhrxg+nc11pzmusQsMrVOBu1Ub/VuIQHarpJwgUYntgmo/F8ctSsGqJTm7LJifaYwJ+JLBc8Iqc
	rfXow+aZsA21LcfzYtgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnC6-0000000D9XR-18jB;
	Sun, 14 Jun 2026 15:56:18 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnC2-0000000D9VN-3u3b
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 15:56:16 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-8ccce57762cso31592686d6.3
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 08:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781452573; x=1782057373; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U0kPJubfXi7k53ak7UhChAyiQgIHcIYyeOvCqkt9GAU=;
        b=CjMHP/xyeOvhFMnUSlgcXkMr5C2YKGmJlWm9vY/cEVLpT19dLUR/Gt7n+3BMLt66OH
         RYNGM3cGX1QwVncAOdl+vY3TIylEuNOxObHwIFuFgiUItsx18ZV6Y46ej1rirX0B7Jag
         CUmIKDPGzg0Rj6vq9JgIaSmWTsstPsFlR5pmmkYNkkTSR9gKZhJXQ267E4BftGvee2Km
         xlTUOrUdF0zJtXuxw24aSYU2/MUtdu0TOalDEx9Q92WTqOI2gqflSCjHB/HgGSxZdahs
         OYg9u62hxb/bETPcVAcYQo0IClOITJyxXSGh3flN6ptYxYo3f+in+D8w9B2KvSSXfSkI
         3pkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781452573; x=1782057373;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U0kPJubfXi7k53ak7UhChAyiQgIHcIYyeOvCqkt9GAU=;
        b=UtJDVDtTJAMCOPuhKqvFEHaQGn9LV8iaw1kNeNr6vqo7xuO35Zq54dvPeMcCyAlky/
         X0h9QKf1w19xLHUEn34WQbDHONpwexEuR9GvX9HZF++CeqVUZDw4cJCage1qz5UYXfPa
         8k3AobItzfgENYQliqYRYnCI2CgjGdI+FStKO9HAPjloUCqhwaV76Qfyk3+LHi5wcark
         xBRLgF145OchwwuNojfQnEuJTcnPt8WeX6/fI4AsCSprzUPRuV3PlYaH1S5X8P6lDb8g
         XqMQMnoIVaDsNDkfJUiTstRIKgRURZkq4jfXwAjOL30rRgPUBu31hOWVo8j3faAjgP4k
         iJyg==
X-Forwarded-Encrypted: i=1; AFNElJ+cipjwe+MW0oNEOqAOkdJPDdjQiGDEkGyyMHtQo2cuMp1WPBYwxxropir+p5EJo4nLCpF5DZEFZoE+PgwLBQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzgWzT+ikzAsCl47qqTgF0QAMhoYGBr6Ol/4lTULmnBNSY381ca
	adhHc9P+pPr+3DZWve3TV2wIe3jTX/yUIVyKdIua7PazY2jRv4UXfTpr
X-Gm-Gg: Acq92OGk78jMqzpS1H89dli67+lk/cMtGZPjz8q6LoUGQHFwEe0kDVCLjK0zLHTGv9b
	/fY8yk1GAEn0KZTWO0pyJ/p8RkWsn4nuXYj7/T4jBKEExQkULFmIdlXGmjgoUGXHxjLLmuOGNz9
	VK9I02ciZQw3YpPCI4F/mxwiqjbyp/1jsu51JifDcnqsKxjTtpUpMcLTbyeUs6Z96I7HjNylcYe
	o2FxCytMb/Us+OdMv/RCQXq5JyBTAtLQPbYDN3ZyaE0NgxdG0Q5vNFyQlpnAyo9IeoRPfC5cTcZ
	sbdPiUyWXFFJTc7HVPQ/+Fx2f3+uRZCaQj5iNLTIjghfwsKZRGywh/ga7PL4TnkAEXtVcV5BAyk
	VMeKjNF0FSMXFym0TWLcoGk7A5mp7k61sIzzU1L7oezYUGRy6NkPIBLBUPOxCVzrLvEvInbkoNH
	bpVRdCWlMCxieEZ2rx3j0GO1wb/zBGaPEc5O4UqBPQoVcJyFb5HOB7IrFrys4Aox6r/j6EVvclk
	3JsI6lpzv1Y4HeyD2s/euQtvEHzpgb4LhJu1JOMz74=
X-Received: by 2002:a05:6214:1c4a:b0:8ac:a6a5:1f41 with SMTP id 6a1803df08f44-8d44e97d5d1mr119072016d6.27.1781452573124;
        Sun, 14 Jun 2026 08:56:13 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8d30522cbeasm82008446d6.44.2026.06.14.08.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 08:56:12 -0700 (PDT)
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
Subject: [PATCH v2 0/6] media: v4l2-ctrls: bound stateless HEVC/AV1 tile counts
Date: Sun, 14 Jun 2026 11:56:02 -0400
Message-ID: <20260614155609.3107600-1-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_085615_007773_439BDB2A 
X-CRM114-Status: GOOD (  14.75  )
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

The stateless HEVC and AV1 V4L2 controls carry tile counts that several SoC
decoder drivers consume as loop bounds when laying out fixed-size hardware
descriptor buffers, but std_validate_compound() does not bound them. A
process with access to a /dev/videoN stateless decoder (on a typical desktop
or SBC, the active-seat local user via the logind/udev uaccess ACL, no extra
capability) can set a HEVC PPS or AV1 frame control with a tile count far
beyond the array capacity the drivers assume, making them loop past their
fixed buffers.

Patch 1 caps the HEVC and AV1 tile counts to the uAPI array capacity in the
core. Patches 2-5 add matching bounds in the consuming driver loops (and
bound the driver-interpreted HEVC pic_parameter_set_id / AV1
context_update_tile_id indices the core does not reject). Patch 6 adds KUnit
tests for the core validation.

I did my best to reproduce these with the hardware I have, but apologies in
advance if I missed something because the soft repro.

Test matrix: patch 1 + patch 6 run the real std_validate_compound() under
KASAN on x86_64 (rejects out-of-range counts, in-range and the zeroed
default pass, stock and patched); all objects build clean W=1; the ARM SoC
decoders are not reachable on the x86 host, so the per-driver writes are not
reproduced here.

Changes since v1:
 - Patch 1: only reject AV1 tile_cols/tile_rows above the array capacity;
   do not reject a zero count. v1 also rejected tile_cols < 1, which made
   std_validate_compound() return -EINVAL for the zero-initialised AV1
   frame control that userspace and v4l2-compliance submit, regressing the
   visl compliance run (reported by the linux-media CI). The divide-by-zero
   that a zero tile_cols would cause is guarded where the divisor is used in
   the rockchip decoder (patch 4), so no functional protection is lost.
 - Patch 6: drop the "zero tile_cols is rejected" KUnit case (no longer the
   core's behaviour) and add a benign case asserting the zero-initialised
   AV1 frame still validates, plus a tile_rows upper-bound case.
 - No changes to patches 2-5.

Michael Bommarito (6):
  media: v4l2-ctrls: validate HEVC and AV1 tile counts
  media: rkvdec: bound HEVC tile loops and PPS id to the array capacity
  media: verisilicon: hantro: bound G2 HEVC tile loop to the buffer
    capacity
  media: verisilicon: rockchip: bound VPU981 AV1 tile loop and guard
    divisor
  media: mediatek: vcodec: bound AV1 tile-start copy to the array
    capacity
  media: v4l2-ctrls: add KUnit tests for compound control tile
    validation

 .../vcodec/decoder/vdec/vdec_av1_req_lat_if.c |   5 +-
 .../rockchip/rkvdec/rkvdec-hevc-common.c      |  22 ++-
 .../platform/rockchip/rkvdec/rkvdec-hevc.c    |   8 +-
 .../rockchip/rkvdec/rkvdec-vdpu381-hevc.c     |   2 +
 .../platform/verisilicon/hantro_g2_hevc_dec.c |   6 +
 .../verisilicon/rockchip_vpu981_hw_av1_dec.c  |  29 ++--
 drivers/media/v4l2-core/Kconfig               |  12 ++
 .../media/v4l2-core/v4l2-ctrls-core-test.c    | 130 ++++++++++++++++++
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |  27 ++++
 9 files changed, 224 insertions(+), 17 deletions(-)
 create mode 100644 drivers/media/v4l2-core/v4l2-ctrls-core-test.c


base-commit: 5200f5f493f79f14bbdc349e402a40dfb32f23c8
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
