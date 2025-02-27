Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E637C021BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 11:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Er3GTrkVlsVkHSFby5l6+ap1IZMkFwjdzakudt3GRsM=; b=Nkn31fFDLFPkEH
	+s6tFz10E/aPBl/BnJeUmpCLPNZZM9b0hg6dojDAfXsEqzd6O/q8NfPuqv/eVNAJ34Y5roK6XHtYn
	VRXJVPeR7kSLt4m4MxvulvZQH+6ZRzgMX2i1Hds8s6qCXEnP3XNHWGanUFgmQbRpycv2Uu0hEaWmV
	aDVcGaucVqE9D36JsdYSr3CUfytfsV22uDvZ1WVyPacUTVcPQOE04rUjGh9q8D+5n8Gtx4UbuepYO
	L1ZVWzO3rU2fxa+S/n/BigZB1v+yYP+gOxzQVI5f6A8MFp9X32CAc5h62o/sY06viLxrHQ30zvY82
	f8+tk67fERchVyD3N7Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tncRm-00000007FSq-1x6O;
	Thu, 27 Feb 2025 11:52:58 +0000
Received: from mail-m3299.qiye.163.com ([220.197.32.99])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbva-000000079JU-1mgR;
	Thu, 27 Feb 2025 11:19:43 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id c65f97ef;
	Thu, 27 Feb 2025 19:19:38 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v3 12/15] dt-bindings: soc: rockchip: Add rk3562 syscon compatibles
Date: Thu, 27 Feb 2025 19:19:10 +0800
Message-Id: <20250227111913.2344207-13-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250227111913.2344207-1-kever.yang@rock-chips.com>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhlOT1YYQ0kaHU1CGRpDQ0pWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
X-HM-Tid: 0a954722335e03afkunmc65f97ef
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Myo6NAw*CTIKGQ02Ek0XHgIo
	IgEKFElVSlVKTE9LTU5OSkNLS0xLVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSENLNwY+
DKIM-Signature: a=rsa-sha256;
	b=bnuE8j1GfogwPGqSJ9gVccv+umFqY40JKswDoh0mtFkjIwS/dD4T5mzytV8AqbRuUQVay3H9JjjDaDwzzVFPkKu15DqaoGV/PgoeubJu/nJPMTNDBYCsKdf9Y7FCHKnnLSUbI2R0Q+8ZLS/UE5sCC5ITFCllM6/zWQchwmMp73Y=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ja/C1I5fd71PRHTQvaoZ09vrjTeTiZ3BXfrASv1EsSg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_031942_656250_F5B6220F 
X-CRM114-Status: UNSURE (   5.74  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Detlev Casanova <detlev.casanova@collabora.com>, Shresth Prasad <shresthprasad7@gmail.com>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add all syscon compatibles for rk3562.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v3: None
Changes in v2: None

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 61f38b68a4a3..32357dd4555d 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,6 +15,12 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
+              - rockchip,rk3562-ioc-grf
+              - rockchip,rk3562-peri-grf
+              - rockchip,rk3562-pipephy-grf
+              - rockchip,rk3562-pmu-grf
+              - rockchip,rk3562-sys-grf
+              - rockchip,rk3562-usbphy-grf
               - rockchip,rk3566-pipe-grf
               - rockchip,rk3568-pcie3-phy-grf
               - rockchip,rk3568-pipe-grf
@@ -79,6 +85,7 @@ properties:
               - rockchip,rk3368-pmugrf
               - rockchip,rk3399-grf
               - rockchip,rk3399-pmugrf
+              - rockchip,rk3562-pmu-grf
               - rockchip,rk3568-grf
               - rockchip,rk3568-pmugrf
               - rockchip,rk3576-ioc-grf
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
