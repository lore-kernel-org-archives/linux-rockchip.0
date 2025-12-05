Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86FB4D3749C
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Dec 2025 20:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XrZKR//+UQwS049D6V127fgLdLiO2xpUKWNDVIkMsQ=; b=YcM+oquoMMhRGr
	YDhvUVX69JEpdtblxuK2yJw1OQRHMuU1s+EWV813jnRW0FsXwlbsyGV0bUzV3JbxKPqfURh08zhea
	tjm8XhKkrin5vG9Bp8Kkc0NIBCwHpdjxgFHyI81Gq73toDTw3LSKwIQx/3tNVn/PvaucY66hbj2sd
	lbu8rijcnr/lCrmF79jtF5Yf3l/psErJqrh+MqTdOk9ffnxK9p09DjkvcmjfgCV0Eh48LD55wxGYa
	tbAZ7p4gdH8aankJu08OFJfdrja9frhdeDFR3EI60SbeZpxCwIBCxWZmeQzXZiQqQvNiYaNYVh/Bx
	WX2i5dMShNdHrQ+tgH2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcEV-0000000A0bf-2OyN;
	Fri, 05 Dec 2025 20:16:51 +0000
Received: from tika.stderr.nl ([94.142.244.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRcET-0000000A0b7-1m4R
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Dec 2025 20:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mail.tikatika.nl; s=201709.tika; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=XIoqhX0typcqboX+DkDTWXgWFYzdfO7UAmIx4Qh4ho8=; b=cfXty5bPbjRvDtG0+5c2vXuNPt
	azWCtZeHSTE0EyUhRsoQZjiHOn53/wtNPZvdTbdgbsT4ep9e6Ywkrsm63TbOpH7rc5hZmkD/5loaB
	29sq5MqsDKcaZfa0BpRU4JxpnyGAGRdf3xJmnjaNgp3IY1WxfdT310U3IWTM6OzwZtTY=;
X-Preliminary-Spam-Score: -4.3 (----)
Received: from [45.142.19.84] (helo=zozo)
	by tika.stderr.nl with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <matthijs@tika.stderr.nl>)
	id 1vRcEN-00DDbS-2H;
	Fri, 05 Dec 2025 21:16:46 +0100
Received: (nullmailer pid 2868408 invoked by uid 1000);
	Fri, 05 Dec 2025 20:16:43 -0000
From: Matthijs Kooijman <matthijs@stdin.nl>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-gpio@vger.kernel.org, Matthijs Kooijman <matthijs@stdin.nl>, stable@vger.kernel.org
Subject: [PATCH 1/2] gpio: rockchip: Call pinctrl for gpio config
Date: Fri,  5 Dec 2025 21:06:52 +0100
Message-ID: <20251205201254.2865179-4-matthijs@stdin.nl>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251205201254.2865179-2-matthijs@stdin.nl>
References: <20251205201254.2865179-2-matthijs@stdin.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_121649_465575_103A764C 
X-CRM114-Status: UNSURE (   9.54  )
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

Pinctrl is responsible for bias settings and possibly other pin config,
so call gpiochip_generic_config to apply such config values. This might
also include settings that pinctrl does not support, but then it can
return ENOTSUPP as appropriate.

This makes sure any bias and other pin config set by userspace (via
gpiod) actually takes effect.


Cc: stable@vger.kernel.org
Signed-off-by: Matthijs Kooijman <matthijs@stdin.nl>

---
 drivers/gpio/gpio-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 47174eb3ba76f..106f7f734b4ff 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -303,7 +303,7 @@ static int rockchip_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
 		 */
 		return -ENOTSUPP;
 	default:
-		return -ENOTSUPP;
+		return gpiochip_generic_config(gc, offset, config);
 	}
 }
 
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
