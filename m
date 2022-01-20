Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60B4CC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jan 2022 17:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEi/QFl/iNhiZOyRorM0X2oWObzbxokXFMNb1cKQjiI=; b=Ju6AdILz9cAoeE
	HuHiYoHif+wC3jMWVAfaI5HhHdGhmkC9P31tOYytna3JcnQ4uUMzHyXqKIOWmXYOMyd+e3xMnDs+u
	/CQ5XPYntAyTHNCAM/9l8peY1YJA2K6uNI1Jt4wSv60ZdpI2kumkfMTcNkeQtwBJp300imrqU6lFQ
	PPi4JWzT/xIr6DNy2UJn6rFt/VX9pV6yUNEsBwpENDCxWB9jaV34MmWxxOlVox+vfXwln+nqjDiCi
	09WCWYAldXUYIJrHSSE2EkvsueNg4aopd/C764LGx58JNCUut7jYjwoPKhvCmhwIw1/p6skQfbQ6m
	9wO5ZetPZtgnVOSsMjPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAbMF-00Cbft-GC; Thu, 20 Jan 2022 17:36:23 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAbMC-00CbdK-FX; Thu, 20 Jan 2022 17:36:21 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 x31-20020a056830245f00b00599111c8b20so8488847otr.7; 
 Thu, 20 Jan 2022 09:36:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qQlvojQIJlI1LuVZbEtkS+KlAzI9wBW3pw0XQI8LAMk=;
 b=XoAYdCiDzvNQZq0PA2o763gtV9MqdTt7ZcAEU/3safpmZRFAmLmy7SSBuro8oYSQM5
 eY7a6Zq00oWiToHLdVjklKx87vv3ebDZ3FfreXeh4iXciEeyWd2KgsTv3dV7EJ2OkC/y
 lJyF1uZXU+oSMAXEVay4DHFasuLaRmfQ49zGBKrAMyttnYhjTq4hlTkK451zxvdNMgaO
 YM6RkpBXI1pHpSLj2rKFQyT5a7FWSCD1/Y97MvR+iI12okIGhRySdUhleuDYeDUexkg0
 plg86fcOrAgdhpOS12Uru2mcm0qw3tPZXsdFqEdvqeCXJEoHL8wekslnJo/l3eO99aQv
 UtSA==
X-Gm-Message-State: AOAM530Yha1Ip4GnbKTGMAZOy03pRzdatbuv77oAEslwU3/ti42lR9kq
 Y5T8RQn7iDtOHH22uaIAbQ==
X-Google-Smtp-Source: ABdhPJzCRxVNcMKOq7T+/Z1lxu7In4u72P8sWp+eMD1DsgHGhcN9VmWOc7txoszaZlPCUT1Kd3fnYg==
X-Received: by 2002:a9d:5a01:: with SMTP id v1mr21602978oth.337.1642700179177; 
 Thu, 20 Jan 2022 09:36:19 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id d4sm1651420otq.44.2022.01.20.09.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Jan 2022 09:36:18 -0800 (PST)
Received: (nullmailer pid 1648421 invoked by uid 1000);
 Thu, 20 Jan 2022 17:36:16 -0000
Date: Thu, 20 Jan 2022 11:36:16 -0600
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-gpio@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 - <patches@opensource.cirrus.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 devicetree@vger.kernel.org, Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 linux-input@vger.kernel.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 David Airlie <airlied@linux.ie>, Liam Girdwood <lgirdwood@gmail.com>,
 Charles Keepax <ckeepax@opensource.cirrus.com>, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: Drop unnecessary pinctrl properties
Message-ID: <YemdkDfmemrwab2Y@robh.at.kernel.org>
References: <20220119015325.2438277-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220119015325.2438277-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_093620_545712_FEBE573D 
X-CRM114-Status: GOOD (  10.76  )
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

On Tue, 18 Jan 2022 19:53:25 -0600, Rob Herring wrote:
> For a single pinctrl mode, it is not necessary to define pinctrl
> properties as the tools always allow pinctrl properties.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../display/rockchip/rockchip,rk3066-hdmi.yaml         |  8 --------
>  Documentation/devicetree/bindings/input/gpio-keys.yaml |  6 ------
>  .../devicetree/bindings/pinctrl/cirrus,lochnagar.yaml  |  9 ---------
>  .../devicetree/bindings/pinctrl/cirrus,madera.yaml     | 10 ----------
>  .../devicetree/bindings/sound/samsung-i2s.yaml         |  6 ------
>  5 files changed, 39 deletions(-)
> 

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
