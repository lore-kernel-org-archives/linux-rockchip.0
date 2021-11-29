Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DC53C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Nov 2021 22:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVoVOHy/EWXm/EHrPazKj1DkguJdtha7hEmohADEifU=; b=QhpKOvVw+HZmhz
	Fyftyn6PIsLik2pev/ZpCG8tkjM+RJX9diMWHutw7jOXgoC05YC5lJpbKYHTSqd/RCCfgnbsU9xeI
	UpjbNHaTjLVWkI9qSo62YjRxWYGESx18LH7uGmIHAyzcb0UX4zkb/5iyZueXEnPMVvDhXHp3Kq9Hu
	lepSRLMo+/ZglMiytUDGTZNinwRNBVbZ4LUrCU9B4YTHCwZIRFH+r43+mAi2YuO12wzYVrdfQ4w3/
	3F3KxhK7njMidOmf7QUzt12iXOWrna3Spmadf8fp8+nURzzjI3a6SZgLb5BBYTawbr1dSDeoVVvzU
	5TVX652oYtjc71xF9IdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrpQM-002wzr-6I; Mon, 29 Nov 2021 22:47:02 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrpQ1-002ws7-8T; Mon, 29 Nov 2021 22:46:42 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 47-20020a9d0332000000b005798ac20d72so27583245otv.9; 
 Mon, 29 Nov 2021 14:46:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vlaUIuTpfkQHFZYUbKS4f3lFAsn1jJAs7KRU7cm0X2I=;
 b=XNjRL5UbYV8cafKMEYh9/qO432aM1shMx1fNO9FOvaFUrc5/eh2XOZlUK2yFOCrBD/
 VgjyIMhfVYI0dxN1fW8WyK9R6SV0QxmDqNnvOd5oPwb1LvaE3lIwaAFxfW2XxFSxXafu
 z4mCqPPtfVKcxbkpFNAqaNyFSF7/GSYPyYdRqltp88LHfXuTr8ziCnpteMQqV4/gj5iW
 rlxHKTGhJ6RSpyDHA0b4/NBcwcsc+52phUobassjIPx5879BOXxKOOZpiu2KMib919BH
 KbtQQso2ghtI3kV0cyQSq2SWzQcJAQWOPoVyCHwADGJK+YNHyns9B29qgg7siFkVVpTC
 Jo4w==
X-Gm-Message-State: AOAM530D8+ikeo0hgolzNF/qem9tGHgpOcMKI6V8TXd+39BgxY6XW/jN
 wIlg1AFuBD7wXuje5nSmlA==
X-Google-Smtp-Source: ABdhPJwjYUv7TStIwEgfVKtax+pxEAr4orFhSvEl5ThKh76p2DPoQYSgbkr5OqmDg1XgSEO47zntGA==
X-Received: by 2002:a05:6830:1e25:: with SMTP id
 t5mr48290837otr.291.1638225999927; 
 Mon, 29 Nov 2021 14:46:39 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id q44sm2927209otv.80.2021.11.29.14.46.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 14:46:39 -0800 (PST)
Received: (nullmailer pid 750903 invoked by uid 1000);
 Mon, 29 Nov 2021 22:46:38 -0000
Date: Mon, 29 Nov 2021 16:46:38 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 04/12] drm/rockchip: dw_hdmi: add regulator support
Message-ID: <YaVYTmvCQcs892Bh@robh.at.kernel.org>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211117143347.314294-5-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211129_144641_325342_247D4F7A 
X-CRM114-Status: GOOD (  17.10  )
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

On Wed, Nov 17, 2021 at 03:33:39PM +0100, Sascha Hauer wrote:
> The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs needed
> for the HDMI port. add support for these to the driver for boards which
> have them supplied by switchable regulators.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../display/rockchip/rockchip,dw-hdmi.yaml    |  6 ++

Bindings should be a separate patch. Include this as part of adding 
RK3568 support to the binding.

>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   | 58 ++++++++++++++++++-
>  2 files changed, 61 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 53fa42479d5b7..293b2cfbf739f 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -28,6 +28,12 @@ properties:
>    reg-io-width:
>      const: 4
>  
> +  avdd-0v9-supply:
> +    description: A 0.9V supply that powers up the SoC internal circuitry.
> +
> +  avdd-1v8-supply:
> +    description: A 0.9V supply that powers up the SoC internal circuitry.

0.9V ???

> +
>    clocks:
>      minItems: 2
>      items:

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
