Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B640C47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 09:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GTkqY6cDf4t8hxvkdqvZJ4JmOWFYjqXn8bC+O8sZQGU=; b=1JXx8+O8tTE1Xb
	vbn8Cmt/2hNk/J+l0uG5J4zS6SAjmxbn3sC+HKkH22ilIqkJCxDzCbmSQl98aoLMsI7uGAOivMFLh
	cKxELI+G0w4TgsMrVYgTAdGWaXQ4mcX47MHrI90r4fvxtydCJQMrN9pBPGFRFUKc3NTwOMRUSdeYW
	+jX5vhNemFP2chRc5Pj+LYTs5Rt0SXHGj1j6AVNlMQHnygxFJgelG1MNcKYnsiI4vDTE3mIqnljJx
	HZb/4vj2iN2yrq0BmLig8TJsuSs0W/wowhv/fkzqxsiDdbvK0miqfdX3qCb1tHzJ5FT/pvO/tBWwx
	FjAIIVQyTQJ+irpOyyPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSCuj-00Fiiv-0p;
	Tue, 23 Jan 2024 09:17:49 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSCud-00Figm-2o;
	Tue, 23 Jan 2024 09:17:45 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-42a4516ec46so10401061cf.0;
        Tue, 23 Jan 2024 01:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706001460; x=1706606260; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GzglcH35XgEgzjcM+iTOVxrutqyTzniZylIALLpAyoM=;
        b=G0UbdLnFcxVQJnxmfIbVQ5PZyGGzzkJLcwphSKVI4iveGruFlr4a5vRoB4tF4+80xM
         RUAVQZ139akI9I6fDE02tJaYqU1V6RG40jV0UMWGOA7LzyK98C1sXadci1Hg3xVP3KQK
         PyX7i9ibDT/Xcz04xUp7LDU84Kihm0e4SeVoNLPTgRwmzauHheDOueXdMCt1mf3Ypy/U
         CVdd1aDIaHBDS8XpdZpSkBiF8xhnWtooTeC8cq9/YyTAalSXJESDM9bYOiTIyNGjDEaK
         1OhnbysTox/UnfWgs2fgkk+XqYY7UWgvky8/WkJxvQQjgBYJ4WP7vzx7inFRxtGhCFjN
         escQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706001460; x=1706606260;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GzglcH35XgEgzjcM+iTOVxrutqyTzniZylIALLpAyoM=;
        b=Vi80AI7OU43NwZE44yhTNFwpSK2m55Rfq+KI7Q8UKqwtbwiT1H1wMg/0krjG/G6YNx
         DWnCe0gLGkzXRyKkAMAdtK0BLNFTGIrsr8uKLKs44IzAxegdGO/uBn1OK07gV2swWPcb
         P8E+/g4XmqAwV20af92RPgrNXaWXk45dlo9wRX94z42Ln0Jtgx/22rTKMtad1+fzDRav
         tKU7Og0Llp0fkcr+KmKlFrjJTYSuc/2sunw3BPkFifsdSgoQslEKZPDyPvIT0G/UgnHt
         Krr31HkZourDc/kjanpZauiGt33c9lYJaZ+ndP58/Bwl+A1SbNohjtgsUBGoS0PHzFUE
         NdhA==
X-Gm-Message-State: AOJu0YwzXtV5IVg+FF3O+1oOqF9WMnahd5U3KcstFrISl7+7MxD6pmLk
	lnJ3lhyXBFSbYJFG1xRfsAqmrUtLm8Wyxj9SxkqCvPXeKqJz2Xnq
X-Google-Smtp-Source: AGHT+IFP99noVGNs5k8x7SiXWDJAZps1vtBb7C4YIjCpzV+1Xr4g+TxvvaMFFiTEe9cvFfjnAEkZYQ==
X-Received: by 2002:a05:622a:15cf:b0:42a:54cc:dc45 with SMTP id d15-20020a05622a15cf00b0042a54ccdc45mr44481qty.50.1706001460373;
        Tue, 23 Jan 2024 01:17:40 -0800 (PST)
Received: from [192.168.0.5] (cm-83-97-153-254.telecable.es. [83.97.153.254])
        by smtp.gmail.com with ESMTPSA id dn9-20020a05622a470900b00429d03916b3sm3347150qtb.76.2024.01.23.01.17.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 01:17:40 -0800 (PST)
Message-ID: <d6fc0ad6-ce20-4604-89e5-2598dc3fc0a6@gmail.com>
Date: Tue, 23 Jan 2024 10:17:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] spi: dt-bindings: spi-rockchip: restrict num-cs
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, broonie@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <acc4ff4b-811a-4a6d-8f58-9d8da3be40bb@gmail.com>
From: Luis de Arquer <ldearquer@gmail.com>
In-Reply-To: <acc4ff4b-811a-4a6d-8f58-9d8da3be40bb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_011743_906186_F6B63404 
X-CRM114-Status: GOOD (  13.44  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 1/22/24 23:59, Johan Jonker wrote:
> In the driver spi-rockchip.c max_native_cs is limited to 4 and the
> default num-cs property is 1. Restrict num-cs in spi-rockchip.yaml.
>

Doesn't num-cs include gpio chip selects too?
I have a setup with num-cs = <12> which uses non-native cs-gpios just fine

Luis

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>   Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> index e4941e9212d1..00d555bcbad3 100644
> --- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> @@ -65,6 +65,11 @@ properties:
>         - const: tx
>         - const: rx
> 
> +  num-cs:
> +    default: 1
> +    minimum: 1
> +    maximum: 4
> +
>     rx-sample-delay-ns:
>       default: 0
>       description:
> --
> 2.39.2
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
