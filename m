Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 655CECD343F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 22:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+I340v2dF0ddEn3DOeqn4BQyZmpRGYT7SDQ+NQlj5E=; b=y5ZMW8ONphP0az
	xlG5Zjh5Hs7DA7Z7IyjJAQZpprI/HswHLQPGT5kszZ5p3UeMXUho4ZMizavYz+zmdVrY8QZ08YWI8
	rZ34kVLyQGJGKY0gZm9PyYFA4QpQBOYy8hgnzFahsOzTum4Oo4Es/EqjFPdRol3Sz9KE203JlboTk
	nrSm6wu/JLmt2IYypYIpvdyE4fMkR0EBzI0odI8VldID4raq6T3Ja5lcagOYovl9YKsc3wFPEjp64
	r7UGKxBykfiOYycnUNXH4Ys60qiAKg3BKx24Skh63UG8qPKbSaWEGs5j9VNYSkVH9BEsz1s8cFU+Q
	iRUu91cL0mz2mXa8t/iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wO0vJ-00000009cZM-1dVX;
	Fri, 15 May 2026 22:22:25 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wO0vD-00000009cTy-3Oll
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 22:22:20 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7dbca22dbfeso182682a34.1
        for <linux-rockchip@lists.infradead.org>; Fri, 15 May 2026 15:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778883739; x=1779488539; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=ajWJnITwrRHdkYUIp+E7bO5KYN/6l3Og4Sf9HMcoIT5MFx0pyzXezl54bBaJSPdNvu
         K4mskr8NsrrMzIzzpDH5yG+Wmyn44FYMvj6doycMN80CDHPH5YP4GgYdSIQlsTdFRGgw
         4+xF2G6SZGrFAhrgaGROckNQNWvHxrfBCanfR2v5iOghfpijaci/tzUS04ECFs9jjaLh
         FyXemhT/GwEdxfitJ5BVySkHzzdMIYmiFakH5odEK7BmNa4ou/HiMU0Vg8eRnUWaa1bJ
         cSc5CKMkjEFhAnQ+5R6BI1iWdcuj1Q6ToAROZj7twF/rDpeLYOcqiQqz3mBYfaBSH5GU
         U/bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778883739; x=1779488539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=DORXw2azjtXJhH+Q6jHdUUZwl1BIXipQSnL457iFA7ibqKWD4KiX9IG+6IUkqKKGpK
         fwyH+1CzOvcToU/IIm7I49hOj1tUZjsndAmHa8saKjObitj7PV1RIqoRiWYp9S+PCQ+z
         cF1U0BzFS81kZf5dw27H7J5XmahaX8/72tjk34xGCyHoL3U3LLq+V0OC4obEPkOzwWxW
         OZg4/7F1yfGTjoeSpBcEGrr2GC7ibR/iPGDs0GZDbtvnFrkUqgIncWT6akaDnJx9P4Ml
         JrN/ebPMN87NwWiHYmSv/cbhZxZSP+t213kOjq+bGAX2c/z7vmDOeTozEMw1yKvOXgW/
         kMEw==
X-Gm-Message-State: AOJu0YwCuIq3hVu/KVLkjIkjQh/PHA2LqcppiBYX016rhA7Wz1fiHPLB
	m1TQ9b6/wCsCk4BhRQwlQITQ1IZB0KeYFQdSBMWmWZ7qDQnWQxkjwryq2SPKlLLS
X-Gm-Gg: Acq92OHHaptiLBMgpC7W3FhdNIUUeRZXycb2/sl7KKzukiz02TBDpFE5VXZSOfdhlVW
	XjWtvlAQVjE/thsgZa4QGxnBQJRwqzygC+Qxqq2DeUioLgZDiDCEBKZKSnh6Pv8oBMLHAw5xu9H
	pmvcHzfUyZA6x+IoDqJrd0rsC3/YYJKoL45jqm2IsQuGk9jeJzK1J7OFmxrGLW9k2MSTGv9Q2ha
	IIsSBOubqRLclARntiZi/iw6GRZhYA+ySwNvg7M5CMwfrNWe4XSkLzgrrG5qriK6ZBNfQDJb5RA
	nZXQBeE2mSi/Zmq/KY9Adst2icygBXM6yOAHqM/Go5hkOJ4wvG1Nxurr3AVS0BQWjnqmlUa2V3o
	1v+FHpvvrT3KPF/IYEzPCSP3xkLFTnMCW4OaEoQ7R/qYM7OmZZ0lKZPBH7FKxqtrWjIw+dkuVXN
	VO2bkCtjMGjg3hzmxQlD1V3HCDYPlx/lc3iomZR0/74g==
X-Received: by 2002:a05:6830:917:b0:7d7:4fc7:21a with SMTP id 46e09a7af769-7e4f2b3bb74mr3851787a34.13.1778883738759;
        Fri, 15 May 2026 15:22:18 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:8c2e:6a8e:445a:9169])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e568c0d889sm980764a34.9.2026.05.15.15.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 15:22:18 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V2 5/6] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Fri, 15 May 2026 17:19:46 -0500
Message-ID: <20260515221947.299229-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260515221947.299229-1-macroalpha82@gmail.com>
References: <20260515221947.299229-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_152219_857460_FB5E1ED2 
X-CRM114-Status: UNSURE (   8.05  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for the Anbernic RG Vita-Pro.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b8babe9d3a26 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -66,6 +66,12 @@ properties:
               - anbernic,rg-ds
           - const: rockchip,rk3568
 
+      - description: Anbernic RK3576 Handheld Gaming Console
+        items:
+          - enum:
+              - anbernic,rg-vita-pro
+          - const: rockchip,rk3576
+
       - description: Ariaboard Photonicat
         items:
           - const: ariaboard,photonicat
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
