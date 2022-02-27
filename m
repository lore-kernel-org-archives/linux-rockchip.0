Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD0FCC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 14:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bh/KaYOrbXubIGFRh388k1Qs/ag72saklGjfIh09DBc=; b=nvrVS0u4595Kt4
	/EJ+ks/QNj49Km4OIj07e6Lle5pDZBb3k3z04DrMfuIbjhCah8qS1xS6Wm6JC5ZGRxjFb79D8eWRt
	d2sgVSsSeol2aJuOwHUO1/jjR1yu+lyJ75/27oE36cnE2h4M5j4aro5k0kxVHpwvMufM/CXo0lLKr
	kj2ycRfDTPmm3NYmHJ7JMqGj+JEsDlJ82JZmWzgnu+i14zoeXRXJm1EfyhxtNZQX5ZazfA2p+HY7b
	SfsFCJFT0cGAGBjPOycu+5q0HrGSHREW/346SjLroUve1TLDWGUc1KD8i1d6iuRpBj3hdJ6K2Bb/3
	ICAXtGa6uxPQWPRUd96g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOKux-009VZw-QJ; Sun, 27 Feb 2022 14:52:59 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOKsg-009UJs-Qu; Sun, 27 Feb 2022 14:50:45 +0000
Received: by mail-ej1-x634.google.com with SMTP id r13so20066196ejd.5;
 Sun, 27 Feb 2022 06:50:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=se5fdTdf84xDWqTWcks3tih8Dd3br+tSQjNncikkPL8=;
 b=WsxMOlMSwbUo4F4tfM2v66cny1ddxMCxjW/WYiH2LPsXUP0Dgw0BB4U5alKPAeg5G+
 E0/6lKV+dL/upl6B084xKPuUNJ5OKq2P50p0DTossOk75HFDqMr8p69TYGbva8QvM3tI
 /ELppltgd1GoRKhJfYnK5didNSdoRgcEJ++Y+wZ62VL0lxEqfWdRoioXUfoCZ3NHhD4G
 Fg3U9k/MUustCZxsQDuEHO2KiD9gKEQdEfL95eW6XonSLkgDMl45BZCN2IoID6Yyd9Pz
 XS4DhLDsiolky6cyni5hk1amiOStXP0EEDh5AKOkTs8V3iQpU4ZAEO/i1kPX33L7hqBh
 p8IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=se5fdTdf84xDWqTWcks3tih8Dd3br+tSQjNncikkPL8=;
 b=cRIC8TYEBmJpqlKesirZ65vdU/mEgmOCDIUa8WvPAqtqT9KNgfQC3idejoTk9gGnQY
 Ogs2RfNs4FK0f+vJbnLE67dAiHRwzKH/DmYq7QQk+oJUGcnivUKehotJKiGV4n0ELlPl
 tBIXyXgqN8QrYEgav/sxB832tmHr7FhJ0DDotnQPhBdFOUqvyxu5VdvXMB34jjVejyhw
 4MhRcsYQ6cHQXcBO3XyUzZ5QQEji3ANVWUbP7sE9G4N/CRVeVvwO1f1B9xdviRHX4aKy
 yxJxBL8pRikWFGDS3WOYeOn9Mq2NhrwQj03TaMKXP1LPIUOVAMbNDU+WuADAyCvjRXTn
 PGaA==
X-Gm-Message-State: AOAM532mohYU6zAybb2K7G18XRQBtKd1Epjn4PlTyigN6iJD3watBxxe
 5S8l86kRFYjct+tRdKycOEA=
X-Google-Smtp-Source: ABdhPJz2uGFr5qrfNl7dYD/dRIIHoDCaicFBQ09kr3aVt9005jUPJ6GCnQpGx27zrb9Kmn6OzpytMA==
X-Received: by 2002:a17:906:2991:b0:6cf:6b24:e92f with SMTP id
 x17-20020a170906299100b006cf6b24e92fmr12153116eje.748.1645973437696; 
 Sun, 27 Feb 2022 06:50:37 -0800 (PST)
Received: from kista.localdomain (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107]) by smtp.gmail.com with ESMTPSA id
 a1-20020a1709063e8100b006ce06ed8aa7sm3501887ejj.142.2022.02.27.06.50.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 06:50:37 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [RFC PATCH 7/8] media: hantro: sunxi: Enable 10-bit decoding
Date: Sun, 27 Feb 2022 15:49:25 +0100
Message-Id: <20220227144926.3006585-8-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_065038_984840_2E88EB3C 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Now that infrastructure for 10-bit decoding exists, enable it for
Allwinner H6.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/staging/media/hantro/sunxi_vpu_hw.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/staging/media/hantro/sunxi_vpu_hw.c b/drivers/staging/media/hantro/sunxi_vpu_hw.c
index c0edd5856a0c..8d8a8937d6aa 100644
--- a/drivers/staging/media/hantro/sunxi_vpu_hw.c
+++ b/drivers/staging/media/hantro/sunxi_vpu_hw.c
@@ -15,12 +15,23 @@ static const struct hantro_fmt sunxi_vpu_postproc_fmts[] = {
 		.codec_mode = HANTRO_MODE_NONE,
 		.postprocessed = true,
 	},
+	{
+		.fourcc = V4L2_PIX_FMT_P010,
+		.codec_mode = HANTRO_MODE_NONE,
+		.postprocessed = true,
+	},
 };
 
 static const struct hantro_fmt sunxi_vpu_dec_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12_4L4,
 		.codec_mode = HANTRO_MODE_NONE,
+		.match_depth = true,
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_P010_4L4,
+		.codec_mode = HANTRO_MODE_NONE,
+		.match_depth = true,
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_VP9_FRAME,
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
