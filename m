Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB149C8303F
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Aug 2025 19:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwhWkC88EONgsaXmS7829Xko4xfCsFuy/ZLmRyMCEKc=; b=zuaBfTIcQiXznD
	pLvyNL9kPtgh5zzhl/CTk7vGcBBcnhhm51vq7mOYr7m6AL3hjSyyidcdydSEMn/goL77WvX96vgEZ
	PXJ19BaxU+8F8UmY7p6sYX5Yt/eDgZPHgqhXshQYERvdyzXFZ8D6G1048dBDXpQCFN1rw8L2tg7x3
	/wk7EOBq5KmXGUFq9uHtb8QdPmIpnzmrl3FvcJWmBpRCNCe3tHoHojXxW4TcS5EqpqH36WL3hB23K
	0ReDiHKKKV5fzN3nzZ3gLlaezjc34nmcyDwx5mBRTWzNuzLVAkXt4CS1BhtI1+D7jGf/9oKlH1Rb+
	pkbCYKfbxS1R9PNCm4Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqcYI-00000009Axh-3tJ6;
	Mon, 25 Aug 2025 19:08:22 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqadT-00000008mf1-1rcT
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Aug 2025 17:05:37 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-70bb007a821so60140196d6.0
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Aug 2025 10:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1756141534; x=1756746334; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z6KxvMDzVSOwTyVOOifum1zHj+Q1NMnnZSanrfOQhBQ=;
        b=NmVlTBflaICm62z8NJu8Oh5uYxvKJ5DWcVdGc4TNElgBbprmIRc6cHb/L0cjFnDyJJ
         FkcSdKxpJ1L8afrrTu+MGitiDYK2IE9b4ZT4/2Syb+nsXgTr/XTrKu8d/i3bgfI5yysf
         KhdjMz1+pZYB5OUq5rRGIMdY4AP3drEEMpC6cs7lcaM5TSGh3bjoHsG/7PDQqD0hOk2y
         3BFbk6jaGJU5phx34rtME4MTdKUBlZ+2gG8Kbo6GhodLXncHHY1pE/7cMqQEZvlV8r+J
         2w+oDIq94ZxX/jENyPfWjCEz4lpci266TMXbOP1bTHNjjZHD6uyTnZY9WEdtlKSENLVa
         hGoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756141534; x=1756746334;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z6KxvMDzVSOwTyVOOifum1zHj+Q1NMnnZSanrfOQhBQ=;
        b=RbBFoQYIcv1boEOr0IyDgIZ/Ds8XWhNFdi8UDOzYHJBjUXiiTrCz2Xlg9/ckadrK4M
         XpBjLLYdKSIMoi2oBuLv9ItrTv9iln5RlDbiMbXJ0pwosDCgCCizgOLJb6J5zwTq99uT
         ZH9yAlClQ2WQJ26H4vbW24pqScMJaFjj4smoxN9wSRvWXF6g5bGohgWFK4jGOmMnFVGP
         CWsL4v8Au1eLEfvntHTZAMZwq4qij9mAi38ADKG8Ey1eBpLWlS4iT7xqp2NwXRG4TFyJ
         ugQKsuRSoNBZFqJVAUYUKtyChx/oqNyFlgm4Ym1lYB1n5VDk53dsDFEGYFEScCwJTvi/
         5AEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUshcf0mb1gN9CItuoS93WZUCKncY+O7jX4o6dmMaAoad0WcRMzIh+YSkh5VZ0YxOOWSmMm38vA7QTEhgNuyQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxN7VYAHWW+IyqDyzs7Y3U5GqfPPaBm3Ty0qK1l+sZJ0ohae8cA
	bme282MTsGRDSycQKlsg7QcMMD4OXkZrGOcx1fAHIDg7Ifcm9P4ve6mCANCz3gax8Ts=
X-Gm-Gg: ASbGnctGB7MZLAX3DcbBrXy2+nVy3CBcMYnePirPBbDLatr5Pw3GxkKCcG0CBFYC6o5
	44OJhrVEccO9JLqCOYDmtJsVwRbWNTuhBbVyU4ojTHx2gRIy+uVvJCzP3AeTw33xQDLXp32TRfi
	5YoSnTHsb3TRVrtlHPwayHJs+StCKwEVJgcWR8lzfQ253ebYQjLydGaeyMv5dJaUFboYT0cjHYy
	PH6xyHJ+q7erNwIHU9capA40F8yczN5ecwqZv0gPyfzCD1HlVwtmfyztNnua5VTNX57G8uDHkDb
	ODlxqoIgtG9Pz95t//KWstaVZfIh4qYKSpGx2s67GQwOL6a6iIQiUeJN8uA9bTR8cNzmzhoimVd
	Mh3loWSk9Irn6SmcWv4AYrpASUHskJlX9jN18F4loKIqC9i63/znqnIJYQHv5SZiQq3DJ
X-Google-Smtp-Source: AGHT+IH8RaHjAylVQJBbbz2fVViy55MQyOlXslCXu2TNEUhwTy4uudrftYMxMziT/A2NjRI6tuUcow==
X-Received: by 2002:a05:6214:2a83:b0:70d:be38:8ee8 with SMTP id 6a1803df08f44-70dbe3890e3mr56021826d6.63.1756141533729;
        Mon, 25 Aug 2025 10:05:33 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70da714727csm48193006d6.13.2025.08.25.10.05.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 10:05:32 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uqadP-00000008iJN-3bFh;
	Mon, 25 Aug 2025 14:05:31 -0300
Date: Mon, 25 Aug 2025 14:05:31 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	linux-media@vger.kernel.org
Subject: Re: [PATCH v7 4/6] media: verisilicon: AV1: Restore IOMMU context
 before decoding a frame
Message-ID: <20250825170531.GA1899851@ziepe.ca>
References: <20250825153450.150071-1-benjamin.gaignard@collabora.com>
 <20250825153450.150071-5-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250825153450.150071-5-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_100535_602488_A0DBCE94 
X-CRM114-Status: GOOD (  14.89  )
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

On Mon, Aug 25, 2025 at 05:34:43PM +0200, Benjamin Gaignard wrote:
> diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
> index 81328c63b796..a28a181013b9 100644
> --- a/drivers/media/platform/verisilicon/hantro.h
> +++ b/drivers/media/platform/verisilicon/hantro.h
> @@ -12,6 +12,9 @@
>  #ifndef HANTRO_H_
>  #define HANTRO_H_
>  
> +#include <linux/dma-map-ops.h>
> +#include <linux/iommu.h>
> +#include <linux/iommu-dma.h>

This is an internal header it should not be included in drivers.

> +static void rockchip_vpu981_av1_restore_iommu(struct hantro_ctx *ctx)
> +{
> +	if (ctx->iommu_domain) {
> +		iommu_attach_device(ctx->iommu_domain, ctx->dev->v4l2_dev.dev);
> +		iommu_detach_device(ctx->iommu_domain, ctx->dev->v4l2_dev.dev);
> +	}
> +}

What is this supposed to do? Put it back to the default domain? Who
changed it away from the default domain?

Did some other driver change the attached domain (if so that's wild
and wrong)? The commit message hints at that but it should be
explained alot more.

This just seems wrong and goofy. Driver shouldn't be changing their
iommu domains if they are using the default domain at all. We now have
APIs to allow you to allocate wide chunks of IOVA space and manage
them directly. Maybe these 'multiple stream's should be doing that
instead of mucking with iommu domains?

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
