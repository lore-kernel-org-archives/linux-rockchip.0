Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FDD2C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 15:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2IP+zv4c+rgFFulxreTvxvg5p+3wUNljUtfEsAoOFM=; b=qmvrMG+GbboAPh
	rNtt6FOYPWZd9xmCzoFhh5UWkAR8bTdD89JDlavEboKMe78JI5+itGY6HQl9EevY/U3kd76EaN9b7
	2BlGD8rKFi8jgMSW/jOE1O6SoeONlR7pUt0eul/QPn9SqjGfol8xdfBPIgtTlxVsbFzu3R6NlUYrk
	ZDSPbnrPMJ7R5IwQtplaQNOn3VJSbzcwN5VAFi6mLWvezRWVxZmgDE+oPe4p2kvrmx4jGd8d3kXsA
	LBjxRseWJJKt6tmameCUwqzFklGoahtae16z6yTm5vRX6fkMKJAKLsU/NNmd/+EogaJcDFMUUfAl3
	mk2jyOkKxLOc3N/ElmPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFFrM-00BHkW-0x;
	Mon, 18 Dec 2023 15:48:48 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFFrI-00BHi1-10;
	Mon, 18 Dec 2023 15:48:45 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a236de428a5so15588966b.0;
        Mon, 18 Dec 2023 07:48:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702914522; x=1703519322; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nKUBapAjhj0X0B96M3zAwIkjMB25EHCfu9hZ082V30o=;
        b=GPF0NwP7f0oZajnGGR87FPRSoRlBUJ1M/dz2BMpw8IFEzrSVV4IlgDmsd9isKrdOA5
         fZchj1h9cuLCRUX3tqnozpkQs6yXAfkEFUfqvd4u7pel/lAwcqwO8NrqYio9H5EH12k/
         RW+zUpck3cv1nuglvFcqHQwEXW/1VClBlmBgKn5TBISbVFC+oFruxB+B6mlR5sK1ZtMR
         DasQjIGt84jq5RsQqvCb+i1CUAsFp7NMK4w7Vw6Nm4w1Ti1bZ2xfH+czduNBwuWmsbpO
         sNsKofIBRGk5HBdsKYSpHPn6/ZLwJ/BptULFwYd6Q4mb9oTPuMC4Obh1r5j1v5bUtWAB
         zOOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702914522; x=1703519322;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nKUBapAjhj0X0B96M3zAwIkjMB25EHCfu9hZ082V30o=;
        b=Os3edFD65av54GaTfD5f7MSpqpv+qVdcNyJuG9pl6KRcLHhNh0AhhtZiilDwTSpk4E
         GeeEscc6cEkyi+C5PlmGxiPJ1a+VuxvDrKnLFv/9mZFLbMpnKUmUjo0uOoNFeTY8lezh
         UZWf19M+6ZgMwVCIYmXLBJT79IKtu4SXEfh976pO/TI03STK+pj9pQem1ffULX+eukye
         3B1ShR3qAnOBYJmALYW5ltp8cnJjge/2DB8ku+lgdnjL2OrMHPl0PbnVLeM9SAwo6jCF
         tmGm6Qw8zHtYePr1YcyBZN7HVkuRDDNZWSX3MWHMei/tEOK2vQhs7ameG7Hsh/OUnNFe
         66Yw==
X-Gm-Message-State: AOJu0YzKlWCzFzAk2v3b5vFKoHt56N4tAU/VnO6tfBaIuCMGqEQ4njTF
	2qfSJZPif0XfusciLlph9+o=
X-Google-Smtp-Source: AGHT+IG6VzyjvQH34+G4mZe3J8X6d+shURJPU4OY3fo8K/ff+S+V8abQzu8/HpzcKzta+X+jlpzp8Q==
X-Received: by 2002:a17:906:7399:b0:a23:6c6e:6b4b with SMTP id f25-20020a170906739900b00a236c6e6b4bmr282667ejl.45.1702914522076;
        Mon, 18 Dec 2023 07:48:42 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id vq6-20020a170907a4c600b00a19b7362dcfsm14334325ejc.139.2023.12.18.07.48.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Dec 2023 07:48:41 -0800 (PST)
Message-ID: <745f84db-dc9b-81b2-6171-4d8d86a96966@gmail.com>
Date: Mon, 18 Dec 2023 16:48:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 1/2] drm/rockchip: rk3066_hdmi: remove unused drm device
 pointer
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <f86ec29f-194a-800d-0aaf-9e16e551b37d@gmail.com>
Content-Language: en-US
In-Reply-To: <f86ec29f-194a-800d-0aaf-9e16e551b37d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_074844_359279_C9F8BBA1 
X-CRM114-Status: GOOD (  11.32  )
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

The drm_dev field in the rk3066_hdmi struct stores a pointer to the DRM
device but is never used anywhere in the driver. Let's remove it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index 62e6d8187de7..0dac6d133767 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -40,7 +40,6 @@ struct rk3066_hdmi_i2c {

 struct rk3066_hdmi {
 	struct device *dev;
-	struct drm_device *drm_dev;
 	struct regmap *grf_regmap;
 	int irq;
 	struct clk *hclk;
@@ -752,7 +751,6 @@ static int rk3066_hdmi_bind(struct device *dev, struct device *master,
 		return -ENOMEM;

 	hdmi->dev = dev;
-	hdmi->drm_dev = drm;
 	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(hdmi->regs))
 		return PTR_ERR(hdmi->regs);
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
