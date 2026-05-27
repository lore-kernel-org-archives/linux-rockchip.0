Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1272CD6E43
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 May 2026 19:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzznzANHQss5ATmOXsOROOdTWW2qFmjGuYKFI7qjh68=; b=jMXJKO8vKuu43E
	JauS/erMJ1+olq0VF459trwdxfa/Oh/lKDwGTf8HnTcSxmo0Zi7rjMbxDUVmRExpvi825AhxmUI3I
	Ll0dLjbanyjB7h8R3+v/8hq2DaRh2py43k46bBbYWwn3Krq9kjrrx0Yh1W48Oftb+esJzrNnhzfTl
	YpTmwVCxy3WKGPECMiFYSPfMoClu9wWxyrCe1qjjADtlpiIuVcVmcJEvlLWU5wOz6GrMvl9Sfw1yO
	FEdgtWLwmKS0C6cHSAElFSfWfD7ew9x7MISNNN36c4u+Y59/h+pASpG9V9uDZFBzkel+Z0/mAT8mi
	FZ7oSf96wyXswcASsKmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSKEm-00000004gGg-0gGf;
	Wed, 27 May 2026 19:48:20 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSKEj-00000004gFS-3Dbf
	for linux-rockchip@lists.infradead.org;
	Wed, 27 May 2026 19:48:18 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-914a8522bc6so735299785a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 12:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779911296; x=1780516096; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R8mDciBpPj7QyAvnzZsu2M6LtyDI2HbLOpEqsNC58XE=;
        b=JViBqiyVBvhg2E2EEyLcV2y9/cYhojC9qaF2HRBAgGYxml+mvvXVEeqwVfUEUjAXB0
         i9P3ZuH2U2uDI8qSJqGoFTgaDAP7RGKxk9SJsl1lQP2qeqUuWeHQBFMWdeL8QiOXBMhY
         c2eSRK2dr/98My8hwal5HM80H/NpEjGeImHG2I2Juv5CHDoiqyQF4GoR2q+Ow1CLj63R
         yaLRmMmDqkfZUWa0JZpWBQDSyhzVM4/5xwJwU+QYO0nUAtOIkqxtECG25tarwA1Kn7io
         ePqi0Jjru9uZz3URdOkB0Au288RlQfm9hgDRGucwvL7zXUh2gMeIId2JNo0MB0skN3QS
         0Xnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779911296; x=1780516096;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R8mDciBpPj7QyAvnzZsu2M6LtyDI2HbLOpEqsNC58XE=;
        b=U12ICp8jbhnp25E+DTFzCm5hM4AXxDVKaeAkSLZJ62PiZmuRB048vbWzZdBvUCWv0j
         0BwSDZ2au6770Uj5vvnG1lIUekI+jmRLJu8ekfm0EptJipkWMaZOH2qM0u+2JlBqJagk
         uB1PA2DWJb2dYXDMF81crwmKkk6PZkBP6KTWxQvaJ0XGe0SMlWZnatJmyFAczXwA1koP
         w7YeD+MgGBsOGh8katuNyGqhXzkH7ZAyfKYhD+xxi0GWuCYzF5MnV4RwmxBDDJcwk6wq
         hNQT7XeG2T1BzMIy7GCJ3PLDcpv2m8BiIppqGZEROtx6TPrzNZDtoznRyJ2OkCrmGt9z
         V6DA==
X-Forwarded-Encrypted: i=1; AFNElJ/5XFAcVvESQkcs9JSgzZVAiX+BGo89rmiprHb926SBwilOnTHHE3ErsMDz4u1Eu8nKY7P/WV7fcydz7JiReQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz23sdVfskvYkdZttbF2goZpbjCrSL1p1XS7RhmguJM0Gt3oiSY
	TPxXY/XUPTw6eedwrgzDtgvMuiSivbMtse+kHqW4DWQ233ir84wKJk0x
