Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5A10C4708F
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 16:49:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1622610A8
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 16:49:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B1622610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTY0eIRtoMntePcD9/4t853TPBFt8SXrlAw7nMPP0Ek=; b=mrw4oQepXnF50q
	KAVI8SXH+T0s9blItb9JYoX7xNUOHAOeuOtFoBUT5T3IaFS1aZmLmOlzn0utX9K/x1XdPbae8TswZ
	d/xMUOyxJI5bSs5quoeTFWAjDkxaxdeyE3pXMYdI4w9yaywhcmoAxHV2DVhvL0NKk4MD+r2RXsgJW
	soy6G6RQIXeDCJlXp8newSS+AQ4mHuAMcra0BKqYbcq1FXbi/XAa1EdQFZisxsURjSYnxrD3rBcpw
	4dBvx0D0tZBrwWn4pDKt8k0Efov0Vm3r86oJb6D7WeqN080iG4CMeMRiCQNV8fQS864IPBp5Zb9lv
	BV3pgg15DCujmNvwvcJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo7a7-00HY5n-Fi; Tue, 01 Jun 2021 16:49:31 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo7Yu-00HXUG-96; Tue, 01 Jun 2021 16:48:17 +0000
Received: by mail-ej1-x635.google.com with SMTP id t15so9762800eju.3;
 Tue, 01 Jun 2021 09:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DHH8YHAlTPU5T8bDwFoNt/piYkwaeBsEh0BIqwvr1v8=;
 b=UWfVn7196iEf7L184gwllFhn6rdJEIWyjJCbY5n2WJCVE3/0likbwUcU+ZHcNxJ5C9
 zzfZqKJJUvFzjm49sXA5z3F2EAoUJIBPIht6iz/Ws2OKkKoSMbHO17MUMNE3tYrz2bwg
 MfXqeEekBVhSH+SAlYqynKa5PbySth8XWvmy2n6gmb24HNn6Qs5zAqFfHRj+j+tYDGHt
 iroOJJcYKWLV/VwUm7q1W1qgKEFMeN2S0qF2WYtjHLUQFW373EIJSyh7Nj1EMERGt6vt
 THXONO63VvoMJsl9CpM/jm97wHpnWKsddcNZcCcAwInnzG8q2Vn8TFk735K30ALmBlsZ
 w8Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DHH8YHAlTPU5T8bDwFoNt/piYkwaeBsEh0BIqwvr1v8=;
 b=DJlL98Fg2PZv2C/Agp//0vDII2Fug9y2q/fL5xqiUq+z6xMcmgpVQkFj8/Je/WhN3M
 Mq3J8uiirgMAoA0eZVj9fPbTI7WLqou5jSat4qggF4jkCq970iEnXW6Yy3dufnbq4CRO
 JpZkw7q4IcvrB0FTsmwpCsxyWaZpj7DxUF/dlBmcS64ZlhHOQ7rXU8flYdpvCVbscTrh
 xG6nOA4z9dyvEUPaHpO9pW9Ra0g4RXFfKDq3jrfPzHuvBay7VjqgWUPwgPpYwXXRKadh
 zJbAEvSUix6nuCi6yBwDWR3YUMevb9gpU3YFgRMZF1GBBNavJi8TzBDt3etXdMMbBx/g
 ebSA==
X-Gm-Message-State: AOAM532TrAKMMmXhx4wLKuSOdIAX1IxLd62LHx4eK8WOObMgcjVgvQDg
 bY/VLmbt6QfonyqDBs4J8UE=
X-Google-Smtp-Source: ABdhPJxn8fLUrUgadCnTVAG5yqfmlbvyD3qqaRyr7KxYhhdmAgyN9kCwnpKervVuHajee3iAm0dALw==
X-Received: by 2002:a17:906:1dc2:: with SMTP id
 v2mr30584241ejh.8.1622566094887; 
 Tue, 01 Jun 2021 09:48:14 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q18sm8327750edd.3.2021.06.01.09.48.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Jun 2021 09:48:14 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org, t.schramm@manjaro.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 4/5] arm64: dts: rockchip: rename nodename for
 phy-rockchip-inno-usb2
Date: Tue,  1 Jun 2021 18:47:59 +0200
Message-Id: <20210601164800.7670-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210601164800.7670-1-jbx6244@gmail.com>
References: <20210601164800.7670-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_094816_360681_AFF2094B 
X-CRM114-Status: GOOD (  12.72  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The pattern: "^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"
in phy-provider.yaml has required "#phy-cells" for phy nodes.
The "phy-cells" in rockchip-inno-usb2 nodes are located in subnodes.
Rename the nodename to pattern "usb2phy@[0-9a-f]+$" to prevent
notifications.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 4e243d72e..248ebb61a 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -822,7 +822,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		u2phy: usb2-phy@100 {
+		u2phy: usb2phy@100 {
 			compatible = "rockchip,px30-usb2phy";
 			reg = <0x100 0x20>;
 			clocks = <&pmucru SCLK_USBPHY_REF>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index bc0bdc3d8..8c821acb2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -819,7 +819,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		u2phy: usb2-phy@100 {
+		u2phy: usb2phy@100 {
 			compatible = "rockchip,rk3328-usb2phy";
 			reg = <0x100 0x10>;
 			clocks = <&xin24m>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index a2eba5357..c1a253507 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1418,7 +1418,7 @@
 			status = "disabled";
 		};
 
-		u2phy0: usb2-phy@e450 {
+		u2phy0: usb2phy@e450 {
 			compatible = "rockchip,rk3399-usb2phy";
 			reg = <0xe450 0x10>;
 			clocks = <&cru SCLK_USB2PHY0_REF>;
@@ -1445,7 +1445,7 @@
 			};
 		};
 
-		u2phy1: usb2-phy@e460 {
+		u2phy1: usb2phy@e460 {
 			compatible = "rockchip,rk3399-usb2phy";
 			reg = <0xe460 0x10>;
 			clocks = <&cru SCLK_USB2PHY1_REF>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
