Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F79FC021A4
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Feb 2025 23:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRazg+I1Fn0N3pa+aoXUqgYlo//d+6r0qelCsfmC+NU=; b=C++dXa2TxZ2lt6
	rcMclk/R/BaF5sHhtgWe+4U8gC9eGdj6AQYtBq7gEQJAtKnZZjgcC1mHdA0CNlXPdt1LkCcsgeiHM
	+05jiPj9WVeBJpZj0bNt157XwL78PywUfpZ3iIoE1mW/nFWE0+Xtn6ctzLg4/mc0QvNBEPDbhqK/c
	s+RJcqR2AUotoU/tWgD4RRPgMZrGaZzIExRIvMfy6yYz0a/EMyfn+8T5sLrg+FDXz3HvVttb6jZQU
	SFT2Ldy7elAWvVOFRSUubqrRiusnNFaNhP3TLcl3OB7KYKzUUfBDYyANZ+CJ2uRijpcwfDK7MccqW
	D+fVkvmlIZjIQnN1F4zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjS06-00000000vex-3PDy;
	Sat, 15 Feb 2025 23:55:10 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjS04-00000000vdH-0qYp
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Feb 2025 23:55:09 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739663696; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=gLhnrwRSLi5R7ujJmVzMeXJmPP8k8tkWee4mL7go0EbBbOrUGumzNeFaAHB8340uQOwV/JO5TvRtQvIPCk2z27ZpVLlXIr6yeYUm9jfKRwsLg0K7W3pjVIWp1N8cr422X5kPuqYapwedZgbrJijGQoj8QX0MB7mJrU6zJgQip6Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739663696; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=oCI25TPhy4Id7iRyjm7K0b1dudwW2Ibox3w9+UV2UCs=; 
	b=cTm0yelkmBY4uupScKR8q6FfLKheJWmHHb/Nzs0dW93VdNfa7PhAUjY6rhoWwCmyb55by7XbBkOVAatYK+h9xZ2FRwPxBqtHyRA+NyQ5Q5GXGtSuLN37ajI5Oy6wCHdcgvy1xxodGD37Prdo1hRKIOxgYHtbPQ2mw/hMB0roNNQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739663696;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=oCI25TPhy4Id7iRyjm7K0b1dudwW2Ibox3w9+UV2UCs=;
	b=Si9LycLkUtDucdpOcJ/0DnsD9jaQx+sTn83slTa5IcmbpMjAAie5J3XlhuuXWF6I
	6glwzBB+8ZWm3Waf6nwCKqrbQERL1kCP7BvjFNxr5hjhdXx2y4SMAy0Uj2Sj/PNZwrK
	rXFmUyVMw1bKiYvc+RWgSNlW2/mLi69G/glZElZM=
Received: by mx.zohomail.com with SMTPS id 1739663695195447.98223907006513;
	Sat, 15 Feb 2025 15:54:55 -0800 (PST)
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
Subject: [PATCH v1 4/4] arm64: dts: rockchip: rk356x: Move PCIe MSI to use GIC ITS instead of MBI
Date: Sun, 16 Feb 2025 02:54:31 +0300
Message-ID: <20250215235431.143138-5-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250215235431.143138-1-dmitry.osipenko@collabora.com>
References: <20250215235431.143138-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_155508_309183_5C4EDFB5 
X-CRM114-Status: UNSURE (   9.54  )
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
