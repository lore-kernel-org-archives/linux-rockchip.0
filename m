Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41D2FC5AD49
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jun 2025 02:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m6fw/b25ZQ9HjSblSUmG6Jk0KOGehywUVEDYK62NXac=; b=RK+htFSygUYd44
	U4w/4Y2QuF+MDzAlhtJRdphX4C5rwIBA7id9kpIAxjujfsDSNb3J5qLki8Qcw6zwm6I8nvAhlasEj
	cTvep4VmnlIUrcOme/fg29bJoUtS7t1AP4sNw0FBuXLeVukOXlMjT5EHajXUCxj9ajf2X2zkxj2xv
	b2i9fHMR4Aic3gXDOFe1s2O2npFQ0TOIp/0phxYRR71o1iet27RB1kSU3bUfo1M8uA+bvWiwv96bJ
	PxLu32ozKx2KKs2bOnc5WNXTS+i+RMYFl/Is/HI/kiQu/iUYxmdL/WfZocpEfKx7CpseIzSEuQCAO
	fzG1ctEfaVwQVz9U1o2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMHVe-00000009XUS-3VHn;
	Tue, 03 Jun 2025 02:36:14 +0000
Received: from mail-m1973187.qiye.163.com ([220.197.31.87])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMHVb-00000009XTz-3hwB
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Jun 2025 02:36:13 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 174acead6;
	Tue, 3 Jun 2025 10:35:55 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: fix rk3576 pcie1 linux,pci-domain
Date: Tue,  3 Jun 2025 10:35:40 +0800
Message-Id: <1748918140-212263-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0IZTlYeGEtJSUlISBlNSB9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9733a5387109cckunm317c226d6e59fc
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NyI6EQw5CzEwPTAXDgI2Kg0f
	TUswCTNVSlVKTE9DQkpDSk5MSUhNVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpOTk43Bg++
DKIM-Signature: a=rsa-sha256;
	b=J7BS7qSmTtcYdFCNZAPDRWz2qJdPwnLO30fJU2WXhzv3y6LidnRvKoVv1XeeVBvcJhrs9NwxfZLwy+FmrImuX+ZRslBc/bt+BT1hchf+57s4xqQWRKOXxKRtuPAiEtRFhFnG8b37P3O8dpcK7LyELjV0f9RR1ih3THP4YlFYmfc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=PHmx6slCem1GwS3t8N+DGxSghkYZfo+obqna4TpnPCI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_193612_488874_7C882F37 
X-CRM114-Status: GOOD (  10.84  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

pcie0 already used 0 as its pci-domain, so pcie1 will fail to
allocate the same pci-domain if both of them are used.

rk-pcie 2a210000.pcie: PCIe Link up, LTSSM is 0x130011
rk-pcie 2a210000.pcie: PCIe Gen.2 x1 link up
rk-pcie 2a210000.pcie: Scanning root bridge failed
rk-pcie 2a210000.pcie: failed to initialize host

Fixes: d4b9fc2af45d ("arm64: dts: rockchip: Add rk3576 pcie nodes")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 1086482..64812e3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -615,7 +615,7 @@
 					<0 0 0 2 &pcie1_intc 1>,
 					<0 0 0 3 &pcie1_intc 2>,
 					<0 0 0 4 &pcie1_intc 3>;
-			linux,pci-domain = <0>;
+			linux,pci-domain = <1>;
 			max-link-speed = <2>;
 			num-ib-windows = <8>;
 			num-viewport = <8>;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
