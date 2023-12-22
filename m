Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9808EC4706C
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ilJblKVpGfPH1UTxWzkn40EhSf6DJnpEOwD7CQoOhY=; b=AtQ1GAVP8kmUMs
	pavpfkFTYoGq3vqhQHuDJDdzW2uy6AQZotCLZQHw0ebvJcQJxi3ElrR41QXLgKDcZtwvXaPXMn/3O
	s3VHsrILnrcoV8PP2jVSDdNUFwi2hq9AbrZbrmSMiRCRlxlqcL51GQw7XmLZFncjSzdHKA+62wv1w
	AdQPU0wYyJ3nFH+gDHnsXqEXQKgRkXWcWoYfl0u8lLtDZcI+YehBS6RTYoWb5fIDi4iXYOIVDqHT7
	TLB2NwdDJ3XMhZk9NKZ5W7221m//gkQi160k5ppoGCzy/yjlFvHGFISHQ91TmD/6oirKs3nHCRL4K
	jd/xg7kOZ3ztJLHC+ujQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjYg-006XUR-2T;
	Fri, 22 Dec 2023 17:43:38 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXd-006WNk-3D;
	Fri, 22 Dec 2023 17:42:36 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-336755f1688so1824550f8f.0;
        Fri, 22 Dec 2023 09:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266950; x=1703871750; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mvwlyAlnXeNL9AzDIrE6gEzR9A8598VoqwlyqljJPww=;
        b=js76s4NUwU5xuxcQJmhxXnLqpq+/t+F/E8YDEGcMwWWIazxRtU6AVj8qvsI/Jhrjz6
         WNa4r9MU7WlRbnkhVnZW/iZfMlp+k9GteF20DAyuXgw42dwf80/++xIn85EGm1PqTsbQ
         QUsztFpfVrgUN//nsmw+PKLX+vd9hoigRMgIbm3Q+XWJtlsu1hCRi2VXJWVnqje0bB6q
         wrIGiyBZh9VMH5o/ZqBn6CDMeROv/ZB9y30y1EZOyuQjYGT8iAZmB8kn9nc9LkwHVJuM
         /w8NQBh60ivFpXca2TvcGPEZs+zJolpaNiWBWH1br56QdDb6BHhjhXtK/J9JAeGN/LRv
         816Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266950; x=1703871750;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mvwlyAlnXeNL9AzDIrE6gEzR9A8598VoqwlyqljJPww=;
        b=e1vY3yZfst691emGAGJOZYTzYPdfxFKUb+YMiYpv5s5vgZ0mAc3W8uloGhVz24KHmQ
         NEndiT1tD8MfPHG7DfEupIRtMq0tuG8CeLQlITRoq/PR0HuVwuJKqMx2N0WUWUSoC29O
         qDf4tJgRwyaIstrg54jUuHQjk1xKGvGVoniib0m5Rz5LNul+GIG+EbaDWW1F/Voe/+7u
         e30OwCn+qJoiaRw5eOrjhvlXL618P1uoiR/XfaMcT9z+zUTud5l88V/1K9ojJySc2NO8
         Cpf/wY6SaP4tIeJcxxcIlq7N20i8/Q4cNHYTTqvtEJyRaQ30WNYZCKjX1iPIumuh8Xls
         SI5g==
X-Gm-Message-State: AOJu0YzbnRjcot7Ns//BvYq4VUJWBvwfTVBUmnlLLJv6wFgTCLJ/jRbu
	mLysy0Gv8ewIWldhTLmjpQ==
X-Google-Smtp-Source: AGHT+IFlH1FXt4AEcnW4RXoWxNep1h0V1fV019/19FThEs51/7Aby/yM7fFwgKONy2ZfswfDCXMW+w==
X-Received: by 2002:adf:cd89:0:b0:334:b2bb:6d1e with SMTP id q9-20020adfcd89000000b00334b2bb6d1emr1133231wrj.17.1703266950277;
        Fri, 22 Dec 2023 09:42:30 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:29 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 11/29] drm/rockchip: inno_hdmi: Remove YUV-based csc coefficents
Date: Fri, 22 Dec 2023 18:42:02 +0100
Message-ID: <20231222174220.55249-12-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094234_033036_C927EB40 
X-CRM114-Status: GOOD (  11.36  )
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

Now that the unneeded support for YUV based input formats is gone, the csc
coefficients for those formats can be dropped as well.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - new patch

changes in v3:
 - none

changes in v4:
 - none
	
 drivers/gpu/drm/rockchip/inno_hdmi.c | 37 ----------------------------
 1 file changed, 37 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 7c75feedacad..04344ee1265d 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -74,49 +74,12 @@ static struct inno_hdmi *connector_to_inno_hdmi(struct drm_connector *connector)
 }
 
 enum {
-	CSC_ITU601_16_235_TO_RGB_0_255_8BIT,
-	CSC_ITU601_0_255_TO_RGB_0_255_8BIT,
-	CSC_ITU709_16_235_TO_RGB_0_255_8BIT,
 	CSC_RGB_0_255_TO_ITU601_16_235_8BIT,
 	CSC_RGB_0_255_TO_ITU709_16_235_8BIT,
 	CSC_RGB_0_255_TO_RGB_16_235_8BIT,
 };
 
 static const char coeff_csc[][24] = {
-	/*
-	 * YUV2RGB:601 SD mode(Y[16:235], UV[16:240], RGB[0:255]):
-	 *   R = 1.164*Y + 1.596*V - 204
-	 *   G = 1.164*Y - 0.391*U - 0.813*V + 154
-	 *   B = 1.164*Y + 2.018*U - 258
-	 */
-	{
-		0x04, 0xa7, 0x00, 0x00, 0x06, 0x62, 0x02, 0xcc,
-		0x04, 0xa7, 0x11, 0x90, 0x13, 0x40, 0x00, 0x9a,
-		0x04, 0xa7, 0x08, 0x12, 0x00, 0x00, 0x03, 0x02
-	},
-	/*
-	 * YUV2RGB:601 SD mode(YUV[0:255],RGB[0:255]):
-	 *   R = Y + 1.402*V - 248
-	 *   G = Y - 0.344*U - 0.714*V + 135
-	 *   B = Y + 1.772*U - 227
-	 */
-	{
-		0x04, 0x00, 0x00, 0x00, 0x05, 0x9b, 0x02, 0xf8,
-		0x04, 0x00, 0x11, 0x60, 0x12, 0xdb, 0x00, 0x87,
-		0x04, 0x00, 0x07, 0x16, 0x00, 0x00, 0x02, 0xe3
-	},
-	/*
-	 * YUV2RGB:709 HD mode(Y[16:235],UV[16:240],RGB[0:255]):
-	 *   R = 1.164*Y + 1.793*V - 248
-	 *   G = 1.164*Y - 0.213*U - 0.534*V + 77
-	 *   B = 1.164*Y + 2.115*U - 289
-	 */
-	{
-		0x04, 0xa7, 0x00, 0x00, 0x07, 0x2c, 0x02, 0xf8,
-		0x04, 0xa7, 0x10, 0xda, 0x12, 0x22, 0x00, 0x4d,
-		0x04, 0xa7, 0x08, 0x74, 0x00, 0x00, 0x03, 0x21
-	},
-
 	/*
 	 * RGB2YUV:601 SD mode:
 	 *   Cb = -0.291G - 0.148R + 0.439B + 128
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
