Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF490C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 10:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RN/nwA4EmLRUh7jpf4xuBzJEEBbFFujeB0UrJ84+VhA=; b=aJoETzlYj0FBcv
	Z4+JaqHFeb4iw5dMc4AJ3XqEmdcJ049D9B2iTpnXuTRBJaIttPJLOXrbAi7VJMWF99VueUxrQf4D8
	iKLutNPafsP4UV2z4Zz/2UIT4oOY+cj85U6h5BbJclWVLFzmjYhCviCWaqRKvUJlGnVzY7HGetXJy
	JoPPSwtZIJuBypmkjsFj7r+qbQ+GxV051XYoHzQfXoOPpU1YGbGWJxwCsS9Pv1SyGLOxM5q7o/Sat
	t7balUOkhfIjBP0WeFYGkFlE2lf0u5boBbQ1c7XJ/vk8UrLEFKL8657m2rB0dKoqbtdyjdZNmbTDJ
	PLFimiVjZUC3FtGsK56w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHjt0-00H79a-UW; Wed, 09 Feb 2022 10:07:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjg4-00H07A-Vb
 for linux-rockchip@bombadil.infradead.org; Wed, 09 Feb 2022 09:54:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=DpDovfrhHBHVYhfLQA/10wYWfIV1iyeE2P7uB+ooqOw=; b=bMu7xKstAZr7LDjgRLNBPcyId7
 /CyknIQQq0Tems8HSySrJGrU+Vb9rt0qFaltniZUmPMNktgfeC6+QSfIVXSO6qQgl0vBD1EkRyY1f
 yoU90XFjt3HIO3BNUt5MYkUZhGqDH14rcckvfN79z/7+Vqk6+2H9XcyeNrreKcA3AQuZkZox5dBfg
 YBz7s+Y0KXWG2dtdsofnK9zTtwSNh57rm8knYnvtCFSQ2CXOsBdJtV/NEr59u0gIgaxiJxXgN/zYF
 2gSfEt6av50inbm5Uzi/Bb5NukpUuSOxMmDW4fkzyC3ayWRNtvnHV1YE7J/KMFRNdVZsyWtinI015
 4AbiLiSw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjfv-008Nr3-Lb
 for linux-rockchip@lists.infradead.org; Wed, 09 Feb 2022 09:54:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nHjfm-0002P2-GV; Wed, 09 Feb 2022 10:54:02 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nHjfg-008qb9-50; Wed, 09 Feb 2022 10:53:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v5 16/23] dt-bindings: display: rockchip: dw-hdmi: Make
 unwedge pinctrl optional
Date: Wed,  9 Feb 2022 10:53:43 +0100
Message-Id: <20220209095350.2104049-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220209095350.2104049-1-s.hauer@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_095411_772689_7DAA6502 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

None of the upstream device tree files has a "unwedge" pinctrl
specified. Make it optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Rob Herring <robh@kernel.org>
---

Notes:
    Changes since v4:
    - Add Robs Ack

 .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index 67a76f51637a..7dd753630b46 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -94,6 +94,7 @@ properties:
       The unwedge pinctrl entry shall drive the DDC SDA line low. This is
       intended to work around a hardware errata that can cause the DDC I2C
       bus to be wedged.
+    minItems: 1
     items:
       - const: default
       - const: unwedge
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
