Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B219C4708E
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ptgk01lsZbUXMo2+CHDUIhI94Ju7rZ8EEdZuCiU9Jv4=; b=S4TbTabDqvbu2J
	Vm84Z6nhf/UrePg7uDsNFTvEWTX0eh98rVWWA4QkWgQHe0GMPy/czCqmmDJLsRqFxNyEFH6x0wD4V
	tTzXt77sgc26zR/0jbaOwtQguVjQL7ZYLEOgC3mGTHY19y2+U0B2mUHgOWA1hHsJnxeCQnS9EOBSO
	URRyANuU4HeO6qiPrZBmZnbw+9UYI/aphmlLOBomikZAZZrN3JDQMwbM/YEsmbWERqHO+94n52YQU
	uSpcbAnrdG6XjI3nkuCOogSUK5Zs3hgEnSj69C5BWbo69J6u55N/rmHxwud7vk4T3mXNEu7H0Jxu7
	Hpv7IEhA5A7pIzbokJdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDX8f-00EjNw-GW; Thu, 05 Jan 2023 20:47:01 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDUas-00DJ9x-1l
	for linux-rockchip@lists.infradead.org; Thu, 05 Jan 2023 18:03:59 +0000
Received: from jupiter.universe (dyndsl-085-016-198-020.ewe-ip-backbone.de [85.16.198.20])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DED7D6602D40;
	Thu,  5 Jan 2023 18:03:47 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1672941828;
	bh=HWf3Bker04XVluyDrFFMhig5t6mPNRA+lOaEFDDHk4w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ur5e9FV2G7idP0ty3L6Gvm8Y+hc7aSKg0k8WtLgAHVLf7Ud2H5CjtIwMNotFqzwe7
	 x3WspQknNnwh130/YVkhUJLe58lZXPpScOCbKt02orJQKcYl231SaYkSV6/piJge8l
	 YJnG2DvCARhkrcuU5Mf3gQsEzotxYgxgZGFFOUNCId5z38bbQfEoJq4KEqyTZhyKD1
	 4ofZnwln3ZHqGhHmyAikwuPeFzwgPOwifGSh7BNnPxyhu8y0lLLCtn9T7MuC/8jIci
	 4AHZHWctLUgnrNszG+xXodUOd8eXxivN/rnJeuv++mHK2HSYPum2eeQrahJhfg2Ykm
	 I2MMCEkz7vY6g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id AF9EE48011E; Thu,  5 Jan 2023 19:03:42 +0100 (CET)
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
Subject: [PATCHv3 7/7] dt-bindings: rockchip-thermal: Support the RK3588 SoC compatible
Date: Thu,  5 Jan 2023 19:03:40 +0100
Message-Id: <20230105180340.29140-8-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230105180340.29140-1-sebastian.reichel@collabora.com>
References: <20230105180340.29140-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_100358_250096_6498FC9A 
X-CRM114-Status: UNSURE (   9.32  )
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
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
