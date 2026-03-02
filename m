Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC188EB3636
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 20:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ll6NgjxeBoUs8s3G3dID82wHu4JtZi4gx2jieC8OjXk=; b=kQptSTdRUl34+m
	dR6qRf8JSZMZoAg+RbuxxcS5L8rcMu3RtR5zYvIjbZUDi9nEQ8ti7mP3v1IMFBtRj0rLjEOzbFUg1
	AfROZCaPFrvXDYphOxGmLwTHK+dHB7wqCnfO0FSAkv7dlpNGL/FgV1qDcL+YI/EPCGrmW1cTsMPWG
	VwYaiFwgoDEE3Q3is2RJHAdK4VYUTZ+6zijXCvDGCfQPmcZbyrNtQ4YYrZfQ/rTm3lW8osin8+Q3T
	8IfJjUa9NJT3Qkp1sp3rVPfywZD24SAm4zQtQvpcGpcmwQudq7uhWZUeEgs6eyyRHOuSiumKQwkNA
	KvGlTsVdmEzske54t8Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxAIK-0000000DyX7-2yQV;
	Mon, 02 Mar 2026 20:55:12 +0000
Received: from tika.stderr.nl ([94.142.244.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxAII-0000000DyVZ-0crQ
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Mar 2026 20:55:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mail.tikatika.nl; s=201709.tika; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7ATHPEB3e1UH9/qmmsRpONn2iBxLnjxasZ5QOYn7RXM=; b=vAjiD/TATxVmNyrnt5oOfPQZn5
	3sAI3clXF1h16unD/2iY/Y/JO872yNVKS7MzWq3cQ+ga0S00q05Zh2L+t367n76CrQ350pdxIKpcO
	GSD90s8DlRiIke120v/ybBtg0c/1GlPRA988IjUUueVvZH+wc17cJRQqbL+cnDsH81Ao=;
X-Preliminary-Spam-Score: -4.2 (----)
Received: from [45.142.19.84] (helo=zozo)
	by tika.stderr.nl with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <matthijs@tika.stderr.nl>)
	id 1vx9mU-00HGhW-26;
	Mon, 02 Mar 2026 21:22:21 +0100
Received: (nullmailer pid 198761 invoked by uid 1000);
	Mon, 02 Mar 2026 20:22:18 -0000
From: Matthijs Kooijman <matthijs@stdin.nl>
To: Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>
Cc: matthijs@stdin.nl, linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH RESEND 2/2] gpio: rockchip: Call pinctrl for gpio config
Date: Mon,  2 Mar 2026 21:17:17 +0100
Message-ID: <20260302202121.197288-6-matthijs@stdin.nl>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260302202121.197288-1-matthijs@stdin.nl>
References: <20260302202121.197288-1-matthijs@stdin.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_125510_182455_0A6F7024 
X-CRM114-Status: GOOD (  10.55  )
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

Signed-off-by: Matthijs Kooijman <matthijs@stdin.nl>
---
 drivers/gpio/gpio-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 0fff4a699f12d..ac1b939283eb7 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -296,7 +296,7 @@ static int rockchip_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
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
