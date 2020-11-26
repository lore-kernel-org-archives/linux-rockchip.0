Return-Path: <SRS0=br+z=FA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7846DC63697
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2020 12:22:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD28E20B80
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2020 12:22:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="NHdFzynm";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YTGVLGOc"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD28E20B80
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UdFL6pq3h0zsPGPWgfleFeRLhflsagd/9Xgf+oZsmfQ=; b=NHdFzynmwb0MyBhAgl6lmcedl0
	NGhNYuVUeV151SOTwx+zxLGMlw3eNrpYgDGOyKji6P6pA+kW4djJlg6TtBg5CGSHc0646If9CEl9x
	XaAk6RV9jRUZolZTIrCEjalS79vLvlprxW1TcJRgRGOD7Pm1VRhwi3lCY3UUea/nuvFsOnJ9pTJ9J
	jGOxfdZL0+OHYnDI8w6qoZZudf0gYmWHPtMaodZ9bPkfHH/FqN3SGe3rAxB/yBixgo6+FVlmVjgbK
	7EKjqesQkzAgwpzEIIqjraUXiOl2Fl0NmfUgB1adE4OVCYMtsI+y3qOZt60xjVrThuKpM1QqAlkr5
	DADoLGUQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kiGIL-0007PJ-7Z; Thu, 26 Nov 2020 12:22:41 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiGII-0007OP-7F; Thu, 26 Nov 2020 12:22:39 +0000
Received: by mail-pg1-x543.google.com with SMTP id t3so1610704pgi.11;
 Thu, 26 Nov 2020 04:22:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+PRl5UQLIApysPdN6gQ2XrG9w+pBFNZGAKcsQ8VlHiM=;
 b=YTGVLGOc+HyeIBPiF/VwT6Q5AShcksNZ1su1DfUhJC7gc04jVQ/vqedZiuCcy4mgm7
 Yad8VoKJWb7ifNn5+GFGLjsvOtfcDWukj74/XcAkMyKa/Fxkt8uvJao2+s5oTeI993Ln
 2QqSQJrxae8Ch+0nOi64QUCr0kaN51QFs9FB/8D8brDyFk5iBtBqbg1iS66I05j6zob0
 Ug8fSaiMt4fivQR4s39DfkArv1dWVb+Q1TYLRAVs1oulYKYEXaoI5LUzBELycqjStPSR
 DTyUQZmN1ZzdvbUKpI60nhIkrQEL6PpF66akWeaaqJLqpEFJFGtODuRJw61uIpFXptmy
 DNqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+PRl5UQLIApysPdN6gQ2XrG9w+pBFNZGAKcsQ8VlHiM=;
 b=LY15dmdZVTFoiZ8dzCrKG0ViY/PnKBuQGXs9IJNQimXwdHdPlRGVXI8/Pj3AxVdBCL
 r4Ab9jXAWBOtI1BgVvWoX8LlOcsdJFX8AFIiH3ZZU+TZHdfwpnns84WTLjJ3hta+fKwH
 P8J/mwjwLS0AFOQW0KSH4XbgLiw9zKkRVSWAJz9quIyNSApFK144Hxoz+zHk23U9E40N
 OnYJ3dXcNqZ/q0J2ZOw/KGXAxQzCt3deE4MJ9yD8bLliPP0xO6v2utn/WN4/KtrO8ygk
 3cJJwSSWgoIiilcHyoRaxwhact6RIcTOVyPBM1OhCAlDAJMBU9e/eIIjr8vvO6xl938W
 m1bA==
X-Gm-Message-State: AOAM530PkTwfdSiy9eshEAsUaLvfBt5CCjhJl6VtbuZDejdwOWX5zClw
 QwoKj6AIqpuvVXm/G+jetoZ0ciXSUw5Q
