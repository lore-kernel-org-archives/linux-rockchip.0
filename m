Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3D05C02181
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jan 2025 01:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYljEfaZCt7E0vYN3At+DGmc62ml9PAt01Kxn1heXxI=; b=ebUH3X2XVI+VEp
	+sTodEnEkRU7w/YZtUhFKLly+/5twovEDN16IjXKiC2Jl9s5fQ80O1J1BkKS7iClGV4PEx7Tri502
	uoWjphPXQZXvXjjqSpLuS+mEHYvk0o15FPAcsyW9f1dfgBAvBs+hG/x1irl337dXSgOLh7gmLCLAu
	jD/pY2mNtxNwW9/tbKPcAsneh5kH7/kiDjAPRxdp/HawQTRQFYNDdm91AeEkU69jqPKVg2U3cZvRc
	syydj8wYSwg5EgTjlmfqBK8s+bZtM0/70S52/FCauRdvgFfD9Tik1mxs83SdkHBPgFwLKASl2R7mu
	z1mMyBgacJ92vhK/WPBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbUom-0000000Fr7z-3dnG;
	Sat, 25 Jan 2025 01:18:36 +0000
Received: from mail-m1973181.qiye.163.com ([220.197.31.81])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbUmC-0000000Fqjk-2XqZ;
	Sat, 25 Jan 2025 01:15:58 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9a2d132f;
	Sat, 25 Jan 2025 09:15:52 +0800 (GMT+08:00)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] Revert "arm64: dts: rockchip: Increase VOP clk rate on RK3328"
Date: Sat, 25 Jan 2025 09:15:44 +0800
Message-Id: <20250125011545.15547-3-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250125011545.15547-1-zhangqing@rock-chips.com>
References: <20250125011545.15547-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR5OHVZJGR9IHk1OTR9NTEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a949b07922703a3kunm9a2d132f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6N0k6Dxw*LjIXNBoLDSMKPRUw
	IksKCTJVSlVKTEhMTE1MTE5ITkpJVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpLTUo3Bg++
DKIM-Signature: a=rsa-sha256;
	b=YGQQjOr7ey6VOa/L58cxEdtV8JlgR6SsYj9LwimXFQY6K2lC06Z4vFJTkyjmKJDzfjgDPACM0GU4TYtrVQ6wgM4ybTbd7nj71CVuMfjtA1FFpROwi78hZfvwjd5RSvBQuS5c0pG/J7T6Fi3kSSCf1dqjlhG3RZztMWGzTQ8d7ZA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=GbYBNys9Cs3StkfVLRUbOG4+n5LSGeTknUJSAePxf0s=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_171556_813946_9D54D5B2 
X-CRM114-Status: UNSURE (   8.65  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This reverts commit 0f2ddb128fa20f8441d903285632f2c69e90fae1.

Before changing the PLL frequency, in order to avoid overclocking the
child clock, set the child clock to a large div first, and then set the
CLK as required after the PLL is set.

Fixes: 0f2ddb128fa2 ("arm64: dts: rockchip: Increase VOP clk rate on RK3328")

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 7d992c3c01ce..f3ef8cbfbdae 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -852,8 +852,8 @@
 			<0>, <24000000>,
 			<24000000>, <24000000>,
 			<15000000>, <15000000>,
-			<300000000>, <100000000>,
-			<400000000>, <100000000>,
+			<100000000>, <100000000>,
+			<100000000>, <100000000>,
 			<50000000>, <100000000>,
 			<100000000>, <100000000>,
 			<50000000>, <50000000>,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
