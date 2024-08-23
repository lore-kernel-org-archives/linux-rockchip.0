Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2D10C5321D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 15:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35lD6BVecTyoHyl3HurRO7e1gIB2trosYk9nYvxJBMA=; b=cqvHn39AsUz8+B
	2rrkYNYDOc9sDm+r9CY1/9V6AyP39Dvu7LbYROgMEGLFMBZVOEc8KijO09vbwflJbNZHY7NFZZ2ZN
	KiPX4xZTq2MECHJR9pypR0E6464PufdNeGrt9kxEs+7eweNeDGuleWdrnZBtIbJF9mh9Jb08J4qxS
	sFM+fIj54gwXwnmjM5ob62oVH8SzrkPqLuZLx8q4LJSZE7Hh94VEJjKhYfQKRtMiky31zGwoqZ5ER
	8hbyZtqMXyW0aaMkDBYaanzR5aFOXiNYFEL+xA1VcShigy5PYi8875xIAlo3wuW7hILGWRauw/t6d
	AJllZbZmHWhuo8pAxPjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWP7-0000000HLUI-2NCT;
	Fri, 23 Aug 2024 15:40:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWMJ-0000000HKlL-29VN
	for linux-rockchip@bombadil.infradead.org;
	Fri, 23 Aug 2024 15:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=QaZcuLfM4TvFakz1qdZ4oRQbf4vrkbnvYGkuZfvKInE=; b=B7So4RIrhyi0g4x/4rYAEQzgJj
	b9Aw8gGd+IzWdcIRm9e/GEyfw6MArp7HZK3MjoKoBKgxX9PJH2dSOi25UULmeiDUtZF8VZNVCKhAP
	RemF3NUm8bPIgaCHLhTfs2xvGMOXf2ejt3/GoMHsiSKE++pOp7BZBo/RUuM8V8UMgiIVSG+k9pSR4
	+IuS98cHZUy/kKnXgRVC5vHcocxa+cB1Cn7FA2fdFU2ArODqv336Ki98LYwKVMfv72va//WVhdcXx
	HuqcvfrDj4VAeekx72/ieHmAUJIMt2+ctLGywlYBaem6i1Q7WTCOqpfMdlauFU7xAbfP7PXmd7iji
	ODbckNMw==;
Received: from omta36.uswest2.a.cloudfilter.net ([35.89.44.35])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shWMF-0000000AAOc-0o75
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 15:37:49 +0000
Received: from eig-obgw-5008a.ext.cloudfilter.net ([10.0.29.246])
	by cmsmtp with ESMTPS
	id h53KsAng9qvuohWKTs6cNe; Fri, 23 Aug 2024 15:35:58 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id hWKRskt7U85uZhWKSs3C6A; Fri, 23 Aug 2024 15:35:57 +0000
X-Authority-Analysis: v=2.4 cv=J6Gs7hnS c=1 sm=1 tr=0 ts=66c8ac5d
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=yoJbH4e0A30A:10 a=vU9dKmh3AAAA:8 a=jOwBCQwwsqbqoLW4yoUA:9
 a=HjVMtnDHQlM7PJrv9UYS:22 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=QaZcuLfM4TvFakz1qdZ4oRQbf4vrkbnvYGkuZfvKInE=; b=Uaidzje9PZk8YtV4SrsN9PtooW
	Lw2E8bf2ZowaDnIee3CnLUjg0hWb0+nP2J+zIg/xDo9y4CpMMpydIMcUII5crZ5dHBveKDjlNRzfl
	lzbcaMbRMs6/oP4tOtD0dLXmpEJ81A7H8Pq7cimvqPSpKTYtrweJhG8sVtohz/ykfKwsU2Z2nIOuL
	twdyzPChwdO8CZsibu71683IuMJj8cy9MCRkih6n3Yz7pcfGXQaSb63qCKJxG5lW0qlNAfGwQTx23
	+TNHCBmuaXgSeDRZ20US0Rj1LG34OWJ89ShCfJJaZd7FMuusQ+EdVKt7T37vk0WlUlwUZ4bTU8rA0
	oybj6X7A==;
Received: from [122.165.245.213] (port=53684 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1shWKO-000GB4-2a;
	Fri, 23 Aug 2024 21:05:52 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH 4/8] ARM: dts: rockchip: Add watchdog node for RV1126
Date: Fri, 23 Aug 2024 21:05:24 +0530
Message-Id: <20240823153528.3863993-5-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240823153528.3863993-1-karthikeyan@linumiz.com>
References: <20240823153528.3863993-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1shWKO-000GB4-2a
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:53684
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 43
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfD0SJKPHDIrwRFt2wzBH7lqS6ITA8bkY6mg6n+L2pjXHvx44VA5dTaomx6U3sr/C7ZLp9+jIrKVXhcTluZK6MHp9ctucfZSVs3aU5KMQz/zQVPN6Sb23
 LoXhAv8fbmlBUx138p55Dzw0pq84j4uITxsnsYfomxEOcZF0lDaorNq298yj3XxFaTeIAiWl35n6PmMRoqtIhJSztpJlnNx5mW01VN3bcnZ01AnVGtEwsRtG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_163748_194918_69BE5AD6 
X-CRM114-Status: UNSURE (   5.21  )
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

Add watchdog node for Rockchip RV1126

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---
 arch/arm/boot/dts/rockchip/rv1126.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index abf442804d27..283985608428 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -544,6 +544,14 @@ timer0: timer@ff660000 {
 		clock-names = "pclk", "timer";
 	};
 
+	wdt: watchdog@ff680000 {
+		compatible = "snps,dw-wdt";
+		reg = <0xff680000 0x100>;
+		clocks = <&cru PCLK_WDT>;
+		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+		status = "disabled";
+	};
+
 	i2s0: i2s@ff800000 {
 		compatible = "rockchip,rv1126-i2s-tdm";
 		reg = <0xff800000 0x1000>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
