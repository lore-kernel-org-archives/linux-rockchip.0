Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AC6C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3283964ED1
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3283964ED1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QiYk2YeneAxknBvp3qBqvBvwBcfYMZZYvQx3PAI/uBk=; b=wiaOFE0qYojfS+7QWOP+X90NOG
	xs4s+sSyqoYvDrQQJqdS0SJ6YmkABm9m6R4jHwUJTCBg21dTObA+9essPKLHYeayfzgWi8uDyu+Kh
	9M7tAx/VPtRCBkE6Y478jetzwLwZsV3+9YNobzG4o4uTYRUoFIjlF0iRBCTgEQ9nkSfZt3TWc3pzk
	m4q+4zPpCOhHBF4LQTQ1wiGSccOf/ynJ9QlkbPh5wW2ATN+eyaVybYjkQUulHcr7OnY7RuNH8hVFw
	P+A2GbFTGkf6S62vBC9voCbM0HU2j/6zUUIqMRBUDeJqqb/WnnJWFhkWo3ULszQHpQsf6V805Pi1A
	jrZtRWMQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9YcX-0004yB-1k; Tue, 09 Feb 2021 19:24:21 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9YcF-0004rk-HO; Tue, 09 Feb 2021 19:24:04 +0000
Received: by mail-ej1-x631.google.com with SMTP id a9so33655250ejr.2;
 Tue, 09 Feb 2021 11:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r7BU1Ua7cwHe6jzoj7pIEXXpfnh5K4Y+YXR073vkvQE=;
 b=bh1IT2E376Yq6oXbtlLRVU+ZZgwlQGngdXEgtoCLNApGVLxKZgNcwTXuBftb9haijP
 IIjApj2MGOwBkU4/qoDv8H5kROC7Ft9rXktG0pwxcodKCht0kPvXTv/S5Sw/XF2cBeGd
 qAwGBS1P4pNyT8b2GVyW1VbiAFE2pbYimxz6Wh3twMtY5kDU0JRy1UKKWpaK6ujwF9SI
 qp3oeiRdTb0QMw0J4grCoBzbrLvAzZhdNi++4bjwbOkdPCyOyiYcuj5p8D4S+Lwffwzd
 zTXauPyAD+rCiPkeMGS8u2Z9aqlADrMziri6dNWDPabmtIt8ewRfL1HgSNzN38rADgBh
 he3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r7BU1Ua7cwHe6jzoj7pIEXXpfnh5K4Y+YXR073vkvQE=;
 b=beSumKTgDmZFIL+pV2N+wgfNuxIEJS1G/pj2RhWX1yTnLWGkrd/H5MIlBLtbF1sMH/
 8EYGPV7Sce0Jj8gBp6YtouFWaFJXbSLXZlP/nhFz+qXQcTOymzydxoDUYHJHjYf1U+cx
 7Omcz7x0aeLLPlD9XXqtfefTfgQI/Nis168Kenoz8KOeaJuW3WFrvbtaGHtcPO8ANzra
 HjWsGbCUiNa38WIUoYKZ6LxtDSohjfVNFnKfkClPnc/kczX0kJzQ/XMQDcL+AdOjK7Nb
 9Vo/58Yx9xJTL88s3XE200/f0EiIDJIGzFF4zdBCo/P5svrrqgVuBTAXVfXdwTRhTukR
 PXPw==
X-Gm-Message-State: AOAM5337KyBsvELz8Jd/0XMsGR7AqnWIF3WcgIJtG3MOBn3G04H9hfLC
 85lCrXmT5ttRBsrHZCZ8akS9hENcOgE=
X-Google-Smtp-Source: ABdhPJxKg0jN0s/0ilpBmiIkOppmd8gfTSX0HME5CQ924LQSHlmH/a9j412UFHOcO2XDV1B8AX7bGw==
X-Received: by 2002:a17:906:7b8d:: with SMTP id
 s13mr23864808ejo.479.1612898640598; 
 Tue, 09 Feb 2021 11:24:00 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w3sm11075779eja.52.2021.02.09.11.23.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Feb 2021 11:24:00 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 3/8] arm64: dts: rockchip: optimize clks for rk3399 dwc3
Date: Tue,  9 Feb 2021 20:23:45 +0100
Message-Id: <20210209192350.7130-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210209192350.7130-1-jbx6244@gmail.com>
References: <20210209192350.7130-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_142403_660551_8FBC34FB 
X-CRM114-Status: GOOD (  12.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Wu Liang feng <wulf@rock-chips.com>

Remove unnecessary clocks, refer to rk3399 TRM, aclk_usb3 is the
parent of aclk_usb3otg0/1 and aclk_usb3_grf, and we will enable
aclk_usb3otg0/1 and aclk_usb3_grf, so don't need to enable aclk_usb3
again. In addition, the aclk_usb3_rksoc_axi_perf clk is used for usb3
performance monitor module which we don't use now, so don't need to
enable it.

Signed-off-by: Wu Liang feng <wulf@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 04f7cc5c3..b125cac89 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -399,11 +399,9 @@
 		#size-cells = <2>;
 		ranges;
 		clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
-			 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_RKSOC_AXI_PERF>,
-			 <&cru ACLK_USB3>, <&cru ACLK_USB3_GRF>;
+			 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_GRF>;
 		clock-names = "ref_clk", "suspend_clk",
-			      "bus_clk", "aclk_usb3_rksoc_axi_perf",
-			      "aclk_usb3", "grf_clk";
+			      "bus_clk", "grf_clk";
 		resets = <&cru SRST_A_USB3_OTG0>;
 		reset-names = "usb3-otg";
 		status = "disabled";
@@ -435,11 +433,9 @@
 		#size-cells = <2>;
 		ranges;
 		clocks = <&cru SCLK_USB3OTG1_REF>, <&cru SCLK_USB3OTG1_SUSPEND>,
-			 <&cru ACLK_USB3OTG1>, <&cru ACLK_USB3_RKSOC_AXI_PERF>,
-			 <&cru ACLK_USB3>, <&cru ACLK_USB3_GRF>;
+			 <&cru ACLK_USB3OTG1>, <&cru ACLK_USB3_GRF>;
 		clock-names = "ref_clk", "suspend_clk",
-			      "bus_clk", "aclk_usb3_rksoc_axi_perf",
-			      "aclk_usb3", "grf_clk";
+			      "bus_clk", "grf_clk";
 		resets = <&cru SRST_A_USB3_OTG1>;
 		reset-names = "usb3-otg";
 		status = "disabled";
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
