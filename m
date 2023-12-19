Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61CEAC46CA2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N7IWpWFPNF5JV+9Gtv+hnPn+s3ARZnpVJchN7VJj2Tk=; b=1PKppHIG2MEHuC
	S0yhUS596LlThfFNGUUlKgCqYgdBKLm7u9vzFa+8aYZQ6yP3af4fU4clpvXr1CK3Gng/dc5wpaF3r
	uuHFHaEI5wp1oW1ln+5BoWCVoCI0xSX8yTT2fAX8hxNZcloca0kS50Gna8bO1ktqNZkOs4MvFnYIB
	Srs5xEjVyttM1q6IVhfIJfcQUE58iHFywfEpL160SUH6Bu2ucT/bls4uD6ZxHAB1s0NcL83kQMVFJ
	oDO0RVvF8BVfDxnIIZgzSj+9d8Vt1QgUrER3WB9banT313JAst1O9Y7MQkCg7NTlUJLbyCcH6CyYL
	hzUZIBr5QAqbWMUfJ9Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTo-00Eos0-13;
	Tue, 19 Dec 2023 17:02:04 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdT4-00Eo5G-1o;
	Tue, 19 Dec 2023 17:01:21 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40c6ea99429so48500085e9.3;
        Tue, 19 Dec 2023 09:01:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005277; x=1703610077; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vfw1A5kPCqeEpvkS0qSDCc84V56+/woGo5pclCQd9uw=;
        b=b7NAYHTuuMWBqmBXhf0yeaJe4aGe/9EusayLZwaE0YGSCP5lnOYMpF8A6IM8iGf+zi
         xbMmTqFWIGcnt7tanv40AotB3cvjmU63ZfATd0ehSikeU1dRbSMx7dmFHksBHp6/fa92
         8iOo1bavEAQVsMUrJSC8u88cchvnClFbKnsj6Yy7q6CO3I6Ajrnw1MfJTKOjbDxqAmvr
         uevOCvCTZ0b34b1Geo0VnxKmm5sxdgmWTSrrsOvL7UzrCnCibJaHLDb3bY/qt0R6cBvc
         0reVeaLE7oLYWsCIl7/ZfxmhFF25gOg3P2Zno3z1p8N4FXVIMzIxXgshM0b3opIsiHES
         jf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005277; x=1703610077;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vfw1A5kPCqeEpvkS0qSDCc84V56+/woGo5pclCQd9uw=;
        b=mm30ycGdQsIBYB17vb+InXomdSv+VEip/vvGxu50YvI52rISRNBiLwkTadKX64NQm/
         Yr6bPctKmtZ4gfe/P6dZh3Jzsm705w3qlF13nC3w+bPOXoNTkagE8xrN1c1Yb0zhjT9b
         bNa2WWmG3c28JCGsBBpAlN0OiGASEdj+eFYhXj4xGqzbpxSAYZJTuRuVv4U3To8Methq
         TdwPffQedoo1VMzq+Iqr0FaBUCwqSC1BxR0gMVLvZWTTtnNG3Fh0FDlYQC/cmxs7I+mh
         0K28unLRMDBFPjIu8djCymX9AB/rvdfcd3EjvY66TxrGW13kMIb0EZ+1HJV0hSTPlGw2
         Zptw==
X-Gm-Message-State: AOJu0Yw/ayN5koJa9cl5/MLzvSk07fcuWslYAlBh3aE79sE+M+eVqiDb
	zO7s2G5ePK/6H6N6gQxyew==
X-Google-Smtp-Source: AGHT+IEoAr6dXqLAHpqmd1Dg8MViO9ibFuLzxT2b+W8ygqu4NI2IAAxTliP/CtM0Lm8338Mg9O8/2g==
X-Received: by 2002:a05:600c:5115:b0:40c:6924:5172 with SMTP id o21-20020a05600c511500b0040c69245172mr3185004wms.92.1703005277195;
        Tue, 19 Dec 2023 09:01:17 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:16 -0800 (PST)
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
Subject: [PATCH v3 11/29] drm/rockchip: inno_hdmi: Remove YUV-based csc coefficents
Date: Tue, 19 Dec 2023 18:00:41 +0100
Message-ID: <20231219170100.188800-12-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090118_631166_456D7529 
X-CRM114-Status: GOOD (  11.65  )
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
