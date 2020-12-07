Return-Path: <SRS0=PznR=FL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD860C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 17:27:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 74FA72388D
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 17:27:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 74FA72388D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qFyA1UTzerKKt6EwloRHdhn2w3LbslpoFy6r3ITZOkc=; b=r/RUOOZ4uBrc+7aom9MoCwQ/s
	gQtjXKN+/0SrifwhZgUwcoZtCKL+FRxJcqGrOMLyvytBIPVBosqOKJN2YZK4Rq9cpFWJcG1zZ1KLg
	b0otScAU8+Ti6N7RB9QGzGHfduCbQ12PZ567KQC7MFJuWQ5NK/DFel4vBrUS+W359eYhG0vHdwyp2
	BmmDBk0cT4KEOQSa0fXXn9/D5BN62gBHKLCTmhdkkZNyd9F/QJ4T+UDNM/KOYh+52AZhja5t+HI1C
	dIzHw8lEXX9zzZD985zJkcnW+ZAlUDHvQFJQc9FwjTm8ouOqnd1pJ3QfgzmqlNqd5WenOyGYp9lGa
	NuOk9hVQg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmKIj-00029R-ES; Mon, 07 Dec 2020 17:27:53 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmKIe-00027B-48; Mon, 07 Dec 2020 17:27:49 +0000
Received: by mail-ot1-f68.google.com with SMTP id y24so13217615otk.3;
 Mon, 07 Dec 2020 09:27:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=itlqPicSMRd57nRY/PX69XHL3uisVndeLcgR+EO03z4=;
 b=T2RarFtDnvtnKUfOQQPXpQlegWoW9T8K3OoDRpaF1+qRXo/4lwEcCUjYR37Tm3YB44
 ghAoE4v+kTftrzCGNZIohcseNXXb/KHZStchjIwQogwSurgKIBmDGTST5GZFOpwWUp9I
 Qb837l9OQD9cREapQD3LnCW4un4rJiiHjwqZwwCsW6rF3JY0Sdnzofbl4nAMaL2234c6
 G5Ax+N1jBZs+naCI5D+jKXtvFvFBx2JBU5S0vqLF+aK3GarQQlOc6JnsiOUFNP2oQtL+
 26nZ7aPrLGPX9sSaUUA5AstZA3iAxlON0P6TUqmAmvcuZBHFW0CcFzOEg3l2OViLcrb0
 yxRA==
X-Gm-Message-State: AOAM533cdRgjP0FJJF6Se5apiwhoxbl2qjqe0/IIw0WEq+Nau+o03mZ4
 D6Pn8ZlU+v88IFno733zdO4klOvNPw==
X-Google-Smtp-Source: ABdhPJxN3RwybzAnbl8yifcm/Ew7Kpeu2mQ+OZpWky+VxeYPzAn337QI8AxN98X31l6hvUYFcHYR4A==
X-Received: by 2002:a05:6830:1349:: with SMTP id
 r9mr6019026otq.256.1607361673016; 
 Mon, 07 Dec 2020 09:21:13 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t13sm3050904oic.4.2020.12.07.09.21.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 09:21:12 -0800 (PST)
Received: (nullmailer pid 465658 invoked by uid 1000);
 Mon, 07 Dec 2020 17:21:11 -0000
Date: Mon, 7 Dec 2020 11:21:11 -0600
From: Rob Herring <robh@kernel.org>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: Re: [PATCH 2/2] devicetree: phy: rockchip-emmc add
 output-tapdelay-select
Message-ID: <20201207172039.GA463809@robh.at.kernel.org>
References: <20201202082507.3536-1-chris.ruehl@gtsys.com.hk>
 <20201202082507.3536-3-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201202082507.3536-3-chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201207_122748_270030_BC52F866 
X-CRM114-Status: GOOD (  18.92  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Dec 02, 2020 at 04:25:07PM +0800, Chris Ruehl wrote:
> Update the rockchip-emmc-phy.txt and add the u32 property
> 'output-tapdelay-select'. This allow to set the otapdlysec register.
> 
> Tested with our customized rk3399 board to tune eMMC.
> 
> Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
> ---
>  Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> index 3e4d2d79a65d..00aa2d349e55 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> +++ b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> @@ -18,6 +18,9 @@ Optional properties:
>                          If not set, the default value of 50 will be applied.
>   - enable-strobe-pulldown: Enable internal pull-down for the strobe line.
>                             If not set, pull-down is not used.
> + - output-tapdelay-select: Specifies the phyctrl_otapdlysec register.
> +                           If not set, the register defaults to 0x4.
> +                           Maximum value 0xf.

Needs a vendor prefix.

>  
>  Example:
>  
> -- 
> 2.20.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
