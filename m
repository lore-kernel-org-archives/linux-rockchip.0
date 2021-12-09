Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29087C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Dec 2021 03:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbo0E6aNL6kerV5qbPKAYomwZdAEG8pqF/x4Af17jKI=; b=eF5MpoQ0eMQUpo
	911+2KcoVnEf+4AiAf+R5gP4IE9V+yT5TA9mxzBpLjkEI9SwYRq7DjxoTSrd5jcC0S446XJw7U5KJ
	snlfhdqcU7jW4Rp2tLVha2/zgXD70xUHabUZYSS48xovqmZ36cu+3XxkOO5qnnoaGcmvxnzN6N2CE
	oWfC12kJ73+tickGnuEBfCTJAdTY70aWmvxO+w7JR3Xl1n+n0cxYnBUDP0fQQGTU66dG+QrN23a3y
	K3rT3Ji6DVUixijlGY58RiiamstJTBwqzsFNd7Ll/tag3k6MYVCXwBzYgRC9BPgWyT9EnuRp/pgNT
	jnxuqvGwHZK5dD2KNiIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv9nw-00EnaO-E3; Thu, 09 Dec 2021 03:09:08 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv9nj-00EnXQ-VL; Thu, 09 Dec 2021 03:08:57 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 x3-20020a05683000c300b0057a5318c517so4794113oto.13; 
 Wed, 08 Dec 2021 19:08:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=qKDzffIh+yqfr5ok/mJJwzw+1owN6snSg8a9RwLCVp8=;
 b=mhg2fSplFbdeHLfx4PLaV1zDzl0ZjIl2YiE607c37DGIQT5J/EVviVRGKriC148GlP
 zpISt2I6KEPCqB1nvImLoQG5cGeFh3HqF6RnrZpjy2t3sjNbYNxFztGtOkkluQ/EQ8eX
 aMGe0iMCqkCa/hKuqsMa/aXSW+oFZKvk4+vvwkvpU32gO9Qx/PBeziXVdxYYkp2gjyW1
 caMV8IJpezLlMA4sIo41eJdwSvhk1T57I7qOkHxOcd0ZLcgDIJeUBDFeMPE6S+kx44Hs
 qU+IALLsgsg7QbnMOJ3heckE+hfzHcAWobCh/YZJdkWUMvCMH1IhplIqddPpPJGLNBAr
 4quA==
X-Gm-Message-State: AOAM532o96jRGzNmxmVKq/MUR+1ffGGShfFrsgvQQMYe0aiqTBX20e3Z
 hmQp/ZNf296zooPfNFD1+g==
X-Google-Smtp-Source: ABdhPJwSOLjcoCkCaqCYmfKf8LK8Pv362E+51R1zit9LTCiYpPmFHxXc6atFl2Y6QiNZGg1ReFtq2g==
X-Received: by 2002:a05:6830:1447:: with SMTP id
 w7mr3166109otp.199.1639019333757; 
 Wed, 08 Dec 2021 19:08:53 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id i3sm798136ooq.39.2021.12.08.19.08.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 19:08:53 -0800 (PST)
Received: (nullmailer pid 934412 invoked by uid 1000);
 Thu, 09 Dec 2021 03:08:51 -0000
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>, benjamin.gaignard@collabora.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 NXP Linux Team <linux-imx@nxp.com>, linux-staging@lists.linux.dev,
 cphealy@gmail.com, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, nicolas@ndufresne.ca,
 aford@beaconembedded.com, Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Fabio Estevam <festevam@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
In-Reply-To: <20211208225030.2018923-5-aford173@gmail.com>
References: <20211208225030.2018923-1-aford173@gmail.com>
 <20211208225030.2018923-5-aford173@gmail.com>
Subject: Re: [PATCH 04/10] dt-bindings: media: nxp,
 imx8mq-vpu: Support split G1 and G2 nodes with vpu-blk-ctrl
Date: Wed, 08 Dec 2021 21:08:51 -0600
Message-Id: <1639019331.983790.934411.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_190856_037087_C70B796C 
X-CRM114-Status: GOOD (  16.20  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 08 Dec 2021 16:50:23 -0600, Adam Ford wrote:
> The G1 and G2 are separate decoder blocks that are enabled by the
> vpu-blk-ctrl power-domain controller, which now has a proper driver.
> Update the bindings to support separate nodes for the G1 and G2
> decoders using the proper driver or the older unified node with
> the legacy controls.
> 
> To be compatible with older DT the driver, mark certain items as
> deprecated and retain the backwards compatible example.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
>  .../bindings/media/nxp,imx8mq-vpu.yaml        | 83 ++++++++++++++-----
>  1 file changed, 64 insertions(+), 19 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.example.dts:62.23-27 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:373: Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1413: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1565517

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
