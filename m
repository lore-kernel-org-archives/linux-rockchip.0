Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAA0FC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 18:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9o9FUszGQV0PiWjPYVBOZ0W0GXT8tpePZCtmWWe69g=; b=wkzlf2A/8u7yDt
	pZWX6UDfA5MeVBMdtaXEfBu2nYbi5XOvhIj7/r0ZxhC2Wf97qH6P8IV40MICVw/egV1+D+boMWlDI
	8i9v48P/D0Z1kSbgOMs8NoMXaWNdQeU9rYjnVdk4W1yYWpUWygumsVrR3zfj0REdONwX3XlC8Eo1S
	cloVkER/jbUv5dVbiLAu436/Mbtp09N0vZWiPcIlnmY9gw+BDAKbwKWULUvTSg14kHPiIoQXOZHc1
	xAj8rGx12Jjt1LHNKwtpoah2/1dGHol5s3HYHMeX7pwpaZS9Y17R6TdkyaTmrlau2FzndPCh0jBx9
	aqVOz7dg88sARGqhcR/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83q9-000Zg0-DI; Wed, 21 Dec 2022 18:29:17 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83lK-000Wmn-3H; Wed, 21 Dec 2022 18:24:19 +0000
Received: by mail-ej1-x629.google.com with SMTP id qk9so38824499ejc.3;
        Wed, 21 Dec 2022 10:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lvcQjc1tSN+WqGFd2a+LQfMGe/jMGY/EiDX8AEMXwKA=;
        b=hsnKVAvJjTm/vH8ROKf0lkdPYG/7tVxNV4QRv9Wt419AAMTXG1RyIoWqpPrYlboYDL
         G+En2avRFUjXEw+mY9ehTVjyl/g3QE3P9/dyWPehv6jMxGQkyrCt6gsy9LCvm5cVnfeh
         yBB7k+nj787nK+wQ5P/muiBYTzsPTxv9UED0q2iTJH5walJPoVSSxAk+Gw1BdkJ9J7YQ
         OqMEEBmjhCzvcUq5dk59x4cVFiDM6UY5KuzdYxMswSmHmhiPfoCsqlRdlUEbBnzIDzVu
         0BSlC0Fg1WC9lZxoUlmZC9T5pWQoFYIi75t9NDwVKWUulP6jOcnx79Im+mkAmI0LjvdM
         cVTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lvcQjc1tSN+WqGFd2a+LQfMGe/jMGY/EiDX8AEMXwKA=;
        b=ozSR1LPi+yHeo9BS5WzmiO3sxz6Y5X2bnAynE81LdEV9viT9LEtQqdwlUwkxLN1khw
         c/nbX588Ra6XZ9q0zs3nuAokFLxAVmcSzTVMy6mYxi9MPIPbVjN3jFtIXkgSQ/P3fED9
         yxROP39i/ZMtUpc6eSjNdHRFOxm8dEPNAha4oPcJX7azrLkO903dtyDjv7eIDSzMZynR
         nR75DE33iOc5VLwDjUIKjwj+hQOEtiCqy5IxaGjVNHBcwwqs7VjTyyIrU11kTbmQ9SNp
         VlKD66eAE5qRMatHYcKCUeff00TAhPWHRgzeZyhCRPShWKhXDlyeZMtWwx2pSoYk0tbH
         Zpfg==
X-Gm-Message-State: AFqh2kq0KQnpaQHsUwijM0BP9vCqI4UuZlzSHbr2vQ5UWYr3ioPVzSG0
	sWJ4/H1X3IVdBLrV7jxZPQg=
X-Google-Smtp-Source: AMrXdXv1K172bwT5L/tl5YVDCw1ihZJT7aJ7HP+WwaYs4jknJoZSk8wkCqixuBvSgTEK+37mI9z2FQ==
X-Received: by 2002:a17:906:850c:b0:7c0:f4f8:582a with SMTP id i12-20020a170906850c00b007c0f4f8582amr2389986ejx.52.1671647056884;
        Wed, 21 Dec 2022 10:24:16 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id bq15-20020a170906d0cf00b007933047f923sm7281632ejb.118.2022.12.21.10.24.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 10:24:16 -0800 (PST)
Message-ID: <b2c329bc-33fd-b65d-2e67-273eb0780e80@gmail.com>
Date: Wed, 21 Dec 2022 19:24:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v5 06/12] ARM: dts: rockchip: rk3288: fix dsi node
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org
References: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
Content-Language: en-US
In-Reply-To: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_102418_199726_AE43E727 
X-CRM114-Status: GOOD (  10.15  )
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

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 487b0e03d..c22f90e53 100644
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
@@ -1137,6 +1137,10 @@
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
