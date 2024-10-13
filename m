Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63A31CF2579
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Oct 2024 15:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kNDR0FGNMLUbgOS/fxJFEDIhrqLNvqYlBQyw1MR9shA=; b=KD5zkv3ybOOfZ+
	27eezouMl32DLRID5ql8HF9ux6fl9nvd4xZj/xcwMfgeJsHUljqDD4eyqx+N6cDsyQt4Z1LHiOcYb
	+RZ8s6v/avF0yxJo1I7rvj3B3QvRyHmM7FQWx6srxJZG+3+syEySKZNneu1fA+dcYgrZdunlwRqpH
	6eMQrDbgEvYIHuWrQcd1LgAshVCcasZmkovInEHk7g2WIIEVAVyf9vDylN0GPl9MxORI8OIJN28Kd
	dW5vQLDuTNj1XDXGVlq0M3e/OPFEdnXENyQvlIv4kf/e9upr+QP2SENAaoza3/9mwQniZlvFycBSD
	kNmgTe3BlCZ7eWFJdG0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t00v4-00000002sCz-47tt;
	Sun, 13 Oct 2024 15:54:10 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t00tf-00000002s6E-1N16;
	Sun, 13 Oct 2024 15:52:44 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a9a0ef5179dso20052766b.1;
        Sun, 13 Oct 2024 08:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1728834761; x=1729439561; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=5rcWDuzAT1cWkPvStrvUoyoxPcvB11KzBluywXLg6fw=;
        b=IoNYUWXtcuZTFLaAZ26/lDHIWEVt7E+05AOptneF9X7qeOjnV1pDpEg28BwCSSLyxE
         WPcjEeUe1hu41eqdFzvYHa64kwANlabNGXAyBaeAB1D0uLUTUxuofJfBk0znLGYzwt+T
         caHwLFJJ6Z0l5+n8SthxWt2gdxJDKRm7EL+Ysq8+CGJkiKT/TKbmYQXG0uhvODEgoBY6
         DzUsJ1/DmLET5vpimSuF4nnmxTEXOb52PFTfTdpZvfG4Pid/erR3EXvAK52ckP5zpez7
         5MI/7m/iORFMqAQJ8/JNwXeuLiq/D9xer0e1IDsA9lsfW9BHpeqzl7D7sCAqkIsr4uxx
         e2LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728834761; x=1729439561;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5rcWDuzAT1cWkPvStrvUoyoxPcvB11KzBluywXLg6fw=;
        b=S2h/eoMBOBQ62+ER0O/2CgiNjx4zpUcjFRqAQspAMNv7fOvK+V9hFF/8YTVRhVGgSe
         VeOlZbIJ95YDcep+iVYkZT8nEzbKmop1QYpi4o0mslbAUQXvi6Y7rGSvBVQFbwAGCp6V
         JbfzCAeHGWfAOxT5CyxaHt3DInevspaRn5Z7TdQciaIFIHhRPiS9zaXqa2h30HCgRUlo
         XTdiV8SsVg98MUhf7qlnY7U90+6/ydpAomph/mID7i5eaRvj0e7Q3taHfGL/aGVOxYOt
         0CK94+dp6Z7FYTO1dj4Vj61ljU0oQ0sJaKMfBCkJhvA6070OuUS6WQW5fk8og1njGCo+
         4qpA==
X-Forwarded-Encrypted: i=1; AJvYcCWq5h9fictZlmzNcjVlxlN2n3yeLXZ1IkrZL/Y+qwyavis9RAmHGHSuMc5lnJjQnF6UXHaoDIPjpTkg23Zr8c7D@lists.infradead.org, AJvYcCXRLMwamu9lvvBv14+pYSoYmrRnRs29g2eAzpwSmAb8jHKhV/6zLJbktxa6en+w4gamL4K8DuO5NwN79BIpV3o=@lists.infradead.org
X-Gm-Message-State: AOJu0YxWJYFA/5gcPWPCF7N01RetdroXUFsVvrvGPa6IMRQAYu6ZmgVw
	1tye6CxxmFZ3aefE/1uYuKdhSwFDF/UEfWBoqNMsj3OtHof9coR9
X-Google-Smtp-Source: AGHT+IEj1O8jS8V6YrjgiYlvy+7IPDApkSTule9/hdF2bu3I0CXdsAoQP83/e3cXQFpSo+BGO73mjQ==
X-Received: by 2002:a17:907:6ea1:b0:a9a:8ee:5951 with SMTP id a640c23a62f3a-a9a08ee5b62mr185854566b.25.1728834761312;
        Sun, 13 Oct 2024 08:52:41 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:1587:1e60:ba33:7ef4:2f9b:8303])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99dfa32196sm245975466b.160.2024.10.13.08.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2024 08:52:41 -0700 (PDT)
From: Cenk Uluisik <cenk.uluisik@googlemail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add board device tree for rk3588-orangepi-5b
Date: Sun, 13 Oct 2024 17:52:18 +0200
Message-ID: <20241013155225.26259-1-cenk.uluisik@googlemail.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_085243_387909_888E89E4 
X-CRM114-Status: GOOD (  13.19  )
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

Add initial support for OPi5b that includes support for USB2, PCIe2, Sata,
Sdmmc, SPI Flash, PMIC.

Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3588s-orangepi-5b.dts | 26 +++++++++++++++++++
 2 files changed, 27 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 09423070c992..45249ce15175 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -154,3 +154,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-odroid-m2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
new file mode 100644
index 000000000000..107b65a5e7ea
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3588s-orangepi-5.dts"
+
+/ {
+	model = "Xunlong Orange Pi 5B";
+	compatible = "rockchip,rk3588s-orangepi-5", "rockchip,rk3588";
+};
+
+&sdhci {
+	status = "okay";
+};
+
+&sfc {
+	status = "disabled";
+};
+
+&wireless_bluetooth {
+	status = "okay";
+};
+
+&wireless_wlan {
+	status = "okay";
+};
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
