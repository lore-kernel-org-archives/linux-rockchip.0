Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3BA9C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Dec 2022 08:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2HpZiuxazLCNAuAR2ox/xtjLsQRFy0spd1hAqigE5fI=; b=ll5BD5AWYmxokY
	AZkdTfH2Bn9jL6n06WpMqYT9bpXO9v9DUSPQ00T9nRKEZOr5Pf0ZLberbpzH31nbdIZz95F5DCoEl
	xFoyDpPl1uLsvRsyqydbZdG9pQ18hPwqZmOAwSvyNB0za8rgoEv/E8xzZvzTu0oqKUs4OX1S8wr2A
	/eW/VuqJYdAcO31/R64vs+MMouF2t4V8a10MA4EVduoijkzmR2i2iWsfzwo2KpsioFLUUhYieBScb
	iaJHNWLLItnMjqA0cpuQ08A3Vbx805oqpj1SKs0LRd+EOiOV6P1hxi9ppDUGDq4Mr0XeNetlcdKsd
	ivCiRovlbrnmfkaH0j6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAoVR-00DpjK-PH; Thu, 29 Dec 2022 08:43:17 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAoVN-00Dpdv-Gz
	for linux-rockchip@lists.infradead.org; Thu, 29 Dec 2022 08:43:15 +0000
Received: by mail-lj1-x22a.google.com with SMTP id f20so18789417lja.4
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Dec 2022 00:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nw6Uct2xEoCrpgNOW52yhpC+6eWgh3FH1ea9ZVctRno=;
        b=pCEbAz0T1XglJBlSXuxTbjrwiv4wNCqyqHaBl1cOgxC10WIhJUx1XqILAymx7HuKL7
         YEirVgRe2/THfR1kO517BhOCIMS+PAEtVjBc4YNbFiofwma/9gT8KCWra1vU9uCvIC0n
         mXx0nvisliErqfV8PaeB9avYKzMt0Fb6GjUP1Oxh65vFUX40XpReTzIY3Dp41IFwmtDv
         Bu4MUCYmpUSGxfTOpb2UAgTtg/VBNJ6PS6XbPqMunEsBX0Sy8WoX5r0OnW22IupWT0Wm
         m+T9P+udIGI5H6sI4kE0k48FkYlopTBUBREA8rySzIwdMBgtRUOCbaDOc3ffNgts9p79
         DN1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nw6Uct2xEoCrpgNOW52yhpC+6eWgh3FH1ea9ZVctRno=;
        b=FE8IIaemomUKRQnlEn8NobDQnNG8sxiTvoh6WUn7aiSaxZVsrQhexrrsZPoFuhgm3B
         OcGuFX7Qfh6oJ+a2kb7bjAKasTnQ4An8hM5XNbpq7yQ652PXJLPp8GHDV4Z+0e6UksdS
         ItnubqjqEiTn7y1PN3+MYDeYIFuqNwq+eZ8UZxCnyaP+URuORIeZuUTbVK6/AMPvLhhZ
         vf2iMEgyiEhVzlziy4beYjs92lRbPBlRa6IVM1gXS6GwTI5ZxPEwxdDde8XiAMoQ2wzP
         W/UdcwB2K7TL0ftWdHIbBCQWSZ8SRnZXCQbtBRm2LQV6wWOUmADLeT0D7xOEVQqMyLFe
         bUTA==
X-Gm-Message-State: AFqh2kreZoSQWNEQTgrOLsajGmjVjCE3MK7Gh5xgz/t/169LRLSsgVAk
	fhC5Vu/04mL46OzRQOgxvPa1Bw==
X-Google-Smtp-Source: AMrXdXuuazk2ZVLVLqbx4q6boiXtVROmzLgnwiJeIj7jTd31t+WbE4I92u8Xfu1JSmorUwKMHbVB9Q==
X-Received: by 2002:a2e:a234:0:b0:27f:cdec:38be with SMTP id i20-20020a2ea234000000b0027fcdec38bemr1652357ljm.40.1672303387661;
        Thu, 29 Dec 2022 00:43:07 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id r8-20020ac252a8000000b004b54ca56cf9sm2984212lfm.303.2022.12.29.00.43.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 00:43:07 -0800 (PST)
Message-ID: <95068572-51c3-4caa-7df7-4d3303c5182c@linaro.org>
Date: Thu, 29 Dec 2022 09:43:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v1 1/2] dt-bindings: phy: rockchip: convert
 rockchip-dp-phy.txt to yaml
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org
References: <5fa3aaca-4e49-8baa-68c4-2b3981400d3b@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5fa3aaca-4e49-8baa-68c4-2b3981400d3b@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_004313_604678_FD48FF41 
X-CRM114-Status: GOOD (  14.50  )
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

On 28/12/2022 23:01, Johan Jonker wrote:
> Convert rockchip-dp-phy.txt to yaml.
> 
> Changed:
>   rename file name
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/phy/rockchip,dp-phy.yaml         | 41 +++++++++++++++++++
>  .../bindings/phy/rockchip-dp-phy.txt          | 26 ------------
>  2 files changed, 41 insertions(+), 26 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,dp-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,dp-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,dp-phy.yaml
> new file mode 100644
> index 000000000..73f75ab1c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip,dp-phy.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/rockchip,dp-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip specific extensions to the Analogix Display Port PHY
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3288-dp-phy

No new compatibles were added here for the last 7 years, so it is safe
to assume none will appear in the future. Use the compatible as filename.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
