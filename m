Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60E32ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Sep 2022 16:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyfI4aASX1ACWvV+qQHgK9IgZlHs8PSb7K7IPCSjIkg=; b=xKKH0MSWP4B1hm
	piwapTDt3DjT2WkNKkHA+hnAa22CNrDzMg0lqZzZeKLo0BFanAA3YnLIHINCNLkQf/crQcoX9Uwab
	5AnXjMYi3pOdJxTj3xrKAjUvH6hxY/STL9gL5bjiqKd/j7zFGBjD/5P42RP8FE7wxRXRC+oVvC1NU
	0Qh2nijmH1Z5UNKgrwtln0aFZinvkcJLxCSrJyEDWPqcHQh9raV2kMyJuRQrbZHvcvHNai4axD2TF
	ubiNfN12/yxn9i978cPeHiqXPGfazZ3FGJy+Wv9KISJWdh4Kshm7KZ/6WvQJRlexjVdnPaxbUtFjG
	gRbtrqR73sFN0mMKlqig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXmCJ-00BY9h-8J; Mon, 12 Sep 2022 16:22:11 +0000
Received: from mail-oa1-f52.google.com ([209.85.160.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXmCC-00BY5O-D0; Mon, 12 Sep 2022 16:22:05 +0000
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-1225219ee46so24769671fac.2;
        Mon, 12 Sep 2022 09:22:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=r00DFKnjQ6MqdljnOGbZpoS3i+7YfIuY/QvCEDJNxz4=;
        b=TkLIAJmZUfNNyNmeUvyvRzQca5v61d11/PytvqYVW4Q9H9Xmwoax4irWnQtJ2WFJrr
         aDpb0Qd84bw+l+Z/ERormCJfp2yTm7Pn0ZZAnXg196Z0li8MrXCbbebUBGzhFNjLov3g
         dXY5zAlCtm+G9R5Jn4Ye5WLRfgpcwk/88wiIe2hF1yc4ssXjgsvc4/NdvSScThZ8kdBD
         1yjqpzNaN9eK1vtRUoi04weZqiGMMZx5NGjdAQP+dHqAoAV9c1cEEkoBvh61u53C9pob
         svEHrh79IQl1fmbziVJ9400O/dwTV/9oXVVtvpihAW4voZGYUE0yyUxArtUssaU8BhtP
         BT/Q==
X-Gm-Message-State: ACgBeo1Zbmd06G2A1gu63nMonU/Xqim4yGWpeslU4VuRcP/Hdid/RYUQ
	SV9aSyzms6Ip8vSEEDTo1g==
X-Google-Smtp-Source: AA6agR6loyFpBasqevtTvWoqIcVpwvLcLwVcfU8zNnKPyNcqpBvzXAW2C9KsWZEg5Kqo5x6rdL4rWA==
X-Received: by 2002:a05:6870:a78e:b0:12b:542b:e5b2 with SMTP id x14-20020a056870a78e00b0012b542be5b2mr5139723oao.112.1662999720989;
        Mon, 12 Sep 2022 09:22:00 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j16-20020a056870169000b0011e73536301sm5706841oae.52.2022.09.12.09.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 09:22:00 -0700 (PDT)
Received: (nullmailer pid 1413504 invoked by uid 1000);
	Mon, 12 Sep 2022 16:21:59 -0000
Date: Mon, 12 Sep 2022 11:21:59 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de, linux-rockchip@lists.infradead.org, philipp.tomsich@vrull.eu, linux-arm-kernel@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, linux-pwm@vger.kernel.org, kever.yang@rock-chips.com, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org, heiko@sntech.de
Subject: Re: [PATCH v1 03/11] dt-bindings: pwm: rockchip: add
 rockchip,rk3128-pwm
Message-ID: <20220912162159.GA1397560-robh@kernel.org>
References: <20220909212543.17428-1-jbx6244@gmail.com>
 <f5dd0ee4-d97e-d878-ffde-c06e9b233e38@gmail.com>
 <1662821635.180247.34700.nullmailer@robh.at.kernel.org>
 <1c13181b-8421-69d8-21ee-9742dd5f55dd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c13181b-8421-69d8-21ee-9742dd5f55dd@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_092204_492547_F5A544D8 
X-CRM114-Status: GOOD (  12.04  )
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

On Sat, Sep 10, 2022 at 09:48:04PM +0200, Johan Jonker wrote:
> Reduced CC.
> 
> Hi Rob,
> 

Seemed like a simple enough warning to fix...

> The rk3328 and rv1108 PWM interrupt is chaired between blocks I think.
> For rv1108 the same interrupt is used for all PWM nodes.
> For rk3328 only added to one PWM node.
> Currently not in use in a Linux drivers??

How is that relevant to the binding? It's used in dts files.

> 
> No consensus yet...on removing or parent node, so it stays as it is...
> Maybe if you have ideas things will change. ;)

Only that existing issues should be addressed before adding new 
platforms especially if the binding might change in an incompatible way 
(splitting nodes).

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
