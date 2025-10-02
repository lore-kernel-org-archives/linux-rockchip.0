Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31ED7CAC5B0
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Oct 2025 03:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFgWUW6WiStR8P8BV1Gq78yMfv85vMxMzYYLxKxRfq4=; b=vyoHMhlZbMNMih
	mFIR4i4gJgT4jAxmBMLnT/n/UO6ZF4rJll6jr2HQJU1DhXjdFuHrkuMrl3TJlyxaGQYcJEi8T3d1M
	y/BQgkaXglTP0fz5wjTpU8yvQgsgqGVCmBucUtbJrajtxfVzI5vgFTnuz+3n+Ib9MpirETLWnZy5t
	zckp2RT4tNFNShODxbkU2XSdjdpHJ3qSrv+zVp0wk0a+/gaLoviIJGDE5v3yajUq2zOuwM1hydRTy
	hSJe6DhjBcQYw3L/X7/RzgmDkLRifNqvDBYP+dsKJZOdcaNPr4gMyEOXcHeJjLcBGBfjphExy/2oZ
	Hb4fRttHdwPEEhwFeJ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4AHo-00000009YPi-3Sop;
	Thu, 02 Oct 2025 03:47:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4AHl-00000009YNi-3eKx;
	Thu, 02 Oct 2025 03:47:19 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 9AA3E19DC;
	Thu,  2 Oct 2025 05:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759376746;
	bh=KcG/zkmiKNvl/P8os4q/rlZ6PsGXzEwTQ9fM/OULnkQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sVoxwEYuj/ela5ZxaI+O+pQLNMIXncIZlADpNxoIKohZAe7cKsRVqA3/vaMuEisqf
	 ZY74kqDaEqRfU41NfTq8XgkMp26jtPE06qvOaZgIbgeX1FzE1fpOHhjfoIqifTCS+M
	 QShfU8f+uQeBVrn+dgNKMC27UatS+hvTKsTWq3/g=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add Orange Pi CM5 Base
Date: Thu,  2 Oct 2025 06:47:06 +0300
Message-ID: <20251002034708.19248-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_204718_053111_40D2495D 
X-CRM114-Status: UNSURE (   6.81  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Cenk Uluisik <cenk.uluisik@googlemail.com>, Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Muhammed Efe Cetin <efectn@6tel.net>, Algea Cao <algea.cao@rock-chips.com>, Ondrej Jirman <megi@xff.cz>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Orange Pi CM5 Base board is a carrier board for the Orange Pi CM5
compute module. It has 3 ethernet ports, 2 USB ports, one HDMI output
and 4 CSI-2 inputs.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6aa5b..8b08a57f96ce 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1243,6 +1243,12 @@ properties:
               - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
+      - description: Xunlong Orange Pi CM5
+        items:
+          - const: xunlong,orangepi-cm5-base
+          - const: xunlong,orangepi-cm5
+          - const: rockchip,rk3588s
+
       - description: Zkmagic A95X Z2
         items:
           - const: zkmagic,a95x-z2
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
