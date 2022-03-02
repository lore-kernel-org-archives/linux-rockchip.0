Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6E62C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 09:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrS8wXHcgK6NtbL0Ju7DtlhO7aeUhU7bWT8EPzrELIM=; b=fOgI6/TxfIcius
	C5jOv4eaREP2zeoYLKogY3d9NNjZtOks477Ouk32CxUKsab5WbDQ/V3W6pkio/4y9GNZmA3DbTabB
	SrVTrUAmgJcUmOOaMFuASTo8aqggMz8YCV5nji6PlxSlqD8VkXv85+cM6F174VivuPkh0B/HWe/UF
	cx91uw92xUH/TIE3kkTeJLRD4Tk3/JkTS01C9bqvLe2LKtrN52nAHf6BY6izgzRk17ELgRzKQYEd0
	ZX58nhkrKQItEYZf6f8U1DJwgdg1FAbFW9SGlCzUng5Y7si6tDWaJRCILDICVGXHtE0d3N0NHX0Ol
	zT4MTYdjWOPPs5/5x5Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPLZP-0026c9-DG; Wed, 02 Mar 2022 09:46:55 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPLYy-0026Ng-Vu
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 09:46:30 +0000
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A30E13F221
 for <linux-rockchip@lists.infradead.org>; Wed,  2 Mar 2022 09:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646214387;
 bh=/i/Tl5JDYxHy1DfeqPaVUUr4WPXCyRWi21gK1tt8oLA=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=h4VG4EUq7gTTjNBOvCWZtZFxSWcYdzE/vIXT9IS+ITbtwYdBMni04AFRP2jFVy2FN
 AuzG8qa/8/ud0pz/GVbCLLAUiAtFObw/HtFFF6WUYs6vXgoNN1xYJPyDa7UKWrsLvL
 LBpRkh7x8ErPOyIktIW/QGpV1AncdrDrII2nZm0XSkmBag7YrBblc4xO1V7Mbreg6N
 moQDiVi86nMZnhJIM+pLEQywWdxwFAzvs8w8XoVLzyB1nqmrDsqMeum+mL6kYORUCD
 8bVqst5Vv4Leq61WMBd4eHdEXu+cULuxSQ/2LeP8qEz3kZWIU7L5ArHEQR0eERHw/V
 JXp8N55meGM1Q==
Received: by mail-ej1-f71.google.com with SMTP id
 nb1-20020a1709071c8100b006d03c250b6fso704503ejc.11
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 01:46:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=/i/Tl5JDYxHy1DfeqPaVUUr4WPXCyRWi21gK1tt8oLA=;
 b=cTbFHQCun9oRMY6A0ZoNt0ese3X7uzfd96v5u4pXyT1WREPN4Cl3ZeOTaEpCnAa2Wy
 nHqBVZvoNOM7dTkXI65w/2I55ipWHWrnI0SKZKxvULsDjpc6scc0Leh4oWw3j+HQUl9q
 BlXD9XK4M7joUHSo0opBkdYpGm9UzqwSM22kgCMbOxa6IQwP8fswEkynsmE1v9n4L33u
 0GOi6BRqWhOSnwU8YwshiqHFgurkKW0jRgvO0bvyAQ/Gvmm9DRQreu+vYvYrsxVCA0V1
 +JfcyhmqDf2e4L+YLw4KiaajYvZNGWpnUFmOPkZA+53JaT17+WpKgKzvMKWb5cLv+Eho
 1uAg==
X-Gm-Message-State: AOAM530WfgZ6U3N2ACpJchNPLtl/OdkhuUSqZV1RsdBjRsy+yd6YAY/M
 pL/5CDWbP0Bo0nha3VVyZ4zr7jqmZWd749msvfUjJjTWxUtxvO2wlMj4tuNYcv9v6dOZIy/pqfn
 PnqfoKVxVmGQytAW6q11Nfys6hsEFhaG8OVI6EpxuJfLl1F4tbg==
X-Received: by 2002:a17:907:3fa8:b0:6d3:477a:efe with SMTP id
 hr40-20020a1709073fa800b006d3477a0efemr23515482ejc.401.1646214387402; 
 Wed, 02 Mar 2022 01:46:27 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyPOkiH4a9QCn+Wd7L5hlKw9lulPSI6MAqtbvWliZVQXaUWpoXaMt7gC/299TK5aFIrth7zTg==
X-Received: by 2002:a17:907:3fa8:b0:6d3:477a:efe with SMTP id
 hr40-20020a1709073fa800b006d3477a0efemr23515473ejc.401.1646214387252; 
 Wed, 02 Mar 2022 01:46:27 -0800 (PST)
Received: from [192.168.0.136] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 ho12-20020a1709070e8c00b006ce3f158e87sm6159767ejc.2.2022.03.02.01.46.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Mar 2022 01:46:26 -0800 (PST)
Message-ID: <16c07205-cd2d-fb9a-771e-7874a568026c@canonical.com>
Date: Wed, 2 Mar 2022 10:46:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v4 3/5] dt-bindings: Add power-domains property to
 ahci-platform
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Rob Herring <robh+dt@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Jens Axboe <axboe@kernel.dk>, linux-ide@vger.kernel.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
References: <20220301152421.57281-1-linux@fw-web.de>
 <20220301152421.57281-4-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220301152421.57281-4-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_014629_203966_4572CE80 
X-CRM114-Status: GOOD (  13.28  )
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

On 01/03/2022 16:24, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Some SoC using power-domains property so add it here
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> changes in v4: none
> changes in v3:
>   - new patch
> ---
>  Documentation/devicetree/bindings/ata/ahci-platform.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
