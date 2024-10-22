Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C42C4D2C56D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 15:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1yGoDZLAvuWed6yp1JFefX5/BhNKmbkFJbmp8h5iqhQ=; b=mL1mAwWnenyJLT
	QBnv3CJ/g6/klv4ZUzmir6aN1FHbcsSI2msiosLPxNQzIbCcrimXANZYiYncbBZFCYFxNHTtUHbnJ
	g+idZkInlwAqEB6goekLsZq6fQ0unYqvvGKcs87YMy71n+5s2OLCvoVu05srUHuTbsW7Rapen5v0+
	erFIRmO/D9s/orsLKcEX8dg1EBWm+ArOBzPoCrNgWyxjBQsX9ndEFqJZ3jdGw/6bgsoz8OeNXu+28
	Bimd3vKFI3TR1PR8pi8Y+hEbNVQqQF6AhOYw8fWJNIcSRH5oPHIusV46yI86IyqUHX73otE5oR+CF
	KVqevjeBn3/cKEgKnNYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3H4Q-0000000BI71-3X41;
	Tue, 22 Oct 2024 15:45:18 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3H4M-0000000BI45-30Ww
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 15:45:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729611910;
	bh=HylE764hFn4QR8Thq5VNJ1Y99OJHF7eCaB0kqVRf8sY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BsWDpzvY8/hQW1bmXya9CaIgTs7e41QI5tNC1AoWJeWgCBGIUC16uVmZfFQfXOgNm
	 jKOdAvWgjtmZwp4BS6aiEmjoaMYY2r+5dJHKNuSA3pVni26EhjHLuMZNxz75t126P4
	 cnahKO0oGsq8jkmJL+vjhW/DuBOHfcZC8P+u1e4LFkAQMuQYQto9c8EtcG4t1vFxoG
	 +CNQ1PCCCcW5vqpFpQPKbj3+mmBQCbtJoqYHzYqjc95Jh99VrwTQMQiTw+bP20YfEw
	 C+s4TUCxx1p5QEWtoUyoUcdv3F2QMEaFhWzmkw58SEDqbmUpTw7vyw1waNp/ons5bF
	 KmpMeOwhcoFqA==
Received: from jupiter.universe (dyndsl-091-248-085-026.ewe-ip-backbone.de [91.248.85.26])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EC97217E367E;
	Tue, 22 Oct 2024 17:45:09 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6D6D74800FE; Tue, 22 Oct 2024 17:45:09 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	=?UTF-8?q?Adri=C3=A1n=20Mart=C3=ADnez=20Larumbe?= <adrian.larumbe@collabora.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Chen-Yu Tsai <wens@csie.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v3 5/7] dt-bindings: power: rockchip: add regulator support
Date: Tue, 22 Oct 2024 17:41:50 +0200
Message-ID: <20241022154508.63563-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241022154508.63563-1-sebastian.reichel@collabora.com>
References: <20241022154508.63563-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_084514_933696_059E3155 
X-CRM114-Status: GOOD (  12.53  )
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

Add optional support for a voltage supply required to enable a
power domain. The binding follows the way it is handled by the
Mediatek binding to keep things consistent.

This will initially be used by the RK3588 GPU power domain, which
fails to be enabled when the GPU regulator is not enabled. It is
not limited to that platform, since older generations have similar
requirements. They worked around this by marking the regulators
as always-on instead of describing the dependency.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/power/rockchip,power-controller.yaml   | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 650dc0aae6f5..ebab98987e49 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -132,6 +132,9 @@ $defs:
           A number of phandles to clocks that need to be enabled
           while power domain switches state.
 
+      domain-supply:
+        description: domain regulator supply.
+
       pm_qos:
         $ref: /schemas/types.yaml#/definitions/phandle-array
         items:
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
