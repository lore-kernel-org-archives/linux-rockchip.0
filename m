Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C0E2C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Oct 2022 16:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kk66V6cp+xGVHoAJLdmMlBUWXyBJSBYi1iHFthdaU3s=; b=CFF7dIVo+sz7kj
	iO0guLmh8lYF0DvOIH+Ixwl4rJi0KAoN7CRGtHgC7wzTiYO89aVGJNvv6FXpPOXoCAJELN5OhhESs
	Bnp5lRss1eY8aBaTp2QLMTh76Z/4LGMZV3xEZ/27YmEOxQjQOUQ60B3BLVDywfuAMYg/Nx4EYHq1J
	IAMRjB/oFV3lL7u2S0P5N1I2IQSi7jIW2SslupFx9agWh8M8OeWr5l3TBobYzwPke/UdqDnzPpvz9
	1ZuObL2wrYtggw61nloXockGvGWUA8x0piZ9kCfSwiRgJHgu32sO0da3s5R/D1psLG5V7bP+nwk/e
	r/p7xQkyYNbSpZZZk2RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofOUp-006qw8-BG; Mon, 03 Oct 2022 16:40:47 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofOUX-006qiX-HS; Mon, 03 Oct 2022 16:40:30 +0000
Received: by mail-oi1-f173.google.com with SMTP id n83so11851302oif.11;
        Mon, 03 Oct 2022 09:40:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=dUvuIzgJodfgVf97IPfqmVH8ASWJfC3UD+ue7z319gg=;
        b=n7ISWCux7shSsTqskXTDl/tsswT2z7ikCRg+TkChmiMdHREzY7qUzylRuE8n3+US2Y
         agnw/UVHfWfRTjOvJLOtKHqVOPfZknMo0aE02SbZK7OwL8/EWMM/+RDmwlK9jcyUk2GX
         zo4W6IXbz38eViZi74r2VtQ/bauEYKCr/gP27b+WMj4PZiOZzUGA5DdnaAsqh+aphI3/
         oqP7pTlcWZh1bsDfxvcw+IQXAuIIIi1AhdfQaVRTKFm1fyevkio4EA+NEV+De3VjtKo2
         IdD1UTqwMClsc7G9riMBUaMkYmb4HGMXqFggA1va7TeEG4YgpublkTTTGttBP1JqKY3q
         VbcQ==
X-Gm-Message-State: ACrzQf3YabgMKxJNQZgChxrxuVjphgG8FTF9B68V0WST3hyTpYssKkO3
	DboR3hEu35Jt6RtGGTjz0Q==
X-Google-Smtp-Source: AMsMyM46S7T8zkoU0K1q/9agKWVKk+bJQ1xjfYj4RnsLzzVteuo+aC5kPlgYOYcwAVCXpuJVkBFjyw==
X-Received: by 2002:a05:6808:1597:b0:350:4f39:d7d2 with SMTP id t23-20020a056808159700b003504f39d7d2mr4147549oiw.125.1664815227733;
        Mon, 03 Oct 2022 09:40:27 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s17-20020a0568301e1100b00659ba9f2872sm2485983otr.77.2022.10.03.09.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Oct 2022 09:40:27 -0700 (PDT)
Received: (nullmailer pid 2424625 invoked by uid 1000);
	Mon, 03 Oct 2022 16:40:26 -0000
Date: Mon, 3 Oct 2022 11:40:26 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCHv2 3/9] dt-bindings: clock: add rk3588 cru bindings
Message-ID: <166481522561.2424566.15018819392287662556.robh@kernel.org>
References: <20220930153857.299396-1-sebastian.reichel@collabora.com>
 <20220930153857.299396-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220930153857.299396-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221003_094029_616882_6EF06B23 
X-CRM114-Status: GOOD (  10.29  )
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

On Fri, 30 Sep 2022 17:38:51 +0200, Sebastian Reichel wrote:
> From: Elaine Zhang <zhangqing@rock-chips.com>
> 
> Document the device tree bindings of the rockchip rk3588 SoC
> clock and reset unit.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/clock/rockchip,rk3588-cru.yaml   | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
