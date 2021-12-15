Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EBDDC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 17:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVENnZUrvBtLZEskLi/SrCDe+Ml311dJvS4K4x89ARQ=; b=N1YsbcgkP83WfV
	cWKEyRiMT6+XNw2ppHtYApjxGD1BCgp+goboKyHWZhBSmjZ5/o+cmL0pVBeNrFcX/4IAjLMUE94G7
	B0YUSN8KeBCYMS7VgY8BYds5mgAfJ93FmZyPgA15dzf3HUFdUQBhWZrur5vnd+QqrzfESPYX5yeL5
	0//T+Xu+m1RzTSpU7kW/9ElQTu3gzFVazzOHxbGSFs2FnreeLHgR5grUXLvWIGktluSU3oJidxyow
	2kl5wq2pYK+Qgn9KzNbb4fXxlJKLt7WMqj68kwUG+fnct7jNWXVCByRuNPycD55VyEjqtXLEoMPEa
	9xzm5QogomnPzON0i7rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxXfJ-001vqs-Vv; Wed, 15 Dec 2021 17:02:06 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxXWt-001sEb-CJ; Wed, 15 Dec 2021 16:53:24 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 x19-20020a9d7053000000b0055c8b39420bso25684164otj.1; 
 Wed, 15 Dec 2021 08:53:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Xm9gpKkVx8JRZ7dzKc9hCU1OHkufwqdeq6wW80KqSwA=;
 b=xBAYhzOh4iAj5ZVMMh6V3QOWuzichRUVVMXPNbmFE2wHsljdKXlYBwJ1qsdeoTLBqD
 bRdUKUHa4KWwRlBrlkJcS3eGilOsOOyFh/QvLYwlKwc1/Vz2sOUZjSID/3y0/nxHXSBO
 e+4WVSAKl5Xgezyb7xD6kk2We/F82SYuQReCXwAbD5XQQR53WAptflC3apToEtj80qQy
 YJNGZYs5cAGsAGNgf++sNVu/X1/f8h6rUYhjL/jCD4zZFbP8TklTLEO4QT0yKhUR7rWt
 JVVpbR/DgynOK5Sj53uwugu2oybXeRVn407S37OMke7QsmIpsHk0PGKqqTxQ7Dv5FQwF
 eLxA==
X-Gm-Message-State: AOAM530vyFGg/B4SHGW/tWoN/I7r6osBZuxBFM8tFH5y2hJGzlRO8a91
 kVfNlTTMa4BzCZorhJgEVA==
X-Google-Smtp-Source: ABdhPJyKtoicFALG4i4urGSzoDXuoc7COnK+VLsgjbQi7WLCicmQaJorWgLOrIAOsd0okSfXK3zfnw==
X-Received: by 2002:a05:6830:4d6:: with SMTP id
 s22mr9720535otd.270.1639587201035; 
 Wed, 15 Dec 2021 08:53:21 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bc7sm578949oob.35.2021.12.15.08.53.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 08:53:20 -0800 (PST)
Received: (nullmailer pid 1462226 invoked by uid 1000);
 Wed, 15 Dec 2021 16:53:18 -0000
Date: Wed, 15 Dec 2021 10:53:18 -0600
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, benjamin.gaignard@collabora.com,
 cphealy@gmail.com, aford@beaconembedded.com, nicolas@ndufresne.ca,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH 08/10] dt-bindings: media: nxp, imx8mq-vpu: Enable support
 for i.MX8M Mini
Message-ID: <Ybodfln1RtezsARN@robh.at.kernel.org>
References: <20211208225030.2018923-1-aford173@gmail.com>
 <20211208225030.2018923-9-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208225030.2018923-9-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_085323_504098_904B0E37 
X-CRM114-Status: GOOD (  14.63  )
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

On Wed, Dec 08, 2021 at 04:50:27PM -0600, Adam Ford wrote:
> The i.MX8M mini appears to have a similar G1 and G2 decoder but the
> post-procesing isn't present.  Add compatible flags to support
> G1 and G2 without post-processing.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
>  Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index eeb7bd6281f9..fb6c2ab1b2dc 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -20,6 +20,8 @@ properties:
>          deprecated: true
>        - const: nxp,imx8mq-vpu-g1
>        - const: nxp,imx8mq-vpu-g2
> +      - const: nxp, imx8mm-vpu-g1
> +      - const: nxp, imx8mm-vpu-g2

space                 ^

>  
>    reg:
>      minItems: 1
> -- 
> 2.32.0
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
