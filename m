Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2479C02194
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 11:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UX/BGYH3xjYjEa7CPIVvi5bLJ2XCzGVo8NIkXoIpkrM=; b=GpHxC19BUarLwq
	D+Oel1W6o8NoOuYBiyWILLkxWBThNGrtQaqXjzIrGtMh/tt+UnGfd/ki6MJt4wHUg9nzhXRRc563u
	XCIR1paBfdnpizEkecHdszK200Zs65/Ts/wY1VRlwZC8ONuunmMMF4SWo/WzPu2//HE2T6YzhNY6A
	g2I3oJJxalIUCUx4Q3hIjVbh56kaqQO677MZ+J3FXxAPNDGuPuMP/TYOoqQfUCJymXkYSS6QtJuZI
	FfgE+V/1LxmRDyWfUyOSLg7osa7nAFtPqVT8bY0HsiURaPfMMCvmmV0cl9XqNbZS4PIAr+qcz+n02
	gwQj/kU+6AZwCGezryQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgMJ2-00000009Jh7-0h5N;
	Fri, 07 Feb 2025 11:13:56 +0000
Received: from out-173.mta0.migadu.com ([91.218.175.173])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgMHk-00000009Jaf-2ZFn
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Feb 2025 11:12:37 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1738926739;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ggZDy9K0QrESSAr+dEXYVccxkvpDwQbtlF19t9QLxNU=;
	b=FrSR74TMyWdTtAjGtKHYnqxV8zPXfJhNyyBsdsMklihOHeM5TI1huTO9BajAk3LCtHmF5G
	1b7mqcTk1hWuzDXqFwrQrcrcJUW1dUo4Pnx5bxASqKpEZp4B9yAePPiMfYMvzkeV6B3rNA
	eRgjnYCBtcxCYdP+C6rZl1P3BDd70bVXOCygyfEG/heeY09QLGBooV48c2IC6zwKQ/nux5
	xAlCQD/Nd85BD7Fr8DQljO9+zpY0dI3jNZFUHwbafz7VQ9Z7LBnZDP77HeoEnOxJYwt1xq
	BeQRFjXP6y3+uG8/8Y+rfV+pZe7zJcmqebJIlF3Td3W5gdxf6Uua68N1mDrtWw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Maximilian Weigand <mweigand@mweigand.net>,
	Marek Kraus <gamiee@pine64.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v1] arm64: dts: rockchip: add 'chassis-type' property on PineNote
Date: Fri,  7 Feb 2025 12:11:39 +0100
Message-ID: <20250207111157.297276-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_031236_797863_6755BEC0 
X-CRM114-Status: UNSURE (   6.92  )
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

Add the recommended chassis-type root node property so userspace can
request the form factor and adjust their behavior accordingly.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
Link: https://github.com/devicetree-org/devicetree-specification/blob/main/source/chapter3-devicenodes.rst#root-node
---
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 2d3ae1544822..3613661417b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -9,6 +9,8 @@
 #include "rk3566.dtsi"
 
 / {
+	chassis-type = "tablet";
+
 	aliases {
 		mmc0 = &sdhci;
 	};
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
