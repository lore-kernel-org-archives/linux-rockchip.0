Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99218C19F2D
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Aug 2022 19:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3AeUylZm8m0vVURMrXHGrb543YtRuFFvYzK6hkXpt4c=; b=zJZVoz0RvYnRqc
	0F8yRLtozfvv6/z+6RDe+kjUpE1i6PZ2CyL09JpzgKJKyO8bUAh6GWa4UCLdqrtHueVoTFiCoYYwE
	VTtDYWqV/5lUKBASnz8n9tHuDSZH3B0UpKpWht2mKYS3c5zMo2rYPHjFo7I1EakfM6N+K4VZEe5bS
	lCQuhMnep5F2hQJOccZjXZSd0XdQivf1JB7XocDVPVLTdzOT7xEJZ4SsCxqRDzoChuEbvfjIU6UnE
	qniBeJSLJFwKpTaMgXwwSXynCNloYrOu1SwHC3DvkFoGKpRhY04c+37jjvY0mE15z4f7lv/o7YJU5
	mE+/3INlGojQFicdLnaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLVJw-0063BE-5U; Tue, 09 Aug 2022 19:55:20 +0000
Received: from mail-io1-f41.google.com ([209.85.166.41])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLVJt-00638l-VY; Tue, 09 Aug 2022 19:55:19 +0000
Received: by mail-io1-f41.google.com with SMTP id g15so3969969iob.0;
        Tue, 09 Aug 2022 12:55:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=NmRiglbyS3f2eZJNSmpjxkkODRr60iCR5V5oFeVX7Yg=;
        b=fP4I1a8zAWG5pwUm7BrxC6S6IXP7YvRssDOB9utZt1A5+lKG+XWX2oz/sc73/zy7a8
         kPZiRbJqb50Ax9O3xeSRRBvccZ3cFarkQ0TdTYvUw8hC84JWln/uNh7JpZTnArRxgUDh
         Pjs3RbWyO5XpVOStjE27urGGoWpaOld6meG6O6KD1T8l3YvB33lbLl2hXmBEgqU9tj59
         OQtE7XjhB8KjJGIaImZ1vB5Y5xrtALgaytriZUkLau/f23Atxw3knNDFZv9BUstYhcrg
         OGPec7rCenI1OezqtiZYsIfuVlvjyrryi41Qk7yYMCJeeytfABqkNQ3roRItDVvgjzVK
         WNWg==
X-Gm-Message-State: ACgBeo3ThzIjPkp2ZqOzOt65DAAxPyEztVhynrzhmBh9+3OZqH/JoB+Q
	jfJcX632Z6YLgHGoGHrECZroPBmDYQ==
X-Google-Smtp-Source: AA6agR6cqChrqIDYR3Ko5vcObSAMv92y6qwdjRLtpx40VfdXKfVMvdj5N5v2nZfgMRstlLkPya01EQ==
X-Received: by 2002:a05:6638:3801:b0:343:29b3:d459 with SMTP id i1-20020a056638380100b0034329b3d459mr2398142jav.302.1660074916021;
        Tue, 09 Aug 2022 12:55:16 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id s17-20020a02b151000000b003433b686389sm139055jah.62.2022.08.09.12.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 12:55:15 -0700 (PDT)
Received: (nullmailer pid 2286622 invoked by uid 1000);
	Tue, 09 Aug 2022 19:55:13 -0000
Date: Tue, 9 Aug 2022 13:55:13 -0600
From: Rob Herring <robh@kernel.org>
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Cc: ayufan@ayufan.eu, linux-rockchip@lists.infradead.org, martijn@brixit.nl, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org, megi@xff.cz
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add PinePhone Pro
 bindings
Message-ID: <20220809195513.GA2286588-robh@kernel.org>
References: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
 <20220805234411.303055-3-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220805234411.303055-3-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_125518_033300_14081361 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
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

On Sat, 06 Aug 2022 09:44:10 +1000, Tom Fitzhenry wrote:
> Document board compatible names for Pine64 PinePhonePro.
> 
> https://wiki.pine64.org/wiki/PinePhone_Pro
> 
> Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
