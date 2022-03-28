Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43AB4C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 00:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLYDzFkXlmYB/Zxu8sWk2iqT2NIH/veO4+xDWMDki7w=; b=zPy9bkMVONmeah
	f5VYIWMOfmaGGVx4w3IdnAXKsz3zbKpwfZAGt3xpyksKhXitzvVCOmPGi2Wtqoa9MmdCzTHYRyq0h
	zQcrbDsQUnIDXZCZ+26eVqaHsKeglaUPaCqtJ5L/dVTyjoKeoVdxNrPNVkJxUJwlZ+oreXs6xtna9
	8F7zhos19dwAqFQ3Bs3kwXa3IMK6W13vaCe0nifdxoSVn3QxGT5h5+JL2BFiXzqjVrt+XOaTq48bf
	ma/k/Sbdf+oH/8fwegYSiR7a9eG0wMX3fkhea+Tp1hbXJp82Lzmh7aak/XVO6H7W24Lrg/fR0OV6A
	cAx/12HdCVs337KlHqGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYdck-006tji-43; Mon, 28 Mar 2022 00:52:46 +0000
Received: from proxmox1.postmarketos.org ([2a01:4f8:a0:821d::2])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYdcW-006tcR-Pa; Mon, 28 Mar 2022 00:52:34 +0000
Received: from localhost.localdomain
 (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net [81.96.50.79])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by proxmox1.postmarketos.org (Postfix) with ESMTPSA id CCA3E140195;
 Mon, 28 Mar 2022 00:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
 s=donut; t=1648428630;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FJPO+cvB8mQMll3NzzvYxlnd9zKt1uj4D1+8hbf+ebs=;
 b=QCUmOohgp7Hn9lmS+r5wAkX438yPTC/mINkGBozlm1i//Cp1NiRAtUM3e23zyrgp2VJvQN
 DE+ArD6XUE8FhBU+jPxyGQt2L0qsKA0/nPOTZtLCbc3Fi3aokGFvGdP/S1FV8J1smBuvit
 jFZPfxAXuWy8dGFa+TQ9V7nD04Dswew=
From: Caleb Connolly <kc@postmarketos.org>
To: Caleb Connolly <kc@postmarketos.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, martijn@brixit.nl,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>
Subject: [PATCH 3/4] gpio/rockchip: handle deferring input-enable pinconfs
Date: Mon, 28 Mar 2022 01:50:04 +0100
Message-Id: <20220328005005.72492-4-kc@postmarketos.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220328005005.72492-1-kc@postmarketos.org>
References: <20220328005005.72492-1-kc@postmarketos.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_175233_174235_7975FF9C 
X-CRM114-Status: GOOD (  10.15  )
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

Add support for deferred PIN_CONFIG_INPUT_ENABLE handling.

Signed-off-by: Caleb Connolly <kc@postmarketos.org>
---
 drivers/gpio/gpio-rockchip.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index bcf5214e3586..e342a6dc4c6c 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -760,6 +760,11 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 				dev_warn(dev, "setting output pin %u to %u failed\n", cfg->pin,
 					 cfg->arg);
 			break;
+		case PIN_CONFIG_INPUT_ENABLE:
+			ret = rockchip_gpio_direction_input(&bank->gpio_chip, cfg->pin);
+			if (ret)
+				dev_warn(dev, "setting input pin %u failed\n", cfg->pin);
+			break;
 		default:
 			dev_warn(dev, "unknown deferred config param %d\n", cfg->param);
 			break;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