X-Google-Smtp-Source: ABdhPJxW7ibKGsEWj96grTgovhmVBVs0j1mMACotqs2dhmBPdOq8jfxUhorzb2+ZDnaoCKYhxCetCA==
X-Received: by 2002:aa7:9395:0:b029:18b:bd17:2ea with SMTP id
 t21-20020aa793950000b029018bbd1702eamr2505597pfe.48.1606393353634; 
 Thu, 26 Nov 2020 04:22:33 -0800 (PST)
Received: from localhost.localdomain ([116.92.233.28])
 by smtp.gmail.com with ESMTPSA id s26sm4663856pgv.93.2020.11.26.04.22.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Nov 2020 04:22:33 -0800 (PST)
From: Peilin Ye <yepeilin.cs@gmail.com>
To: Helen Koike <helen.koike@collabora.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: [PATCH] media: rockchip: rkisp1: Fix typos in comments and macro
 definitions
Date: Thu, 26 Nov 2020 07:21:48 -0500
Message-Id: <20201126122148.9162-1-yepeilin.cs@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201126_072238_350762_29D0F6A8 
X-CRM114-Status: GOOD (  14.98  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Peilin Ye <yepeilin.cs@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix 4 typos under drivers/media/platform/rockchip/rkisp1/ found by
checkpatch, including the RKISP1_CIF_MI_{M,S}P_PINGPONG_ENABLE macro
definitions.

Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>
---
Hi Helen, Dafna,

I noticed that the RKISP1_CIF_MI_{M,S}P_PINGPONG_ENABLE macros are not
being used yet, but according to page 12 of this developer guide [1] I
think they are for *enabling* the ping-pong ("double buffers") mode?

Based on linux-next 9d3e48f20e11 ("Add linux-next specific files for
20201125").

Thanks,
Peilin Ye

[1] https://dl.vamrs.com/products/rock960/docs/sw/Rockchip%C2%A0Linux%20Camera%C2%A0Developer%20Guide%20V1.1.pdf#page=12

 drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 4 ++--
 drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h    | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index b81235afd053..94b65680c4c1 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -46,7 +46,7 @@ enum rkisp1_plane {
 /*
  * @fourcc: pixel format
  * @fmt_type: helper filed for pixel format
- * @uv_swap: if cb cr swaped, for yuv
+ * @uv_swap: if cb cr swapped, for yuv
  * @write_format: defines how YCbCr self picture data is written to memory
  * @output_format: defines sp output format
  * @mbus: the mbus code on the src resizer pad that matches the pixel format
@@ -870,7 +870,7 @@ static void rkisp1_cap_stream_disable(struct rkisp1_capture *cap)
 {
 	int ret;
 
-	/* Stream should stop in interrupt. If it dosn't, stop it by force. */
+	/* Stream should stop in interrupt. If it doesn't, stop it by force. */
 	cap->is_stopping = true;
 	ret = wait_event_timeout(cap->done,
 				 !cap->is_streaming,
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index 049f6c3a11df..8a8d960a679c 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -106,8 +106,8 @@
 #define RKISP1_CIF_MI_SP_Y_FULL_YUV2RGB			BIT(8)
 #define RKISP1_CIF_MI_SP_CBCR_FULL_YUV2RGB		BIT(9)
 #define RKISP1_CIF_MI_SP_422NONCOSITEED			BIT(10)
-#define RKISP1_CIF_MI_MP_PINGPONG_ENABEL		BIT(11)
-#define RKISP1_CIF_MI_SP_PINGPONG_ENABEL		BIT(12)
+#define RKISP1_CIF_MI_MP_PINGPONG_ENABLE		BIT(11)
+#define RKISP1_CIF_MI_SP_PINGPONG_ENABLE		BIT(12)
 #define RKISP1_CIF_MI_MP_AUTOUPDATE_ENABLE		BIT(13)
 #define RKISP1_CIF_MI_SP_AUTOUPDATE_ENABLE		BIT(14)
 #define RKISP1_CIF_MI_LAST_PIXEL_SIG_ENABLE		BIT(15)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
