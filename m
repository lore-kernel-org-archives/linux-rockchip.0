Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E14BC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Aug 2024 21:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8u500IpoGZ/NnY41XL//K7KakGpvUbbHEYqIeNYIHpc=; b=zZ+J4lW63GAUde
	OmvErx2M1XLS4Z4E9LEwgqgsckAftSwDO7U2oewBWA//r/eK3s2+qEhI5ray/xINKsksIFzlmjLiq
	NpqWbicSdQiOqJAvZlqTEjDBfR+ITtmdLuAxm4867/p5z6hk0hp9d5EHf3G3wNnYnPyFgKr23yT9k
	STzTnC/CYwemcVV8aN8D82X9iWtr/YhJ1aLNdNL/h5QcnMWUqpssHuBdugues9he2t0Ocw/AWBVKZ
	/bFf7gQF0FDXSOjc2kxBKdxE2vITQiVXKDvC9ruint1Ik1SDcVHlBpdoOoRRHcpSufqBsN++xRdzp
	chZf+a+WTvKyr/J2kv1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sctQz-0000000Ebjm-090i;
	Sat, 10 Aug 2024 21:15:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sctQN-0000000EbbQ-2P58;
	Sat, 10 Aug 2024 21:14:56 +0000
Received: from i53875b02.versanet.de ([83.135.91.2] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sctQH-0007Ui-LJ; Sat, 10 Aug 2024 23:14:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: brgl@bgdev.pl
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	ukleinek@debian.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: eeprom: at24: Add compatible for Giantec GT24C04A
Date: Sat, 10 Aug 2024 23:14:37 +0200
Message-Id: <20240810211438.286441-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240810211438.286441-1-heiko@sntech.de>
References: <20240810211438.286441-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240810_141455_632220_02A649C5 
X-CRM114-Status: GOOD (  10.05  )
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

The gt24c04a is just yet another 2404 compatible eeprom, and does not
follow the generic naming matching, so add a separate compatible for it.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/eeprom/at24.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
index e396e47b2f13c..b6239ec3512b3 100644
--- a/Documentation/devicetree/bindings/eeprom/at24.yaml
+++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
@@ -116,6 +116,7 @@ properties:
           - const: atmel,24c02
       - items:
           - enum:
+              - giantec,gt24c04a
               - onnn,cat24c04
               - onnn,cat24c05
               - rohm,br24g04
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
