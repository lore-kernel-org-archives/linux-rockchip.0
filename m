Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9AD7C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 20:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QBw/qN6If7Xir4cG72rbvEyBc6+0GjVnVYEnNjeACA=; b=OQa6XKt8jEw3kf
	L/YHNS0AD765NsSUJxT31avCp59do1fz45ZB88a/eGxMZO5ihyBZoj4T6AArAwan/xHe1HcqmjuuE
	TYF5sj3+zF1w1thC0FP1G7ZGU4LCfYU2y1/k9QC6FdkGSzernBQW3sUgTAEdWXcwOrh4IedJZ2b8K
	TvD7SuQXk89EGQO1sbWdK/o4HmTF+PJG2XLGLMe+LLlmGDF5YoysdRPTI7/HjlLSpe+oeRYKvOYy2
	cHPscM/bo+41zgEYLP8N84dEqj1A903zp0YdRR9F1/R6ToaqO45UBw+fEGUg0y14GBrYerqQkEeBj
	CEXmMkdOBQ1AgVo6aHaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmLWx-00CX46-Pd; Wed, 04 May 2022 20:23:27 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmLWk-00CWw9-BX; Wed, 04 May 2022 20:23:15 +0000
Received: by mail-oi1-f171.google.com with SMTP id w194so1121813oie.9;
 Wed, 04 May 2022 13:23:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ySBOubiPulo913haM4WoQ1mv/TU5CEHMQ1toV9XVhMc=;
 b=IGwD02L+/tKB6Mr6UG2BCRVJOXpLwbzUhmFpqEwLIMXNUiuJFjlzTCw9Ug9bqWMyLu
 YlBXaOYK6CB5YbnqXNeeGPtYzBYlGwJJrYGBWY6BxnnkAPn82mgQvA/NemfKL26N4j64
 BYct00nISjrYOEHVBZXx9l/EpFv6aRA5dKzvWQ/UuBHb3/u+L658P+cQL3evtntoUJWk
 S7GvX+SHZe5/OFa1oraPzJIE8dDdCR43eg2icnPesRH7XyeaoqtCiHXkWHzoWQ97HCga
 dlMIoEI3IR1t5136KNy/2+RD84/tQv3CagihPFO3Glv9cm7ywAPYqioaH7xFxJuy9NlA
 DbXw==
X-Gm-Message-State: AOAM530bxBC41HNL49Nptx4Halw3KqnbuyQ2tZ3WfEP3iSefr8kn8Ldh
 bjahvPw3T/z92gN4srsNNQFG1h5EfQ==
X-Google-Smtp-Source: ABdhPJzACW6AvH0oEJr8UNPH9HL8vuoKqEyRonyCY12D3tqsWHQUGMaQ5zgSLXG56C5vPug6oW5P/A==
X-Received: by 2002:a05:6808:d48:b0:326:2d1f:1c0f with SMTP id
 w8-20020a0568080d4800b003262d1f1c0fmr637501oik.43.1651695790838; 
 Wed, 04 May 2022 13:23:10 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 o14-20020a0568080f8e00b00325cda1ff8bsm4649538oiw.10.2022.05.04.13.23.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 13:23:10 -0700 (PDT)
Received: (nullmailer pid 2163645 invoked by uid 1000);
 Wed, 04 May 2022 20:23:09 -0000
Date: Wed, 4 May 2022 15:23:09 -0500
From: Rob Herring <robh@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: media: rockchip-vpu: Add RK3568 JPEG
 compatible
Message-ID: <YnLgrVJcdkYgNvEO@robh.at.kernel.org>
References: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
 <20220427224438.335327-2-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220427224438.335327-2-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_132314_424981_BD541C33 
X-CRM114-Status: GOOD (  16.79  )
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

On Thu, Apr 28, 2022 at 12:44:36AM +0200, Nicolas Frattaroli wrote:
> The RK3568 and RK3566 have a VPU node solely dedicated to JPEG
> encoding. This patch adds a compatible for it, and also allows
> the bindings to only come with a vepu interrupt.

Sounds like this might be more than just JPEG, so I'm assuming this will 
get sent again.
 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> index bacb60a34989..cd62b44c34c3 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -22,6 +22,7 @@ properties:
>            - rockchip,rk3288-vpu
>            - rockchip,rk3328-vpu
>            - rockchip,rk3399-vpu
> +          - rockchip,rk3568-jpeg-vepu
>            - rockchip,px30-vpu
>        - items:
>            - const: rockchip,rk3188-vpu
> @@ -40,6 +41,7 @@ properties:
>    interrupt-names:
>      oneOf:
>        - const: vdpu
> +      - const: vepu
>        - items:
>            - const: vepu
>            - const: vdpu
> -- 
> 2.36.0
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
