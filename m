Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E33FC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 15:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXqgnnpECFH0pDexLH1yd0O58OI8ba8rCeGqWSqY5uk=; b=hiK7spBuo5cizK
	cw9dxbxG1oUQfnMNTcL77CEMySbP6nawy4RWCUtpKzyroaemOGNv7fW9Fa/h07tDNEmXDHHPp4HeQ
	LCPqfhNuQ2A7X/BPmXcLb/f5juzfP7NaT+6v+SI9S5Bd6R5PuM3fjvLfrAbArMRfhZPBNiFiSLzX7
	FO7rqgmyMAJvzg3ZLCLmMBsOpn9V6H8G7xGGQ2L6AIj7lpkoFB/BEyzfscX+tVxq6zwYbYypyvFIo
	SLwrnvy/7a3bJ3ytybK8ktYlSnCfK75VaFczZrI6Gm83BbhqU7o3+mUkEg5BAPoMmbJkre7J7dsHG
	bgh9gROZT0Z6c1E3pKSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfTJ-00000003T7g-0Wzt;
	Sat, 13 Apr 2024 15:39:17 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfTF-00000003T5g-3TVw;
	Sat, 13 Apr 2024 15:39:15 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-516d536f6f2so2082143e87.2;
        Sat, 13 Apr 2024 08:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713022751; x=1713627551; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f0oNO6mfFQuvlHpMk4G/znEiHbjMhsBrBQyKFqCxSZQ=;
        b=YKSUg8+E60x7R67djFSU4fqGZpjTjXvRZd6dCrhFkcxaAznKCaq+ey4zoeja3CcWyM
         JMzCjHNCCmarFmZPdD/NeNDCSogM/LyMhqFLH24WI1NFDcnP1r9893CFNcgm0FKKBd/M
         4obUhn1bU8TWL/01xSRm18Pa7oO7zJS2SHTiMxRyWVUYT15k/NxOSO3kP+jBLu9Apkcn
         TTVan+9+3VljE7U2Ucj0VMz7xN3Eswia56tAaopxOjzdispIlrRaHQZO2iv1PHEx+U/5
         EvEE4FUwoBkNH2JGFKqS6+UnsuSJDRQeD3fGchh2qFDpm8sybEBQ9/6NjWGG1yZIaDp6
         XhDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713022751; x=1713627551;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f0oNO6mfFQuvlHpMk4G/znEiHbjMhsBrBQyKFqCxSZQ=;
        b=N5A3U1iwc4dI+ENZYEGttbUQyRu4e22s7g+IrbZMig2LH0nzKqhCHL3Qqo9b+qoeEx
         ubrgohHaGLssU2EQ581nfkcohZ+Z18+8pGCoaVM6sSM6qIfeM1Rwew3DbPJpGxAQA+Zq
         eq3/0Jj717cXYc9O4E7lVPVm9ThXpSFH1Jm+HQvPTW42/kAzSqQ3MKO9q3yuZU0vXpfY
         8RY4QsEou3uFlgKQwbc8sS3P1RMW8KtjwUEc1FdtsZLDIf4Fb5ZhncTlO3s/oxMiaDHY
         fYf694p45BgK374BEcA6D1VQI+GwUAdaHvOAe8Pq+okJt5kp9FpA8ixGVHpfoY04YGKX
         dAkw==
X-Forwarded-Encrypted: i=1; AJvYcCWmD4xdpCiTtGym21UmB0e7vkosj06BrDARV94AqFPRoKpDGDJT5MGCDqaPEMHIky7jby+2JMBTQcAP1TdP33SwISbYkLTjK0NGQCZkvDuUoRnmPrCGW5z4977RQSpq9btPXkrLDlHtS+Lj7w2Duac/UYdZ01A6X2M=
X-Gm-Message-State: AOJu0YxUW8HnxjA4M9WVOuddIms3Va9mdUBGu7FpDE6a2FLIwJf8662h
	YXY8dbL9r72ou30t6IGUDRTaniKYGRnybEXq1/K/bc99ruv1cflG
X-Google-Smtp-Source: AGHT+IGZgdHHvUfwKJqy8JDTyxqVid7fQ63n4t17VeuS+OeS1rzrTs5iqeQLOHcedJp/MKxDaD9YEA==
X-Received: by 2002:a19:7609:0:b0:516:d04f:b58e with SMTP id c9-20020a197609000000b00516d04fb58emr4324330lff.30.1713022750586;
        Sat, 13 Apr 2024 08:39:10 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id cx10-20020a170906c80a00b00a51b5282837sm3131680ejb.15.2024.04.13.08.39.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Apr 2024 08:39:10 -0700 (PDT)
Message-ID: <b9864655-7c60-4066-8305-f291a3551872@gmail.com>
Date: Sat, 13 Apr 2024 17:39:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/3] dt-bindings: display: add #sound-dai-cells property to
 rockchip rk3066 hdmi
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com
Cc: airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, markyao0591@gmail.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com>
Content-Language: en-US
In-Reply-To: <3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_083914_172713_09E0A3B7 
X-CRM114-Status: UNSURE (   7.67  )
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

The Rockchip rk3066 HDMI controller can take one I2S input and transmit it
over the HDMI output. Add #sound-dai-cells (= 0) to the binding for it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/display/rockchip/rockchip,rk3066-hdmi.yaml    | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
index 1a68a940d165..6d4b78a36576 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
@@ -10,6 +10,9 @@ maintainers:
   - Sandy Huang <hjc@rock-chips.com>
   - Heiko Stuebner <heiko@sntech.de>

+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+
 properties:
   compatible:
     const: rockchip,rk3066-hdmi
@@ -34,6 +37,9 @@ properties:
     description:
       This soc uses GRF regs to switch the HDMI TX input between vop0 and vop1.

+  "#sound-dai-cells":
+    const: 0
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports

@@ -83,6 +89,7 @@ examples:
       pinctrl-names = "default";
       power-domains = <&power RK3066_PD_VIO>;
       rockchip,grf = <&grf>;
+      #sound-dai-cells = <0>;

       ports {
         #address-cells = <1>;
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
