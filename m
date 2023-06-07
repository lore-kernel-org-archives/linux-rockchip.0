Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0547C7EE23
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jun 2023 19:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcWEdZMxA18E9d5e8+ot2rc3arqAhOYYfhDuinNfUQg=; b=1cTc0gYi1ipiXq
	x7vdBvReMUFbXdgaXQXkLIprFtFx8iHSinXHkfwtQhrzCsxF5R11wZiP9/G7r9qmKuMar6SiBzjX3
	wwBQe6doUwdz9b9eRPgoMWsrRN638A+5qsLcfHYkJgFbHe+iNRa3dGeJxqnwfLVhYfzqCyOLrb6pa
	VnOrbYI8faKh0uW/E4Zxz+59fN/xuLmL2PZ1+o1xzHaf4ICy9kl6zHS5dOxKyvOyYAlkxUIraLY7Q
	exdol66H0St38Ow8iH7rGwSZhpPDocRroINftqgkCqSPTOVm3XJarV7bOYV2VUjzeazNdrHQRUJ0y
	1hpJ8bexgFqRCO4CJqrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6yRb-006ve4-3A;
	Wed, 07 Jun 2023 19:03:43 +0000
Received: from mail-io1-f54.google.com ([209.85.166.54])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6yRW-006vc3-20
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jun 2023 19:03:40 +0000
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-777b922466dso151045739f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Jun 2023 12:03:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686164616; x=1688756616;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FRteKF9KdN6gJkMzhWYMSM2LNizcvL/cNXiHsNsqxCA=;
        b=KJIJ0alWKbOPk3XJayfKLIrb+Bgz/pQ9rTVaRwo6MChtQVWeZPLAzpdXAMVzGUSLmI
         JMHHSY9LBw+TvtoIOaJNLmwGNj4VkW/CIfA8VQ1OMck8TLSMfFoO299aN+f0MGztiLXN
         QtsX+0KJBtji36B2Jzo1i+qxdvnqhCLg8Y6SmbaK4i987J7WoM0MBiWRZN5tmpwioVN+
         eA6uu2kNn5/Tdbq/WILa8VuEAla5Tl1VxEVHF3WX7UIAIxtV/XHkJ8ZG8v8Zik71xske
         1XNUaNSNGF78ZqnrUsyrQbIM4C0ZAR1Y4ur89it4Jr4vxpxMSXZAu9mjHOmhvaWeHfHX
         xJxQ==
X-Gm-Message-State: AC+VfDxawhoxZesWjHaAS17yU1/7IeFWxQ5Nr1VJEDnJIMi4ZuD+qero
	ZxYjSNt9teoAHOOUJHG2DQ==
X-Google-Smtp-Source: ACHHUZ6y8qEaEdvoxKeghMmdMKHQ5KImm2mv7rSGA7rpM9ovCdbnIap1dRJaZpo5B85xz9ghfcbhuQ==
X-Received: by 2002:a6b:da0f:0:b0:753:13ec:4ba with SMTP id x15-20020a6bda0f000000b0075313ec04bamr5802711iob.4.1686164616388;
        Wed, 07 Jun 2023 12:03:36 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id m19-20020a056638225300b0041a9e657035sm3210343jas.48.2023.06.07.12.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jun 2023 12:03:35 -0700 (PDT)
Received: (nullmailer pid 3776585 invoked by uid 1000);
	Wed, 07 Jun 2023 19:03:33 -0000
Date: Wed, 7 Jun 2023 13:03:33 -0600
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: anarsoul@gmail.com, netdev@vger.kernel.org, edumazet@google.com, linux-rockchip@lists.infradead.org, conor+dt@kernel.org, alistair@alistair23.me, krzysztof.kozlowski+dt@linaro.org, pabeni@redhat.com, davem@davemloft.net, kuba@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>, robh+dt@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: net: realtek-bluetooth: Fix RTL8821CS
 binding
Message-ID: <168616460571.3776366.16030523685871191721.robh@kernel.org>
References: <20230508160811.3568213-1-macroalpha82@gmail.com>
 <20230508160811.3568213-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230508160811.3568213-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_120338_659650_3B60BD4A 
X-CRM114-Status: GOOD (  13.48  )
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


On Mon, 08 May 2023 11:08:10 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Update the fallback string for the RTL8821CS from realtek,rtl8822cs-bt
> to realtek,rtl8723bs-bt. The difference between these two strings is
> that the 8822cs enables power saving features that the 8723bs does not,
> and in testing the 8821cs seems to have issues with these power saving
> modes enabled.
> 
> Fixes: 95ee3a93239e ("dt-bindings: net: realtek-bluetooth: Add RTL8821CS")
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/net/realtek-bluetooth.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
