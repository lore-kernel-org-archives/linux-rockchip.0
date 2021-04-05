Return-Path: <SRS0=J5Gw=JC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3B8C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 07:45:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 024C961278
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 07:45:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 024C961278
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gxzXrIVoMu6r4Db34A56aQGesR22U9+mUCvVHI8QwXg=; b=SGn0KZFvk9KUB+atuEY/gh6WHD
	SfqVb7wPnra9jgEqhZR+Lh6cwE8JPTARJrOXDQsTXTboDNnw7GcdxM9lceekPUJt1pxpUPshkh1jR
	KCaXS1p6AG/5H/HGGKQPJ0+O8XT4H9GQox07fA+NuZimy6bwN9cdl3WL0QhURZ50hUXb5r9bSvdED
	ky2bo8TzqfdtPmIqPqaUerY/zoJzFEziFR2fUIACONwLhZRxCbCf9hWeJjOnUTrswMKwlKxpmK9Ha
	1rBtqe33Q3lk0QZgmy4wWUE2ungdq09bIyXUtd0hOF5VMgHCGPlMFOCqBWwvt3Z6su5OHAJDGnyqI
	ZDzdGbeA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTJvG-00GuE9-KQ; Mon, 05 Apr 2021 07:45:22 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTJv6-00GuDR-3t; Mon, 05 Apr 2021 07:45:14 +0000
Received: by mail-il1-x12d.google.com with SMTP id z9so9508001ilb.4;
 Mon, 05 Apr 2021 00:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=of0etr/M++Ql4TAEyEfHWlaTB4IzHPopxzN/wLtkswc=;
 b=C3SNREK/DkSyGjALgjOrLej4NAxb6RFe5Iupbzkxy4PLbZDXsclhP4SYHYyi9MdOcr
 u2wwBE/hcJRjDmPdcvRjzLPteARWGfWE6BOLjTa0CGQvenhI9TyP4fh2Axe+y1rUrc0P
 hByqlH3KpwZFDuzrGTMGM7z3C1lVBESWQIoa5V71PjDDh10x+dNxcR1DxkDWpf6BN/9I
 LXbR68UWEcobHJD2Sji61/lo8wFqizm1Bx7sfNniATakMNB+EiWCc4conuviqpGDW7/L
 oRWBYT2zPXFo1VeODylQTWvU09+pMtNMpf981HX0gcPRDzrH3xMdEwrqgIvaFJHGCE49
 DVdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=of0etr/M++Ql4TAEyEfHWlaTB4IzHPopxzN/wLtkswc=;
 b=ZEy02Btrh4TYntwFOIdAt/rpaq5SxJmdQVWeEoLHTSdqXXsZO5sGVK+l85AN2kqagc
 saZ51JXG2Z8Aun6YQNMuCTNXq6xX1/dClP4m5QfeFzEH5WH5XXOm68vhUszzsE0WUWTg
 cXioKquf/gHkiGd9pXL6mxf/Y00b7F6hFkWhjPhp4i8AVMjS6IULPQ57hd3ZkRkgmKvW
 wUV0Ti4jtuzgluK6DEptQ8fCpomCaYsXQp++DDGY0FKPjRoqiO7SHb1piGGnV1iNvJRu
 I8UQ+IyTxYAwEDsAhT8hlvKHcl32IHq8M8f2vt5UlPf5Xxd3whPCiPlA53U/cVeYywdj
 qNaw==
X-Gm-Message-State: AOAM532fXDjdIWKREP2KGwXOLJtK0O38pgMaoAEkTnvT2yCmAOleRmhy
 p7McKzalalZU9B655i0uX14=
X-Google-Smtp-Source: ABdhPJyGQ6UbGo7hPJmlb4jNG5lkMgpLnAcFgMz/JAmL6C/GatdZgiDn5/+W9rJVIQnSvqYIk0dKew==
X-Received: by 2002:a05:6e02:80d:: with SMTP id
 u13mr19051712ilm.159.1617608708324; 
 Mon, 05 Apr 2021 00:45:08 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id x18sm11857686ior.10.2021.04.05.00.45.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Apr 2021 00:45:07 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, David Bauer <mail@david-bauer.net>,
 Robin Murphy <robin.murphy@arm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tianling Shen <cnsztl@gmail.com>
Subject: [PATCH] rockchip: enabled LAN port on NanoPi R2S
Date: Mon,  5 Apr 2021 15:44:59 +0800
Message-Id: <20210405074459.4217-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210405_084512_267940_B5E0F4F4 
X-CRM114-Status: GOOD (  10.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: David Bauer <mail@david-bauer.net>

Enable the USB3 port on the FriendlyARM NanoPi R2S.
This is required for the USB3 attached LAN port to work.

Signed-off-by: David Bauer <mail@david-bauer.net>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 .../boot/dts/rockchip/rk3328-nanopi-r2s.dts   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index faf496d789cf..6ba9799a95c5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -37,6 +37,18 @@
 		};
 	};
 
+	vcc_rtl8153: vcc-rtl8153-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtl8153_en_drv>;
+		regulator-always-on;
+		regulator-name = "vcc_rtl8153";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-0 = <&lan_led_pin>,  <&sys_led_pin>, <&wan_led_pin>;
@@ -265,6 +277,12 @@
 			};
 		};
 	};
+
+	usb {
+		rtl8153_en_drv: rtl8153-en-drv {
+			rockchip,pins = <2 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &io_domains {
@@ -364,6 +382,11 @@
 	dr_mode = "host";
 };
 
+&usbdrd3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