X-Gm-Gg: Acq92OEuhiIfJamlbIbLe210kXNRBTLFQsOphjAQFxvPssHmWDH3VwYb5dQXNVIqYiW
	92YtytV93V56aTIm11DdUQ+fj6UeejPXThAkHD7B5gOuMPn2cppkcNN90KTIImIIxhcy2dVxe0i
	fu6cXc0luQq4gCLpkKoGzoJgoLFbOFiQPoaK8RngXWEVKWuNzJWQtS5WbDfJN1MNAePVCALgC5/
	5P+z9GYTYbGRAxYoQxNeNMq0No5Mo6g0VCzBVWbH4sSs5HZAvzXKlaoPK5zZP0qAoxHh/hTOPkc
	o+k5XyfkbDVbEI05OQcPDQQYBU+6xdx58ot9OzLxDpMv1iphdp58OxcW2X7LTW7u01bPo8sqwpY
	YLbLQ2eoQwgxGyB2KlXzkmlenTxTNT8jz85Iuo5XFCWflGJXa/ck54tLkWUCxld7FdjfC0Jni/o
	Kn3gsE58SKLz4qYGI6evrNt27nf/mewuG7rLYqPaavzMpSPzrje3KNXc15qBp2vZ4IcNfgaL2QB
	S/NqViPNROWS53Vx6ybJYkWat1mDyL9qEW7jw6h6/8OvirHrtQkzQ==
X-Received: by 2002:a05:620a:1b81:b0:912:1:b415 with SMTP id af79cd13be357-914b4934c9dmr3420082985a.26.1779911295913;
        Wed, 27 May 2026 12:48:15 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-914f87017a0sm564942385a.15.2026.05.27.12.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2026 12:48:15 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Hans Verkuil <hverkuil@kernel.org>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH v2 0/3] media: rkvdec: hevc: bound EXT SPS RPS control counts
Date: Wed, 27 May 2026 15:47:34 -0400
Message-ID: <20260527194737.1999409-1-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260513181922.2075438-1-michael.bommarito@gmail.com>
References: <20260513181922.2075438-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_124817_820779_D974CA6F 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

A userspace V4L2 client that can open the Rockchip RKVDEC m2m decoder
node can submit HEVC EXT SPS RPS controls whose spec-derived count
fields exceed the driver's fixed hardware descriptor tables and
temporary helper arrays. KASAN under a KUnit harness wrapping the real
rkvdec_hevc_assemble_hw_rps() helper confirms slab-out-of-bounds writes
on num_short_term_ref_pic_sets > 64, num_long_term_ref_pics_sps > 32,
num_negative/positive_pics > 16, and an OOB read via u8 ref_rps_idx
underflow when delta_idx_minus1 + 1 > idx.

v2 splits the single validation function from v1 into three layers at
the appropriate level, per Detlev's review:

  1/3  Tighten .cfg.dims on EXT_SPS_ST_RPS (65 -> 64) and
       EXT_SPS_LT_RPS (65 -> 32) to match the HEVC spec limits and
       let the V4L2 control framework reject oversized payloads.

  2/3  Add SPS ST/LT count validation plus
       num_negative_pics / num_positive_pics validation in
       v4l2-ctrls-core.c so every consumer driver is protected.

  3/3  Guard the delta_idx_minus1 underflow in
       st_ref_pic_set_prediction() in the rkvdec construction code.

Cc: stable@vger.kernel.org

Changes in v2:
- Split the monolithic rkvdec-hevc-common.c validation function into
  dims, v4l2-core, and construction-code layers as Detlev suggested.
- Drop the rkvdec-local #defines and pr_err_ratelimited; the V4L2
  framework now handles the bulk of the rejection, including the SPS
  count fields that drive the rkvdec loops.

Michael Bommarito (3):
  media: rkvdec: hevc: tighten EXT SPS RPS control dimensions
  media: v4l2-ctrls: validate HEVC EXT SPS RPS counts
  media: rkvdec: hevc: guard INTER_REF_PIC_SET_PRED index underflow

 .../platform/rockchip/rkvdec/rkvdec-hevc-common.c |  3 +++
 drivers/media/platform/rockchip/rkvdec/rkvdec.c   |  4 ++--
 drivers/media/v4l2-core/v4l2-ctrls-core.c         | 15 +++++++++++++++
 3 files changed, 20 insertions(+), 2 deletions(-)


base-commit: 7fd2df204f342fc17d1a0bfcd474b24232fb0f32
--
2.53.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
