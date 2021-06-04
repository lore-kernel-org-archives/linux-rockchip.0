Return-Path: <SRS0=fkR5=K6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5201CC4743C
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 20:45:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E4D861403
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 20:45:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1E4D861403
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7HSPwVsEJXcAME2vLSLkWkGZ0N0xbuCsBFqyjzTOdE=; b=k+ylVfeADqRuh/
	CB2ISGWDPmbS9q7QIzyotrXtJfAMBsjBRgrwtZHR/tCuIg00ndeos7aFmvZU6L4xrZ+tzvDv5a8YL
	hSLUrNkIXO+Tq7MoYZ/5zDm7Vjpkff52gpIi8n0l/JlE0zIBQ0XDFtSZ9i3EHisqxozP87IMF83py
	XnEwpZcKWLJAJocUYJP12rBcz4/mQ49RDV2MzbTYyX9lIsWqG60afCBnnrLt5bCxzPS0Y6gIN/R3N
	tFZJSFuSqwWoOYq4Sx9fGqaB4zSOuY4vM+Y7RtTrHMz0Lg23ZMMptYRWbIU70gx8eZg0eV84XAWV1
	mtG/Y9H7jRtVOYQw17WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpGgn-00F9TI-VS; Fri, 04 Jun 2021 20:45:09 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpGga-00F9PW-Cx; Fri, 04 Jun 2021 20:44:57 +0000
Received: by mail-oi1-f173.google.com with SMTP id w127so10971428oig.12;
 Fri, 04 Jun 2021 13:44:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/OM/wB6G0TcYiKxi3lHOYFVJpevT4bpYNZzrcyD4Qfo=;
 b=ZWI9AGENcdnSpPtQDqixO4N3FB0KY4Q4omCEpmzOWCsz946a7PKoRyVcr4jNm8AUTo
 SgyPWSjHdqRTn/WDNtjXY6nyUpxxQZQBZesrvtpaiqCcQlJ3uWtSiLKPYl0FAQndrCvS
 ZTsWa+Subn5h/gfnCiCnvlWB+EtWJVMm9nk9IbaO2gvbUh+7XZYrN+F4QQwksRF+RckS
 eca063VD0RCGxARA3WEjELytcroYA1MRSGqjXSKPa0cxa+w1w6Eu3obyMZP1/5N6ty/Z
 zUe8IdTbAcixNYTCPNsAV1yJEoHuGxcbfRsWkNAoKmygg+oPSkJdFN9TZVfGvO80VOVO
 NV5g==
X-Gm-Message-State: AOAM531E6+MgLYRxEAJmdvb0qHuF0LiQlultHpS6Rst9MgnIKcpLpYt8
 i9Sab7onwf4wLOcKMhW1MktTvwj+xw==
X-Google-Smtp-Source: ABdhPJx6Vi4fyJQ/2XM1k6LY9+2IiKO8TUuRqcHHUDu8/kg9JqjdV75l1sYPJvvEJMxfbHyrMzshqA==
X-Received: by 2002:a05:6808:992:: with SMTP id
 a18mr4087354oic.129.1622839495165; 
 Fri, 04 Jun 2021 13:44:55 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l20sm647797oop.3.2021.06.04.13.44.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jun 2021 13:44:54 -0700 (PDT)
Received: (nullmailer pid 3883662 invoked by uid 1000);
 Fri, 04 Jun 2021 20:44:52 -0000
Date: Fri, 4 Jun 2021 15:44:52 -0500
From: Rob Herring <robh@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 02/12] dt-bindings: media: rockchip-vpu: add new
 compatibles
Message-ID: <20210604204452.GA3883628@robh.at.kernel.org>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
 <20210527154455.358869-3-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210527154455.358869-3-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_134456_447449_F87E0030 
X-CRM114-Status: GOOD (  11.86  )
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

On Thu, 27 May 2021 17:44:45 +0200, Alex Bee wrote:
> Add compatibles for RK3036, RK3066, RK3188 and RK3228. Also reflect the
> changes to the additional clocks for RK3066/RK3188.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
> 
>  Changes in v2:
>  - fix order
>  - fix indentation
> 
>  .../bindings/media/rockchip-vpu.yaml          | 33 ++++++++++++++-----
>  1 file changed, 25 insertions(+), 8 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
