Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D29A8C00144
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Aug 2022 14:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLal3OBGcCIvT4XVqHWBUVqchRGtqGruPTg8GGl6qU8=; b=sSBGaCYWRZv6NF
	XJFwoV1ah+w7kP3qvx9NxL9+QXjUHpR1k6lfB1ygKdlWQ+3ySUFDK2QzbjhYQvdsYOcwEth58eYN7
	ccE+gCbLSGvCS/iiF/QYUatIZWcY8QFhO0dDRbQ6a2y6OPbjmVXQHp6mpynUQJK89nONUdUciEVmo
	QTamta8KIHxsTrpjclEtoiZPiHizBoCyvMy/OgVc80ZKqaTBVylGpzRZ62WWW8KvwRA/9knygcFIj
	B4CzgtSUQ9VLVU9h8Lz4e10v3EQEqDcyJ+zP3nkHU0ilqFenzMEFcZdzsOVQj8dgQymMgnqh5vm8D
	1rKi8qEnsoFgTYK0xNSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIWRD-0074Zi-Aa; Mon, 01 Aug 2022 14:30:31 +0000
Received: from mail-io1-f49.google.com ([209.85.166.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIWR2-0074TW-7d; Mon, 01 Aug 2022 14:30:21 +0000
Received: by mail-io1-f49.google.com with SMTP id c185so8485745iof.7;
        Mon, 01 Aug 2022 07:30:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=0dbqmbbrnh6eHwm9n5c6wq1oHU5KlKV/W4sU8ErOXro=;
        b=zvxJMp539ghCc4pFsDh7A2FVUDwPP7VdatRiwrvutzid/jrP5UViludtEgU8kI5tPC
         AagELaFWZTIDUnJ8u/WAD39rPhaIXwHB/Isp13jIoGJ4x+Jt6cjxh31SGm1PgpTwNnuG
         dvrrpZXyxC/xHhYVVZpsSSbxdpausYa1vxbISZMp8cLEwhdsQTgHbRkLAGCCIBp/umh4
         /PqBIJiQHHVl/54Zck9llk3nWXW+Bm84UxuVurLEfyW3aW0qTIkGRUrVT0Dr+DSVQIiv
         E/1es7RyhG0sCPzhUccwssiu+uGUgriJXQzPTuXmm7yXp0g9w4CqIoC1Yaa080Pj/+cO
         qgPA==
X-Gm-Message-State: AJIora8+Olqkx6rnOoOJiMQDCfqOthKdxqcgncXrmk1OWCIu/CjorLKX
	Kl8c1VTVnGipHdXi8NdwXg==
X-Google-Smtp-Source: AGRyM1v5SwV/IkWt6ScPuoGGKKT/r+zR56rXpY8ZELh6SwE0TzxAIPSBHHoxSMGwgoWx4+L2i4xBhg==
X-Received: by 2002:a05:6602:27cd:b0:669:3d8d:4d77 with SMTP id l13-20020a05660227cd00b006693d8d4d77mr5626127ios.216.1659364219057;
        Mon, 01 Aug 2022 07:30:19 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id j15-20020a056e02014f00b002de42539fddsm3267754ilr.68.2022.08.01.07.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Aug 2022 07:30:18 -0700 (PDT)
Received: (nullmailer pid 974343 invoked by uid 1000);
	Mon, 01 Aug 2022 14:30:17 -0000
Date: Mon, 1 Aug 2022 08:30:17 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, kuba@kernel.org, linux-arm-kernel@lists.infradead.org, edumazet@google.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, davem@davemloft.net, heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, pabeni@redhat.com
Subject: Re: [PATCH v2 1/3] dt-bindings: net: convert emac_rockchip.txt to
 YAML
Message-ID: <20220801143017.GA973438-robh@kernel.org>
References: <20220603163539.537-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220603163539.537-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220801_073020_296767_6F1FD84A 
X-CRM114-Status: GOOD (  11.96  )
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

On Fri, 03 Jun 2022 18:35:37 +0200, Johan Jonker wrote:
> Convert emac_rockchip.txt to YAML.
> 
> Changes against original bindings:
>   Add mdio sub node.
>   Add extra clock for rk3036
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V2:
>   use phy
>   rename to rockchip,emac.yaml
>   add more requirements
> ---
>  .../devicetree/bindings/net/emac_rockchip.txt |  52 --------
>  .../bindings/net/rockchip,emac.yaml           | 115 ++++++++++++++++++
>  2 files changed, 115 insertions(+), 52 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/emac_rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/net/rockchip,emac.yaml
> 

Looks like this fell through the cracks. Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
