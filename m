Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 840F4C27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 21:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e3FiYwG4QPdh56onRHp8qoRKD8Lr6ksPK/jnc94RqR4=; b=nBKOHblmtEb93G
	sGv+JR9zPjyRAdC2pE81qDUrx8NXut1nRV5PvDHerIvPF7nPrwKNw8z7B83q35jEeWDE6CgSKO7sT
	RJTiYimCLhKi4Hy+JZbUU+fsgWxR+00ZcMrU11Wq/bgT7Z7lpQif8WxrZXM+5VbrJYew18GylalK2
	9Yfi+XLTN5y5sO16/CroLUe+uYnh9g3lmYOXOHI2LhfJvVP47D6KByzJa3uGp79Bg8yKkUDGtb868
	+vv9YUEr5cAuShStTBOkmUKCaupvY2mRpVSyFXDVrnG36/e3xD6PXfQFk/huWFODSrn+rOkq8tAE5
	alQ+9Qw5jhGzNG8qoEKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExks-00000007XXx-2mGS;
	Wed, 05 Jun 2024 21:01:10 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sExke-00000007XNs-1LDU;
	Wed, 05 Jun 2024 21:00:57 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-35dce6102f4so193703f8f.3;
        Wed, 05 Jun 2024 14:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717621254; x=1718226054; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jhHtvxGUyohTCTNa+GzFt+gMuFh5QKejQOFzumSpgUQ=;
        b=Q16s/4YVXxX4rKJzukObxHNC8uYq2q++LdfHBRoxJ2B+MtxpTf5kr4twTcATkHF/PR
         E9HWjRpRaWzrwrB1/TN6tv76DKrH5TbFUkb78XqFRV2Zv1C2FY4jGvWHfsW7+7XWB1Yx
         MXKYUYwIsCLtxpfr7afJZSRxHhDzERWKtgK7nQinWKbaIYhYPS5D9R5/Z9waregKbr+D
         vrRRhYWIJk1ZhZiTGZ7dQGRrgBM9HVMlj6Z5Wy5K/CKfoZdvdLcan8dmYxXzkbyBC/o8
         5ciZ2ELW5Z0qBaXXNsc6SM4aeUIm58OnyPj+C0OAbrzU/gGPGPpPdL5+g3f278T6M4Vz
         OI9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717621254; x=1718226054;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jhHtvxGUyohTCTNa+GzFt+gMuFh5QKejQOFzumSpgUQ=;
        b=SB77JKts4f0eCF5rK/zpIuVoojEONv7q4XCZ9Fd92yaspbq+wUn7FulgRSYfZ/xpws
         p1kb6+Imh2Ah9cDG5MMmFu/PIGr3Z1yUMkp+Mqwr6WDSWOVKWz6yiYQyvpGvfzVDR0IJ
         tRhBVEO6Xjeu0vqR9AwPr3kSiQ7ak01jnTk+tKF8JGtfyr2K8h80/Agj5CPkM+7CGuRr
         osRdP8KvMfvbI/66ok55wVJu6kURgzhaUmfbPCD1q69nqjcdzp24q940+zRlzGW77qGU
         QwYQAMAZojVl6zxiq9SV2NTpi37fh3qA29LIMUGDgYAtRFtxGJwSHIc2owltq0zCo5Nm
         lmsA==
X-Forwarded-Encrypted: i=1; AJvYcCWOcA1Ic9PdJHyrRfnj3HUeXVupkbyiFvXaCFHjOthOJM0PThrFRqQkKrVyv2Rb6NTOdEJxyjYW42EF42+zJM6+KK6P1HevNoUwDmPtqZrdHdveFcT+ixb1vWqrDZv4txjCVhtyoBDqg9X0rkM5EnjhmQQtdr/kO/Q=
X-Gm-Message-State: AOJu0YyRBwvnSul3mzZnOn6aOBSmgyykA4G6kusTiMCTGOE3RxEWFzIa
	7VDZKRrIi+/JkHJZxqmEXjkQFE58NCskUp4PHkGeOrUxtr6sFrA=
X-Google-Smtp-Source: AGHT+IH/ErPZA9UlMKsmZDV/X1wnV/PWz8EhOEK3XFrFUKLnJNMrmKCwpJ2Mt6rxai/f8/VEUq6zvA==
X-Received: by 2002:a05:6000:1884:b0:35c:1961:899d with SMTP id ffacd0b85a97d-35e840754camr3384746f8f.27.1717621254251;
        Wed, 05 Jun 2024 14:00:54 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:5211:58fe:dfef:c48c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd04c0d77sm15955721f8f.5.2024.06.05.14.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 14:00:53 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 5/5 RESEND] ARM: dts: rockchip: Add SFC for RK3128
Date: Wed,  5 Jun 2024 23:00:49 +0200
Message-ID: <20240605210049.232284-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240605210049.232284-1-knaerzche@gmail.com>
References: <20240605210049.232284-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_140056_429378_2CE9728C 
X-CRM114-Status: GOOD (  10.00  )
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

Add the Serial Flash Controller and it's pincontrols.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - none

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 35 ++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index a7ab0904564f..22e2a35dedb1 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -399,6 +399,15 @@ usb_host_ohci: usb@101e0000 {
 		status = "disabled";
 	};
 
+	sfc: spi@1020c000 {
+		compatible = "rockchip,sfc";
+		reg = <0x1020c000 0x8000>;
+		interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		status = "disabled";
+	};
+
 	sdmmc: mmc@10214000 {
 		compatible = "rockchip,rk3128-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x10214000 0x4000>;
@@ -1155,6 +1164,32 @@ sdmmc_bus4: sdmmc-bus4 {
 			};
 		};
 
+		sfc {
+			sfc_bus2: sfc-bus2 {
+				rockchip,pins = <1 RK_PD0 3 &pcfg_pull_default>,
+						<1 RK_PD1 3 &pcfg_pull_default>;
+			};
+
+			sfc_bus4: sfc-bus4 {
+				rockchip,pins = <1 RK_PD0 3 &pcfg_pull_default>,
+						<1 RK_PD1 3 &pcfg_pull_default>,
+						<1 RK_PD2 3 &pcfg_pull_default>,
+						<1 RK_PD3 3 &pcfg_pull_default>;
+			};
+
+			sfc_clk: sfc-clk {
+				rockchip,pins = <2 RK_PA4 3 &pcfg_pull_none>;
+			};
+
+			sfc_cs0: sfc-cs0 {
+				rockchip,pins = <2 RK_PA2 3 &pcfg_pull_default>;
+			};
+
+			sfc_cs1: sfc-cs1 {
+				rockchip,pins = <2 RK_PA3 3 &pcfg_pull_default>;
+			};
+		};
+
 		spdif {
 			spdif_tx: spdif-tx {
 				rockchip,pins = <3 RK_PD3 1 &pcfg_pull_none>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
