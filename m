Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88EA7C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 14:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fH/R5XLdtW8FSsSpP0li49nAguVCXtO7tQxqOnMyvDA=; b=s5BFaK/HiuRI1V
	uEHOl+m+OE8CzYOYxwptv7l5FJMku1dKEWc5HyBE0r0+QS7eO/3vmIshdB/tJ8+j9xWq9C1l+VGfJ
	rYOIyaQWmikpA3mOgrLzbyQ/XlppkPRLGFmMh9wgBkQt9GxK9pWuU9eO/i0NBXGBAdDyNff3NUdOF
	5ckfKXtDqk97wK5kvfYpRa+UqJKUUIsw5rSKGOM3B/BGzS191rdN58c06DhLLk/STBF1nKxjGft+V
	gMri0QQhdjJR2nCvrVZ7J8S2TNxWFDajqkPHfg1EIH+JqO8ElqYRNfMlXg0SzM4+vAZ+KJK2px6lp
	IeBVQAtiyKaTN3pUz8vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8N2M-00DFaM-BW; Thu, 22 Dec 2022 14:59:10 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MZm-00CyNE-Gv; Thu, 22 Dec 2022 14:29:40 +0000
Received: by mail-ej1-x629.google.com with SMTP id vv4so5343048ejc.2;
        Thu, 22 Dec 2022 06:29:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Pi/zW9ZbZ2y3Vmz+VhVdwqmrZ+im9awqcNyirOkOP0A=;
        b=SIHkzQDb8actKpbGFNrDzDtjv07ZcEvqgQsi91YYto7dlSqKtJuTWM9eWXhFfzEtOK
         /Djxnhewcztw3xbUu8706lQLpR+KeW/5T2OTy2TYZOFw8NNoJYKROaTfvjjfn8bR5esh
         tapj9l4G4mwL86/Km9gaZ7jvhhFMK22yEiMI7tmtilNAvldi6eyXMIvo3mOk9122bepd
         gil4Sroov5gNB1YHInWygahj8pu59nhfJ3lBkARjIiQB2qzdlY24SQfRC7Wyb+yr3Bw9
         4I9P8kX0ap0bEFCSUFK8zeEmCmxgPWHmaeqPoBEVXR4dv0sl6IQM08BNQ7NeleKnueML
         TO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pi/zW9ZbZ2y3Vmz+VhVdwqmrZ+im9awqcNyirOkOP0A=;
        b=OwD/R9jvoo0+7bE/C/nH4cy0b/JdSPVUrIxuR7FIKPYToeLkDb1qAjwp70EU4Fgpcg
         2t5mrCWKHtjPt7B4MbfK5ON0lEtY2cNQBd8ZIi57+AZMCb1r+nhxLM2a/mLrQ/k0Qax7
         WdH1gzNGk9fIlkcHVWuSPZEN14XGNXmYE1OZCtCUuoRIBm1MY7W02bQ/BZ7klA7VETug
         kkWusC9v3uevn6LkqGclJHIW4egfJ9mRwiTcbzxJfF7oyqXulbTQsAGvTCh8oim41kds
         QSuZCRhvkZlOqWFkL/RLd0Ub6bgc+/nn0kUZq0sIVz51CpkluFDSzFfFIFIiKEFDAQg7
         Uphw==
X-Gm-Message-State: AFqh2kqaUkQ9l7SEXYINMeGxBWOw7rLbBIp5h+5Q31gsJK83+SyDolfm
	yav8mmIKGRcaOMrhteQc2Co=
X-Google-Smtp-Source: AMrXdXuU4xfEXsY11FaCnzLlU/Z1jib1TkYCwj5+OE+uQ+v+/lDj62VkRFMRFO4PFzk3Iusi8H2E6A==
X-Received: by 2002:a17:906:7fc3:b0:7c1:10b8:e6a4 with SMTP id r3-20020a1709067fc300b007c110b8e6a4mr4310354ejs.19.1671719376736;
        Thu, 22 Dec 2022 06:29:36 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id bx16-20020a0564020b5000b00477626e3e42sm420987edb.84.2022.12.22.06.29.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:29:36 -0800 (PST)
Message-ID: <f3edcbff-4aef-1d24-8d65-e519c9451cda@gmail.com>
Date: Thu, 22 Dec 2022 15:29:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 09/17] ARM: dts: rockchip: rk3288: fix dsi node
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
Content-Language: en-US
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_062938_685051_E69151EE 
X-CRM114-Status: UNSURE (   9.76  )
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

Use generic node name for rk3288.dtsi dsi node.
With the conversion of rockchip,dw-mipi-dsi.yaml a port@1 node
is required, so add a node with label mipi_out.
Also restyle.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V6:
  Restyle
---
 arch/arm/boot/dts/rk3288.dtsi | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 487b0e03d..fbb174729 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1114,7 +1114,7 @@
 		status = "disabled";
 	};

-	mipi_dsi: mipi@ff960000 {
+	mipi_dsi: dsi@ff960000 {
 		compatible = "rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = <0x0 0xff960000 0x0 0x4000>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
@@ -1125,18 +1125,28 @@
 		status = "disabled";

 		ports {
-			mipi_in: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			mipi_in: port@0 {
+				reg = <0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
+
 				mipi_in_vopb: endpoint@0 {
 					reg = <0>;
 					remote-endpoint = <&vopb_out_mipi>;
 				};
+
 				mipi_in_vopl: endpoint@1 {
 					reg = <1>;
 					remote-endpoint = <&vopl_out_mipi>;
 				};
 			};
+
+			mipi_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};

--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
