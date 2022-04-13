Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA7FBC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsxrrHKJl+t5R1OChArz165YCTd5kvkxJ7/LVgGuTVY=; b=mAyrNQleCfg1qd
	OG4o32tRe8b+Ecjqm18mrzPjtuyNMrVpxiQY0NhwCa5hjz9s4QmnxMoQr9NJtUjBJbh2d83BzrJom
	QKzWENsNSAoE3KkvZWjJ9n+iTVw5KcMy0mTr1j3BCURgtvzIQLlqkw6OCCTyiFA+j8uKls5Mzd84A
	vLN6Zlv9Qu9yFFJZcktJVVM4Dwg54a+6DFhhBdFq/KdJ8w22oOLCeU/qrHL9gtpcenVOhzyHyGYqW
	1ydAFwoJgbSyMP30J/oWCnsrRHuQpMuzBY+r+tZI9VeCk8BNA/GvYFOUnBbLaLTepI9hmkMugYBGP
	bpoIIC6QqBP4IX8Ti9/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiyE-002ZpO-Iy; Wed, 13 Apr 2022 19:48:06 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neihx-002SkF-Ki
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:31:21 +0000
Received: by mail-ed1-x530.google.com with SMTP id z12so3683507edl.2
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=frTEyC0/+CfTIF4PYPNiHQ4Gsfm5fIkYJSxFNrCEuso=;
 b=USSnSZtoD5qwvH/yvxHC79p7rIcFBfYSAwCS/8l+UAOQVYZUKJ+vDuBaAJB/nJmEPx
 g7xJs94b53G9SqzrTEyV7LiPRqY0+FlEUHXsFaG0byJs5XO9935tw+7S/EMAJuTtQhFu
 VjfWoAx3Fgh06C/08DWnLONaqlnuWzNwZGJHbJI9za5M55H9pRP/jioGj6z6SD5mSuf5
 OhqjpbUnqQeW/s2ZVSve+5lCImK8h2qDomy0YIMCtTsk3zqfpMMDy2LoFmTLoUjvNvp4
 WpBvZbIOz7I46fmHuumVjEpqpu1SEQkwedZ3gusL5+0cPXdh1QTDfn/NzBsWi6w2TCm3
 pPRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=frTEyC0/+CfTIF4PYPNiHQ4Gsfm5fIkYJSxFNrCEuso=;
 b=kF+PxgX78Alee+hF3fsilDuZJb4buSvCsU146+tC7M9qNCvYUY9O0XKPNzDnENjPnw
 nd5AW332AcSuoUQBJBlKI4PlSbJJlK8Z6ToMzNd59keYsv3KVIgDDQLar7QNsuZDfxug
 0jwD7J0It2ZFNhIjJStAE2ahtVpTT9yTaawiD/6pJPqLlHsYgArbufsC5Duv9F8B6QTi
 oQeACQS+bSlad+mwM8MVfHD/Hi/KuBwlLxUGDdnu50LWTCGihbRK3w00ZoP+TfXVkeTP
 vM0wTNjwojREop10oR3ZIgQs4hqRp7CX/bAeVdGl5NxokQ5Hr8A2i1JhWkd7RzKHRW05
 Puow==
X-Gm-Message-State: AOAM532YQP2KnHG6jjNtIxnGXgG/PSv5GxodFL0FWXeuDJPE7c8n7ygj
 Q3nGk1Ap2Gx7TbaN4SFHg10GLg==
X-Google-Smtp-Source: ABdhPJxCWuXB+xuTb6sKG9nbhRjhHzVASERrwIqlT8IubgeDh/aIhOShiVtJmLn6LiaKB+HEOkgWow==
X-Received: by 2002:a05:6402:5250:b0:41d:8556:4191 with SMTP id
 t16-20020a056402525000b0041d85564191mr14027035edd.269.1649878275612; 
 Wed, 13 Apr 2022 12:31:15 -0700 (PDT)
Received: from [192.168.0.207] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 e26-20020a50ec9a000000b004193fe50151sm1584782edr.9.2022.04.13.12.31.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 12:31:15 -0700 (PDT)
Message-ID: <44efe8b6-1712-5b87-f030-2f1328533ee8@linaro.org>
Date: Wed, 13 Apr 2022 21:31:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v5 24/33] dt-bindings: crypto: convert rockchip-crypto to
 YAML
Content-Language: en-US
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220413190713.1427956-1-clabbe@baylibre.com>
 <20220413190713.1427956-25-clabbe@baylibre.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220413190713.1427956-25-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_123117_759226_82AA4D21 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
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

On 13/04/2022 21:07, Corentin Labbe wrote:
> Convert rockchip-crypto to YAML.

Thank you for your patch. There is something to discuss/improve.

> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3288-crypto
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    maxItems: 4

This is not needed and dt_bindings_check should complain.

> +    items:
> +      const: aclk
> +      const: hclk
> +      const: sclk
> +      const: apb_pclk
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    maxItems: 1

The same.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
