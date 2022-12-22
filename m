Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71FEBC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 15:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yzR6TCWO20t+sT5aBXBPr/mQReB0bjsh2kJOy59sks=; b=VDrJDB972ABvoX
	JkYNkw0FBxsALKQs1Wa3qR0fsJh0TYS4ZAF5nODxPiTdm39ePZ2xYa25vTyum+uARJWEwaY6BrrPy
	y36vQL9hLAtMpKRe2Zn50nvj9dMJ0Y0/z4KuNxFPrUVdMD7rp8ySe3psf+/Al/xsaVjo9erSoOT1R
	zC6JwOWNrxU2yugYXQcHVbTB7NhhbvANPAwPLG0XTZ7YpZFh4PQDrpU022PWe8MBgnz4qfioHzwug
	O3oSGxSFL8eYrBb1YpnND+nQ7Zdv4VXOs91IY15jW4qfHbMieDQ6twEKJTFB+UogBKRTqu3+4GoVM
	fWia0JbDtKMTs2BBGM/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8NCg-00DLbB-Fz; Thu, 22 Dec 2022 15:09:50 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8McV-00D00y-Df; Thu, 22 Dec 2022 14:32:28 +0000
Received: by mail-ej1-x62d.google.com with SMTP id qk9so5352770ejc.3;
        Thu, 22 Dec 2022 06:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gRs/p77llC39s0EwuTCxcUjkyPLLZDJFzUsSm629Z0A=;
        b=Xl7qLiaS4H2MqrIAU1WtcuHZ0kD83PrmWdy2noxljwhNbTxBx2EmWiwDE0Uu6usFkZ
         zULq2JeBJQtg0kG6OkXkDrlLiCZErHvdtVOpxZeizVoHsAdfdfLIg86AhWfUCSzHWD+2
         guYt9bcEKM12W7iWyF02F7jpVM8125nm+VBIPrJB+dOPsrS1yYL1DP+wJFmlCnJr9l31
         wJHxoD2XRKndira/Ya/zup4aif45CJZgGHLoYFqHGPwneLRvpPCHx/0a6SHMD1ZZKYg9
         Hj+h0zkdXLr8lOmTdYNemhFM0jYs5FQsWDWIeYqNVlnKyphuwQ0zboqX7LbJcXAwj7kE
         IrTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gRs/p77llC39s0EwuTCxcUjkyPLLZDJFzUsSm629Z0A=;
        b=5Ii+8fPjLyySYQZIOuML7iuEed1ShLbTQB3QAqq0cWpDUXEe2ormG5kA9oq7beYMfl
         3BPAnnzei1GX8WxJyFEM80ROyfRDlScukP9OkvoSYBn2iU3Hr2NB2KkHU890C/b5Moqt
         hp9bAuDwWpd+KADRpOzMWmhFAeJ+ThxSfWlUpbo2aKw2TnuD24rqexYrk5abf0SJxh+x
         C+2t80Uc+ey3qR72BLY8EC+l/qYmlb3q8D7sOg5E77sPf1FsFIdKFqzvdro3zueTI7ZN
         XquGiW2L/6E8l7x2DaKh8SrB+s/acBFDGZW59JTXUuYATwv3Y4R2EEb1ymBdNRjPUWxJ
         IgAQ==
X-Gm-Message-State: AFqh2krBnsP48+hfWlMXo9LiUCD/oeGPg0Lx5PtWjGW2exHHTj8XqSdg
	mlbNhMlAed8Ic2Gs31NngGQ=
X-Google-Smtp-Source: AMrXdXsgv/n3jTfE7Jv0jiLSsvNygkcFwiea6D9Qjp8nzKtaD2AgVwCh95QdJ5axyGyCNMhswZ4CJA==
X-Received: by 2002:a17:907:a091:b0:7c1:23ef:4bb9 with SMTP id hu17-20020a170907a09100b007c123ef4bb9mr4258591ejc.13.1671719544480;
        Thu, 22 Dec 2022 06:32:24 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id r4-20020a1709067fc400b007bb32e2d6f5sm290577ejs.207.2022.12.22.06.32.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:32:24 -0800 (PST)
Message-ID: <1e019e9e-a8da-3d57-2770-f6b81bbbf591@gmail.com>
Date: Thu, 22 Dec 2022 15:32:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 14/17] arm64: dts: rockchip: rk3399: fix dsi node
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
X-CRM114-CacheID: sfid-20221222_063227_550137_551FD67D 
X-CRM114-Status: GOOD (  10.21  )
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
Also restyle.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V6:
  Restyle
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 834d16acb..2250533cf 100644
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
@@ -1982,15 +1982,20 @@
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

-	mipi_dsi1: mipi@ff968000 {
+	mipi_dsi1: dsi@ff968000 {
 		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
 		reg = <0x0 0xff968000 0x0 0x8000>;
 		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH 0>;
@@ -2025,6 +2030,10 @@
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
