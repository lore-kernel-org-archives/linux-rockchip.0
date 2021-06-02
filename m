Return-Path: <SRS0=F5E9=K4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64489C47083
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 18:17:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E05361027
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 18:17:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2E05361027
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgEin8X81KNlJxWlUECdjEZdpfFy9VDU7hyMgX5rIgw=; b=ES2cQXhb8gb9fM
	3keQx89DnRe/hc3QRJJMPfL0s0nm/HfrjCpcEU2ytyGjt2GrITxBL85IWPW85sh4JFIcCjHlLlgTd
	0vzlpZLe6BFdHmf55JsARVgwkmmT89fUHFCg4k7opVGbZYZ0D7ik3VwoSoPTo3tmqzw6TYW7/3Z75
	wuQg31cT8LgxzGrJGiwMagY8LonMh99Q5eDGCGBd8fG9eRbrVIbLUZqJmOsGHdu43ZQb4jJhcybeV
	5gfoxSUKDe9DBMk31IXkqushMUXi1Dm8/p1qskHivOtDLaPkejuWBVQMqeWiYkZtUSL7nR7omZy7d
	KqsyD4JWbSNGetVyDlXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loVR9-005fsS-0Z; Wed, 02 Jun 2021 18:17:51 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loVR7-005fry-5C; Wed, 02 Jun 2021 18:17:50 +0000
Received: by mail-ot1-f53.google.com with SMTP id
 69-20020a9d0a4b0000b02902ed42f141e1so3304987otg.2; 
 Wed, 02 Jun 2021 11:17:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wpRwaaLx7ZrqEe3dJg/pfS23Gh7oExJO6rQu4khhsvk=;
 b=t+oalruvoc3G+Y2w5HdZFCWU9rejjBIItBoBmiTZuHvlIXXJQMKSeU6Ct1NmNHDKIQ
 1/MNsvBf5wSKnd+4fCpwvTsGeS4xEr6bBOeofxhe2NsHxOdUG/AWw+wZooHOO5p6ifKn
 SJmwuI2rHkFxJt+duICPbGENoE5L9kf2MGp0xv1IO+i0BCVO+fyKJx2NtQl9fm7l/ZRo
 3QRdqxkV3ahEF7B1K5AQ92+EB/B3RNuEpNZqQ9t1NjpgoYb0q4j8ElOV3P3hMbUsbZOe
 Ro06yuA0iR6QNMGAefR4f+EoOjL2S0qHdO4YkLCV6tj6qCMKmYTzkhwo6dZcifMDXOtI
 /C0Q==
X-Gm-Message-State: AOAM530/MpCH1VcaoUhwg5qQDqqL+UAXh0b3aHkyYOpBXGlNNDO+6iob
 3fNLlGIlpF/szwXkFGAiQg==
X-Google-Smtp-Source: ABdhPJz6mFx2UAL5eFsPavAxkeMRAsjIw/c+vaFDEXCA/NcRNW/9Nw3FYzsBljrABentk20l/DHNSA==
X-Received: by 2002:a9d:5c16:: with SMTP id o22mr9314609otk.319.1622657866851; 
 Wed, 02 Jun 2021 11:17:46 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x7sm122639ooc.23.2021.06.02.11.17.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 11:17:46 -0700 (PDT)
Received: (nullmailer pid 3706027 invoked by uid 1000);
 Wed, 02 Jun 2021 18:17:44 -0000
Date: Wed, 2 Jun 2021 13:17:44 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 vkoul@kernel.org, t.schramm@manjaro.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, kishon@ti.com,
 heiko@sntech.de, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 2/5] dt-bindings: soc: rockchip: grf: add compatible
 for RK3308 USB grf
Message-ID: <20210602181744.GA3705993@robh.at.kernel.org>
References: <20210601164800.7670-1-jbx6244@gmail.com>
 <20210601164800.7670-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210601164800.7670-3-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_111749_224356_80E8D55A 
X-CRM114-Status: GOOD (  11.80  )
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

On Tue, 01 Jun 2021 18:47:57 +0200, Johan Jonker wrote:
> From: Tobias Schramm <t.schramm@manjaro.org>
> 
> The RK3308 has a USB GRF.
> This patch adds a compatible string for it.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed:
>   Add "rockchip,rk3308-usb2phy-grf" to "usb2phy@[0-9a-f]+$"
>   patternProperties too.
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
