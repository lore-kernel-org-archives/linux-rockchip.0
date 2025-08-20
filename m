Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD738CA0EDC
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 07:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kY5xF4E+MXoe2WmOJPHMmbcEAq9y0as6y9bwec9y7A0=; b=Ju/dnthjnqZka/
	sArRpw/aeFKrAShNCwqfSNM7cVOH5F1NDXoS8cCbDXhM+x+snlSam6l9v61a7/L/K3EpRNGFfJAJO
	ch6EV4PvSGopyhWZwSM4Xt8WxMpR7Yblu2EaK8jpkRPrbVAVcfqldv2mO9oUpl2+k7tTczf1UtMy9
	WJcuhLNVCV1Y0J86SoM6BZQOjsZ+Jb+CQXE2a7eSl8fNSyId9LORoBaDQvmf3DzaYixl7/IrYiyco
	MHMlXE+hTCS1Tzg2YTs5SlHikJLItWqwf5j44kRn+ZDPfhqWovLxK/YEjwLpjmovnR5bXQUHfGuTv
	VPKcHleHMm44ZE4N1kjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoct9-0000000CYwu-3n7I;
	Wed, 20 Aug 2025 07:05:39 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uocqT-0000000CYX3-39Qr
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 07:02:55 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-afdf5843940so1192566b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 00:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755673372; x=1756278172; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DH177aI32fcw+0fi3Kr7cEylMFjtb1+kKdAUsXxCdWo=;
        b=bO9y7eRMh3OSJR7U0FWmONkQ0UvS5AUALBe4VpDDoVFRKNZSARzEflqzz4rqXggNS2
         jq+cyaA4bNyuYP9rTzLeJ/VG8Z/6U8uQYDWqjzNIZ1aYDq7FXI0YAYF5VNr6o7dDU/D9
         ISCCYO9ACnxrgxnD0sVfx0QjYHKhqwnpgKuuCBrvebRrQpDH3b6PKXEOpo8CMYtC1c+x
         Wrle1MSNGJvB6kDeIZFoHGrqnXzLUtPWmWNVj+hRiXUF6Y6XsMMBbzyyjCGH3WcNL6n4
         W7Sk8jMhF6t4bGOBzCUvjyNHNnjvp39LErtxh3oAj1u1S85jJDm6OENucXpUue/CyWRx
         lsMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755673372; x=1756278172;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DH177aI32fcw+0fi3Kr7cEylMFjtb1+kKdAUsXxCdWo=;
        b=XU4RghjXCzKrk+aupDqbniT+TQwqykRrxMgMX/TDtNnlJfmT4VcHtJCBQS+kHVIoff
         BD40vt+D66ECyqItmNtcb0+KOPj+gfMvO0omGAROcIPsIMj07cP5AST4ZonopTgrAfjB
         yZ7yg9fdYyhbUrF9aBiYoGDSDY7qqr6CZmc7DEMhIvFz9A0G/jmLrFSHgKr9IHb9PNRH
         GzmASw/F4SOBKZSxKg23geON6UYvKQBbUgJuJ1aZy0qNqO1B7MTfxueiFwTXkecHPsUb
         +NViXxTPDwJQ50dxwvGeYhqDBzIAZY6TnCw0D3huVul+zkxaEzf6uD4KdNpNaf1HsOAB
         gehQ==
X-Forwarded-Encrypted: i=1; AJvYcCUosDA0zVp+g5hoU+c0bIYNS6DSP9BmNu/iykdqjr2EGb/EWc7sqeB/mBxCwS9Hc4XYFBkuNQJSi+GhB4MXLg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyILfY9Cq6PLks30Q9SsQR5auzJAJ9qS6z0TPyzDTmX68AJ190K
	82e1a2LfiufjKWUtFkCvGXHq+60qcIPToTQ19D55PxpLqN8jjMv0bFE3KgZ5nnJMI/o=
