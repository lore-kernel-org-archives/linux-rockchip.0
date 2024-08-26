Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97B7AC5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 18:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEE6XEOadchMzFgVGcy2Hw1u6qLX0CQPYum6/Z+dd04=; b=d9nm2a7Tum/3nc
	VplA706tvQlt/ruUNaTuvaqsNMmAxK6nrUo9t6Usdp9L4EIxtBHUKXQ9hDD9culcIgc5JcC9P9Sw2
	aPtstkvcvrszUeh69DTyE6G0ysEoBQ8xhW0I+qqqM40KE6yhFEXOP+JsCQ5FBhWeT2uAP9gkuYCRX
	5nBExdmericok+bxyZGh17rgU+x4+eWPz90pYDMaEB0kmmXpL4vc91g1FbzYzswc1Ak8TeYLONxNH
	dwheWcFtY6DqMwsde6sKS7z1ODWmNUX2imYqVBJzd1bf+OGglUXbpKLhj6lyMb1AnujXkVdUWRQC7
	vEAa/6urfcng1iQKCDow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sieTh-00000008MaD-2IRc;
	Mon, 26 Aug 2024 18:30:09 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sieTd-00000008MYM-3N0S
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 18:30:07 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2d439572aeaso3170841a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2024 11:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724697004; x=1725301804; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B0uuXq8ne/yMxydWV736DEq+0IEdJmv6uA08FdC9hrU=;
        b=RlqmNbFraCmlVvtWKGxfxCg9cQgP4LtaPn04nmoAD6IKvUFdK+lk4FsjZ7WMt634lz
         VlZBlzvVlwxJIq7EqNasGHrPbGqpfMVJrfIuZ+9GiuF8ospuG7Y7ctm+ihygHkezah1u
         BWknpNH+0AjqPIrtZuzj+CTNAaIbj6S/owTjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724697004; x=1725301804;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B0uuXq8ne/yMxydWV736DEq+0IEdJmv6uA08FdC9hrU=;
        b=fs9DKGI2kjdVBlm7y9hewAGHXGXuH7248feqBFU/hed+1I5sY5fSdYDRM4n6JUXH3T
         WmbN9Clkvd0RstysKa85FeU2CF1mjNhgClBlQJjaedkAS6+LH4i4TI6KAYpa2sV2dhFb
         f0Gglvs5vpOTBcbXwiQBYfF2ciBCzLIN8VSGXhX9oZtIrZGQvD4PTed0z6z4NBYUpfQf
         oeTqHfVISJSaQPyVp28pRMJYiUx1dFDip0dZBjt94yey2vwAn4G9jOWnMPOOEs9pPG61
         GeIJQHLM1IpZb1dVJpKJZMXHK+Qo+a3jZxkfpROUKRD5+8ElKvzp0xPz9MHOgnZnwd33
         VV6Q==
X-Forwarded-Encrypted: i=1; AJvYcCWfxxby8VJNjwWRKKVTPQV+PKJWUogWT1E5IALiFmLdaU28ms+DY01counZJQd8w01lzZLkEV9FAVN7QFhjHA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/TwFwhm38QNoqtvbzFCJ0RQSQ9rAg41nSSmLYBJkZrzgL/v3l
	J9fIzHovi0YSRQ2RQIu569lYJ5APJtkCGLLfYc/31+ijmgGr6ezH2zt0EvWPec9OIXhEmXQAuaY
	=
X-Google-Smtp-Source: AGHT+IGwPAiSI+HmM0qi9NyJaLRHnGBHYsOwZ8N24Jvfmpi8hg6hXb+xyDInVkOXA4sv4ynq6h189w==
X-Received: by 2002:a17:90b:1c8e:b0:2cf:f860:f13b with SMTP id 98e67ed59e1d1-2d824ccee69mr757303a91.17.1724697003957;
        Mon, 26 Aug 2024 11:30:03 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:7e40:430b:848a:1da6])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-2d613941e79sm10220036a91.25.2024.08.26.11.30.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 11:30:03 -0700 (PDT)
Date: Mon, 26 Aug 2024 11:30:02 -0700
From: Brian Norris <briannorris@chromium.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, broonie@kernel.org,
	heiko@sntech.de, linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	shengfei Xu <xsf@rock-chips.com>
Subject: Re: [PATCH v3 5/6] spi: rockchip: Suspend and resume the bus during
 NOIRQ_SYSTEM_SLEEP_PM ops
Message-ID: <ZszJqpj4_8yfRwTu@google.com>
References: <20220216014028.8123-1-jon.lin@rock-chips.com>
 <20220216014028.8123-6-jon.lin@rock-chips.com>
 <20220621154218.sau54jeij4bunf56@core>
 <Zsj_CJR56TcahXBO@google.com>
 <f836c6fe-3edc-4e6b-aa83-b50d9edcb816@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f836c6fe-3edc-4e6b-aa83-b50d9edcb816@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_113005_886805_1586B5DF 
X-CRM114-Status: GOOD (  12.59  )
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

Hi Jon,

You sent HTML email, so it likely didn't reach the mailing list. There
are some tips here that might help:

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
https://www.infradead.org/~dwmw2/email.html

Anyway, I'll quote what I can in response below:

On Sat, Aug 24, 2024 at 01:42:14PM +0800, Jon Lin wrote:
>    I made a submission in the community, and RK's SDK processing plan is
>    to
>    make compatibility processing for PM runtime and NOIRQ.

I'm not 100% sure what that means, but I see you submitted this:

https://lore.kernel.org/all/20240825035422.900370-1-jon.lin@rock-chips.com/
[PATCH] spi: rockchip: Avoid redundant clock disable in pm operation

I may give that a proper review later, but I might request you take a
look at my patch in addition or instead, which I believe is simpler and
clearer, with a better description of what it's solving and why:

https://lore.kernel.org/all/20240823214235.1718769-1-briannorris@chromium.org/
[PATCH] spi: rockchip: Resolve unbalanced runtime PM / system PM handling

Please let me know if that patch works for you.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
