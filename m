Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17096C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 15:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yp9ZFAnAyOJeApn7t7ubFr7vv6ZrNp37hBDdsHi5gWo=; b=SdRJhuVGTcFzv4
	cgan/NBgRdx3Yl0GapB3ZcJMB7QzKHFvDqVbQDvjdloNLpXrfZRa1ss7z6LJOqom7po37GglTStLw
	hi/iXJ5ThTqWROGK2FDvM21bOpm5PnsUVSkCUmeGoabZAx/wPzYZNyf+4k7j50J6Acksx4DAPj7ag
	rdM1EKjbQGDLHmPW+4rLRM1Hc9Bf5zpFQJc3zbrNw+aZu2b8b7KQOdFP9EetEFywScWEEZLpDF7TN
	aq4eJcMkwq/6nfBEFcFTtZp9ZWJf6Vsd62YKl9vcZu7jS0CKzeClMxnRtxss9c3OuyvHRgRU2z3nE
	jZaHMTqxTP8Q2ZAslqcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8NEX-00DMdg-1e; Thu, 22 Dec 2022 15:11:45 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mcy-00D0NY-IK; Thu, 22 Dec 2022 14:32:58 +0000
Received: by mail-ej1-x630.google.com with SMTP id bj12so5246708ejb.13;
        Thu, 22 Dec 2022 06:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/yrUavxSC0YydN0TKXWkrYFUw9v5M/WABkWirfDs3Xc=;
        b=RGUKyx4pjlE81gC/a8eQInZ7qvs0UWhPxxdmRGaK+mifofPPgpx0WGBmdJobxAYIQ/
         PLO7GXJm8O+8yrTMjYgOMMNxJqJBtqWig5wRtDIS7/Gqi+Xlt2YjmI3Nmc2vM8aM4VpN
         b557b6VzkA8hT5kh9QqYhSC753IFQitWiJAqz/EwafSjK16nRN2qkwR7HcK57eY1c7lh
         rfqxKk//PpVWOQQrzL1F05oUAWVWO9z+nOZ+9zZ5p94GX0OOiFSF0Gu848vCUNDoKcBx
         PtssmvKdqBb8C0pGGBFqtCazZKizoOQLlFdfSWPS9rpLQgkMPtinfdFpuYBP/4gXFqwY
         HENg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/yrUavxSC0YydN0TKXWkrYFUw9v5M/WABkWirfDs3Xc=;
        b=0QocWBBadMJYk++BV2Tnj9lIatO9OSNeNGX1vrLBZwytjjNDN0p38bUwZnHq+hWAVS
         wN1BfFitgWvozL2OCh/SKRPYSONEfzkYh5BDOL5YJwajCEuk+xEVinAeSDKzN6RSw5ms
         dCbM+cG4G5ubsgNCR2rL50DMgXCtRzuT/hrxVUAfYcO/d+YuYgYyjdY9lk27x8Oq/OIw
         mc0hsHzz4+GVZRi6klLZ7DDta/E7F9Eb0bGP3QarRJ0QZP3wFez30ObzDhFl5pVUi9gY
         p329vSdnmAqy42Zz3LkXqYss4omqYWVUwu6NQ1wu2F4Pnxs4Ozon6g9HjpkyHozDKGPR
         XEiA==
X-Gm-Message-State: AFqh2kqFVho1oRUpODEBoI06WMfXbjSHKVevQMtozSJP8EQ+koPkCWl7
	0P1p9qINnHpxNggnAnaGKvE=
X-Google-Smtp-Source: AMrXdXtqZ8JJqmp8AaMY3noPII7c2qvGh6kRZJ79yXNnz5AOds68D7oxejOaYC7RFzTdVnkiwPRxLQ==
X-Received: by 2002:a17:906:c0ce:b0:7ad:d7a4:4346 with SMTP id bn14-20020a170906c0ce00b007add7a44346mr5969104ejb.66.1671719573988;
        Thu, 22 Dec 2022 06:32:53 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ku22-20020a170907789600b007c10d47e748sm313265ejc.36.2022.12.22.06.32.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:32:53 -0800 (PST)
Message-ID: <f6008819-db9b-0944-3f5b-5522b7cd8a8d@gmail.com>
Date: Thu, 22 Dec 2022 15:32:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 15/17] arm64: dts: rockchip: rk3399: fix dp node
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
X-CRM114-CacheID: sfid-20221222_063256_740419_5A536064 
X-CRM114-Status: GOOD (  10.06  )
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

Use generic node name for rk3399.dtsi dp node.
With the conversion of rockchip,analogix-dp.yaml a port@1 node
is required, so add a node with label edp_out.
Also restyle.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 2250533cf..e02483b72 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2037,7 +2037,7 @@
 		};
 	};

-	edp: edp@ff970000 {
+	edp: dp@ff970000 {
 		compatible = "rockchip,rk3399-edp";
 		reg = <0x0 0xff970000 0x0 0x8000>;
 		interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2054,6 +2054,7 @@
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
 			edp_in: port@0 {
 				reg = <0>;
 				#address-cells = <1>;
@@ -2069,6 +2070,10 @@
 					remote-endpoint = <&vopl_out_edp>;
 				};
 			};
+
+			edp_out: port@1 {
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