X-Gm-Gg: ASbGncsEilNhomhbRNL1TT/Xb7UZbIHvNcYKjlZQEzZr8pbZMHRzEAylIf5YHdR+B6B
	vAAHPHnptJK42PLwxBIEZFAuvMO8jnEyOupJJaSm4x9+DNOTT1B4Xj/DFHD9F58U2vntXWcSkqO
	Ce12DtmkmRkw8Fuzuu/K4L1gGesX3Dsdl70K13A6N8CqCRaGJN3qZ8vlJc0QkWnFRiVvNI8HBXe
	YX6t37D/Kfocs4f4teFxl96/qpfEt4T78y28g7/E1Noqa+3cRPI753OPSowMRsef0QIay9Y2B2N
	aB6NSnORn/Hp3VQ0+P6XsKNccvzfmmCzYzk4ysjyp2glk8OiSyCrqWGPebcd9UfJc+1kQYeZgbb
	km7NOURp+0DcWp3uL2F0Is8qlUCdDALYQjy4icc8=
X-Google-Smtp-Source: AGHT+IF9FNxgrgCt2MNISlOazft7efckRUUOCCyDUI6tMZE11GXZO0az7ewPiYnvvCxno2JpihA7NQ==
X-Received: by 2002:a17:906:7316:b0:aec:4f0a:f9ac with SMTP id a640c23a62f3a-afdf02106f1mr69015866b.6.1755673372063;
        Wed, 20 Aug 2025 00:02:52 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf6ff14f8sm37756466b.67.2025.08.20.00.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 00:02:51 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 20 Aug 2025 09:02:40 +0200
Subject: [PATCH 1/3] dt-bindings: display: ingenic,jz4780-hdmi: Add missing
 clock-names
MIME-Version: 1.0
Message-Id: <20250820-dt-bindings-display-v1-1-d5b2555df51f@linaro.org>
References: <20250820-dt-bindings-display-v1-0-d5b2555df51f@linaro.org>
In-Reply-To: <20250820-dt-bindings-display-v1-0-d5b2555df51f@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 "H. Nikolaus Schaller" <hns@goldelico.com>, Arnaud Vrac <avrac@freebox.fr>, 
 Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=999;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Pxy1ceX/K708ATMRkgiCl/qGBMScopnigW8cLcERjdY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopXMVT/M8Kz0Rj97OPMv9sVNcaz0uJrb0hpTH8
 kC19UClVTGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKVzFQAKCRDBN2bmhouD
 18JrD/0Q2MVyZwW9e4PQUvRkQCrJj1FZOoyd6meUdkZZCtOx5WXnCz6j7oqqPHzA84QftUJIEsb
 J4c4cgQf6k6PZn+zX7ck4MK2YbM5Z/ptaV6cyi5Q3nB+sNqkWxX2ZTEt2GFPbSjFVhmYB9G28K4
 Ov8uyjdeLuFnCQxWj9RtBVw0joZGfx5pEs5xI9dHfCJbMd95Qou4cqJtAbFwUnE8dLMROGaJyp0
 sxJYXnKH91zEJl+MxF5orITmFGsZsdBUfeBrzOlkJHZWSEDQHaJ5u8e6qzq6z3tVXu8wUWdL5kw
 PaiwcT8AQrcAndkVNiUDkjMc14HH383AyaT0//MGYrdZPxZmd03GC8hGGBAf/duk2GfNHN7ZifZ
 dGPbiOqW6FdyG5Hztz3myV2M9Tozh5G0/H5NHGpehXf3dgFqQTgWKp9xBiGUcsuPBLrJft2S0U9
 OC4BNjPaJ+KtIYYmMETw84dGimY/hECbjUO9Oo+d8z0fMtuPrSp2j4130edqJNQ5SrEPEfuEgDj
 +vk/PCpEVNFcSGXMqqrTfeewDXEfp+mdbh2t6yLFC6pnfcu7X85/2W7+8Qbcohm+mmv1EcpG6EP
 IPbnKFuQQIHsU4CgtjCPd4w0QEevG7ssarieYUB4hEUsO005lHEsQP8BMgUTZCPPdDUPAp//BRy
 HNJzhF/eT5axvSQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_000253_807085_0E4DA8C6 
X-CRM114-Status: UNSURE (   8.45  )
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

The binding references synopsys,dw-hdmi.yaml schema which defines both
'clocks' and 'clock-names' with variable length, therefore we need here
also same constraint for 'clock-names' as for 'clocks'.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml b/Documentation/devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml
index 0b27df429bdce0b7e080ab291ee0c4c6b51f8e1f..84df3cf239d5bedf8a5806bb48507fea207c7167 100644
--- a/Documentation/devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml
@@ -26,6 +26,9 @@ properties:
   clocks:
     maxItems: 2
 
+  clock-names:
+    maxItems: 2
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
