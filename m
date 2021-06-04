Return-Path: <SRS0=fkR5=K6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5452AC4743C
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 20:45:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E17761287
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 20:45:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1E17761287
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuOpTBIhWfadcEUmKSavjDUZlHEkYmOg5nla3kbq1lc=; b=rFJ6wZHXsmzVmW
	EZMrGAHySMBLDlFWMdTXp/NxOwGKqoAWyJzRnUVdZ+lak1JiNzk43c/gqn2rm1tYbTYlLgEwN/M3e
	iXGjQ15pl1v4c91YeFI+QTJe6z5hSTmLTRsGGuBVC5qygzPn2bw3kpfoJ9lQAvX69rUYlqPEAw6Hq
	mRUS3hZONTPM7LiLS2W+j65ht5Veb0yQ0AEzIx24VVv1IsfW3tCsjkKdXc/YJd1SNVGGskQ/nGibS
	JAjR35ceo2+vlPPqDVQkRnoSrf3H66NVoKhHRXXjnVcqQ+dKnAcoFqJrGmrubH9RWWPDqBC3wyvR+
	Fi0YkiAhHE5I7DNW2ZiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpGhL-00F9fr-R2; Fri, 04 Jun 2021 20:45:43 +0000
Received: from mail-oo1-f48.google.com ([209.85.161.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpGhI-00F9dv-No; Fri, 04 Jun 2021 20:45:41 +0000
Received: by mail-oo1-f48.google.com with SMTP id
 e27-20020a056820061bb029020da48eed5cso2541181oow.10; 
 Fri, 04 Jun 2021 13:45:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=J9wbO4iepQS7fHLsPG9Sl+dEG0o3lIQGorDKRuT1O+A=;
 b=G6kKyWSzfZh+KH7C9wMqwXIFAhtf6vyswHB+aASZaWocpTQq041brCEM5dCbK+PLCT
 i5fb2vhO7ztFWyov3IcyI3Y4e87yEbOijYWX916CyNynSLRuu3RTiZC4IQyNZ9v3oVPQ
 T+KPL13n7Q1zCVxhSlMwAhS4S/fvgTFjhIkL/lzwavsq2dT9ql71/+dX86onCvbD5LLY
 vOLxGjQBxWvbLYL0CSouBshnVcPTwhpWEEn3Y55Nbzah1G9udp8aWDjtsRCow2ZDlz1B
 X2nc0Kk6JcbJaBt1BcZsjTsbQE+Dh+wpPd3svVeWSHPSTuh6Lg494YEf+FLCl8LtUPmB
 8G9w==
X-Gm-Message-State: AOAM532B72YtZd6r7p0DPs7NuK1L/8u33bTBrEsYU2gkUyz9sXS+01N2
 K1dejqsDRXOJN9mnRqjwaA==
X-Google-Smtp-Source: ABdhPJynR4v6IWpcD8BCd5FuJd4Zwv4puzVbEb52RaGPB7CaRl9pN48d8jqREDRRIQChZUZN/E8DJw==
X-Received: by 2002:a4a:94ef:: with SMTP id l44mr5043933ooi.84.1622839539471; 
 Fri, 04 Jun 2021 13:45:39 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 21sm79912otd.21.2021.06.04.13.45.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jun 2021 13:45:38 -0700 (PDT)
Received: (nullmailer pid 3884907 invoked by uid 1000);
 Fri, 04 Jun 2021 20:45:37 -0000
Date: Fri, 4 Jun 2021 15:45:37 -0500
From: Rob Herring <robh@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Ezequiel Garcia <ezequiel@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v2 03/12] dt-bindings: media: rockchip-vdec: add RK3228
 compatible
Message-ID: <20210604204537.GA3884845@robh.at.kernel.org>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
 <20210527154455.358869-4-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210527154455.358869-4-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_134540_797098_5A4672D3 
X-CRM114-Status: GOOD (  11.74  )
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

On Thu, 27 May 2021 17:44:46 +0200, Alex Bee wrote:
> Document the RK3228 compatible for rockchip-vdec.
> Also add the optional assigned-clocks and assigned-clock-rates
> properties.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
> 
>  Changes in v2:
>  - fix indentation
> 
>  .../devicetree/bindings/media/rockchip,vdec.yaml       | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
