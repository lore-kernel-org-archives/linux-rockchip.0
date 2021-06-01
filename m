Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40DD8C4708F
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 16:49:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 054CE61263
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 16:49:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 054CE61263
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUGvJObCa1mjrIN5G9y5iet3H5duSP+KGh/HNP6GH0M=; b=XEEt5SUhSK+lug
	ePmircMEL3rGZh1aDG/y9ygRW7g90dhROYyONxjkLgih4ztHs0ItDDF1/ACu+lwyD804OaPSzcUGR
	Zota71zTg/8qeD0MkfdBkBx5JpRU+UvOTj7l6voDyKdBvYszyxi7WxRQcLCSpK0u2zjOtlaNaBVPN
	Wks0YATXD0bozcgK4SNGpcR1LN6d2fF3Rp10jh70yfZYJ7hHt4mHEiOYxq2qqvEwPncpbR0ivwsBy
	Yo/MR18hUaXsOA7RCwbgCR2hJLcLQuiY5WrLSiKh0Rh5CdspnXvo+O/TEpUAcliTvMoTjhF29ghEJ
	Jc8v2C0eKyKLN1/uG9OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo7Zh-00HXrD-6M; Tue, 01 Jun 2021 16:49:05 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo7Ys-00HXTC-SC; Tue, 01 Jun 2021 16:48:16 +0000
Received: by mail-ed1-x52d.google.com with SMTP id dg27so8462361edb.12;
 Tue, 01 Jun 2021 09:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=N9ujW2Qt+Tu2jJvNcfLPCqaX9eDRsnHYASEY0yw0Dq8=;
 b=o7quV5jp4VzQYkV7ItBmk0LigYxjpvV6MOinQgyohY4XXi5LdDpu0ymP6oziCl67Of
 2OzhfYIRj3/q9if9B0aS0fMUiPWeBulFoxJQ1qr+bAoUqqrQdnjU/GvpjUTnRufsiSHu
 vV6p7YTEki7WP9MdVdvMRWt+VuEBWSKbHtnttveATcXSHiI1jTZq3uCWXpXEMh1VTVH7
 zhT9mHlCCvgMkqRXP+9j0vNnMBdhXz1OePQ9C95vXd9L0W7w2JA6k6CIYHGzq3gcEUzY
 ND/H5qSQv0rZ5OTmJq+U5D6tXcxH0PaXlrYd5C6EajDjus0DKaZo7RZpDUGLfykUG8bG
 uAIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=N9ujW2Qt+Tu2jJvNcfLPCqaX9eDRsnHYASEY0yw0Dq8=;
 b=j5XnH9303ZPy12gsUhP4enIrld5ViocfR33wUkVqcGi+5zI4QYOAYcjg/TFSmZD4Si
 7lsdcyBZZcrL4pS+UJlkqapTAUMqUtB+paJaNMqeyBXbvzUB5Lz7ERR0fXC7uMhI9SVQ
 T9oIjhsy+TW7ft8LHoXoyBIBxivuXew3DBTtnxwhjO1AblnVRV/OzFbHsks9mj5ekKZC
 mPoBQEgE2yZOMQg6qK4mGPVsJsZLPcDaSkg1u/tlhXUVInbbtpNdYftlwWIIaIes9DUe
 NJbuHuhVoe61SUTarpmeVsTjqTZesiD+cM2SwogGfyUzvS4TOPeGHZrYO8v+9DyzKJuX
 cwxw==
X-Gm-Message-State: AOAM531fCddZDO1LZk0R7K/9f0rHfGfwmgbz2f+51tjF9DKoCC+Z7LXk
 qaXatMPgmczFhEIutC+MdyE=
X-Google-Smtp-Source: ABdhPJwmFvPqwCyzRBI5mROfF8pb56oDh+5wBx1i0BuLG+wDCDFurbvvYZ0imlKFHyr9o+d+tqIAog==
X-Received: by 2002:a05:6402:510b:: with SMTP id
 m11mr33229905edd.26.1622566093458; 
 Tue, 01 Jun 2021 09:48:13 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q18sm8327750edd.3.2021.06.01.09.48.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Jun 2021 09:48:13 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org, t.schramm@manjaro.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7 3/5] ARM: dts: rockchip: rename nodename for
 phy-rockchip-inno-usb2
Date: Tue,  1 Jun 2021 18:47:58 +0200
Message-Id: <20210601164800.7670-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210601164800.7670-1-jbx6244@gmail.com>
References: <20210601164800.7670-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_094814_945691_15F26079 
X-CRM114-Status: GOOD (  13.23  )
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

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 4 ++--
 arch/arm/boot/dts/rv1108.dtsi | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 5774bc309..cffd7acfb 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -190,7 +190,7 @@
 			status = "disabled";
 		};
 
-		u2phy0: usb2-phy@760 {
+		u2phy0: usb2phy@760 {
 			compatible = "rockchip,rk3228-usb2phy";
 			reg = <0x0760 0x0c>;
 			clocks = <&cru SCLK_OTGPHY0>;
@@ -217,7 +217,7 @@
 			};
 		};
 
-		u2phy1: usb2-phy@800 {
+		u2phy1: usb2phy@800 {
 			compatible = "rockchip,rk3228-usb2phy";
 			reg = <0x0800 0x0c>;
 			clocks = <&cru SCLK_OTGPHY1>;
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 884872ca5..9bd0acf3b 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -265,7 +265,7 @@
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-		u2phy: usb2-phy@100 {
+		u2phy: usb2phy@100 {
 			compatible = "rockchip,rv1108-usb2phy";
 			reg = <0x100 0x0c>;
 			clocks = <&cru SCLK_USBPHY>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
