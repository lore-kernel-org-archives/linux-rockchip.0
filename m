Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29F4DC04FFE
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 16:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lyjgZoK3oW8bqIjBiIeO0lL67JOlAwxXmtJPUahxYE=; b=sncfRaspZoVFbG
	fjRDDKZMxdp9rU96bRn6zRTcebYa0KiGSEBKc1q+3QBFoj7WcJiv8r3wcW+Y0GEGbfB+guVGQscki
	xi32x+Uj9jcBUCI8kpBgNI1pYq+pw5dLl+xmYGphLxw8PWd0js17SDY6mQJsxDHYWJlP63g+wZN9R
	Ml5K32GYf/EXojoJ759EKp9MtE9RzysGZc4C/DPxrbCdGSAQwAiXAK0cMDyPWhOPZm10Lk5ahh0pl
	pOUAZQC5yqIBJBBAq1wzBOlNgFI48jL7QfigMN78j7Fl2Fwgudzz66pMKkK04bOKz0Z1zHbkrNMu8
	SfBMFvseZc7FlSuU54QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxUaq-000000030OB-0npi;
	Thu, 18 Apr 2024 16:26:36 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxUak-000000030Mk-3BVS;
	Thu, 18 Apr 2024 16:26:32 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713457589;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1u55PLCGxci9bAUfKmtYNqOEwbkf8Uc9rj3DWZzS4F8=;
	b=KzjIZxknxJVEM1S6yX44gD7YfP4LBCul7mlUz+mzLX5Hp3KZuJSA5pk6mtr5eUuhRSJVQk
	XLyp6jcbNPdwRUlUiCdkMG6LJhwKjx7xsJHJF6A2Od2JxWoSayt66y2EE0WiCBzyDo2ImH
	FScHbOVnQ56BPk24k8n090UVhK4BIXgwmwfHYz/T07f0m2F1s02lgiwgAynIAAwReAC3h9
	QTqNa4UCcYsMAlReKSYVamlxVNmiRQDYU4XbXZBsUrjj9zwiJ7iA7LRyfu/4oKTghgH5u7
	DUraFnOgSMYfdm+kyMd7w+BoqHXZvW3A87l7boKivq5gyynGF7tkBKp42NBtMA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	amadeus@jmu.edu.cn,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Correct the model names for Radxa ROCK 5 boards
Date: Thu, 18 Apr 2024 18:26:20 +0200
Message-Id: <6931289a252dc2d6c7bfd2388835c5e98ba0d8c9.1713457260.git.dsimic@manjaro.org>
In-Reply-To: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
References: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_092631_347539_5A34B091 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
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

Correct the descriptions of a few Radxa boards, according to the up-to-date
documentation from Radxa and the detailed explanation from Naoki. [1]  To sum
it up, the short naming, as specified by Radxa, is preferred.

[1] https://lore.kernel.org/linux-rockchip/B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com/

Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 1fe8b2a0ed75..1c26f04cbfcb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -7,7 +7,7 @@
 #include "rk3588.dtsi"
 
 / {
-	model = "Radxa ROCK 5 Model B";
+	model = "Radxa ROCK 5B";
 	compatible = "radxa,rock-5b", "rockchip,rk3588";
 
 	aliases {
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 00afb90d4eb1..4c7f2a2fdb11 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -8,7 +8,7 @@
 #include "rk3588s.dtsi"
 
 / {
-	model = "Radxa ROCK 5 Model A";
+	model = "Radxa ROCK 5A";
 	compatible = "radxa,rock-5a", "rockchip,rk3588s";
 
 	aliases {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
