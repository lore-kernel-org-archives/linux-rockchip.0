Return-Path: <SRS0=290H=HD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70CE3C433E6
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:16:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1137560234
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Feb 2021 19:16:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1137560234
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U5/ea3OtYnAQ1xiH84DSpItiAyp4nJ3l5B5jwhKZrQQ=; b=ItC8FMB6AAQ9iLGVmzixYFgwlZ
	LB49Z7xs2QkOE53Su63r+/V3fqgdfDuxWI89yVODbv3/kt/uqRMVlizTcdzuTKd9DZd6KqzgQ8DKg
	wq95Y/Cdn0BLtDoKY+vsNCjCVlD7kDwpFkreCl3WCkcosUQ9LQnCq0aGlu5fzWcAabwTCgRFSu9dn
	aF5Y2RUPYWkxfNwKVoLHXXJX8nQEsUtimA2L5rBeTrpkfPFWO8QyH47PudPj6WZi91f/E0dY7UmCt
	Lj1W9rfAxrYntYfugENeoKURAlBhoTt7WcB3Yp3e+mC/JcQPpyLw5lLQSl2yR7k21TWOR0S4M/74O
	wIwhOIfQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l6egf-0006mp-KS; Mon, 01 Feb 2021 19:16:37 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6egY-0006k4-Hg; Mon, 01 Feb 2021 19:16:32 +0000
Received: by mail-ed1-x533.google.com with SMTP id df22so4240697edb.1;
 Mon, 01 Feb 2021 11:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=X2oJ/oS9W6B6NjUjWeyWWEJnoptgHKF+k6enHUja9os=;
 b=e2ZSe5L4DqRkHowO7yuhyPs3CMkfnLue4kyX/ln/Ia7m3ahZG//k55NGvjuHnUkxel
 iwTd8xIyzHn9aMLxJvRbjy9zk+Nyha3uq6Uw99qr0+nr5r+hTj4iDhmS825oSh5ix0Ys
 iLqa4kUp5I+PNPLCmtXO8XTu33h2XuIdJvr7FEiC51d5kQE6jx88JUGu3hF+cWiY5kHV
 sLqTnerAh2sU/LJXuAp4ysnFOD7k2si575b/RZ6ezCHjVj2PNk03qMOJ9ZoBYNMv2d2j
 Fw5P9Aj4iL2SC99cjaRxbs3UfGoSZa/RVXNsOUyUW6Wey50aIfFR5u+az3FS5ydrN1WO
 Yicw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=X2oJ/oS9W6B6NjUjWeyWWEJnoptgHKF+k6enHUja9os=;
 b=JImDp9kl1CTRiqIj08Hx8EYF+SVY4vo5Pi0Nx2rr1wWYRF05eQKFnjbN9+eE2yRY55
 xCiuLmkfQYETWoxZ1pxNanKIaFp9HKspLcYhqH1UJd46NHoBl6kSJknpsFckLRV6UmGT
 Xdh1tIqvyv56zGixUtIuILfPI8x9iHpQlfH7nWU7hOaBdsooWYEFnqnPTs7CsAG7/6rh
 6M8uMM0/jiM8ecXO6X71Wxo1q2tuZIImmHrJyYjjJFX3ncIk8MmJk2bpld0bhqO7R6Oj
 YAdugedT25M8j1q3PolgurpauOnHjm1noLdgJfmh7Ce7bxB+6fPkBtqbHuKDCapBwqfF
 V93A==
X-Gm-Message-State: AOAM533L8HGoqAAmRDX51DkzSxFakVYrlyI/dTrB0vr0UXVgZBnuo9Kx
 s20vZlD4bxr04uHCPUeznrA=
X-Google-Smtp-Source: ABdhPJxhYrtE/Fe8Ro1UgIM2UBNTJv8wyaDn1S4w3Rujmub+U6t7MbTvxNQS9bY+5gv4bSHBFtXm9w==
X-Received: by 2002:aa7:dace:: with SMTP id x14mr20615282eds.300.1612206989336; 
 Mon, 01 Feb 2021 11:16:29 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id a11sm8243630ejc.64.2021.02.01.11.16.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 11:16:29 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 4/5] arm64: dts: rockchip: add rk3328 dwc3 usb controller
 node
Date: Mon,  1 Feb 2021 20:16:18 +0100
Message-Id: <20210201191619.32353-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210201191619.32353-1-jbx6244@gmail.com>
References: <20210201191619.32353-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210201_141630_642240_4DE60CEB 
X-CRM114-Status: GOOD (  12.58  )
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
Cc: balbi@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cameron Nemo <cnemo@tutanota.com>

RK3328 SoCs have one USB 3.0 OTG controller which uses DWC_USB3
core's general architecture. It can act as static xHCI host
controller, static device controller, USB 3.0/2.0 OTG basing
on ID of USB3.0 PHY.

Signed-off-by: William Wu <william.wu@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 17709faf6..2bb666d35 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -987,6 +987,33 @@
 		status = "disabled";
 	};
 
+	usbdrd3: usb@ff600000 {
+		compatible = "rockchip,rk3328-dwc3";
+		clocks = <&cru SCLK_USB3OTG_REF>, <&cru SCLK_USB3OTG_SUSPEND>,
+			 <&cru ACLK_USB3OTG>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		status = "disabled";
+
+		usbdrd_dwc3: usb@ff600000 {
+			compatible = "snps,dwc3";
+			reg = <0x0 0xff600000 0x0 0x100000>;
+			interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+			dr_mode = "otg";
+			phy_type = "utmi_wide";
+			snps,dis_enblslpm_quirk;
+			snps,dis-u2-freeclk-exists-quirk;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_u3_susphy_quirk;
+			snps,dis-del-phy-power-chg-quirk;
+			snps,dis-tx-ipgap-linecheck-quirk;
+			status = "disabled";
+		};
+	};
+
 	gic: interrupt-controller@ff811000 {
 		compatible = "arm,gic-400";
 		#interrupt-cells = <3>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
