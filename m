Return-Path: <SRS0=fCHL=I6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD3B6C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 21:37:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6CF67610F8
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 21:37:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6CF67610F8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2qIRdZ+0rC/Fo3PdlfeiOgSEYHUDk9E1AIa+WEQHad4=; b=fiFSuoIveigC0OfE4+NtY9X3FW
	BmPGI0v/t3XA2hiUvs/C82E/1ZGoR1WH3bRODiLS5jAykIc1Rojx0fVZz4uFDZvRb7zhbwcsk5OIy
	rjQJIxO2j/+wFkpznmtFUpaiFR8XapQKHY7KPP/H2fBo/WthykpM3SETpUJZ+lmyuo1OT7wshhh4M
	O3UPIj1QIllUbJ0poQ4DUqf46MrBuSqXAs0JcuIRrcHmJ32WQkWL2uFOGtzxs9+HzJJQ0/POmgupW
	fO3tHJVM7rzpvQlcokkQskb+Bfpr9fuJvGRDVmCdtcvgvw7J6tFPf4RuY0IigK1wgi1EXyMu/FgVo
	+raH6FjQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lS50b-00B5l0-0n; Thu, 01 Apr 2021 21:37:45 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lS4zt-00B5bE-Vp; Thu, 01 Apr 2021 21:37:10 +0000
Received: by mail-ed1-x52f.google.com with SMTP id e7so3511331edu.10;
 Thu, 01 Apr 2021 14:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+gY/T/hsynUQpVciph/AvsX8Mdk/HLeWGZvwma0uW5s=;
 b=AhUKu0pmsunzA78Qt4W/brku7n7SJaPMtwMa4YYwIa5t8IHj8dgwYHxoVwePylGeih
 m/5uMNsNqlvbnQXk4/ASCNS38oD3USZ2ZTjdofhInx6v0rH/ULhfg0ZFcud3YHj09WkU
 ace8WXTAFLFkbgERZw9aO2jPBdhpZrYg9YH9GfRuA7JyQ+R2mnjUN3yU4qPpEHDoLYz4
 ExIeYMs3KJ9qJbUY6s6zA4r2xrj1x7pGd+hbKZRkCrjV2gyaqi+N/HGbKPbRrl1PpzYS
 gagymYUE/WYo6S/mDMSf1NcFzUwl5IR48B94a9eA77seoKeyJV8IbrosnYFOzqveRXm9
 wi4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+gY/T/hsynUQpVciph/AvsX8Mdk/HLeWGZvwma0uW5s=;
 b=l1EanWyegMU+XPY6BuAJZ0SkTBa+uweyRMWp7hQR3fRuNWiWAobbCqH9lTbInea6+j
 MSpA+Cyv8LCVa1ge1hBcy80SMnbzGqeriql31dqNCyjl1iLnB9GleapHKvfDc4Lh0tE9
 6r4iDxNlvFL+FxnMtnqHVUNSicrS953E4tXttPf2KBMNjBFtEjS14JAzXpFosv13XFbM
 zl3UTLLmYAemGx0y5YO5psKKHZnLGBvKADdyAfPObLl40Z4wVXUJIVuwoyw0O2JxQ3dr
 ww/wpAxxuFjFFsv90VCLoiae6ZBgK0RuV7jI9W6g2WE+rcYfF5lkgiSRMagHUzHORspc
 OpdQ==
X-Gm-Message-State: AOAM531Tnim9LQQ+8bK8XtN0K1mn+aVj1lop6PiUuDQ0n5DTbF5KZQap
 A7L39ybyN/W6LUxTIJROWrY=
X-Google-Smtp-Source: ABdhPJxSFwDDqAg4YlAUoBIucg5N9sMbXaak/lHX+VbYCr1rlnr9ooQx9zIN8T+kUb9kD1TSGO10gA==
X-Received: by 2002:aa7:c1d5:: with SMTP id d21mr11821310edp.167.1617313021276; 
 Thu, 01 Apr 2021 14:37:01 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f9sm4237006edq.43.2021.04.01.14.37.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Apr 2021 14:37:01 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, gregkh@linuxfoundation.org, balbi@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v6 2/4] arm64: dts: rockchip: optimize clks for rk3399 dwc3
Date: Thu,  1 Apr 2021 23:36:50 +0200
Message-Id: <20210401213652.14676-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210401213652.14676-1-jbx6244@gmail.com>
References: <20210401213652.14676-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_223702_129614_40FF86EE 
X-CRM114-Status: GOOD (  12.17  )
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
index e93a5f320..186a7c483 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -370,11 +370,9 @@
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
@@ -406,11 +404,9 @@
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
