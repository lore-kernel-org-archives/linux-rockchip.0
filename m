Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CC1AC021A6
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Feb 2025 22:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/g8BH92a73dCeEHyOhn5Zd5LDn1QxhFt6sNMVQDZPOw=; b=G+tm08YAav+wPi
	l47pQkHR7oLkjb22d1brZu/54/gCAxk5hHRjBgvHNGD8fV6mamJt+oP2nafIRHAHgnP+m6Wu2iLTp
	VAkghrLAvIfJQ6pVS9O87J83ES1ambVHOnoC3NMF1qZxasd3eiXPPJPRMe9pc315E4cEyHOH6ZfKx
	qALiErgq1S4llaf5FpnSYf7S5z495QEdfAbN7HdlOao5313wmn1Kwtg7FkWZic2ORM+C/8XnTZXms
	8VOIi1urSt8bJqDkH9kNnfvna0XcWx7tO5L9rhHOfkNQiX5g9N8ZKpYu37z+Cq5lg77nvVMxGSoYj
	41BnLi/ixu6E5V77eVHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjmxn-00000002hDU-3S4a;
	Sun, 16 Feb 2025 22:18:11 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjmxl-00000002hCe-3tjE
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Feb 2025 22:18:11 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739744269; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=BvPGmvJYmrhsFTWC+5HKGniE0h7h+HgTmgnSsV4gOWE2e7bVOGLd+nv4YOxN3D3sXfmpZ5Cy4ywy3dq8XOBYe/OKGbsMjuCISubeGrDQozBuwJdTYHTioaRhw/303rOCpBOUtFwB/0CRnNN8h1FOoP/1/cXA6MQoY2MuZkHViUA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739744269; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=qV9FtGc2J3JofUAmzm8a7AF6xA8rwztBenPkjZxjGQ4=; 
	b=TFpNfVS3uXJLTtA45QpC19mKMSSrF3VHkplIapyKHLWU5GltAtATRoZ1fxBonqtSCvdtqz8WGYbJwiPraLct3h7dSO+6uJ/Pi/kjaIUtFCw6zoBGmYnuQjeZYFHlMOCECaTvaw9A85UnhGQ8I9+2w6WKa6qqNBZKZFs5nItU2/w=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739744269;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=qV9FtGc2J3JofUAmzm8a7AF6xA8rwztBenPkjZxjGQ4=;
	b=XqfA279YJRUTqsywVZRV1flD/G4pzs3eywPnE/1MymVzaoTYCxmFZEneDrtHNeC4
	kCeX581kRYANASWq52UpCrxBm5H2Nv42kJ3aqpQrLmVKdD946917hSbkWeNcgz/DZGr
	xgk5iK2PGrcKhIaM3n08QB7bqcaR6CNPBwYOBh1Y=
Received: by mx.zohomail.com with SMTPS id 1739744266007162.2709788827533;
	Sun, 16 Feb 2025 14:17:46 -0800 (PST)
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
Subject: [PATCH v2 2/3] arm64: dts: rockchip: rk356x: Add MSI controller node
Date: Mon, 17 Feb 2025 01:16:33 +0300
Message-ID: <20250216221634.364158-3-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250216221634.364158-1-dmitry.osipenko@collabora.com>
References: <20250216221634.364158-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_141810_183521_6B1E2C66 
X-CRM114-Status: GOOD (  10.32  )
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

Rockchip 356x SoC's GIC has two hardware integration issues that
affect MSI functionality of the GIC. Previously, both these GIC
issues were worked around by using MBI for MSI instead of ITS
because kernel GIC driver didn't have necessary quirks.

First issue is about RK356x GIC not supporting programmable
shareability, while reporting it as supported in a GIC's feature
register. Rockchip assigned Erratum ID #3568001 for this issue. This
patch adds dma-noncoherent property to the GIC node, denoting that a SW
workaround is required for mitigating the issue.

Second issue is about GIC AXI master interface addressing limited to
the first 4GB of physical address space. Rockchip assigned Erratum
ID #3568002 for this issue.

Now that kernel supports quirks for both of the erratums, add
MSI controller node to RK356x device-tree.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index de5e6c0c3d24..423185686600 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -284,6 +284,18 @@ gic: interrupt-controller@fd400000 {
 		mbi-alias = <0x0 0xfd410000>;
 		mbi-ranges = <296 24>;
 		msi-controller;
+		ranges;
+		#address-cells = <2>;
+		#size-cells = <2>;
+		dma-noncoherent;
+
+		its: msi-controller@fd440000 {
+			compatible = "arm,gic-v3-its";
+			reg = <0x0 0xfd440000 0 0x20000>;
+			dma-noncoherent;
+			msi-controller;
+			#msi-cells = <1>;
+		};
 	};
 
 	usb_host0_ehci: usb@fd800000 {
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
