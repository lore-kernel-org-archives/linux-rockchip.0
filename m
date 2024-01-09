Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8109C4707B
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jan 2024 20:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yjnZy+HzpxWyPVmINuvYXImkRF5zDoVdhCqgDoJpF1Q=; b=MNN4tcafjphXUA
	i4cxDMdLKnwWyL483z80gRAY9YCCRjesFDPkjIL5KAeUx6p8yKmvb9WyPBZfspcgaOKBPDjKAm8zx
	GGalr/ld3yaoc3BiinhPrvtyPXqeQLOs1CUwQT7SZdFD3c43zFQgCy2/N5KU3oM5qtNcvrnUz7I+x
	hgigK2zfilQzES7xokQ4Mee5n7VuXTE8A8/KpmShvQgXlQjFdwa6JD8o2i7Wi2t7yltQax3aCgGhZ
	hB0DSOkhUAaXGzOv79rCuCyqKz+sebhyQydpjcgubbBM5080fLSuw7bPjWmQagqYny55yMYeL74TZ
	H0GFRzYtezvRmfh7BZHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNIhT-009SBi-2z;
	Tue, 09 Jan 2024 20:27:51 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNIhP-009SAs-14;
	Tue, 09 Jan 2024 20:27:49 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40d87df95ddso35491785e9.0;
        Tue, 09 Jan 2024 12:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704832065; x=1705436865; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ewVP7rZY9cEuaCQr23qe+i/CcrhN+qIG+I5XvERPbuQ=;
        b=D2AD/eU2efwaFfZTvbcYYJVWGLAse7z2b8II0t5/UD0eA7Y8jpEsAY9l3AEamyvFto
         H28cUCZmnD0kvNjFP2KgwhW8dfNr0jwXq9hTWG+Y6sRCqpKu5ahbMH64S/22pvw/liIZ
         XRUQItyjmbYAOIEyuYm0+WSSGeccWRur1NMJzYqZ0pGAUa7LvFNYhTtABrxxiFg/F5yA
         Io01vHxdu3FwkUTass3AZsgrHKbDiu02l4Fut6MW8spO8hEuDhH7EpqqCviswV5a/A0H
         Zeltjepw9vL9Nhl1hPTwkmEzkZUEvuBXnP8QRdoplGvOUW1nds7rHsm0Z7qQ68jeaZVl
         db2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704832065; x=1705436865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ewVP7rZY9cEuaCQr23qe+i/CcrhN+qIG+I5XvERPbuQ=;
        b=sA3j+o5ycWU71oo6tpie/TZOxXOc5h2cGSuLTLhxLYY3CwXQqilqNVKFG1nrG4ysvD
         ixhqhJELiJIvBH0AlctbgsLCYMUefVjaYw6pT8qTr7JKuN/TJVWxL0SLgfFFdfwkmNMW
         pt+owwscVKK3WDZgxVi9UkI+vtnM1E/QjQGbfIfHM48YmzeIWvXBd66TtDO7bLzDqAU2
         g5IzT6M2354MJbc0OVk5MEI7WZ26lBgp3TXd5Yck0C6p4e/Jp5LR9o9vGSQ5pjF6SuD+
         z6MNsqtSXyosRmIPF/q3NyE2RltEclJtJcwsau7izIrcGu/aoAkS3OGRp1MOiV3vUlI8
         jBpg==
X-Gm-Message-State: AOJu0Yz7dQWmfIaiCdBkADx0VsRMNNlDXjOU8c3v4aMhw2KpDVbb3VNp
	s64w54+2ppiYPrsu1u7pkrU=
X-Google-Smtp-Source: AGHT+IEWNvxc3df+X58TgBYuCL+DhXU6PLckB+Fh6CRFLXqYc7DishxyjF53akilpHK0KkJW3TwJeg==
X-Received: by 2002:a1c:740e:0:b0:40e:52ec:3500 with SMTP id p14-20020a1c740e000000b0040e52ec3500mr240247wmc.100.1704832064797;
        Tue, 09 Jan 2024 12:27:44 -0800 (PST)
Received: from apple.sigmaris.info ([2a02:8010:6606:0:b44b:4534:eb6e:83b7])
        by smtp.gmail.com with ESMTPSA id je4-20020a05600c1f8400b0040e38b7cfdasm16073665wmb.4.2024.01.09.12.27.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 12:27:44 -0800 (PST)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: John Clark <inindev@gmail.com>,
	Thomas McKahan <tmckahan@singleboardsolutions.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: enable NanoPC-T6 MiniPCIe power
Date: Tue,  9 Jan 2024 20:27:28 +0000
Message-Id: <20240109202729.54292-1-sigmaris@gmail.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-145)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_122747_392098_389DA448 
X-CRM114-Status: GOOD (  11.36  )
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

The NanoPC-T6 has a Mini PCIe slot intended to be used for a 4G or LTE
modem. This slot has no PCIe functionality, only USB 2.0 pins are wired
to the SoC, and USIM pins are wired to a SIM card slot on the board.
Define the 3.3v supply for the slot so it can be used.

Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
---
Changes from v1:
Renamed pinctrl label to pin_4g_lte_pwren, as labels should start with
alphanumeric characters, and starting with a numeric character is a
syntax error.

v1: https://lore.kernel.org/linux-rockchip/20240107223714.8158-1-sigmaris@gmail.com/

 .../boot/dts/rockchip/rk3588-nanopc-t6.dts      | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index d7722772ecd8..7e9613f079fa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -159,6 +159,18 @@ vcc3v3_pcie30: vcc3v3-pcie30-regulator {
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vdd_4g_3v3: vdd-4g-3v3-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pin_4g_lte_pwren>;
+		regulator-name = "vdd_4g_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &combphy0_ps {
@@ -504,6 +516,10 @@ pcie_m2_1_pwren: pcie-m21-pwren {
 	};
 
 	usb {
+		pin_4g_lte_pwren: 4g-lte-pwren {
+			rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		typec5v_pwren: typec5v-pwren {
 			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -884,6 +900,7 @@ &uart2 {
 };
 
 &u2phy2_host {
+	phy-supply = <&vdd_4g_3v3>;
 	status = "okay";
 };
 
-- 
2.39.3 (Apple Git-145)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
