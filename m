Return-Path: <SRS0=ms/I=IN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFBAFC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 16:25:37 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D41C64F21
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 16:25:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7D41C64F21
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ABz+DiajyXj3mrZZq6mH91n8a0Uz3qIEqM9OJXmYdO4=; b=Ih9mlfJdmLPm1TjJ3UKs6rT8T
	QnfMX36u7BxC15J37xKRIlPiOQYeI21kPWyCCsAOUxH7bqhSugaF3p+b3YxsCOnhyvBhUy4tBpJPA
	LBIGJxi5wfeX4AT5W5KNroAS7//nIpbPc/WFNgnz1XIv18UfxnT3JayHEM+s7N30UB77OCIFixP2y
	p9vKBfyRbn0jvlifylztM19oLUJF2hHcZ7TmvpmfmloHorogBO+HYdK5b3Wz/1F63LKwnoxLwk8lq
	lEdMCwSGUwXIT3Nj7bxgSxr5oM2z8E/6XnAcv41lE6eMXoNWKyJf4T+D59MG4P9ce6fYZU9OpUo63
	v03my6W5w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLq23-00GLUR-Sq; Mon, 15 Mar 2021 16:25:31 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLq1x-00GLTc-Ow; Mon, 15 Mar 2021 16:25:24 +0000
Received: by mail-io1-f51.google.com with SMTP id g27so34026980iox.2;
 Mon, 15 Mar 2021 09:25:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=27vnsydVUa4ltua5W1oR+ou4V2KplNlbp+72QsF/VKc=;
 b=VZYqGK1w5NkSlBtS8mhnlwHwF5rzynTLNZAigrLw4Jda0PWuNK4dwgl6OpIcByZXxx
 nJARwXpV8WeJa/fAjbWntsFwkTYJeSWSmO5JJTZfaNpB5GGe1phID1l7gLTU/ogT2FaD
 tBTZ9j2mQBX1UcNkdMQp+HOHpmHyNZanHgpNQ0qiK3tw/hdPhk2x8F7vk+V9a9kXKU8R
 GqIG+20108ERP5SaBCLvXZHOHh7Eiy9hH3Fqiekusw/Gle8Pl35iDL9jTQjQimV4Lgza
 Fh8asBlklmlrJns8L0QMXEpciLDfFvLk5Xp5kke8C6QRimSpMyoWZQ50stLNaok6gaCv
 Mc4w==
X-Gm-Message-State: AOAM530xgpKmWZECodis/w0yCRnVa5s4Np0u8f7x9HinEKWyq2T+fx1s
 CSGu18mP7GGcDT3+9ORagQ==
X-Google-Smtp-Source: ABdhPJxE9HKb1bqeMCiFcbCoEn58lMfaFkpCdrPrjNBrSCx1vHowTC3QNzQnIT1m/JGswSXQdzAlrw==
X-Received: by 2002:a5d:8552:: with SMTP id b18mr301530ios.124.1615825520666; 
 Mon, 15 Mar 2021 09:25:20 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id h128sm7305247ioa.32.2021.03.15.09.25.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 09:25:19 -0700 (PDT)
Received: (nullmailer pid 980057 invoked by uid 1000);
 Mon, 15 Mar 2021 16:25:16 -0000
Date: Mon, 15 Mar 2021 10:25:16 -0600
From: Rob Herring <robh@kernel.org>
To: Tianling Shen <cnsztl@gmail.com>
Cc: Jensen Huang <jensenhuang@friendlyarm.com>,
 Johan Jonker <jbx6244@gmail.com>, David Bauer <mail@david-bauer.net>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 Marty Jones <mj8263788@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
Message-ID: <20210315162516.GA978743@robh.at.kernel.org>
References: <20210315084241.22345-1-cnsztl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210315084241.22345-1-cnsztl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_162523_375128_CE26C791 
X-CRM114-Status: GOOD (  13.01  )
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

On Mon, 15 Mar 2021 16:42:40 +0800, Tianling Shen wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R4S.
> 
> Changes in v2:
> - Disable display for NanoPi R4S (reference commit: 74532de460ec)
> - Light "sys" LED on NanoPi R4S (reference commit: 833821eeab91)
> 
> Changes in v3:
> - Dropped non-existent node `display_subsystem`
> 
> Changes in v4:
> - Correctly dropped `display-subsystem` node
> - Dropped meaningless `pwm-fan` node
> - Dropped wrong `sdmmc` node
> - Disabled `i2c4` and `uart0` as they don't exist in the design
> - Format fixes
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
