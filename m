Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEE27C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 07:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEOAE5fixRqAnTHXPSQwn0GXmvqmZDGYnzMZBjYZlTQ=; b=V7fhxxav1rTimY
	MOVkuQT6u6D81EJguKn/4SJzWIsOkCEO0YtZ2vz0heGL3E9ZmRsH6lxZI+OI9reba17aosA9k3RE8
	I23bhAGhsLoEsaLf6BQcpvEcz4gQLzDg2vz0PDA3P7+vgH9S0TFcIDHZDvY7FIwrW7eKK348rLj/Z
	0n6TDiR+JPwVyhxsF9e+e2sjp+NvSYjMlCxoW50FC7xzvQ8T3dj91G0yuIUkHB+WxpSYLdP0TbkS/
	+hBx7iBwWxDyZioXkC8XSdeRtiH5a/T0nOIqUj4fcidqdQ1ciGDUun2DmjqRNO0VPqqd+Sy7zmSKc
	F7AXuCV7ll+cUBtyXL2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJpdm-00000000AjR-1RPP;
	Wed, 19 Jun 2024 07:21:58 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJpdh-00000000Agh-0Tlc
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 07:21:56 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-36226e98370so848793f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Jun 2024 00:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718781710; x=1719386510; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5FlCuYx89OMN7s2VzglpB6pm+N8b7rvZjLOnkOOQ78c=;
        b=mN6wS9KmR8vRpkxhj628/jirNTXDI/YnXdIanYzQJqLUGncQkhqdpxtSDW9MTA+1vq
         rS4VEPeU4UmhyRXwyVcMde82v3GrL+7xhROGP3m5evplMM/gY5pcSDAhcOO/2JBgiOHV
         9zDaUZxhW70ylH3WciYdJ0Fw3/G3LF6tfF7pMBwYmuNP/LEG0Jb8j/XE/XGVV78TVKA6
         OeOlYeSb1EQNKyoD51OQsIw2V7lxcD1960I46MEyJPkmiX6us6JYQ3ly3fgA9xAfri8W
         R5pfG5bedH96niF3ORLehdFO8TEyjFtP9IeLdNmfPEFW/ZD5IecmZoJzZWb+hNlvM0Vq
         ksFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718781710; x=1719386510;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5FlCuYx89OMN7s2VzglpB6pm+N8b7rvZjLOnkOOQ78c=;
        b=fnaAXUfsEl+Mk181nNo28+7I1WuFcL4lmteEKr11GD9SQYTT8yXapNkc7L1IOjQ3xU
         9srywEn1cFJhMyX0lfc5BJJYu/9ngcNhB2AiQnI9H+LYe573hx4Tl2gJUkCGWC+w5Ecz
         OIgfN/HSdfsMSIzYhjxnFOiR9mjG71bdkjyggIEbnUHzaeHKWoMezr3kZPPOgJch3IF8
         kiQEPPmEMBoSJF8zArN7GAMSPXsexXaxrK5p8suik5Ujn9pFmSV/iYlZqh2uuZkpZhqW
         aVqLioep3RRwlxUpaal5fz1roTTpouYOWWXlsVp1rv9y9b2HgKYtX7VT62woQHOaT0sC
         5ZuA==
X-Forwarded-Encrypted: i=1; AJvYcCWikeTlKA6EASxdThzj5l7HHQbkAerAQ29DMpOElvkwaB3tF610c7KdVkQgZaJkzfvnuE9aVBu53bCQFDwgQUSzSRsejJ5FeqESA4pt0N43D8bT
X-Gm-Message-State: AOJu0Yz/XbD6o3PfMoC3XlgV7Pk4OwpvkLBi4GlLAnDq9rwVap5ysi+y
	xs5MbvmZ0UpeqinRO+YCEwkTO6cDCKTvmBhJ56wqmaayT1R/aFkwEem+KFh5DyU=
X-Google-Smtp-Source: AGHT+IF2UOLV+qz3Kk3N1LJ8/j7ro1aIbV92WwNj2KhCxSSnTu3IwZUZX9P1RLZZrBmMGynzY0ETcg==
X-Received: by 2002:a5d:5402:0:b0:35f:1f91:c23 with SMTP id ffacd0b85a97d-36319990751mr1278337f8f.65.1718781710339;
        Wed, 19 Jun 2024 00:21:50 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-363bd4668aasm534412f8f.48.2024.06.19.00.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 00:21:49 -0700 (PDT)
Date: Wed, 19 Jun 2024 10:21:45 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 08/10] media: rkvdec: Add image format concept
Message-ID: <f7e4b0be-fe09-4db8-b081-21c46c0d836f@moroto.mountain>
References: <20240618194647.742037-1-jonas@kwiboo.se>
 <20240618194647.742037-9-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240618194647.742037-9-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_002153_295020_F5ACDCF4 
X-CRM114-Status: GOOD (  14.22  )
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

On Tue, Jun 18, 2024 at 07:46:32PM +0000, Jonas Karlman wrote:
> +static u32 rkvdec_enum_decoded_fmt(struct rkvdec_ctx *ctx, int index,
> +				   enum rkvdec_image_fmt image_fmt)
>  {
>  	const struct rkvdec_coded_fmt_desc *desc = ctx->coded_fmt_desc;
> +	unsigned int i, j;
>  
>  	if (WARN_ON(!desc))
>  		return 0;
>  
> -	if (index >= desc->num_decoded_fmts)
> -		return 0;
> +	for (i = 0, j = 0; i < desc->num_decoded_fmts; i++) {
> +		if (rkvdec_image_fmt_match(desc->decoded_fmts[i].image_fmt,
> +					   image_fmt) &&
> +		    index == j++)

I really don't care for this j++ which is tucked inside a condition.

> +			return desc->decoded_fmts[i].fourcc;
> +	}

	int fmt_idx = -1;
	unsigned int i;

	for (i = 0, i < desc->num_decoded_fmts; i++) {
		if (!rkvdec_image_fmt_match(desc->decoded_fmts[i].image_fmt,
					    image_fmt))
			continue;
		fmt_idx++;
		if (index == fmt_idx)
			return desc->decoded_fmts[i].fourcc;
	}

	return 0;

>  
> -	return desc->decoded_fmts[index];
> +	return 0;
>  }

Don't resend if this is the only issue, but if you do resend could you
get rid of the j++?

regards,
dan carpenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
