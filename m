Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E12C9FA3741
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 17:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fS3hf9D+qrUj+3l+ILEAGUOXLYuk6UiMkmo99BlwnB0=; b=nDjc53pu751vOJ
	y6gandGuuKn7VSJv6V0VlPIeZKkE6QOYBXRlIl/1GdBbaQshnJf6Qvm5tT1Z0e7E9LNEDx3sh7yVC
	NdgLeLG9nDYT4PbTiXL1obUwqdr9UYNmqmm8R/yo+EyDBIiJiUMA8YkRTwbZFOOJdvTqvetrECeA6
	ukxp4Zie6kfG6sN+WveAFgAdxM7o+IiTLUF8XxYrGGh7TG8h1KRD3PlsZk6YImUO09s26sps8CP9S
	qVbOFxHL0s9xXmEVNcJU8xr6Nwu7eGAHyK3jpyA+Y8m4oe13gbe3m77vtN46iIdo9XjK4xSwVpgML
	vZiFlHfK0j5s4q2fQMfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYwO-00DVJC-C0; Mon, 31 Oct 2022 17:51:16 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYwJ-00DVFP-IO
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 17:51:13 +0000
Received: from jupiter.universe (dyndsl-095-033-157-181.ewe-ip-backbone.de [95.33.157.181])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9BA9E660294B;
	Mon, 31 Oct 2022 17:51:03 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667238663;
	bh=FlQo9FQcO4iSqXwimyRA9FxPm+Y3gWWIMKZ0MZxtaWQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l5ImKr8Rwli4X0rA0B5dEvcAm/aT8I63weULy1XZ5JRmLUTp0xxycNGyBXVb/0t1P
	 k5Q4yndE5SPIAMFH9NYnRH0H2kGXTHHLWgglgGBBSyZSl9l0Wjck3BpCwHHPxwnGco
	 VxqNs2C4qMLajBK0kwNsXfubgVo4ZwTb5KqKqZuh9HEOXQ8gJ1zP6OnNH8I15LieVd
	 tGwNOZJdes6VTyuJMQ3D6wB9ViAkC5r7C4zxCwL2g10MV5PEFDLIlJr6MVAOiP2gDx
	 vSbtOcUS5t+E0YVof7uW9NksB8bqr3EnjBfVkPci59Whi97QlpdRFcjXS43ceBd4CK
	 eLHowV/6QfrIg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 598FF4801D5; Mon, 31 Oct 2022 18:50:59 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 7/7] dt-bindings: rockchip-thermal: Support the RK3588 SoC compatible
Date: Mon, 31 Oct 2022 18:50:58 +0100
Message-Id: <20221031175058.175698-8-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221031175058.175698-1-sebastian.reichel@collabora.com>
References: <20221031175058.175698-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_105111_786522_4B655BBC 
X-CRM114-Status: UNSURE (   8.87  )
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

Add a new compatible for the thermal sensor device on RK3588 SoCs.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index f6c1be226aaa..55f8ec0bec01 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -19,6 +19,7 @@ properties:
       - rockchip,rk3368-tsadc
       - rockchip,rk3399-tsadc
       - rockchip,rk3568-tsadc
+      - rockchip,rk3588-tsadc
       - rockchip,rv1108-tsadc
 
   reg:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
