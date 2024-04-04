Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33129CD1297
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 08:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3KfkrDPxZdvx2cv3vMMmRKCEaItVWyxCOZ3fTE7dNo=; b=ggBucL0+aA7bUb
	YxvyeGxETtyaweKirtBp4PMqZuM9KKQV4P+Elr3wITpaOMR131N15bnxfqwLfAOvF0HF4OS6joOu/
	TI2WHS06EPcfw+SSgnvzoVvOw2GbmwloRqi0dtTP7mct7Q8vXbHUiitWC3HEl0XPS3jvEMGsMfunt
	wqZ9IqRZnVsubpYUvTV0S7DxylUeQmw66kocEzXCtlYQnGf1l6yuBDogOM1gCdLNUt+rhlJkFAHNm
	zlZEQmFQZ1fZmQ96QomV2b8h41aVLFYo0hxY+ayT7crcEKTpdMjfMtkI+hHQuYnxXckSPJ6GkybFN
	fPoYz77NPSOV9JBU511A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsIYm-00000001rT6-3OPF;
	Thu, 04 Apr 2024 08:35:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsIYg-00000001rPa-43rr
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 08:34:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsIYZ-0004VI-L9; Thu, 04 Apr 2024 10:34:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsIYY-00AKm1-Qr; Thu, 04 Apr 2024 10:34:46 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rsIYY-00Csm2-25;
	Thu, 04 Apr 2024 10:34:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 04 Apr 2024 10:34:39 +0200
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Protonic MECSBC board
MIME-Version: 1.0
Message-Id: <20240404-protonic-mecsbc-v1-1-ad5b42ade6c6@pengutronix.de>
References: <20240404-protonic-mecsbc-v1-0-ad5b42ade6c6@pengutronix.de>
In-Reply-To: <20240404-protonic-mecsbc-v1-0-ad5b42ade6c6@pengutronix.de>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 David Jander <david@protonic.nl>, Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712219686; l=961;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=DjIod4vdrwlFQJE94FcN3Z4LXCtugW0BAzyBfoM+dpg=;
 b=kxLefLIxxx0tt5acraW8mOFfMZ5VI2os01W92AilqJqXn+kq6IQJv4/ddLV5wzrDiNAZ/WlrM
 dp83JKtoMRhDWkEcfAlxypNwIMC33jQmTGHav47ZtjETGc4eyoLkXyY
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: s.hauer@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_013455_086257_5A32B302 
X-CRM114-Status: UNSURE (   9.45  )
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

MECSBC is a single board computer for blood analysis machines from
RR-Mechatronics, designed and manufactured by Protonic Holland, based on
the Rockchip RK3568 SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index fcf7316ecd74c..4847fe072d550 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -700,6 +700,11 @@ properties:
               - powkiddy,x55
           - const: rockchip,rk3566
 
+      - description: Protonic MECSBC board
+        items:
+          - const: prt,mecsbc
+          - const: rockchip,rk3568
+
       - description: QNAP TS-433-4G 4-Bay NAS
         items:
           - const: qnap,ts433

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
