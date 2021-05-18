Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F3AEC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 16:58:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 09041610CD
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 16:58:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 09041610CD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZUGvJObCa1mjrIN5G9y5iet3H5duSP+KGh/HNP6GH0M=; b=ZOp1bSL+/vw3C65RYluzcmlV8D
	LkJyvv7fV7bb4aNYeYgIWJodyFXISsrmbkzYYfo7GZZB7i8DHk9bGsZa8U4nHobDQ39JJGoPwwp/C
	H4exh66PBWOBO1xZ/aOgDUNiYWmGSTGvN4Wya0Ebf5ZVAhxLPqQsY47663go0cSt/pmytc8NoLxFb
	9tbUnVS7k+7QUfnQBvRfq7hYl/5lmwCZ0sR63LZsO2jzQcIX3nDb0gJpPu2d1BiJ6lcZBFdMhoCxI
	HyGAOGqAPxn4SDrEpWKZjEYlg+1lYDMbENz2uJpZs2S8K1H7CiCF6h4HaNB34Q9tAM9vzj07iWaCN
	AsW8bKNQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj32j-001PL0-6R; Tue, 18 May 2021 16:58:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj31u-001P3H-VS; Tue, 18 May 2021 16:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=N9ujW2Qt+Tu2jJvNcfLPCqaX9eDRsnHYASEY0yw0Dq8=; b=KgmM/SY8q12RXrxCK4LRP1+bdt
 pjWKoeno05Nb/IVCJwWlCe8gS0zH5+4RfSpUtwmIpqAEclAbxeg6tqo/NkLaTF9PeDHQjWMekIxmc
 zFktfWgOrRJLN4hBJdsy9zOLJBy+LG87rkdIqccy5CLrz46b2svhXo2t8FiPcI5Edxrq5lZtlk/hh
 nhL0RmJmnC5NqjPe8Z8DVVjkwCIaa6h89bsCHFmFr//eTpWDh3ZuWr7cWnFduce21aTdxOpNMH50G
 E0YNGgunZLM/9IyCVoLkela9VmGXWjAgWdwygNfwHJPfJ2VjYUx3MaZHa1ln1zjVIpf7zM2nUcG/l
 aeM2Hqqw==;
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj31s-00Ep1o-H7; Tue, 18 May 2021 16:57:13 +0000
Received: by mail-ej1-x62a.google.com with SMTP id n2so15656400ejy.7;
 Tue, 18 May 2021 09:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=N9ujW2Qt+Tu2jJvNcfLPCqaX9eDRsnHYASEY0yw0Dq8=;
 b=ojtTWGFpHNUppvadJCAYjdoYALUkefFh5Xy0sK1ZUDsq6ctNPpEVZszIsucn9HC4Mw
 GWgvACJxYyerY+40xWclD/KiRpePGHzW9E3fIHv5MRmOzJkc8lO30NN5dJkcYdoUY1oZ
 h34iMm9vC26eWutAu7GBdYsOoP/TpnbqpkIJkL1vc8bXIpXJRVl52o18brE1Nfja8H8T
 kAB/Ei1Omw7UskKeI04iD2FCVgdEBBUt2K+Fyr39lrbY6Bts7EAEm6cFh+3bftff/5cl
 W7U8/5dix/1mqUd9RdW9gEehfiZ3n5Jr3Y0ZXLQ+3m2zp8c4YsUQl8iQFNGCxd9/Pe+D
 HwTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=N9ujW2Qt+Tu2jJvNcfLPCqaX9eDRsnHYASEY0yw0Dq8=;
 b=iUolNyuI0JDleN4yz05PEpWeLqJzJYtMdDSDxQEa+BRfXIRLXmxrVIGnKT607IpP/Y
 bVDU00fVFoUQ7+KoDlhef/ej+bWupaACZt1SrZ0Cv930ihoDlsaaRzazMzAkGjbpsde0
 q+qysU7k+7Xc9+wbUTsVyb5nL4KWpKE0vxLfjwe+oT3w+/F1/0nwZZGrDTruo1l7K+E/
 gJzHBh985dzwA6iG2O/XA2G95AR+EJielLoVqP0pSMdfsDDunEt/jxCLqkhXySq0lxbv
 p03oTiWsh6rzIXzJlbIfI5+590Lh3D5/gcMc8+hkoTdWfjopfddu9lig1veUITfES+7F
 1xXQ==
X-Gm-Message-State: AOAM531mLd98DcniSbxd/mTvQBXX/gVaJ6Zd14t8lIy+uHyMfVbQyWGR
 rHZ7gFSRzZc4ffgQ66XGQm0qlFF9wkY=
X-Google-Smtp-Source: ABdhPJwfpapo85Wh49dGvXSFDyNc0G2A96Py0HuVovh4Il+3IEoTCKjNOigTL8725aDGkcWbDu5rkw==
X-Received: by 2002:a17:906:63d2:: with SMTP id
 u18mr7083280ejk.186.1621357030747; 
 Tue, 18 May 2021 09:57:10 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id n2sm13525676edi.32.2021.05.18.09.57.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 May 2021 09:57:10 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 3/4] ARM: dts: rockchip: rename nodename for
 phy-rockchip-inno-usb2
Date: Tue, 18 May 2021 18:56:57 +0200
Message-Id: <20210518165658.12764-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210518165658.12764-1-jbx6244@gmail.com>
References: <20210518165658.12764-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_095712_583669_8BB391B0 
X-CRM114-Status: GOOD (  12.93  )
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
