Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B954AC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jan 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5kAk8fjC/v0+Uhmdgm8LO1aV/oIOmUSdWRWKzrBH45A=; b=34G9sfgJF7chyG
	8ybypiKci+vx22uaSeoUlI1gx2G+Q3ZP9/XuODkoTN+lmp+1T3F4ufkDBvaO5GzjyUaJCmpVbV2ND
	zqQ26D7NI2aPqKYjnI7QkwzMYCfF+p749mwvHNcr9EBj11Pw2Kl8o8ipFZkwK1+zbNiuCVlhSV6Cg
	AxMevt0sbm1y9xvxPb7+VJ6X0XupzTdqXHzKrqBxFRgqNyU15mkgYminmYtT+6vnHp8IL9hr03tVE
	Mvy28wcozM2F4XZhBRrrGvEM6gf21GjXSj3bAfrO3n0RdWyO/efabp9Zo7psJFHq58XnZFqHaYuev
	+tnwLW/jssZE/d6M3VGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nC3t8-004RFe-9b; Mon, 24 Jan 2022 18:16:22 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nC3ZK-004Iqk-Vo
 for linux-rockchip@lists.infradead.org; Mon, 24 Jan 2022 17:55:56 +0000
Received: by mail-oi1-x230.google.com with SMTP id u129so629812oib.4
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Jan 2022 09:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FWCHKt6LH2PuqhaeoYItOZ0j1RZ5OdeLpVkxG1yf75I=;
 b=Ef9XDb0X+K1ZuhMBCKtx/q0m/QNP5oDUJP++hwHq/X5Eezk/gUs9g1zAojM8AuFIO/
 4f/+KB78ucag9mNlDEA7jgNrCLdI3L5m8dWt6Ia9Fttubo+YsuJs6vduKNMYaabmJvTi
 6SJx8Wv7OMW0lpG4KVlz3MP2PgjXCDXaoU/qX5PFWG97VUIAOu3zi9wmmtAaVR7FMqz/
 HvbJdjEKHRWi3w6+ZytghoxkkwbhPqDNkl1PFypxi/voryuWFaMOTDvCXjUuqgBA/fwl
 gAAsdYMISR8pzmKCeeMMnH4N1Z94Rty7l8xBphkfEKiPm1LhwJRdvhI6r62HXcGp6gda
 P08Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FWCHKt6LH2PuqhaeoYItOZ0j1RZ5OdeLpVkxG1yf75I=;
 b=ErKnSTsGnt4V6Cu4hjsL3AkTTe/wr3QRg62ZugVq2dnaE3zN/wNESa47r6m3bNVHEN
 IwJjIyjHBdVwAoCipSC0X/eOUhPd5bRQcWxgubZsr5rBSpvouSHh9dHzzDycAxu18ro9
 qfTIcDKJ6c78382QHHkEsZEzp+xSK6V7m3TK4QOAhINyIA2p/P7G1ufAPrrl/vHI3e2L
 TwKQbf8fiP8AvjkV6l1YpF5Dy7aqDbrz19WwM5Ze1qZaORKm4ZLOTYi5VgUvJDGkLsMK
 iip6o5BKRno2yW+r4OcVv49Snc162PGJvOXgds5IHwlTBlBpnYU3bNp9m5tfr5UQlaxv
 DZxA==
X-Gm-Message-State: AOAM532nNLydCyzLTGinBQ6lgsl2fMVO/jsAKNC2XwPBV6iFPQnSICfr
 HfDMZnBKcLw2xKhLsFDDCL2oetEO8h4j3Q==
X-Google-Smtp-Source: ABdhPJxaH5zt2htRLWDUBfLKV4jl17TqMENFZAIzf4Z8BuBuhmCwi9PCpivhDP9iN+yt4610L2sAWQ==
X-Received: by 2002:a05:6808:142:: with SMTP id
 h2mr2483184oie.30.1643046954063; 
 Mon, 24 Jan 2022 09:55:54 -0800 (PST)
Received: from eze-laptop ([190.194.87.200])
 by smtp.gmail.com with ESMTPSA id bh10sm5892724oib.24.2022.01.24.09.55.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Jan 2022 09:55:52 -0800 (PST)
Date: Mon, 24 Jan 2022 14:55:46 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Adam Ford <aford173@gmail.com>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shawnguo@kernel.org, aford@beaconembedded.com,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH V3 08/10] dt-bindings: media: nxp, imx8mq-vpu: Add
 support for G1 on imx8mm
Message-ID: <Ye7oIuzP6+7f/0hX@eze-laptop>
References: <20220124023125.414794-1-aford173@gmail.com>
 <20220124023125.414794-9-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220124023125.414794-9-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_095555_095736_D4C6220A 
X-CRM114-Status: GOOD (  14.51  )
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

On Sun, Jan 23, 2022 at 08:31:22PM -0600, Adam Ford wrote:
> The i.MX8M mini appears to have a similar G1 decoder but the
> post-processing isn't present, so different compatible flag is required.
> Since all the other parameters are the same with imx8mq, just add
> the new compatible flag to nxp,imx8mq-vpu.yaml.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> 

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 9c28d562112b..7dc13a4b1805 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -5,7 +5,7 @@
>  $id: "http://devicetree.org/schemas/media/nxp,imx8mq-vpu.yaml#"
>  $schema: "http://devicetree.org/meta-schemas/core.yaml#"
>  
> -title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ SoCs
> +title: Hantro G1/G2 VPU codecs implemented on i.MX8M SoCs
>  
>  maintainers:
>    - Philipp Zabel <p.zabel@pengutronix.de>
> @@ -20,6 +20,7 @@ properties:
>          deprecated: true
>        - const: nxp,imx8mq-vpu-g1
>        - const: nxp,imx8mq-vpu-g2
> +      - const: nxp,imx8mm-vpu-g1
>  
>    reg:
>      maxItems: 1
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
