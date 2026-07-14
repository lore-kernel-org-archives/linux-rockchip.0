Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98BF5C4450A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 19:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=906ergxPFWV7f/JfxoSju6DNpnJPU7+kUgnHFTx5sMQ=; b=laFJFUw1AFf4j6
	QuFWOxZX9PdGFzEU/+gWLe62zDZFgiRrBzGCObf1sf3beSgj4bd9wCl9eD5Tm6CXYKaoJcPjh4e/v
	+QdOd2N4O33VHoB+VQXHltsOqv+emxM3jAXLy6Y4VoQYTdInODLz/IaegQLh43UHGCN0U6XlXc+5e
	VvDOq8VsfLzbqkZmdIlT9t4nRhgFR+3hvQwlXHA5HUpBxLKmGQ3ghPh8nL75Gg6G1DzGyFI6JMuEK
	o80HtBsrAGFfA6zykXEqOUkRL6GztvIEpRSXsUhIpSZItvkakBbM4JEoinfYNru+8qTJi+Sql8txf
	fUmKJA48tl0f1Pd1ROKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiwd-0000000D8MP-0xcY;
	Tue, 14 Jul 2026 19:37:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiwa-0000000D8GP-1OuM
	for linux-rockchip@bombadil.infradead.org;
	Tue, 14 Jul 2026 19:37:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4dAso1O4eZXUPf3B1KNAgO1fZX6/Qptu3e0In9zSoy0=; b=HyY+PETWlR66hX0OM71onvokAw
	ZCz/PqrJNDCI8zI+qP3A3cxMhgRmdk3/z47stj5vgS04Lty11FPlE1yNmg1NYyZN9EENW2qXSN12a
	HGiGxrvcrPJyGRJ4x2l+YWLU8U2RCxvFRmmK85tob3cZCxocVub97ZXrXIDFeZbdU7V5YuJ9Okl/H
	HU0EBz4hMOhHY74F4xcBDKG98id25Yz1ImJ+mJsKhpMKMDh5QMHmR5lLjfq6ZV3b9YiOnqN8njj8w
	eZMxAaAnxRPZbkXbfAsH45Fmxi5qtX7AG8uMAQv9wcBoYFwnaWV9JKlmuzoLcz97PWr0m9bPsXzio
	hNso4I0A==;
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wjiwT-0000000Com7-3MX5
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 19:37:24 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-7eb63dbd229so996088a34.1
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 12:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784057840; x=1784662640; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4dAso1O4eZXUPf3B1KNAgO1fZX6/Qptu3e0In9zSoy0=;
        b=javfZ202mGkXqTXB7KAI0UoBDlRiFQHH6EwW/crnj3ir4SbLAhO8SzrbVr3NSnOQYN
         F8zwSygkC77HaGSEugexmBITGj+eQcXajBqbE4GdSm1wRx4enJaVrRqEPm0vCz63qruT
         eY6U6dw5eC0aqyDuwBQrUWP3mAdgpm2J22Q20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784057840; x=1784662640;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=4dAso1O4eZXUPf3B1KNAgO1fZX6/Qptu3e0In9zSoy0=;
        b=oTFFpWhGvkp0Dcypk2RB6wURRYdWrkW3SsTQzSadT41Xwg8+TmqQdHVrVDgXuwmnyf
         kRrYwsSOltrgoBNb8vQeF7NAK2Qj6yQ3VXVc1JB4xsqAl51fW7sJZlYtEzNB/5LXltvC
         pyUMU66bgfAXRj+4/vyLQW8z5ulvKW9OVDfKRsJNu3sWo00s3oiJlsK842mzDpIDN6Gf
         cvJfDv7Qf8vshmEOHVdK+QjXXQO9N/Kdmqgjql7UedhhbRliOvXM8d9E2ZPcgdHQTLoq
         dVgXfTxeQy8zpDcQW159L7yBo6NPfctmfNzP1R8fqmLwDp14Cx0cFfnrXoJb7050KhS3
         5L0Q==
