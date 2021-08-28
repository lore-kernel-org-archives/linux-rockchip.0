Return-Path: <SRS0=b+1m=NT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DD4C432BE
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 11:13:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4FF2E606A5
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 11:13:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4FF2E606A5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eETdAUdpSGiNBTI6DUlqIN/Gx293pehdRqjYzi/90N8=; b=w8zNlmN//e/NaU
	krZRnsnBqPZjhWWP2JYjvNGoOnbo/d2CH/L7VrMU9HEA5tMZcAJj81Wdyoo97wVBavaE1SjSEY6qD
	2RZnsEPpyIMAg4XwCJ1Bb+88t3FouyrY5o+6UNGOP4MMNVl7fFzB6x5Z6GEGdTkVUKZVkozOMbtcr
	bwVfCRXLCtGOi3gn73KiFFnWRA1oSYU7KKxPEm6Uv6VT+iuOljkfrm+VDFOkDkd14GHAIFmLrXnHL
	5iFlFrgInJAxVQd+HLPg04r8C1aRV01UKInpyOdzy2SZjbs13QVPuYVigfWJI0B3C9nhftNn1PzRR
	9q3GNe/DBXsinbxizt0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJwGp-00E8PD-6R; Sat, 28 Aug 2021 11:13:07 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJwGB-00E88x-L1; Sat, 28 Aug 2021 11:12:29 +0000
Received: by mail-ed1-x534.google.com with SMTP id eb14so4641147edb.8;
 Sat, 28 Aug 2021 04:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=39v55ZA/hFZsNg0cEUPwV28i0EcogCJUViGDxeBmNP0=;
 b=Go5JKD/tmYkY3YuHZlTBp+5EYiY2mNFdn8wZVUGahl57SoxGHkpsPRKaZjr6LIErI1
 fE6E7ue5Qz9KRucuw5VkHF7iFweJhI2vAC6Yxs2f28Cr3WrxSu3XFPUqBfWDHv5Exkf9
 DQisnJ+aHT7P2NflCdf+Soc6evqXEI8o3Uz3vqyQtRIHo2agoj03zpnE8G16ceIMlB3P
 rPGZE2oNZNsVZDIwfpnycFbHjZdjovhLQVbOKOsaYHr4DBKcIq+vMxu8tyJjKJByrflX
 lIsDvGgTVx9Ynb8kOdzQ+ajKFFeKY+yDDJy4QT/0sYZ6KM4zSRV99JvJJ0A7eJ2Yk+/3
 8BZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=39v55ZA/hFZsNg0cEUPwV28i0EcogCJUViGDxeBmNP0=;
 b=qz3WeapEMSxpV/VYsyOYpQFN8wPYBHyNrpVpknG2hLJHTAnkJU8rj4EfqiOL0F9eEc
 UuKJzbKPJ5eHb3WDO7GljZx2SCSCdRpUiDDObVRICpQGvv6vg4eVkyGQKhn/VCqoUqwB
 QDFJw6Er5vl5xyUaT9/qja8/VaGzpkW2JonyqLwbaTeoo0WDX4Sssaw5pMGHwlUgeMdE
 FVevIFa6USDRfvMu1U/9nemTCb3YD7uek00TLgHfN65vH2mfEnf/SftRB4y6qU6cP/yu
 0HC8Hh3O9OOyHm4xY7QxNTj3Mwppzbcx4Bdnmo9wgXis8UafuzcoU7c2iP3fFEtF1RJF
 kcTA==
X-Gm-Message-State: AOAM530zv4Wk69OnzB+wSTEv/P8nUa86D7IkfnSXXI2vJJagyvAsPOTm
 a2vUCB5SgTuHnpXz10untUE=
X-Google-Smtp-Source: ABdhPJyFVgO1IZ9+J0PUFNVZUQajZxjvIXNmcv8b82h16QoexlUvvJXIevofKX6SYchlQWKZuN4WPA==
X-Received: by 2002:a50:cb83:: with SMTP id k3mr15017614edi.102.1630149145908; 
 Sat, 28 Aug 2021 04:12:25 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id z15sm4716665edr.80.2021.08.28.04.12.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Aug 2021 04:12:25 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: rockchip: remove usb-phy fallback string for
 rk3066a/rk3188
Date: Sat, 28 Aug 2021 13:12:18 +0200
Message-Id: <20210828111218.10026-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210828111218.10026-1-jbx6244@gmail.com>
References: <20210828111218.10026-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210828_041227_745353_2A87D500 
X-CRM114-Status: GOOD (  12.02  )
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

With the conversion of rockchip-usb-phy.yaml a long time used fallback
string for rk3066a/rk3188 was added. The linux driver doesn't do much with
the GRF phy address range, however the u-boot driver rockchip_usb2_phy.c
does. The bits in GRF_UOC0_CON2 for rk3066a/rk3188 and rk3288 for example
don't match. Remove the usb-phy fallback string for rk3066a/rk3188
to prevent possible strange side effects.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 3 +--
 arch/arm/boot/dts/rk3188.dtsi  | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index cc701a4e0..10392e096 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -681,8 +681,7 @@
 	compatible = "rockchip,rk3066-grf", "syscon", "simple-mfd";
 
 	usbphy: usbphy {
-		compatible = "rockchip,rk3066a-usb-phy",
-			     "rockchip,rk3288-usb-phy";
+		compatible = "rockchip,rk3066a-usb-phy";
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index d6a946a2a..922290892 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -647,8 +647,7 @@
 	};
 
 	usbphy: usbphy {
-		compatible = "rockchip,rk3188-usb-phy",
-			     "rockchip,rk3288-usb-phy";
+		compatible = "rockchip,rk3188-usb-phy";
 		#address-cells = <1>;
 		#size-cells = <0>;
 		status = "disabled";
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
