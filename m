Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0096C021BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 11:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5rEVUXX6wUwvIznqZ5o/lDeMCO66lSfj2oi1U/mKWQM=; b=jfCxISoA9kTNBl
	HBM8KaZ+8e1fZVT6gIWhiLzizxY3xOrHgRNAs9M36YGkDnxwU0oXdibq1zR4T2C0ERYmrimwYluIa
	WJ22qfgRTU0dNlc5ScY15NRG/hiOrwOlGO/IsoH+dmuPpSUCbyCh8UkvFh+ZdpkYcjuOhNJwYWtgj
	2NBiw9Ds/jlHaeqZ8v1guofHgjZaBjhkp9PGY2f+o2Rh6YIkYAuzyaK2WAOBwIH2DNMWsHHWFvJVG
	nNMyoOAjOgGqrqPJCRH0xM1EqREDphIFT1POdwiW0Cn8syULCLaOefoh6ce+T+NP+yyvJ18kFCAV3
	JkLh+YfrQXnfCofB/XNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbqg-000000077vv-201d;
	Thu, 27 Feb 2025 11:14:38 +0000
Received: from mail-m155106.qiye.163.com ([101.71.155.106])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbgB-0000000759L-3yHO;
	Thu, 27 Feb 2025 11:03:49 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id c65b3592;
	Thu, 27 Feb 2025 19:03:44 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-iio@vger.kernel.org,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: iio: adc: Add rockchip,rk3562-saradc string
Date: Thu, 27 Feb 2025 19:03:42 +0800
Message-Id: <20250227110343.2342017-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0NCSlZOSE1DS0MYGR4ZHR5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a954713a34f03afkunmc65b3592
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NBw6GBw5MjIVSg0dAh46Mk4I
	HxQwCxVVSlVKTE9LTU5PSUlOTkNNVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFCTEs3Bg++
DKIM-Signature: a=rsa-sha256;
	b=e0bcPEHKIbX6nYq+RNt83avtIJgzmJ0dBYHMbMFlfWxmOU7MwtvYPHem9TLTQHP8vcL+nmr1v6UTsDU5e6UMsAnWbql9qNH2oD7NUepG9B3Cm0hQ0xVpT4YYwHl2miCq3chD2S4IxG4D9CubqplSP8MLV7AvVn2yFquwWMzj0DE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=LKKAdsY3PqR35tOPthDUBhzW0huewFm3x2G+1m9O1mQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_030348_174660_2CACDACB 
X-CRM114-Status: UNSURE (   6.00  )
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

Add rockchip,rk3562-saradc compatible string.
The saradc on rk3562 is v2 controller, with 10bit width which is different
with rk3588.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v2:
- fix dtb check error

 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index fd93ed3991e0..d129b66a6207 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -15,6 +15,7 @@ properties:
       - const: rockchip,saradc
       - const: rockchip,rk3066-tsadc
       - const: rockchip,rk3399-saradc
+      - const: rockchip,rk3562-saradc
       - const: rockchip,rk3588-saradc
       - items:
           - const: rockchip,rk3576-saradc
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
