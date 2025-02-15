Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5758C021A4
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Feb 2025 23:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0jrwFLqoCc6AKoM1EeuzOCIuyxGCpHVk1q64hm7xaI=; b=a84OAHfJ2f1BNz
	+DYKy6+tec5R68pqZPMcI/Wdn4rVxyzibIG2ffPy5iHyb9NgVSZ4ceDIDdpyuVl9u/QY7YJtoW4ty
	OUF/Mt8WNGnNk+5kklBCdXwGfxwZaNb8paJ7oCT+x1DOaw6ZI9IYU8gb4sDoZOD8VCIOAh4+oOSeJ
	iXJCN9fdscne7cHMZ9ieyuejfx+BlY6EPEb6g0f4F4R51zoNH/+QcLr9p/CvyViWzyPUPLGVKfzyz
	PLJ4lRGQCrWeFPymCXjTS401xH6QRr5MIAZ0uPHaHVb2tBAaSzcRoGooKBXJ8Q36d308rZ3nT+0QQ
	C50z6I3Ukna+KsZ/xgqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjS00-00000000vbI-2xvZ;
	Sat, 15 Feb 2025 23:55:04 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjRzy-00000000vaA-0Xpl
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Feb 2025 23:55:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739663690; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=I3Rz674TSt7JNyHhimTE/Bs1MiCE7z0sxEXnX9FCZjGGKsigFslJnKMZETJWe0H9L5HYixJ1MXqnftiAC2PdDgXgD5iOAK6JKHrv+eZCSILdqZJijZtDqg+8gKCTkTMPk3jamSni3/kHojI+yh5AQubuUuso95CIEjbFKA78H0w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739663690; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ocWfKoH5gDKazB1hVFkL3Wbr2WlAHIEIf1+b/BiZMfE=; 
	b=N3GKMzn61y2wnS0ZEaO5S0zd4m3FCT8H35csVkRDz1syCpOWTan63/23VBhZWEKHl3xWQuQRdHhbLKPx5oMFxl5iw8XdnUayBvdYeH6Cf20dOwVAFKB11zGqeWwpWbCJKvDkpmdM8vjcmUKpEDMzUkMuxb3i3BE+5P99UM58pgQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739663690;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ocWfKoH5gDKazB1hVFkL3Wbr2WlAHIEIf1+b/BiZMfE=;
	b=Q+28DYTI56kuGt23zFPv8pFjQOcfx1XkSMq4tVaAu49OjBRlbUsqWCb4RBGGCKF/
	vK4mc5pVsciXW9nIVZG+3EHkOCx3Y/97JNaFu1/Tu3J3gIdC+dTQUVtS7++c++R8fgZ
	1+/3F+tqWhbsk/lstGrrJt3BiwiJNjKeHTcIMA9Y=
Received: by mx.zohomail.com with SMTPS id 1739663687773929.678192902661;
	Sat, 15 Feb 2025 15:54:47 -0800 (PST)
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
Subject: [PATCH v1 2/4] arm64: dts: rockchip: rk356x: Add dma-noncoherent property to GIC node
Date: Sun, 16 Feb 2025 02:54:29 +0300
Message-ID: <20250215235431.143138-3-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250215235431.143138-1-dmitry.osipenko@collabora.com>
References: <20250215235431.143138-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_155502_230438_B187FF84 
X-CRM114-Status: UNSURE (   9.11  )
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

Rockchip 3566/8 SoCs are affected by the GIC integration issue where
GIC reports that it supports programmable shareability in a feature
register, while in fact it doesn't support this feature. Rockchip
assigned Errata ID #3568001 for the issue.

Add dma-noncoherent GIC property, denoting that a SW quirk is required
for the GIC.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index de5e6c0c3d24..28be38b7182e 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -284,6 +284,7 @@ gic: interrupt-controller@fd400000 {
 		mbi-alias = <0x0 0xfd410000>;
 		mbi-ranges = <296 24>;
 		msi-controller;
+		dma-noncoherent;
 	};
 
 	usb_host0_ehci: usb@fd800000 {
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
