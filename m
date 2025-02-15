Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42E0AC021A4
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Feb 2025 23:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znyYfpycypURUGd6bSeWId1wuzbps1hoLyF16aGaFFU=; b=sQPYwZrcMfjXpB
	LpPCd39XJtYnUWsVTL20E2tllOtps6q2iJ5Bt7rG4OEKJ5thYkBZxReLYJub4w5kp8DltVIaI0hPL
	bK/IltODVjMgoAkhdSWBUEt5A5lKTwLJIAajfWCcEpEZwViSu7ELLurw4j4GV7gkpXtNpR1gMQQoc
	Q9JwN68tKG22CJ5Jf6C8CJq3FwUapbP/sppOwE0Q2xTaCo2wpurLrsjbIP7Xu14nC/jnVWkeRdxeN
	Sf9M3tItor44aZzPnLfrjhUT8TlA6Pbm5sTJiPiVDvJMf9/A9s2QIQzCaQPFxGtN1qR9qWTpbBnxf
	wJFYZ3JzUsmkcpi+hWIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjS04-00000000vdM-0RMz;
	Sat, 15 Feb 2025 23:55:08 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjS01-00000000vbf-2Ahv
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Feb 2025 23:55:06 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739663692; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=HhXDMQpra6W+3UXNuLbuAQzVukz2AnpaULYHdn7SHlffKEvcXDIlmpOnwK7l38SkXTvGF33igzqOpfPMHcVRGCwpWyD9c696ldWAskNmUBS8oyIbZia94MMyLQ7SKG//8Hiu7Q0HQXPG/F9g/jCCw0IyYZTNrUsB6yucdUVcxZI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739663692; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=bk824fFEtJ4JFX/2FTI1e4/t7fqz6XFoNQNdiEacVVk=; 
	b=JL3BWw6LOrN84w5R7wVuSNoF8Cl+DMYFv7Bnzrkzu4Nr5PIksC/iUgKEgBorCH1E6BlDrKU9sQ6TCtXiZ4dgURqngLwe07R+o1O0G8+vmkjXNZl9Juy32BLtEOtqKdZmHz6zBId73qOyI9GRA5M8dB6Lwgd7PP69V7TCxkh+tTw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739663692;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=bk824fFEtJ4JFX/2FTI1e4/t7fqz6XFoNQNdiEacVVk=;
	b=GYo6xfTYrndfSuf258+c3emT8CQjDptqxGrCFuLS4dqC474pjK3whe0zTeaGrTxv
	3usimKIFYP4BtsPuSSel8iUvjr4L3iC0rXUJu/UexPGUKLomfHN4yPTwvN/+73IeuE3
	qmVzp1bLYqmMxprIy2oeYMNpzKaFo9W5hd5DTxTE=
Received: by mx.zohomail.com with SMTPS id 1739663691563809.1510485476141;
	Sat, 15 Feb 2025 15:54:51 -0800 (PST)
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
Subject: [PATCH v1 3/4] arm64: dts: rockchip: rk356x: Add MSI controller node
Date: Sun, 16 Feb 2025 02:54:30 +0300
Message-ID: <20250215235431.143138-4-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250215235431.143138-1-dmitry.osipenko@collabora.com>
References: <20250215235431.143138-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_155505_620301_FE51DDA6 
X-CRM114-Status: UNSURE (   9.03  )
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

Rockchip 356x SoC's GIC has two hardware integration issues that
affect MSI functionality of the GIC. Previously, both these GIC
limitations were worked around by using MBI for MSI instead of ITS
because kernel GIC driver didn't have necessary quirks.

The first limitation is about RK356x GIC not supporting programmable
shareability. Rockchip assigned Errata ID #3568001 for this issue.

Second limitation is about GIC AXI master interface addressing only
first 4GB of DRAM. Rockchip assigned Errata ID #3568002 for this issue.

Now that kernel supports quirks for both of the erratums, add
MSI controller node to RK356x device-tree.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 28be38b7182e..423185686600 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -284,7 +284,18 @@ gic: interrupt-controller@fd400000 {
 		mbi-alias = <0x0 0xfd410000>;
 		mbi-ranges = <296 24>;
 		msi-controller;
+		ranges;
+		#address-cells = <2>;
+		#size-cells = <2>;
 		dma-noncoherent;
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
