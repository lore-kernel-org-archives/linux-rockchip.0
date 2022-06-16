Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFA25C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 20:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGaLKx8tgAPTKUutHigJA8Pb5yt9WO1aot2pgKvAjwo=; b=j/rFyLOhPDGusA
	tqalHLY6ZWp64vwSzEK+T6xPpo+LG1j+YeyF3da2BjAH9qs+loEbjNRow4x6rbZsbDu63AByLzZ3g
	wzq+uhCm0DqLV7JCUFDacOqnRKcorwz+D2qwqVLiOhj7WqnwwZG29O4UqwmRxAkPX4Y1L/XA0RAPy
	DC0PBGaAUi8FTHWw+4ImBOliYnFIJdYOIk9/QnsMxk4m3Mj7vDdWpsJ0BSZaBQ41a/dighQE9Avcz
	KPGd+u2z4lw+kGmfgmFJaVqJ/JhhyLqikZGb/G6ZLcPYBwM7VxsvddCyJdk+JP1dsF/OR5yEUlDC7
	oennngk9JCu0JpcFduww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1w5b-0047Bm-BA; Thu, 16 Jun 2022 20:27:39 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1w3W-0045yA-9b; Thu, 16 Jun 2022 20:25:32 +0000
Received: by mail-ej1-x632.google.com with SMTP id g25so4817116ejh.9;
        Thu, 16 Jun 2022 13:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=S51F3Je5QDB420YRCT+3HINCDkvBOXZdT2bwWLedeKE=;
        b=BBO69XMOO3d5o5uHjrczeLA5BMwcMouFDIOARWkmT7GrhDj6Rh6l5caepWk2XyUIgc
         8Gn6BFxCb/irQ78FHD46MDFyUe++lQlzDybuxYEKQruT4YzuMgS1/e1DVP7usIvj7Q9X
         Ewj9G4WoKZNd0dvus4bQrhzYuebUrtVeyoGgpil8lVAyK7q1B+lzU0yXZOfLwflgtFFN
         sW/TsuU5WcdYSz2jwALtvwoXQHEYjZufP3cwKXuQx5I5lUdTG07sSwrnEKNsClJM5x2E
         XiY/uI/N0i8RQL7O/XkrKQa4DQicNwX95RPUS0nizP/gJn0YtQsFdS/AhuTcb3pg+zoy
         luug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=S51F3Je5QDB420YRCT+3HINCDkvBOXZdT2bwWLedeKE=;
        b=BXbXhRcmHiFuhp+chC7YTXy4Vupz5Q3d0CrNMjmeKc06Zb7AJpNbUQ1D/CVN5d7/2K
         HL09dSoK7qr6gL6PzCmRQrNHarux5f0y/Kq23kjCNf39rJjeSjVY3MqlSI7uaIJ/nuUU
         RlglqyKDJiQb5Qd8CKwF0Zugl/ZgsNe2P79yXYq6ocl79Lq6NQ9DZ1VhminnJEg4GPmw
         9+fig4hmUCd5XYiOJhWqvg37aJgegPMc6pux2qwTBvkRWOJVQs4NLGK8sDrBgl9bvMpN
         FMRVn2T8dhHXL9ldL4BmKe09MJfb8DWnhoGa/68Cq6OnB5lyf7FQ2p/B6rxToKFtMsvq
         NBbw==
X-Gm-Message-State: AJIora8d5qCMb78t0MrECKk8McDalqQZlJ6plt5q5AtCyiIOv0dUkG+3
	lzjTump0TbWnFBiA6tBCEQU=
X-Google-Smtp-Source: AGRyM1sDaGC+6BR752Es4zGOOLY2CRsRtcQIh1wgtcW8aG69QcftAAgu5n+sP0gTrl7CxcEdIodS2Q==
X-Received: by 2002:a17:907:8b87:b0:715:e127:b64d with SMTP id tb7-20020a1709078b8700b00715e127b64dmr5996239ejc.481.1655411126677;
        Thu, 16 Jun 2022 13:25:26 -0700 (PDT)
Received: from kista.localdomain (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id 21-20020a170906329500b006fe8a4ec62fsm1186760ejw.4.2022.06.16.13.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:25:26 -0700 (PDT)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com,
	nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH v2 7/7] media: hantro: sunxi: Enable 10-bit decoding
Date: Thu, 16 Jun 2022 22:25:13 +0200
Message-Id: <20220616202513.351039-8-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220616202513.351039-1-jernej.skrabec@gmail.com>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_132530_378006_35D19EB5 
X-CRM114-Status: GOOD (  10.10  )
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

Now that infrastructure for 10-bit decoding exists, enable it for
Allwinner H6.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/staging/media/hantro/sunxi_vpu_hw.c | 27 +++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/staging/media/hantro/sunxi_vpu_hw.c b/drivers/staging/media/hantro/sunxi_vpu_hw.c
index fbeac81e59e1..02ce8b064a8f 100644
--- a/drivers/staging/media/hantro/sunxi_vpu_hw.c
+++ b/drivers/staging/media/hantro/sunxi_vpu_hw.c
@@ -23,12 +23,39 @@ static const struct hantro_fmt sunxi_vpu_postproc_fmts[] = {
 			.step_height = 32,
 		},
 	},
+	{
+		.fourcc = V4L2_PIX_FMT_P010,
+		.codec_mode = HANTRO_MODE_NONE,
+		.postprocessed = true,
+		.frmsize = {
+			.min_width = FMT_MIN_WIDTH,
+			.max_width = FMT_UHD_WIDTH,
+			.step_width = 32,
+			.min_height = FMT_MIN_HEIGHT,
+			.max_height = FMT_UHD_HEIGHT,
+			.step_height = 32,
+		},
+	},
 };
 
 static const struct hantro_fmt sunxi_vpu_dec_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12_4L4,
 		.codec_mode = HANTRO_MODE_NONE,
+		.match_depth = true,
+		.frmsize = {
+			.min_width = FMT_MIN_WIDTH,
+			.max_width = FMT_UHD_WIDTH,
+			.step_width = 32,
+			.min_height = FMT_MIN_HEIGHT,
+			.max_height = FMT_UHD_HEIGHT,
+			.step_height = 32,
+		},
+	},
+	{
+		.fourcc = V4L2_PIX_FMT_P010_4L4,
+		.codec_mode = HANTRO_MODE_NONE,
+		.match_depth = true,
 		.frmsize = {
 			.min_width = FMT_MIN_WIDTH,
 			.max_width = FMT_UHD_WIDTH,
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
