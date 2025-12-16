Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3C7AD5C0F2
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Dec 2025 08:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oQv/Rau/PqH+6nMDxbZU4wP0HmBRYF1HxWdU35d7lTA=; b=gUaFPniLbKSkjx
	7DZwWbZM5NP+YstN0dNfR+7jC5e+4Vvh9xyZpYAYjMJe5c/Jcb9WbLuBzUXoVSJKFQDsuVOkeXhWx
	4xm0qLlygtEBEOvCs0bfH4Ys5WUtXMwh9mThRzpK+rQ/2QZn0aLEJ62Odk8c5TVMDRcupmbzgz0bx
	aQuBEcranmR1u+QmpRcNT/1+sv3YuYzt6c9isfJtE5/FFGFCa+UY1C5Ngtl8k1Kww4optbyWBpQP+
	2W6W6J5m4bJJNKcKQ597H76kDhAEHfehoaJjnGkmUoRGHSYLoPp9+nXi3K8DdNLpTOZMxViOJwsIe
	hGFuH7mtEdLsbOvgQu5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVQir-00000004wq0-2IJn;
	Tue, 16 Dec 2025 08:47:57 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVQio-00000004wp4-2Nsn
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Dec 2025 08:47:56 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 5CA7B1A2220;
	Tue, 16 Dec 2025 08:47:52 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 30F5A6071C;
	Tue, 16 Dec 2025 08:47:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D3461119431B8;
	Tue, 16 Dec 2025 09:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765874867; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=gvNrMludRXxgFxLNR7QEWDmK9gJ2gERs277nXQ2+YGM=;
	b=DIq5brBRta/TiINKp4M5huv5tPncOYq/k/KPgcFh83dyP2Ff4kqo0PKdlyN64UzI9pD3Z2
	8hYV/UlhLtD+/+EvXp59CEtjCStQ/UYa+3ZDJYzkyLgHCNtKfesWi+elbS4dfSGE5YGoIm
	KOGOCU5nkjsP/9eg90yut6i1bZ5hN/oUpGIVZh/2Xs2t7T/SJkvmmKEZqWOiPz+TGHiDDJ
	/kouSIHSFYczWt9VOtzmBImKNghpe9lFF1DPmkAJuVJlUsNAc7Yj3y04u8E2dM8gDiVb4U
	HWHn8uXh7VFwbrM+P+jW+Bkzoj9xMP9ltHAy1h6iMOUO5GxjoVI63YjKJnB3iA==
Date: Tue, 16 Dec 2025 09:47:45 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com,
	linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: input: adc-keys: allow
 linux,input-type property
Message-ID: <202512160847455082a875@mail.local>
References: <20251215-rock4d-audio-v2-0-82a61de39b4c@collabora.com>
 <20251215-rock4d-audio-v2-1-82a61de39b4c@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251215-rock4d-audio-v2-1-82a61de39b4c@collabora.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_004754_736941_7250E5E9 
X-CRM114-Status: GOOD (  15.24  )
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

On 15/12/2025 13:29:29+0100, Nicolas Frattaroli wrote:
> adc-keys, unlike gpio-keys, does not allow linux,input-type as a valid
> property. This makes it impossible to model devices that have ADC inputs
> that should generate switch events.
> 
> Add the property to the binding with the same default as gpio-keys.
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  Documentation/devicetree/bindings/input/adc-keys.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/adc-keys.yaml b/Documentation/devicetree/bindings/input/adc-keys.yaml
> index 7aa078dead37..e372ebc23d16 100644
> --- a/Documentation/devicetree/bindings/input/adc-keys.yaml
> +++ b/Documentation/devicetree/bindings/input/adc-keys.yaml
> @@ -42,6 +42,9 @@ patternProperties:
>  
>        linux,code: true
>  
> +      linux,input-type:
> +        default: 1  # EV_KEY
> +
>        press-threshold-microvolt:
>          description:
>            Voltage above or equal to which this key is considered pressed. No
> 
> -- 
> 2.52.0
> 

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
