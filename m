Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1566E77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 21:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xs6TFCPO/uqGXJR9r8xnaDX5sDwnsckx6Sb67iCfINs=; b=0bpcRQFxz/G4bG
	VOunegXCNjTzwj59NTy3sJFFYQ0MGyBtc4hmUpGpKrxNRWGE3tPS3twp+pZR7yc/yTQtfJRn1XPjE
	MQoEOKxMpU+yD1B32t4IkpJ7bir++U7gjd1huXgl2DJ2E/85hS97tD7dAjbrUrru7ovwnS/Zc8vkB
	eYDpwpjwnsIIVxtxCVsFvGelk4wuGxBzw45hHq4NocWiC4UbU9rT6AUgauLp6T4pHc6psBpj4e8v6
	E4eoZN+f9Nie5SYTg/c4S/CKimNphg1UCOmI8xJslC4OlhIU2qQz9WJpeQOfQmoa13yq96U1ghvtU
	tpbGW4kjZI94PdlZTGTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQCA3-0000000CoP4-2OH7;
	Tue, 24 Dec 2024 21:09:51 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQCA0-0000000CoMG-13cY
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Dec 2024 21:09:50 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BOL9KQC031471;
	Wed, 25 Dec 2024 06:09:23 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
Date: Tue, 24 Dec 2024 21:09:10 +0000
Message-ID: <20241224210912.2121-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241224210912.2121-1-naoki@radxa.com>
References: <20241224210912.2121-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_130948_519518_93B831ED 
X-CRM114-Status: UNSURE (   6.26  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, liujianfeng1994@gmail.com, jonas@kwiboo.se, dmt.yashin@gmail.com, sebastian.reichel@collabora.com, tim@feathertop.org, kever.yang@rock-chips.com, marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, alchark@gmail.com, michael.riesch@wolfvision.net, macromorgan@hotmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add devicetree binding for the Radxa ROCK 5B+.

The Radxa ROCK 5B+ is an upgraded version of the ROCK 5B based on the
Rockchip RK3588 SoC.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..df959dbfa9eb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -895,6 +895,11 @@ properties:
           - const: radxa,rock-5b
           - const: rockchip,rk3588
 
+      - description: Radxa ROCK 5B+
+        items:
+          - const: radxa,rock-5b-plus
+          - const: rockchip,rk3588
+
       - description: Radxa ROCK 5C
         items:
           - const: radxa,rock-5c
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
