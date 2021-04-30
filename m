Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FBF7C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:23:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 04B9661159
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:23:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 04B9661159
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Po1EivQfdxuq9gZZBRxKPUtNdX5uObEn6fQDRvklwBQ=; b=Da0SaS95x7QaXgKtufFdWpCzN
	BsG4k1niokV1zr8GLtThiPtxf+uIiXmIBbjm9l57xW9AcLzlzUPmsQQPGekvrt+P6hgQglSt7oQ//
	f7IcqzX05EhwWav6APilf+yDBSIp7gtRQoybp/5TtsdRMml2dSGvk/n6sWdicZ2YR0L6BnfFmacYJ
	/oN3Ozw3Q6+14HeEyRIgX6qSB2S94RePJ9raGQFAq1si8+olHFbxsEf3CLWc6wl2W1MGxUeYjON8E
	26WHYwyxAI0clu0+aksNtRYpfp1KahoXY/ia7i18vHZAz+89Gvk+s7all3avLWSMz6sbheJSns1Dn
	bCgdxLLog==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcaaY-008dOG-5l; Fri, 30 Apr 2021 21:22:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcaSN-008cNx-2p; Fri, 30 Apr 2021 21:14:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ZoGE/qRaxEZUIqyf3vqexb9wxuutBvRZWgAehutLKvg=; b=gjOHqqWXCmSY6g5vf4YdAyDdmJ
 WO9rmYQQqJ8QmJEM60k9GLVs44fzSf5e9AJoX5hWJ8tPz9jwxVLB5FQvm3I3VsW/cVvkZ3aEvxjy2
 +PqPq2iYWBmmtX3NkpdEDg0BT75sa3FZI7aKE02vbue47Ms5svN4/OFaRxEhlAu7mHGw4WC9378Ml
 twwxgpADXnU0b/XUUuTHi9Qmd1BjdpY+N5s7NDf0/H53vjEEv4re6rrJ7P6Z58T1ipG+cxntsHRwL
 Zc4A2uZCB0vqTgeP4posqglrV9Kh/jlkTHR0J9A2iUj0gXt48zh6AkbEnDDW8kEuDJSOwvC0I3i88
 2O8v18dQ==;
Received: from mail-oi1-f170.google.com ([209.85.167.170])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcaSJ-001ftl-Pe; Fri, 30 Apr 2021 21:13:49 +0000
Received: by mail-oi1-f170.google.com with SMTP id l6so2884762oii.1;
 Fri, 30 Apr 2021 14:13:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZoGE/qRaxEZUIqyf3vqexb9wxuutBvRZWgAehutLKvg=;
 b=hRfsx4KesIxliCnOET23hX4uafB26UM9c80hJZwUpm60IgDkX5SC22s8JX9G6HiP4u
 QmISjuFD7Iaj5iLHXOr7OK0X9SFUgQ6RIvd4n9TFwBG9TXLc8jBA8e41YqVdtmry2+Of
 aPPf172qx+TjO/V8Owm7c4r07GmYdIqdsaTK7xMZnhsNhQdNB97ynX3rBXZ+G9H55xN+
 oGu1kBC4xkCENoMZuixQe1DSqNQ9Rnli9Wcjg6PKmOk5ya4aCw+gz3ScTpA9LvypM/Ko
 mee65RRjUAMzqrBORj1cYwRS3ZYQJwwysommV5Apvxgo89Fxc4RbHoxbaJbdzbPZCBgE
 D7ng==
X-Gm-Message-State: AOAM533iIdqUAa1JFPCLqbW8zGTiQ4JxPCFehhd0Sotmgq0EBtSlDjJA
 W9JGlcCY0DNVHvRDeyJidw==
X-Google-Smtp-Source: ABdhPJxtf62483mldzmwxA9gvaVuMLo07/iGg2YzmtUAgcS5EYE0LWsNzf9lqQcShVCwo6Vx9MPrHA==
X-Received: by 2002:a54:419a:: with SMTP id 26mr5563131oiy.157.1619817225858; 
 Fri, 30 Apr 2021 14:13:45 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 21sm1008680otg.4.2021.04.30.14.13.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 14:13:45 -0700 (PDT)
Received: (nullmailer pid 3904574 invoked by uid 1000);
 Fri, 30 Apr 2021 21:13:43 -0000
Date: Fri, 30 Apr 2021 16:13:43 -0500
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: heiko@sntech.de, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com, zhangqing@rock-chips.com,
 huangtao@rock-chips.com, wim@linux-watchdog.org, linux@roeck-us.net,
 jamie@jamieiles.com, linux-watchdog@vger.kernel.org, maz@kernel.org
Subject: Re: [PATCH v4 03/10] dt-bindings: mmc: rockchip-dw-mshc: add
 description for rk3568
Message-ID: <20210430211343.GA3900779@robh.at.kernel.org>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081151.17558-4-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210429081151.17558-4-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_141347_860704_09643093 
X-CRM114-Status: GOOD (  15.37  )
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

On Thu, Apr 29, 2021 at 04:11:44PM +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> add "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc" for mmc nodes on
> a rk3568 platform to rockchip-dw-mshc.yaml.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml        | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 3762f1c8de96..eaa3b0ef24f6 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -29,21 +29,14 @@ properties:
>        - const: rockchip,rk3288-dw-mshc
>        - items:
>            - enum:
> -            # for Rockchip PX30
>                - rockchip,px30-dw-mshc
> -            # for Rockchip RK3036
>                - rockchip,rk3036-dw-mshc
> -            # for Rockchip RK322x
>                - rockchip,rk3228-dw-mshc
> -            # for Rockchip RK3308
>                - rockchip,rk3308-dw-mshc
> -            # for Rockchip RK3328
>                - rockchip,rk3328-dw-mshc
> -            # for Rockchip RK3368
>                - rockchip,rk3368-dw-mshc
> -            # for Rockchip RK3399
>                - rockchip,rk3399-dw-mshc
> -            # for Rockchip RV1108

I find these comments redundant, so I'm fine with the change. But please 
state why you are removing them in the commit msg.

Acked-by: Rob Herring <robh@kernel.org>

> +              - rockchip,rk3568-dw-mshc
>                - rockchip,rv1108-dw-mshc
>            - const: rockchip,rk3288-dw-mshc
>  
> -- 
> 2.17.1
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
