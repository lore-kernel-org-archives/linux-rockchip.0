Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE82DC7EE29
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jun 2023 20:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lcnv7hjOts8WFL0Hzz289oolSyJy6vzXTAByUOjWxPo=; b=owcZeCt3yPXKrT
	RyPAyxJVLteu9vaCYSFDpSJdjM3JMQ1JHMkplnttuDYgYpEYIFaRZmAIrYfxhhAZ4XVAZvSn/cNZw
	TOxuMC2QrXeH6DzF7lMMwqFSXC/kOdItK8SYoMUMIkeJJWMmFfH6FYNdVuDucwKZpPlyfmCHU2P+4
	NUhHQCDRUfo1C2nmf62IyZyvcKg816Dw4ejRImHPmHBVSP86lJ3i6NZpQH3YZZAfkbWQAaNoYddzk
	BwnsjGW0yH7YMDcaYabPP+LspIFIbEpDu7lL5wFgybBnAvNryCAlovuaXZF4VX4q8DlL4Uxy3N7Bl
	fyZC2E+R8iywUUtabsfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Lun-00AUZe-0A;
	Thu, 08 Jun 2023 20:07:25 +0000
Received: from mail-io1-f53.google.com ([209.85.166.53])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Luk-00AUX8-13;
	Thu, 08 Jun 2023 20:07:23 +0000
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-77703f20aa9so50155239f.1;
        Thu, 08 Jun 2023 13:07:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686254839; x=1688846839;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yCE7xocRBkEwXdhay/uk+7t0tswMRd2eea3cgJIDzvo=;
        b=DpCI4ih4i3UEjJSG+IiDDctNsyC6UKt0WNSGLBPMTqjhMY+mt9rHAZGg3z/qvXNFmk
         tnyO2T+A2ru9xddQywFKd8J11hma9iuYID7Qd3x9oJwsrsiedlSVA5FoLGl57TNCeMas
         YUzBx9XhHhEF/MzZReh7KA5S+z9QIE5UWG6/gk16o+G3SGXRkKnJTnLI+Lf/6QImZczD
         Uva7seA0hFIAH37TRYgj8AoAwpIsCbeTZh5OWsf4g8x7K3QF9Mfmy+EDl9Fk9q9h5B1w
         8N9vtQjxLjLnT/Dw1pbtaTN38Ch6rwI/hhfT+Vq/JlV0wUAzHPRr4InKk9W4TsWK5w78
         JsZg==
X-Gm-Message-State: AC+VfDw0qmW8tlvfnQQOC/ya2YeFZ8InGHbb9ZQYPNNNjSJsqWpEhUZ5
	IP4stX1q9CyUCsWISm32Pg==
X-Google-Smtp-Source: ACHHUZ7Y/jQXG5jEUVhxK/gjEsU7RfT8KIAq/soUUNL8XKN2A7miMtfO/lnuGVj1MrM9HipcTArYmw==
X-Received: by 2002:a6b:6d03:0:b0:76c:6d91:d293 with SMTP id a3-20020a6b6d03000000b0076c6d91d293mr11838245iod.2.1686254838828;
        Thu, 08 Jun 2023 13:07:18 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id k8-20020a02c768000000b00416650ba62esm476861jao.76.2023.06.08.13.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 13:07:17 -0700 (PDT)
Received: (nullmailer pid 3317123 invoked by uid 1000);
	Thu, 08 Jun 2023 20:07:15 -0000
Date: Thu, 8 Jun 2023 14:07:15 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de, Michael Riesch <michael.riesch@wolfvision.net>, Robin Murphy <robin.murphy@arm.com>, Vincent Legoll <vincent.legoll@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 22/25] dt-bindings: devfreq: event: rockchip,dfi: Add
 rk3588 support
Message-ID: <20230608200715.GA3315970-robh@kernel.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-23-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230524083153.2046084-23-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_130722_364821_583493DE 
X-CRM114-Status: GOOD (  16.67  )
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

On Wed, May 24, 2023 at 10:31:50AM +0200, Sascha Hauer wrote:
> This adds rockchip,rk3588-dfi to the list of compatibles. Unlike ealier
> SoCs the rk3588 has four interrupts (one for each channel) instead of
> only one, so increase the number of allowed interrupts to four and also
> add interrupt-names.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v4:
>     - new patch
> 
>  .../bindings/devfreq/event/rockchip,dfi.yaml       | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> index e8b64494ee8bd..4e647a9560560 100644
> --- a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> +++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> @@ -14,6 +14,7 @@ properties:
>      enum:
>        - rockchip,rk3399-dfi
>        - rockchip,rk3568-dfi
> +      - rockchip,rk3588-dfi
>  
>    clocks:
>      maxItems: 1
> @@ -23,7 +24,18 @@ properties:
>        - const: pclk_ddr_mon
>  
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 4
> +
> +  interrupt-names:
> +    oneOf:
> +      - items:
> +          - const: ch0
> +      - items:
> +          - const: ch0
> +          - const: ch1
> +          - const: ch2
> +          - const: ch3

Names that are just an index are generally pointless.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