X-Forwarded-Encrypted: i=1; AFNElJ/ypDyIj3oPt/wdhTUCHArvdPOmvQ6SCzBVa753NiwyvxWtGvOd2vICfoZX16cpypP1m1Bd4AsWQHjRctmyBw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxvG8jSmuh1T0EC7NFPqaLjI3/mf2YZ1rj/An9s3/HuoAUZIaKN
	7vOXCIWCKmit8/Bp7iHpmxcKMZOms+hAkJehpvxjtGbGn24o/J2BhbVhxooBDDYukA==
X-Gm-Gg: AfdE7cmtYuZOVkXCApfiKjXs5df0CK9NuOkyu5sSX6h6CCihhz2FmyeBDDw+qme2WlT
	GsqomTSckSzy+RErMMKfgFOHPnropu02+LvQ6zEIqq41NyAOa3leMm8NzSZtQTX/COTITUg/nQH
	+YgRV7l5Omz6h8mqTJ7jEcPBlEt5/pVKHHFO6ZIbKKi4rXyDFkgd2caBwEIkCfjLlR3Uq4+VHiE
	UnmlalfU53l/gp0hcQXj//WSr7hNYw9NznxDgeXAiH6SDKmU8UyupE4fEAO6qV8nA4WI2c7pLmb
	yEAc6s8LaSWHXetG1fqOkMZJNXmlalmGyjDnRcrv/3Myu0mlVaDiH4k9RIfGoINP7tsCxSQ4GeT
	x/q1xgOtWUSVs1FXb4slz1xXlduH1i8hx/NgA7jKPpG1Y4YUQytXLoTzZ52Rfly23DSN6TccxdG
	8CPGOBEGE=
X-Received: by 2002:a05:6830:60dc:10b0:7e9:e9f3:266c with SMTP id 46e09a7af769-7ebf28741f7mr7407329a34.14.1784057839868;
        Tue, 14 Jul 2026 12:37:19 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcaf742e1sm16004026a34.8.2026.07.14.12.37.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:37:18 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Fabio Estevam <festevam@nabladev.com>,
	devicetree@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Albert Aribaud <albert.u.boot@aribaud.net>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/6] ARM: dts: rockchip: Add Luckfox Pico Mini B
Date: Tue, 14 Jul 2026 13:36:43 -0600
Message-ID: <20260714193656.2196447-7-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260714193656.2196447-1-sjg@chromium.org>
References: <20260714193656.2196447-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_203723_053743_EB72E6EF 
X-CRM114-Status: GOOD (  14.79  )
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

Add the devicetree for the Luckfox Pico Mini B, a small board using
the Rockchip RV1103 with 64MB of in-package DDR2, a 128MB Winbond SPI
NAND and a microSD slot. The console is on UART2.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

(no changes since v1)

 arch/arm/boot/dts/rockchip/Makefile           |  1 +
 .../rockchip/rv1103-luckfox-pico-mini-b.dts   | 93 +++++++++++++++++++
 2 files changed, 94 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index d0154fd7ff24..62a2ed96dd9b 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
+	rv1103-luckfox-pico-mini-b.dtb \
 	rv1103b-omega4-evb.dtb \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts b/arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts
new file mode 100644
index 000000000000..287dbf1307e8
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Luckfox Electronics Co., Ltd
+ */
+
+/dts-v1/;
+
+#include "rv1103.dtsi"
+
+/ {
+	model = "Luckfox Pico Mini B";
+	compatible = "luckfox,pico-mini-b", "rockchip,rv1103";
+
+	aliases {
+		mmc0 = &sdmmc;
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x04000000>;
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_det &sdmmc0_bus4>;
+	status = "okay";
+};
+
+&sfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspi_pins &fspi_cs0>;
+	status = "okay";
+
+	spi_nand: flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
+		spi-max-frequency = <75000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "env";
+				reg = <0x00000000 0x00040000>;
+			};
+
+			partition@40000 {
+				label = "idblock";
+				reg = <0x00040000 0x00100000>;
+				read-only;
+			};
+
+			partition@140000 {
+				label = "uboot";
+				reg = <0x00140000 0x00100000>;
+				read-only;
+			};
+
+			partition@240000 {
+				label = "boot";
+				reg = <0x00240000 0x00800000>;
+			};
+
+			partition@a40000 {
+				label = "ubi";
+				reg = <0x00a40000 0x075c0000>;
+			};
+		};
+	};
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2m1_xfer>;
+	status = "okay";
+};
+
+&wdt {
+	status = "okay";
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
