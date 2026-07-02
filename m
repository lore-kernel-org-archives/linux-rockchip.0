Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A271C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3BFOug+5utGqr2svj6zabwXdBn7eyTObCOe+44NJGA=; b=xTU1THVHrHZp/7
	wJUfoSRFdr+o/frqS/BHKHD6Pp65a1rOk8M5UTGUNl9grLFd4SQEhqcZL9ODPJ7Ws2Bg92yjusqqn
	42/7D+mNnDT/JOFtPXp/JJljdpZfY3RY8LWn4AhTFdgizwcnooPJynHv2BBuarx2yZQCL4x9IK+TM
	k5Bw0gZYuGdWYppSY5Ji5XM7uuMy5NRkc/Ek6e504a9AJveMFjfBniDSMeKS72qE6cKXnNF30gr6j
	Y5wDtv+k9NZACwUTVNTL98lsNBMSJa5wICMAIxAUk7mtGYjloUgHek5vlDfvfA6T3rRjlybOOzmkR
	/ljwYyuFnv7zDSGyziwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfOJ9-00000005TFG-23el;
	Thu, 02 Jul 2026 20:46:51 +0000
Received: from mail-pj2-x04.google.com ([2607:f8b0:4864:39::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfOJ6-00000005TD6-1se3
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 20:46:50 +0000
Received: by mail-pj2-x04.google.com with SMTP id d9443c01a7336-2cabf1f1051so1903415ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 13:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783025207; x=1783630007; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kX4f21jjda4cufwsAQRS21Bz34ikOLxX1Fk3vMjHh/s=;
        b=PJoeu6iCS5fH2v5loEYbOsPEQpRRZkBX0CsZESHLa4qr53L+3u4TotGvtSr+W1KqpU
         fNto2CzS6G1i0CPIdIoxyX36fomFY3E1xRJ87qEsbHwE89i7kl2UWRwhd6Z9PLr8/A60
         PooQPyS3B7965v8yz3bMzbnmgsDFxpiOOIJBpEo5W5j97jJi1GUQ2ZNfmSLvHIRebuGo
         e76HwcEKNV3JIVJSWpUWQnRy5plI89hDguJAUQrweAwNzrRQ+TQuFRIMCQu0x/K2qAGv
         rVnRhMaVxE5IdxxknZBP7dhiDSxY9LeJwr1bsH1qAEiCAHmOsEEsbgHp/XS+qqd17qEl
         ahwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783025207; x=1783630007;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kX4f21jjda4cufwsAQRS21Bz34ikOLxX1Fk3vMjHh/s=;
        b=VnnQjchWUj9yqX4FjKXrdh+LDEdb+MiyVyqIOdn4HEiX7HyA+HvMWbfElUOjmGjHfr
         ecx1CfitKj0+58JUibO4O1TD1s6ftev6Sz0oDNt+6E68qCFYO4tJ0j5V88RGMyS6bkeJ
         2ohAoZ4egPRe7wz7oYH9AAx1TUespLyVcg4lqDfqcPrY065+6/5STmb1E5j/QdcGAGI9
         oSFwlApU9xROK/G+FDsKggip1ti640zVb+kkR7goNINmCjxlByc3/h30hOIZ7qAjSn+v
         8Mo3c/KDxP2ilDmemlihzER3JPls2YJulLYJOjh12sfs23BbEqyraflKKDSRSFgTETPb
         2bNA==
X-Forwarded-Encrypted: i=1; AHgh+RpMWn/ny3oVS/zAZCBG/bSmXGXob//syD3FSVRE0r6rpMkAs1eKun91UMiUijwvg54MmZSUwnOo7WYwa4flhg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxg7eW6fJ6UGfpyaOhS12SyXvDkCdidNUUdwZj+SccMQOkOZGdP
	AMy8jmoqf7idWvZ2BQ3uv5BtMq0r7EXg87rhwwgp4kYKAFVHmb2lRGJr
X-Gm-Gg: AfdE7ckkjjhhKL+4x88yJV2ikwuYPqtnXi3d8i35PvrDfxtrJ2M9pqX+6WnGlT9mL7u
	78cIG1+cs0x9qFaqNxu0f8XgZYLupIspE88D450ltG/3NElAV9JlMEMwppbsweqiT5Hl1QtWtqf
	sa9ksIblf9Uie12tNruCg73tuCvhzFt3GOpZF4UpIZUOdWpe7k9qBfjqNkYKPxbrs8By60/CAsy
	7fqVrKtgIGOPHYWwvYHhTaegXzxEhUAJ3b/zBswN5ceQd4252WeoNgsGSu0GQk/bWgn6awQgiov
	apq8/uUtD2Tc9SLwsqUpRPQ/1vPty4fsAc89AMmS/ucBCFM7uWSjIhctBE3y6dIaQA0O8vXRaLu
	XHi6eVv0V55VX0yhFMrAFMWBTdPhldXOq6zgIwzzTBux4xLnLOB1lOAVF0AJkDs+JW34uUhDgQ5
	eECfYbWbMxKmIEUB95Jgshwg==
X-Received: by 2002:a17:903:1245:b0:2ca:281:27f9 with SMTP id d9443c01a7336-2ca911d8c3fmr66893435ad.27.1783025207272;
        Thu, 02 Jul 2026 13:46:47 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca9a9004c1sm18654065ad.21.2026.07.02.13.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 13:46:46 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefixes: Add graperain
Date: Fri,  3 Jul 2026 04:46:27 +0800
Message-ID: <20260702204628.2407308-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260702204628.2407308-2-coiaprant@gmail.com>
References: <20260702204628.2407308-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_134648_530136_E7DA71AF 
X-CRM114-Status: UNSURE (   7.99  )
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

Add graperain to the vendor prefixes.

Link: https://www.graperain.cn/ (China)
Link: https://www.graperain.com/ (Global)

Signed-off-by: Coia Prant <coiaprant@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 396044f368e7c..641a37c0debc9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -682,6 +682,8 @@ patternProperties:
     description: Goramo Gorecki
   "^gplus,.*":
     description: GPLUS
+  "^graperain,.*":
+    description: Shenzhen Graperain Technology Co., Ltd.
   "^grinn,.*":
     description: Grinn
   "^grmn,.*":
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
