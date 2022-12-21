Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F226EC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 18:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6758D8+aMXcT/uiP+6Yry5/Rrye5FTV1YefKmsk0OE=; b=WnEk3tgI2DKBcD
	SbqEfJRgb7q17YoUKRG1P3Fa6fscS4mMcSmi/cHYlz2fTQ895EJjquPjTi9eHOowNKNCIJ32Dp4z2
	VPjDdAdfMOHy+6FXGmmZm3MlrzYTrs8k3drGKxTdcs1z+dqlnyDDNQYUsMhEl2hMmbkS0k1SJz/En
	AKB4e5uOpWawt6BCcyimPZsV3GQfrLycLNfWE7yb1wlF0PR+c/I9ZbHwaFR0oq/X3b1/LbSBDPzjR
	H1hyu9A1GJTF9hQO6Ao1bRaNTPs+EYitjiL1Wdyg1QogRB3hnvSAQl+Zv8AKDOpvqA303d/nDixc9
	iwnDBUOkoKpes7pb0b4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83w7-000cxd-MR; Wed, 21 Dec 2022 18:35:27 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83nQ-000Y1U-NK; Wed, 21 Dec 2022 18:26:30 +0000
Received: by mail-ej1-x635.google.com with SMTP id x22so38764241ejs.11;
        Wed, 21 Dec 2022 10:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vxtaE1EEmdwnLeoknDdjbqn9RBDwfiNqk1bsNHc/eJw=;
        b=H4VxHHU+xeONEKkCpBNCFZS9t+9ooCkUgwbUw6St/ZhewwRXsL4AgLO6axA/Kytp0G
         zdftwx1ZiZIs6dEGmY1YRjhMvC4b45iT3SzwkvLE0y2gFJ/m4rBw/ZisHChvfknQDImo
         gjgJYMl3UUZzjK9VpEn3ubJiwUTuALdrN5En8KU7PXBKfaAqsdSgGkvkXc9TFKv71Eal
         HszyKsY6R5uWa3R+MvMCpMlyU3cw/TZSJg+Z/kssTXxi1JeAvy+58eK2wZFxy5x5VRju
         ukd+Q6VhjT3emgM0jJmwpoHFET6Aamflp0tH6yf51IeDdboTRlcaiKXVkJfh5lu2TDEA
         FT2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vxtaE1EEmdwnLeoknDdjbqn9RBDwfiNqk1bsNHc/eJw=;
        b=OJ0LUxDnVd5jdG3E6i+ccgpSnvuKL8hED+Ahi9/CMFl1v3YPUF/RnnWQLLIpilZaQJ
         HYwJuZFF6IKCAhIAgxVxZ7kKDtcDCTRmWl7DQWgGQd2TT3Vxg+qbI5tuDRUQtkXMc89M
         kLvSkn0kwzXoP7jn4uDFXN6RZz3aAlRS+Pkd3kwQXVAX31Jz+LvkuUpmpgG+KF7aLBSP
         WszdXWdD5CyL6biE2G7vSJWmVgBPqucblGjfo1xx+aY40VKWal/uXOISLBBPjz4fvSUT
         DqaQTR/UnJxzY4AgxNc45L8yy6U7Gk40sg50WPzYoCDTxusLpEgA542Odm/77KudsVAq
         fGHQ==
X-Gm-Message-State: AFqh2kq3h5iM21Jr0bPKzk0txYexhDUrsZF4WvvxkncmQwM/heXlzzmS
	Xy4vr7SqPrKsbB9nOhZGKhQ=
X-Google-Smtp-Source: AMrXdXuTjC9bvbIdq5RW0n49hi6uRuBosp9NyHqunZjTW2LMl2teBSgpdFGUefpiu55ZijE3DzCQ/g==
X-Received: by 2002:a17:906:a891:b0:7c1:4d35:a143 with SMTP id ha17-20020a170906a89100b007c14d35a143mr5486319ejb.3.1671647186041;
        Wed, 21 Dec 2022 10:26:26 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id mh11-20020a170906eb8b00b007ad69e9d34dsm7413700ejb.54.2022.12.21.10.26.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 10:26:25 -0800 (PST)
Message-ID: <fafc6e31-601d-8106-b281-f6788d2709a1@gmail.com>
Date: Wed, 21 Dec 2022 19:26:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v5 10/12] arm64: dts: rockchip: rk3399: fix dsi node
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
X-CRM114-CacheID: sfid-20221221_102628_843371_F11BC845 
X-CRM114-Status: UNSURE (   9.66  )
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

Use generic node name for rk3399.dtsi dsi node.
With the conversion of rockchip,dw-mipi-dsi.yaml a port@1 node
is required, so add a node with label mipi_out.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 834d16acb..62047a5a0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1954,7 +1954,7 @@
 		};
 	};

-	mipi_dsi: mipi@ff960000 {
+	mipi_dsi: dsi@ff960000 {
 		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = <0x0 0xff960000 0x0 0x8000>;
 		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -1987,10 +1987,14 @@
 					remote-endpoint = <&vopl_out_mipi>;
 				};
 			};
+
+			mipi_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};

-	mipi_dsi1: mipi@ff968000 {
+	mipi_dsi1: dsi@ff968000 {
 		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = <0x0 0xff968000 0x0 0x8000>;
 		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2025,6 +2029,10 @@
 					remote-endpoint = <&vopl_out_mipi1>;
 				};
 			};
+
+			mipi1_out: port@1 {
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
