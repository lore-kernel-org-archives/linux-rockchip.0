Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03C44C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jun 2022 17:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7890VPux/5/BE/AOkKv1D+WVW1bLfuMdlJdAx/zdygo=; b=Ur/TmnDW646P5L
	mlMGIdcYlm9atKwRPCIfDTRyHYfmz7z83adcpQRWmFD+pRsZ0Pjb0zzROIOtHImooigCW+CBO175n
	O/41q+ljCR/vlTvZfUwcQtgPtyM2oFTfcaO5LaN+B6yqDvwSp+r32nOvZdAx/PUruHMGjBhfJK7f3
	qTYrgQ6Y2kZSckr4ieAHNpabAPnodMxq78i6kYNtcKI/dumC/JF7zAZ61ssxkDtPC+mDjo67z+2Dw
	ZkgaPW5CghMXGLcs4Kwl3frXR2RQcC3ZHdCaZD6bxXKMQP/bY7X/jJUubgAH2G9pdqNfbCGmQHGdZ
	drsTDkH47iIDRwV5xmeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzMCY-003Gjn-Uu; Thu, 09 Jun 2022 17:44:10 +0000
Received: from mail-io1-f44.google.com ([209.85.166.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzMCW-003GhL-PF; Thu, 09 Jun 2022 17:44:09 +0000
Received: by mail-io1-f44.google.com with SMTP id a10so22874660ioe.9;
        Thu, 09 Jun 2022 10:44:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2i1pp/1ZsRmToFCoqQ19skHEmaFhsE2D5haAdLzfO1w=;
        b=GkfbU3os88/NQCn0bG0YXVHdmqZizJU8BoQVnpFvlMbcMCoLWNtiJX7eJoJbO6pzdF
         0f7z3iFW9tr9JONwA4dXz1RfeG/GNI0kGiF97hQR7QdDtceiQI++6sAOYyxyT2hlVrqV
         pL/vKTwJn7K1/fn8pdvhRL6SFs+Cam9Oar4BxqEz8gTgsYK9ws023TEXTt2a08z/F9bP
         VlSa9tsA7v7WkXxcvRmSf6b+pIwEIP8LcyAmGbqjyDr6AEN8rjYdBMw/pUFKxPqjug0X
         CPTW6RZYmUtsmEpUqFDe/q23umrzXAzDO0nwWLhIKZ8CLrqLvC2D4sgtqFMKC0++/YqI
         rL7w==
X-Gm-Message-State: AOAM530L0EgCN5bzjE3MvLny3xQ6hJ4j26aDEnvG1kxscip5/V7pV3o4
	Ul2aWxHbE34im5ZLPv6amA==
X-Google-Smtp-Source: ABdhPJy51+FrJNx2InXWFPKHM8IB1lHjAQX9L++85q7Lm90YQcc4+l0XuM1CF1L/kmI1uGCI+7qwsw==
X-Received: by 2002:a05:6638:2648:b0:330:be8e:9cc with SMTP id n8-20020a056638264800b00330be8e09ccmr22634260jat.85.1654796646710;
        Thu, 09 Jun 2022 10:44:06 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id c12-20020a02330c000000b00331b841cf9fsm4853284jae.33.2022.06.09.10.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 10:44:05 -0700 (PDT)
Received: (nullmailer pid 4015147 invoked by uid 1000);
	Thu, 09 Jun 2022 17:44:03 -0000
Date: Thu, 9 Jun 2022 11:44:03 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, edumazet@google.com, linux-kernel@vger.kernel.org, davem@davemloft.net, robh+dt@kernel.org, linux-rockchip@lists.infradead.org, kuba@kernel.org, pabeni@redhat.com, devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: net: convert emac_rockchip.txt to
 YAML
Message-ID: <20220609174403.GA4015071-robh@kernel.org>
References: <20220603163539.537-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220603163539.537-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_104408_861430_559BEF83 
X-CRM114-Status: GOOD (  10.57  )
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

On Fri, 03 Jun 2022 18:35:37 +0200, Johan Jonker wrote:
> Convert emac_rockchip.txt to YAML.
> 
> Changes against original bindings:
>   Add mdio sub node.
>   Add extra clock for rk3036
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V2:
>   use phy
>   rename to rockchip,emac.yaml
>   add more requirements
> ---
>  .../devicetree/bindings/net/emac_rockchip.txt |  52 --------
>  .../bindings/net/rockchip,emac.yaml           | 115 ++++++++++++++++++
>  2 files changed, 115 insertions(+), 52 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/emac_rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/net/rockchip,emac.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
