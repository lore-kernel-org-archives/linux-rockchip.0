Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DBECC54EE9
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 01:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11NBQ62tOktu+IXs7hWlu3OBY/h7omO6mPmsomyJzHs=; b=fjkM9H1iVKVxmK
	GippxmG9n3Hvex89gcpBIBSl3WWwzVsmQSYnSH7orIiscLJcAaie19LAZiHsKkcGJHQF1/tg69joU
	8jBKkBplCgagEDTuASKkq6Ur9n9BT+9qgthw52JY0OIkAcsUR67jBVGr+7Xxf5P09QuITd03IKyzg
	ER03VqdEUBeCWRNPTeJI11zNM/cC18BixWgIW7SsZBzSFMu7uvJX+yPbYDdubWRjGP8c80+yJjEXK
	NaSEURqqkpmUK1TfztsBBHpt7ca7UO7JdvFwF7m0P5HZRIV1SWVfDD67GFA2Jpe/UCQLoxiZr5crq
	F0QXrWWQSBK1EwMPCLVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWSy4-00ApS1-K3; Fri, 09 Sep 2022 01:38:04 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWSxx-00ApPK-Py; Fri, 09 Sep 2022 01:38:03 +0000
Received: by mail-ot1-f48.google.com with SMTP id q39-20020a056830442700b0063889adc0ddso225113otv.1;
        Thu, 08 Sep 2022 18:37:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=9P7SbJHsQcB09ZNCROJ+/JJl6FCz/X01hfKdSqlhUDs=;
        b=d25wgWaCSUQxMFF/KOldeidwSV3WhN53RidRCIYLg7w3aj4mjAcO3816/hSLQTFuqu
         MyYUpjoo2cEpK7XPeEfDJuj5riHDafJI4RG91O1g/MB0DXl1bKF4Q19pA4cjmkpzOfZk
         gcO2M9kKWodCMz3pORhP7zyZRa6l52fLxPEoU0SEikNYGAVChx1xvda4e4vQTdC4KuLp
         WVMeGdokudC8XC+ybmolmtVhYodygTg9jpARNkTQiIYKSBmSCzenhp22lI3S/PtWrA+2
         bDKLR74m0iIuOYzfarxcYtmZI8riXKGFiRHVtJyXjeAjAOAN6Qjl092WtZIFK9JE/CKo
         y9jQ==
X-Gm-Message-State: ACgBeo3bPpZn8ui6B+EqC6BakMxSp7LEjtzz7x2+2yxZ+qR1eoYpO6pM
	ue7uS6gaMHF2+VVZzm5fFQ==
X-Google-Smtp-Source: AA6agR7FHZV8qpLG/7i/J5AK8MbPTh7kdIjK0mzVUG37dxSM2DfWv7GpTEqDN7btr436lYC9Nmd1cg==
X-Received: by 2002:a9d:17a2:0:b0:63b:1f99:86ef with SMTP id j31-20020a9d17a2000000b0063b1f9986efmr4227212otj.213.1662687476611;
        Thu, 08 Sep 2022 18:37:56 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y3-20020a0568302a0300b0063696cbb6bdsm322175otu.62.2022.09.08.18.37.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 18:37:56 -0700 (PDT)
Received: (nullmailer pid 3736918 invoked by uid 1000);
	Fri, 09 Sep 2022 01:37:55 -0000
Date: Thu, 8 Sep 2022 20:37:55 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: pgwipeout@gmail.com, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org, Chris Morgan <macromorgan@hotmail.com>, airlied@linux.ie, cl@rock-chips.com, robh+dt@kernel.org, linux-phy@lists.infradead.org, kishon@ti.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, hjc@rock-chips.com, heiko@sntech.de, daniel@ffwll.ch, s.hauer@pengutronix.de, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/5] dt-bindings: display: rockchip-dsi: add rk3568
 compatible
Message-ID: <20220909013755.GA3736867-robh@kernel.org>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
 <20220906174823.28561-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220906174823.28561-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_183757_860477_D6897C70 
X-CRM114-Status: GOOD (  10.48  )
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

On Tue, 06 Sep 2022 12:48:19 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The rk3568 uses the same dw-mipi-dsi controller as previous Rockchip
> SOCs, so add a compatible string for it.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt           | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
