Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBDC7C46CCD
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZ9QR8QV0ipC5mvlVWIMxOlFdElo1ryJqXSjiCFrE7k=; b=KhqKtP0OhaNqYn
	dIiTLhUQhGouO2LwnOjBUlatNzSRe/U0aV5fmhATMm8EnLPTNby6KEgmQlC8OuPFroz/BJoM9Dbu/
	qIFlEnaEGYyuGYXQi0nf1L2wOVDl83MVCUrN+MZLI4XGB/SQBI03H4c9vYFPR+EgGxoiOJbihl4Ld
	iPXCPhzwRnCdl1BGVSdt+OZjW859/4/yThZw7O+3dDC+aLHt3T1DtPjaQq6O7A6x3c3rlFdK5sQM4
	Y1mYt3R7uqjyJFqeTzagY+otppKr55DnOry2OVsbBbuRrtMoLpdWhjj44JrV0CREr6764ziCmuA3z
	LJ4kpLY1j9rki9lzplIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXWD-006Kgi-2f;
	Sat, 16 Dec 2023 16:28:02 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVV-006Jqw-1x;
	Sat, 16 Dec 2023 16:27:19 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a2339262835so7676166b.3;
        Sat, 16 Dec 2023 08:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744034; x=1703348834; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=droXS1VwLjQHMIbiZwuYM0gMqlIpmFeRVQnM5SEX4co=;
        b=YIOgX/2wOEyitfDcLWt8sumUzmjGLMTXnVnws+09qQI1NuZYe8IhUh+VqhQ8NgDqy4
         moaN/JzO95CJ77CTwZAkY1mQBbXHqCuR7N7oGfwzfnp56iRIEBkRHABFbAbZUh6sowdC
         nYf1zZ9MGTJn6MlLz9b81YuyJJHR7jL8EXiZz3uIlLVqzCdYelmqHUGy6Snxo1NYVGJd
         bmpEK3HKRsresMhqrugIA2mYzxrR4OAw0lHjcZDlQCCWHaCYh06S8YUKNLWbhJWeuGX6
         8iLeexFWqvEQsnuzDPZW6nuHqvJPCQHh4m4tsVwl2SlBQhhjFtd1kdWujoDQdHiqVI1m
         rlIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744034; x=1703348834;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=droXS1VwLjQHMIbiZwuYM0gMqlIpmFeRVQnM5SEX4co=;
        b=S26DjRVt/KMK0P0I1kGk6W2uyZ0GkL93k/Hpckb7cz2p7K5cNMmS9PcdZQp+ioTrXk
         FBRJa8NNTpRf+7oo/mBihSN74ZcKa2PTTqigqHjCdJ6ULf62hXnOt55i1h0TnRUm3guT
         nRYydJhwIMKNFQZHO7r4LZ/67MXsmZB0ASzu+T36/lUm9Yv+h3mEHlGG21ABL1K5nijQ
         9MRKMqtjdKrlNlxQuAFAhScvXmQXsiyrzzzgIrFjWFfWpQMfTtvyLIC4VkiOdLOG4yZA
         eAsyzZhTnMfp4BXfDdSGxduTGu8fdZtkbNsAtzO7oIg6+KONkakawHAmYJXxoLpW5geM
         xBCQ==
X-Gm-Message-State: AOJu0YwWmOSf8u4J1ucHehuOU6HsZ2N3ss2oSHxdqTLXfD6cwI4Wn+3i
	XScqxHc5sCWDaCGNTZdOfQ==
X-Google-Smtp-Source: AGHT+IGCbJ2pPaCyxT0gqr9ykpy0r+mCHKKQDsnV4NSzT5q0D0O1ZspxzFhMLbO9gd0Z2KHRy7XNxg==
X-Received: by 2002:a17:906:142:b0:a22:faf0:3bbc with SMTP id 2-20020a170906014200b00a22faf03bbcmr3702764ejh.139.1702744033851;
        Sat, 16 Dec 2023 08:27:13 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:13 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 11/27] drm/rockchip: inno_hdmi: Remove YUV-based csc coefficents
Date: Sat, 16 Dec 2023 17:26:22 +0100
Message-ID: <20231216162639.125215-12-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082717_696910_8EFFE66C 
X-CRM114-Status: GOOD (  10.96  )
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
