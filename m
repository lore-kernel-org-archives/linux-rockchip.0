Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6A07CD68F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 07:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fk/ZM8LHbIhVEoyNLotR3VFifYG/kkfPZCw2K/IU+yo=; b=cIC180mQ4G8pz6
	5KCs7dDlI7AKZvhbJZ0YJVuZDc/MrTP18jiznLG2lYmCHqrZkcn8doBDwNpzRQse8fTMSpuik1ajV
	ADhEz5UpyWFE+Gy7qXuP9qPDso11bWHDZ4/AKsnXu0W7Y8HsnVPyN11+vGw4+Npt3/3U6cDj3Dc67
	A9BQNzCCTcIhf840cVNHrIYFPY+JzeLTsu7hOhuZP2TS859TsNNgWl1wSGcLZeUbyfWKxofl+Fr2H
	VSkMUA71EE6MNtwkrh7NEbIahWlEpux3cWFoKNYo9BDVswFXzOiZCl9fTT8bazm1SHxi5Klx9N2d1
	fv1ek0RYU31FdJPyuj6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qq7U4-00CjvD-2T;
	Tue, 10 Oct 2023 07:48:52 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qq7Tu-00CjpK-1r;
	Tue, 10 Oct 2023 07:48:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696924120; bh=ln9yaefbuYCFpEUdZH05ypyuihDVslY8QNysNZk0VAI=;
	h=From:To:Cc:Subject:Date:References:From;
	b=OVGqOL1D2lPuYKrJV5D3YzES4tLaB0CMn+21BQdQenid+125weodPr02i4cV7vn3y
	 dLu+rDxnClYX1bzea7W0JNg9N2KCyVlxzEz1Kp7HzH3OyPYVXg/cdlww/rfI97A9IP
	 TNVvyQjgtV3nwaipHvX9juVS+ASsCO/CQGaX+vRk=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: mfd: rk806: Allow rockchip,system-power-controller property
Date: Tue, 10 Oct 2023 09:48:20 +0200
Message-ID: <20231010074826.1791942-2-megi@xff.cz>
In-Reply-To: <20231010074826.1791942-1-megi@xff.cz>
References: <20231010074826.1791942-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_004843_070856_A9A13748 
X-CRM114-Status: UNSURE (   7.79  )
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

From: Ondrej Jirman <megi@xff.cz>

Declare support for this property.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
index cf2500f2e9a0..e8c9f17f6ea8 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
@@ -29,6 +29,11 @@ properties:
   '#gpio-cells':
     const: 2
 
+  rockchip,system-power-controller:
+    type: boolean
+    description:
+      Telling whether or not this PMIC is controlling the system power.
+
   vcc1-supply:
     description:
       The input supply for dcdc-reg1.
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
