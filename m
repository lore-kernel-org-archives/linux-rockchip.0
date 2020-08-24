Return-Path: <SRS0=JNKT=CC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC7DC433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2020 21:26:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7399620706
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2020 21:26:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="CVvhAft1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7399620706
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pSimRV+Mwzy/oNeSDwxBqFbWWEhjYhbqrtOQ5vOBzpU=; b=CVvhAft1wMNk7d6yYJGGsDy4S
	+yw5fNedyIu5nKSXQTt3ZnSX5qhIYf2dhSYWxQFMr5uJflWICJOYayTpTDepbGYbM8J0oucMPjewz
	fWQneGGCQ45Km3+Q3oc9hhZB2LzFJX2WFRi8iJUvzSqBUy5cB3eOrzEO6V9bJh9WQ82wQFPD1KT6c
	RkZBraQkz+j6VdqpNnK5TeJrJ0C5Ow3ONUK5NLqFY6Yr0lc7MJr0thwQwsxDLoQgB0Gb+I0M2IDYC
	yswiL0Bd7UN7OZa6yiGfD1UV0QP/at3GVr/IYxUHl7fIFQTlRtd39HAjGEbX05TWbX+PJiuhvpu4k
	vJX72lD4A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kAJyQ-0007CJ-KK; Mon, 24 Aug 2020 21:25:50 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kAJy4-00076Q-W7; Mon, 24 Aug 2020 21:25:48 +0000
Received: by mail-io1-f67.google.com with SMTP id g13so10285703ioo.9;
 Mon, 24 Aug 2020 14:25:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1HgbZvwCcTPte4MLN7jZHwt9e5VMB3T1bOve0lsNkKQ=;
 b=BNZySpdSVlj+n0GpS5IaLvrH514I35dcIhgtF+HT8YBgl3SWPShdwyM7twc1ZtqLiA
 ib0AnzeUdhkuvsTCt3vXB6CIO32y1qyT4/YTfXhQaNoUtGscMD33f70vUMP/ohdpC2b7
 7OqvS3+acL3lL6Yq3j0m10bN780TYmK5ZtF3LZTsWX9ukJwJ/HSe29zVK22iK1Ug6BVC
 Q/ZdN+Oz6av2tzKQQe4ditwfGZodBze7KpfFqDq2ohjmQizJ+oxwuzjuUr5BPUfA3Jvr
 Dk9S4EQk/VrVjGfINlmRiQsDsl2tPDknl/iEIH16SIdnWTu7qGOFb404c7eN8cOmzUTS
 ozzQ==
X-Gm-Message-State: AOAM532tmk7xD0fgon/e8xDmiYu9yVNoH2RauvvNtRu0E+VwXChwpPcn
 TCz3YaaRQAbVN2trRvf3gA==
X-Google-Smtp-Source: ABdhPJwkdIQelX35ZSKuR3Y27BjtEkcSj/GTXkGBdsApCddQUD5N66dTMUGus4UBzLo6rdBO2ZgpBg==
X-Received: by 2002:a05:6638:1206:: with SMTP id
 n6mr7144434jas.124.1598304327300; 
 Mon, 24 Aug 2020 14:25:27 -0700 (PDT)
Received: from xps15 ([64.188.179.249])
 by smtp.gmail.com with ESMTPSA id w7sm7859087ilo.17.2020.08.24.14.25.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Aug 2020 14:25:26 -0700 (PDT)
Received: (nullmailer pid 3327853 invoked by uid 1000);
 Mon, 24 Aug 2020 21:25:24 -0000
Date: Mon, 24 Aug 2020 15:25:24 -0600
From: Rob Herring <robh@kernel.org>
To: David Bauer <mail@david-bauer.net>
Subject: Re: [PATCH v2 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2S
Message-ID: <20200824212524.GA3327690@bogus>
References: <20200820214409.34957-1-mail@david-bauer.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200820214409.34957-1-mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200824_172529_343163_9FEB6098 
X-CRM114-Status: GOOD (  12.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, t.schramm@manjaro.org,
 kever.yang@rock-chips.com, m.reichl@fivetechno.de,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 jagan@amarulasolutions.com, pgwipeout@gmail.com, andy.yan@rock-chips.com,
 jbx6244@gmail.com, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 20 Aug 2020 23:44:08 +0200, David Bauer wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R2S.
> 
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
> Changes in v2:
>   - Change model name to FriendlyElec
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
