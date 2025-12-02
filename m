Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FA71D116F9
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 04:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMEqDxmVz+4eEI7T/KjUJ8RpbJY+WtKLT0Vbeoi0tsI=; b=z5NyC3mIvwWMfT
	jCEyDtUHl7XL6qovkGTtVNlOONW3VpWO20MCyybvMp7WwkTAaU1NNMZkmcoYTX98dwOa/UemCbUfU
	XPV1ihs1FF/NGXo7NfsXUYjhAYjYvKEIOOHqrKEpb3Je/Kp52LhQQS+YWvAQQQWYvg3yPtLxGl5qZ
	4+JylQvg5mqnE4YfmllpyPzXSixG7MGT+NOwTwXBhYLcDPomIJh6wXSLnVMf+Ybrjmzv1FnfxA/nO
	9kTqCh5Ye+M4r52xyoKNJrp2UeIzI0Mz2XEEia3+VR6vzWTZp3ElrLOH5E0Crew1xTfopnDZBgM3v
	z3HY6DvtZTnpgV0ymV+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQISF-00000004nzX-3qss;
	Tue, 02 Dec 2025 04:57:35 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQISC-00000004ny8-31Ga
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 04:57:34 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5B24uxmG007827;
	Tue, 2 Dec 2025 13:57:02 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: brgl@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, didi.debian@cknow.org, wens@kernel.org,
        nicolas.frattaroli@collabora.com, detlev.casanova@collabora.com,
        stephen@radxa.com, sebastian.reichel@collabora.com,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/4] dt-bindings: eeprom: at24: Add compatible for Belling BL24C04A
Date: Tue,  2 Dec 2025 04:56:52 +0000
Message-ID: <20251202045655.154543-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251202045655.154543-1-naoki@radxa.com>
References: <20251202045655.154543-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_205733_002483_64316B91 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the compatible for Belling BL24C04A 4Kb EEPROM.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/eeprom/at24.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
index c21282634780..04892749f4ca 100644
--- a/Documentation/devicetree/bindings/eeprom/at24.yaml
+++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
@@ -116,6 +116,7 @@ properties:
           - const: atmel,24c02
       - items:
           - enum:
+              - belling,bl24c04a
               - giantec,gt24c04a
               - onnn,cat24c04
               - onnn,cat24c05
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
