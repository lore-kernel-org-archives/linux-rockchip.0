Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93805C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 17:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jaTF0tq8WKwMX/8n5jE/TEbLIqz4TMul3p7EONFQ4+Q=; b=Lyr1aTmdMgnDDG
	y8x4CyzSrrOa4bFnh1MHnNvYjWI5fBS2mytOQ0FCVgx4Qkom4XSuLxSLMuvvTi6Uj3ijwIB87qyum
	2/kjaXQ9/1+nB2ZIlReKrJ2oenjrj9kixUjg/nIe9erEdZPvWqUEx/p8DuecGSxlPKiH9oi40aEIl
	5GqQurLyYtHpG9FlyMSFiFQCAvaqzM9IJtPUsXCnjh5OMaGjr2aS5zRzvafn75fJxlxtKo4oAldxX
	SgzZ7jRv9dZ3vf6Z1uxlN0vd9zNqm+4ESN4VrlnZ0TjnT9TaMkqjS1V1FeaArIuoSYVCPMpeNT+BH
	UvR2N/c5GG+pVNVmiJbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZcAe-00Gyjd-UU; Wed, 30 Mar 2022 17:31:48 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZcAb-00GyhS-MM
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 17:31:47 +0000
Received: by mail-ed1-x52d.google.com with SMTP id a17so25287586edm.9
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Mar 2022 10:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=uWiJ5wTJBkRDVa3V3iSD71hMD+u7SGSGGNU1kaA3NHc=;
 b=XbBkG/7QzLtqfCbO6qoOQnqerS4luZZqZXqgQ3TMMUZFnF7nLZ4Tbl/J0UDSfCY8X7
 bh46UvW84TSsUdYMtNyV8sgAvQEOFKSwgTaUWl9v6KHNr4GUQ9UvB5baZbHsdPxnqFc0
 IUWTOrHLPYlb7wc8lDZko39nRKTiPdyDvaTyKT1oMjjLG8ohzoW0tC9zqzb+AR3O/wlz
 kZdYEMxKC29kqqKfNOAaczKjsBXg64EcVpb6yQbxTRUPbNluZmLPjJIV3usEC4gjcVpV
 wxdfjIAC6SrRZbnb63U8CwI32A6026p4utgOEZIfxUXZt/Jg9fZI7grMdFf3YqSIjBqF
 82zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=uWiJ5wTJBkRDVa3V3iSD71hMD+u7SGSGGNU1kaA3NHc=;
 b=PqwKxao+K+qCBHlSIsvk5f9aI6Wksbh9Fvq7s6329UqFVjspOmKAKO3ImgzEmBfJXJ
 H59BuTdOJ29ut6DQ8sZZwzmGKksXcz2GAU49G1thKBZ1jD8gi1h+lpbBba+yShCWyezo
 wwZyADoilBZZbupPhFjOpqiN8o0++vhy28W6cxPST4z6EqS6GjhUWIFDFme/aHJcd1h6
 hzQ+hFucssJRuAh//btIpmOiwtXOoUdvJSg+PEPQb23YjSp6ZQu9PRhVL0Q29VLoSrIh
 1n2Weeflck9GsDVAro46G0kckNd82dLmUofZQNler2tgtOHXuTWwPVpp1ifQ93r8GBUl
 LqhQ==
X-Gm-Message-State: AOAM532b0yXshZsXv7dxh6OcxKWhZrGf6OkfD2gZVHGod4S5pJNBNVo5
 7cynUqC9dDKJcD/uHcnWVr4e3w==
X-Google-Smtp-Source: ABdhPJxfwO0A3/xw6jH/adNr0SESqdJ1bKu546BerqB4579YQ4KeyvjUiaoDmCqu5B77TuPrIJd/mw==
X-Received: by 2002:aa7:db94:0:b0:410:f0e8:c39e with SMTP id
 u20-20020aa7db94000000b00410f0e8c39emr11902523edt.14.1648661503756; 
 Wed, 30 Mar 2022 10:31:43 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 v10-20020a170906380a00b006a68610908asm8465966ejc.24.2022.03.30.10.31.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 10:31:42 -0700 (PDT)
Message-ID: <a7635001-3b3d-cc3c-c1bb-c081ee86288d@linaro.org>
Date: Wed, 30 Mar 2022 19:31:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 1/3] dt-bindings: clock: convert
 rockchip,rv1108-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220330131608.30040-1-jbx6244@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330131608.30040-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_103145_784432_081BC006 
X-CRM114-Status: GOOD (  10.23  )
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

On 30/03/2022 15:16, Johan Jonker wrote:
> Convert rockchip,rv1108-cru.txt to YAML.
> 
> Changes against original bindings:
>   Add clocks and clock-names because the device has to have
>   at least one input clock.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rv1108-cru.txt    | 59 ---------------
>  .../bindings/clock/rockchip,rv1108-cru.yaml   | 75 +++++++++++++++++++
>  2 files changed, 75 insertions(+), 59 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1108-cru.yaml
> 
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
