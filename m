Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17499C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jan 2022 02:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSpWwnR2yFuYpNEVvAAJ1hrUBWoLfY8aMuodhixgcvk=; b=ttVQoWNe5YaDdB
	T0AgV9pRElEaGym/Gh2d0odTULmWtTCVPXTOA5tRxEp4/SCK4UyINFNZSg4+BDAF3XSJDVHv19DKN
	FvV4mHroBwbp/UKBigPihXcOnVSxUTZU4yu9j2ARn6VDzBkSGQJnzR2ssYr66ivKFTLrISQ6RCz0U
	rjB9kG/+Lt+qlFC3RQL93H0Uy8kSyw7pmCgcCzABAKFTsbXM1poPixYYiLtNVe4QYAHNE//L2Svqw
	OsfWGJtelZJQnioyBEJjxSi1hNtv5BQJIQIZUmqUxB3p9i1pzEFGIEvrZuIgQhnGj5ZPLbeIgLwyo
	uKElNjcoDghKleBMIC5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7SxA-000lX1-In; Wed, 12 Jan 2022 02:01:32 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7Swx-000lTV-U7; Wed, 12 Jan 2022 02:01:21 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 o3-20020a9d4043000000b0058f31f4312fso960684oti.1; 
 Tue, 11 Jan 2022 18:01:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Qk2OQ/ws2ks++rPbFgmN3BZmamKFSn87De142ZHrSBo=;
 b=15x52a79QboaTjPcSYKytQgzj/Mi08KxekhdzgLfjkW1gjRjnC4MLgtpLCQZBiVLS5
 xzt3PyAyq356jWyCNpsZtSOhdeo7UV4eRynmdZYq8pTrx+ZEa4TpoL7GWr4tvbcy5Ioo
 g6b3qKccd7u1ebz6tGS1EK1jzsvLhS3gbMl7CHIAcmpWWfCjvyZBdt5nAclBr637gxiV
 3hxRNoiKV62XQJWmL1NIUCtEV8Bna52LPg7PHt9E80Rj3KYXYTs9Gj6uSrFp4P2cZ3s3
 UdblsWHKbNUHeQvygS/q5/G39XYs4PHd1r9WqgJ32QhlIJwHwDQZWQXsRbmaMQqeNWS0
 FcGw==
X-Gm-Message-State: AOAM533MZ80TXg0zFBXIeMi44rZfSbP6VmtZqq4VHc3bI0bIsHnahJQV
 +52zV5YXhnwZOVwCKntoBA==
X-Google-Smtp-Source: ABdhPJzqarYaUXTAPE1/+tVVkQSjhrV2udoe9wYR0feu1OlMihqzlS2aPOfLf1LHnoecfVXpdiso7Q==
X-Received: by 2002:a05:6830:2705:: with SMTP id
 j5mr5399966otu.204.1641952879291; 
 Tue, 11 Jan 2022 18:01:19 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id u14sm2369656ote.62.2022.01.11.18.01.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jan 2022 18:01:18 -0800 (PST)
Received: (nullmailer pid 3915021 invoked by uid 1000);
 Wed, 12 Jan 2022 02:01:17 -0000
Date: Tue, 11 Jan 2022 20:01:17 -0600
From: Rob Herring <robh@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Kyungmin Park <kyungmin.park@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Derek Basehore <dbasehore@chromium.org>,
 devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 03/10] dt-bindings: devfreq: rk3399_dmc: Fix Hz units
Message-ID: <Yd42bfH5skA+TZup@robh.at.kernel.org>
References: <20220107235320.965497-1-briannorris@chromium.org>
 <20220107155215.3.I9341269171c114d0e04e41d48037fd32816e2d8c@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220107155215.3.I9341269171c114d0e04e41d48037fd32816e2d8c@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220111_180120_005456_E12952DE 
X-CRM114-Status: GOOD (  14.07  )
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

On Fri, 07 Jan 2022 15:53:13 -0800, Brian Norris wrote:
> The driver and all downstream device trees [1] are using Hz units, but
> the document claims MHz. DRAM frequency for these systems can't possibly
> exceed 2^32-1 Hz, so the choice of unit doesn't really matter than much.
> 
> Rather than add unnecessary risk in getting the units wrong, let's just
> go with the unofficial convention and make the docs match reality.
> 
> A sub-1MHz frequency is extremely unlikely, so include a minimum in the
> schema, to help catch anybody who might have believed this was MHz.
> 
> [1] And notably, also those trying to upstream them:
> https://lore.kernel.org/lkml/20210308233858.24741-3-daniel.lezcano@linaro.org/
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
>  .../bindings/devfreq/rk3399_dmc.yaml          | 24 +++++++++----------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
