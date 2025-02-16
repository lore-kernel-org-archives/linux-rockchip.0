Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96859C02198
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Feb 2025 22:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRazg+I1Fn0N3pa+aoXUqgYlo//d+6r0qelCsfmC+NU=; b=n6TDo3wA07JNBv
	oRdwShO6SzVt0mg9CQP9ipIxdcaWlH1d+cUHF/MnxorYJF+Z9DCCSxOro9TvTdNPUvtdN39OXOeAk
	02B8qD5Vbuzvto0yZRuGw9MvN5WlT6k4GN5PQJpec9fU6EvPixpIatbhOHwYtaTbbweKzibZszxIu
	A22MyW/BlT+dRoa16QeL8YvQSCSd6v8B2hY7pLmSg9L4wMqgv/KRn8yWLUzm7/xOh4ntWRyJJG6CI
	hgZF+BMBNTj4lJNzOXKg9IfCiS1lo2Cffb7xp4oaakjbwx+6jesUGh7RT5zZcMh9YSDxyaQgFAPP5
	rSi16V2VmY5hxzw6qXvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjmxl-00000002hCW-0hMx;
	Sun, 16 Feb 2025 22:18:09 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjmxi-00000002hBQ-3f8E
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Feb 2025 22:18:08 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739744271; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OIPg5n8vVNysNAPm+Fx4I0iVm/kVBYn1uipiSBFHzqoFnliSnBugJBIG6KTteAFX3rln6Hr/0PDeUNmcALZRNSHIn9Jr83nCFk2QfYlD4E0vmmWxOZ+rU5Oq+WdczxVSEkw6vD4xmhbeFl/mOrtrJ0evvs5loQPxIdCdt+ShcsQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739744271; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=oCI25TPhy4Id7iRyjm7K0b1dudwW2Ibox3w9+UV2UCs=; 
	b=TsRIgq+zr3kAZtaC5R6BfiEv7ftvn90Hw1oj6g7EHtbS9KC5HUmI4o59Kgk07RvZ4JQ6oJKZzmytfKelA+38xwh707OeB57t+U7LkPxWMt3TT1modY86vdecxHCx+kS2YWhj2pkA/CQSk7GSje56KtxmJwnjJh9AWBvlABac/wY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739744271;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=oCI25TPhy4Id7iRyjm7K0b1dudwW2Ibox3w9+UV2UCs=;
	b=PQavqjZngPTcpOG8lvnaNbyjOsHK+eEX9D0ggD8DQkhua7NrntRb9/+tXqnEaw5F
	aqutiC8q2x7X2wIdQH8F02Vy52j7DgYHN7aK2ZrWMZpwshhgf1JkhzSJaX07FjQsKhl
	YgDMjGwdjzEk2meE2Wz02msdw5mgN6Tlc1PVHyhQ=
Received: by mx.zohomail.com with SMTPS id 1739744269720837.2148685030786;
	Sun, 16 Feb 2025 14:17:49 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Marc Zyngier <maz@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	XiaoDong Huang <derrick.huang@rock-chips.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	kernel@collabora.com
Subject: [PATCH v2 3/3] arm64: dts: rockchip: rk356x: Move PCIe MSI to use GIC ITS instead of MBI
Date: Mon, 17 Feb 2025 01:16:34 +0300
Message-ID: <20250216221634.364158-4-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250216221634.364158-1-dmitry.osipenko@collabora.com>
References: <20250216221634.364158-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_141806_966114_65EDDEB7 
X-CRM114-Status: GOOD (  10.07  )
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

Rockchip 356x device-tree now supports GIC ITS. Move PCIe controller's
MSI to use ITS instead of MBI. This removes extra CPU overhead of handling
PCIe MBIs by letting GIC's ITS to serve the PCIe MSIs.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 423185686600..4f11141ea146 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -969,7 +969,7 @@ pcie2x1: pcie@fe260000 {
 		num-ib-windows = <6>;
 		num-ob-windows = <2>;
 		max-link-speed = <2>;
-		msi-map = <0x0 &gic 0x0 0x1000>;
+		msi-map = <0x0 &its 0x0 0x1000>;
 		num-lanes = <1>;
 		phys = <&combphy2 PHY_TYPE_PCIE>;
 		phy-names = "pcie-phy";
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
