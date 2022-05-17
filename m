Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 543EDC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 00:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wch02i9oFJAqq3pOY0krOh17rLNt70jaHMwTjYzLcwA=; b=NxxSLogGvJFqSY
	u0LBrm4eTTAQHyOj1p1uSkHZc20vh184C5Kk3lWIqK8RgdB6YOCHR9+VPQ575EJVEt+SVPDcA9lgt
	XkfPbG9cMO5RKMyWlcIsu3V6ffHfphvwV6iJNmJy49tBzUJBhmoj7yMXR2lHfaGWtp2gXJcTs3CMi
	iYzViIhqYcHw/LzqGDUyG87H4QH4EnIHdjys5ApWNxl2FKVcCSeCV3UmX4tJw0JdKrKg8CosqkkUC
	EdM7rxQFtEH63G4Ver6g7jArgygk613TO93CKYm6Bc3scVu6vAFYeGEd1/F2QySVQxvWahDP6xq/D
	sm5QXmIr2FaS4chL837Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqkhw-00Aumw-6M; Tue, 17 May 2022 00:05:00 +0000
Received: from mail-oa1-f52.google.com ([209.85.160.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqkhj-00Aug5-Od; Tue, 17 May 2022 00:04:49 +0000
Received: by mail-oa1-f52.google.com with SMTP id
 586e51a60fabf-edeb6c3642so22337141fac.3; 
 Mon, 16 May 2022 17:04:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ktn+GEsr0zrnXe8qHlhiFLP6gFGk7mzfKtzVqt6Honk=;
 b=t0MS/wOIGPrlx80H7tE6k3rYniwrXoOv3/LAkRlK8a6uHYEP0ONee06Is39CnJXG95
 txle7UZ23OILlaCYbNpfd/Fqn0+BqOPg/uO5YFT7WzL/gqhrEtOSZdFFKNzkoZ0kMoy2
 WdTYJnCFnPaC6rGYasHggxLY1tIKArpf214zNxTaehPt/RMBMd1sFOnYrYXATvKzoyCB
 aeNK85ZGX3K8qs81JnFpuaG/ikgVKoAgsuxqTBP4vLKPS2tzqkFYEvgwcwbRAy21gJ3H
 +r8NQM1OjCkrf3JxdIiEIuHJovqAM26d5MjmCCDuVHXoZD+K9MWOB46Llhzw70+UEVxV
 UzIw==
X-Gm-Message-State: AOAM5304sMCeTlLuC3Oc/LGuvfv3stY/byTfi8ZGbHpfEbHkEIxoMceU
 ARPX13G+0WaS/qJfg6wtJQ==
X-Google-Smtp-Source: ABdhPJw5Ykn7mqpJerlSm9oss4tkoO30Jq+bqyH2k5jfopC/R6Ike018MB1HEEeakCVeRnWBTSTLuw==
X-Received: by 2002:a05:6870:a1a0:b0:e2:9331:cc30 with SMTP id
 a32-20020a056870a1a000b000e29331cc30mr10845418oaf.155.1652745883833; 
 Mon, 16 May 2022 17:04:43 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 z10-20020a056870738a00b000e686d13890sm6112082oam.42.2022.05.16.17.04.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 17:04:43 -0700 (PDT)
Received: (nullmailer pid 3608251 invoked by uid 1000);
 Tue, 17 May 2022 00:04:42 -0000
Date: Mon, 16 May 2022 19:04:42 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 Bartosz Golaszewski <brgl@bgdev.pl>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-gpio@vger.kernel.org, kernel@collabora.com, linux-mmc@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 devicetree@vger.kernel.org, kernel@lists.collabora.co.uk,
 Adrian Hunter <adrian.hunter@intel.com>, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCHv2 17/21] dt-bindings: gpio: rockchip: add gpio-ranges
Message-ID: <20220517000442.GA3608183-robh@kernel.org>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
 <20220504213251.264819-18-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220504213251.264819-18-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_170447_885781_AB18E095 
X-CRM114-Status: GOOD (  12.29  )
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

On Wed, 04 May 2022 23:32:47 +0200, Sebastian Reichel wrote:
> Allow usage of gpio-ranges with the rockchip gpio controller. The driver
> already had support for this since it has been added to the mainline kernel
> in the first place.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
