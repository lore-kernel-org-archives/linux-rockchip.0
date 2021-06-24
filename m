Return-Path: <SRS0=8D6r=LS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D1D2C49EA6
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 19:21:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C2AB4610C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jun 2021 19:21:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C2AB4610C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WNcS9urimKkdQmY5fxTUlNk3m5tsyyp4rC3DabvWgts=; b=aX5dqFZajI8+zJ
	QccZeA9EQClwoQgcZcRl4aTGilsowMkypS3PaQN0uroWSce6WZXwLS7sxVcEf2MjNwxBS8hL515TS
	2hkpcgoBAzzRjjRFBJp+pNzP7DGKpVm6hScU7xY+Zw+iECyxyMYzzVuqqft/8J+1do4wJGr7QoTMX
	f3SX7UH4vj1mXYL5EDhZEYOIoPeRu665jtYu/Tw58UWXiRqOVbN+YMWtX3Q6jemGwbtbg6cIZ3dtP
	nPhLG5eNkyGpd7OfBZW1YQ8pv+T5Kd7v7NMdLWsqij2YNAT+NQ3ExZn0uQF4bNyyOhz77qy/+MMbA
	IIv5eslj1CrY+h4oGZBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwUud-00G195-PS; Thu, 24 Jun 2021 19:21:19 +0000
Received: from mail-il1-f173.google.com ([209.85.166.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwUua-00G180-QB; Thu, 24 Jun 2021 19:21:18 +0000
Received: by mail-il1-f173.google.com with SMTP id i17so7433651ilj.11;
 Thu, 24 Jun 2021 12:21:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=58wH1F55laM3Siizt+/xkUTgmVNr4NpcGQlAWE+BiOc=;
 b=lHVEHhbcT0lktgxNf1jCeb3trELW/qNOn+M265JeVJeJ2Y0IyMnuZlhrLwXK13wpGM
 ZeqrE34w7c5A0Xkq98m/+Wjv60Uy3hYkn9x+OG4/NIq/63g9aecgigSVqFnRARfxW1wr
 dxYqvwwWJufimoMf0h4GVzRrrV4Ev1hHYXB/a4kVG8WMLYFL+xHQxGw0LflNxM+Xgft0
 ZpkCkDlM37Rr90zAludfO3kx59SrNEePTkQU1VmwxXrmpdSuS4vNLd7zD0EA4TGn/7C2
 TJDaZQn9V00cjZqpcBCr+iHghph+HhQbmj2ZwgBqeskGdirJecxFXdeSqFyZrqCkpHa2
 5Ung==
X-Gm-Message-State: AOAM532G5UWs7Vy/eZCTFMN2ErwaIe4rfQPQC+sYxhpalHOvyQBBogrj
 Mq8Ak9wQWnhkmp/fX1qxGQ==
X-Google-Smtp-Source: ABdhPJzXPVo9MVv4SXGFiOsFIlOQNNq0I1CtjwMhlHsZP2/+RncCDBIp9W2bP478YeEBOcsbSAPU3g==
X-Received: by 2002:a92:d6d2:: with SMTP id z18mr2147763ilp.159.1624562474916; 
 Thu, 24 Jun 2021 12:21:14 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id l11sm2300833ilo.77.2021.06.24.12.21.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Jun 2021 12:21:14 -0700 (PDT)
Received: (nullmailer pid 1839767 invoked by uid 1000);
 Thu, 24 Jun 2021 19:21:10 -0000
Date: Thu, 24 Jun 2021 13:21:10 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v1 1/3] dt-bindings: power: convert
 rockchip-io-domain.txt to YAML
Message-ID: <20210624192110.GA1822193@robh.at.kernel.org>
References: <20210611143821.13057-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611143821.13057-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_122116_896714_1A872B9A 
X-CRM114-Status: GOOD (  19.81  )
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

On Fri, Jun 11, 2021 at 04:38:19PM +0200, Johan Jonker wrote:
> Current dts files with 'io-domains' nodes are manually verified.
> In order to automate this process rockchip-io-domain.txt has to be
> converted to YAML.
> 
> Changed:
>   Add supply properties for:
>     rockchip,rk3328-io-voltage-domain
>     rockchip,rv1108-io-voltage-domain
>     rockchip,rv1108-pmu-io-voltage-domain
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Due to the lack of a rv1108 TRM changes
> to grf.yaml or rv1108.dtsi not verified.
> 
> ---
> 
> Note for rob+dt:
> 
> The driver is located in:
> drivers/soc/rockchip/io-domain.c
> 
> The document is located in:
> Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
> 
> Is that still OK or should we move to:
> /Documentation/devicetree/bindings/soc/rockchip/rockchip-io-domain.yaml

I think the current location is fine. Vendor directories cause other 
vendors to not look in them.

> 
> ===
> 
> This document is not able to correctly check for bogus properties.
> Adding more [additionalProperties: false] to [then:] gives warnings like this:
> ('status', 'compatible', '$nodename' were unexpected)
> Is there a way to do that in one document?

Drop the *-supply and use 'unevaluatedProperties: false' at the top 
level. 'unevaluatedProperties' can see into if/then schema. That doesn't 
do anything yet as unevaluatedProperties support isn't implemented yet 
(but there's finally some work taking place, so soon).

Otherwise, pretty much looks fine to me. Some of the grf.yaml changes 
should perhaps be a separate commit.

> ---
>  .../bindings/power/rockchip-io-domain.txt          | 135 ---------
>  .../bindings/power/rockchip-io-domain.yaml         | 307 +++++++++++++++++++++
>  .../devicetree/bindings/soc/rockchip/grf.yaml      |  18 +-
>  3 files changed, 319 insertions(+), 141 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/power/rockchip-io-domain.txt
>  create mode 100644 Documentation/devicetree/bindings/power/rockchip-io-domain.yaml

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
