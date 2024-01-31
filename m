Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9453C47DB3
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 21:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbRt3IU0Qw10pTmb7/MyWXyPHKb3P8qcw64upmVGzCU=; b=UV632GNg5K0+Qo
	4Q5kng9UVqZc5YBb9rgj0mD2joZOTS5KL81pBJT9IUJoutJJBd6GE+qK49AVGNhdihcVAXflvr/Kt
	DBxLFR5U3Qhm6INI7Xr/xRxwfXEBTZFsFSyCmfgrY4qbwi0B4RoMy+/UAyNo3MA97TKMO8tS5GYrQ
	GsmvqDgwwp/WqEwX+9jwVJtPixcV04l1f7nk0QvprK3vKG7C2qF1JjqwEdLwblEm4GlTUzY5nkjcC
	Q2U0N920Dsg6EsZA99bQWZNMjXY0abM+ZID6qOyhYGthUvJu5Qcb7L7oi4Mozu5Yh+thhPV9goGpJ
	IogWh3KSwCFUiGq9Ny5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVHxH-00000005TQc-1TZS;
	Wed, 31 Jan 2024 21:17:11 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVHx5-00000005TJ1-2hvO;
	Wed, 31 Jan 2024 21:17:03 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a2a17f3217aso20861266b.2;
        Wed, 31 Jan 2024 13:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706735817; x=1707340617; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aIvaypLdP0+JFHDzqqa1D+EbFHtABYPWV2c8Aa5Q328=;
        b=ZKzDNJjr1JJ86F3b/OHgeE8lDB9XFW9DbnWu0pihxn8YC15WMg9xBgLBo3QsRi4wFJ
         TYbjTy2PLYnnQ6ykwjoDOOALArNjofbSksBZOkJzHlvDDyfUXD89Duk21h7NHRJ6sMcu
         jSlBcMsczi9RIrY3vid5xbjJoHP039ZsKBj4oIEhCTnqncDjeD2rqdVCugVjq6A7Oym9
         58f2WYIApafgjbg0zZS6L9uz5XnAQRuXw9EzMmpRtTZJ1iJQ6RVNxyLg/h3+ZbEdf02r
         w/XHnvBGlncSkgDt1JopKzVhOKek+3Wpfkvc1rWjemJVfcuzlnP0k2Ax4ry4b/37cBg+
         Hp/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706735817; x=1707340617;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aIvaypLdP0+JFHDzqqa1D+EbFHtABYPWV2c8Aa5Q328=;
        b=WHWhWyrgbTUD9oeQ//p7zAZjB58ME2QprE5YVEG3LgVEc6yaqbhiTT9U71Ig0pLCpv
         nFu54FGRvxHhfXJ/5oxOGDNeBVlUjDqrmPFq2a+N3yz7XEaAPD3pkSygRC57FybjTLEQ
         1Doyhjuh9jU8Fdd090S0Eru/Khwv/dMHWEhNvTQXe6zYdJUC41MJ3lN+0fgPg3mskIuY
         Lab30rsHlLlmZPrsvP6U6p3Oq68zoNdPOQDww2isUCo31FSn001Q9/9YyeOaR8EL7yJS
         6iPUqoCIWjvVM9CxIyadtr4aSIlmIi0BwvG2fYasHkv1dFDurruX0Wr1XhOzRuuw/C23
         fMLQ==
X-Gm-Message-State: AOJu0YwnG3kNBnqPC/F+xbL9J4FiuQxjUmR6t/AaeI7WHptzbcfLMsYR
	HxA9bLhG5D2KSfoqmYhtkZoH5NKgWSjuVIhyAqWNQazKGnKkIvFm
X-Google-Smtp-Source: AGHT+IHnO3WBh/+ajC4q+i/16gR61Amb9UqtxVbpXreKVzkmjEyKKcJdnZqL0gzfWAOgay1EoAzL9g==
X-Received: by 2002:a17:906:2495:b0:a35:854f:6c9e with SMTP id e21-20020a170906249500b00a35854f6c9emr2058734ejb.51.1706735816769;
        Wed, 31 Jan 2024 13:16:56 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCX6h2Y8J63c7oNmYUJeFHimF+GcNPtlF6WODVlXW+KZ6iCTqVqg0D51fEnFrd9PaRhjVZMpNJaOy2701csFyW8y0S+7/CgZBrNgtpfQ5QMjH5TCCL+CxYGKm0eb62yd17kMdsgnrikdnrrQ7RN0yHC054sAoinbOGzJF/OcbhhEuazViV8Ch9fuHX2KPrdDMQdFmjZfAmcSflVDCUlvyrRV3twI0NTdA6G1uWr/5leHTYx9r3g1pPt8BFAebYLJa9y7YjM4/xqD0AAYwvNpx6x8M6n/re4liSV00Nlsi0Zp8LD1igj6fwWiQubUZ8Bg9Y36dxHYP7Xhp5tHJ2r/3QiJhvIk0g8X73VF2vo/P4MXc74X9IFsLXUf8l0kZINM9D7h07ERqXfY6XQ2Aam1FLixptd7AWHwy0L1F7EC2RrZHxP9Lim31uAmBKQVfqqGbOwZXAxBXqfyQgm9wDKqTALAY2aoWzm3oDK3Y8hw+kPSawpNA8hlxVrMCOcp7FIoj1ZP3t1Y/b2jVCANP7gkha8y76qXMxX4XBnH5El/McGwAP3l8LDmvzdXLRqSpntlGyJUQvnlYt5i+Ht340o=
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ty5-20020a170907c70500b00a35a8571419sm4040634ejc.135.2024.01.31.13.16.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jan 2024 13:16:56 -0800 (PST)
Message-ID: <9b84adf0-9312-47fd-becc-cadd06941f70@gmail.com>
Date: Wed, 31 Jan 2024 22:16:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 4/6] ARM: dts: rockchip: fix rk322x hdmi ports node
To: robh+dt@kernel.org
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
 mripard@kernel.org, markyao0591@gmail.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
Content-Language: en-US
In-Reply-To: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_131659_795398_07DB4045 
X-CRM114-Status: UNSURE (   9.41  )
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

Fix rk322x hdmi ports node so that it matches the
rockchip,dw-hdmi.yaml binding.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  keep reg-io-width together with reg
---
 arch/arm/boot/dts/rockchip/rk322x.dtsi | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi b/arch/arm/boot/dts/rockchip/rk322x.dtsi
index 831561fc1814..96421355c274 100644
--- a/arch/arm/boot/dts/rockchip/rk322x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk322x.dtsi
@@ -736,14 +736,20 @@ hdmi: hdmi@200a0000 {
 		status = "disabled";

 		ports {
-			hdmi_in: port {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				hdmi_in_vop: endpoint@0 {
-					reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+
+				hdmi_in_vop: endpoint {
 					remote-endpoint = <&vop_out_hdmi>;
 				};
 			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
