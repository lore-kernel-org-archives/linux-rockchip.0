Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1339C67861
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Apr 2024 06:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/SILX9ty5pIRw8hsr4HlYHgU9i6a22Uqi6aLK32yiug=; b=m5Vcm93eGHpJH7
	ZLVhl2knAs3+JhPvs0nSGjgWGs0MJFJEQeCU3CxXOw7Yy5yWXBeuPxDJG1mT15dUPEbXv++zCihkW
	v9tLEKvG+0IUOD9QofCpuO8wz7hPk56O9N38nd5R0Hy6gogjLji0GYhnCwBYPaIR7ytTtR9yNckJB
	oJXKSG2iw1AutiYQvljbFA41tnj0rzI07Dhia8ivop5DALK79rxFiswIROtUvE6PEN/DZzpEKPUJ0
	JfI5LSyQBkVSGHl8TZSiOZw+DqmIbZgT4yf4iuEI7BKXZGYkYaEXtvVVTDiMgzp9/V7+rFHt5C0RY
	drwA8rUSj8ipGoj9tkJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtikN-0000000EYHw-0jC4;
	Mon, 08 Apr 2024 06:44:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtikJ-0000000EYGO-3P78
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Apr 2024 06:44:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rtikC-0008Fs-QO; Mon, 08 Apr 2024 08:44:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rtik9-00B3lF-N6; Mon, 08 Apr 2024 08:44:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rtik9-00EdB4-22;
	Mon, 08 Apr 2024 08:44:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 08 Apr 2024 08:44:10 +0200
Subject: [PATCH] dt-bindings: net: rockchip-dwmac: use rgmii-id in example
MIME-Version: 1.0
Message-Id: <20240408-rockchip-dwmac-rgmii-id-binding-v1-1-3886d1a8bd54@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIADqSE2YC/x2NwQqDMBAFf0X27EKUGGx/pXiIyRofxSgbaAXx3
 xt6HBhmLiqikELP5iKVDwr2XKFrGwqrz0kYsTL1prfGmpF1D++w4uD43XxgTRtQHZ6RI3Ji1zn
 nFzc8RjtQrRwqC87/4TXd9w816dqvcQAAAA==
To: "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 David Wu <david.wu@rock-chips.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>, 
 Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712558677; l=1265;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=xcu2JJeUBxhfJ2Cc+vMD1v0kZJu2HM1hHarpo5Jxx7k=;
 b=jRDgsC+uUqYxVFiGlrM8R8L11V8C7WJF68mlTmsMeRmDf4vl4YqM+bKeqYcS7YiwmvyTokY51
 XTH7+rpgZeWBf4+LCXJQYOuBNQY6QZwVoTCo1wPn09IRhSwQMT03UZL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_234448_000568_4487E26A 
X-CRM114-Status: GOOD (  10.37  )
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

The dwmac supports specifying the RGMII clock delays, but it is
recommended to use rgmii-id and to specify the delays in the phy node
instead [1].

Change the example accordingly to no longer promote this undesired
setting.

[1] https://lore.kernel.org/all/1a0de7b4-f0f7-4080-ae48-f5ffa9e76be3@lunn.ch/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 70bbc4220e2ac..6bbe96e352509 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -137,8 +137,6 @@ examples:
         assigned-clock-parents = <&ext_gmac>;
 
         rockchip,grf = <&grf>;
-        phy-mode = "rgmii";
+        phy-mode = "rgmii-id";
         clock_in_out = "input";
-        tx_delay = <0x30>;
-        rx_delay = <0x10>;
     };

---
base-commit: 39cd87c4eb2b893354f3b850f916353f2658ae6f
change-id: 20240408-rockchip-dwmac-rgmii-id-binding-6166af659845

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
