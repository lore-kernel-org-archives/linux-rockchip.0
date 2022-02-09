Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6C84C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 15:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IopmqQizOs+XosLnlmFBlV9LHG+8bMnjmC2Y4mB+s1I=; b=stt6Razl4WfPIh
	JRrSJeouC0SMv880KoY9vnNxqfkHC7Klhzh/6IqDvXcaPmqglnJcr3nbOX81iEMSuYeYZihGOPyHF
	Vwjh0PizzklPZBzEM53jo2AlVdz2k+6F6OObPpBErV25+87AsBB1IlIvDI3r7QOty4xtbI8jVPWWV
	9Pr4C3mDrd/k8BSrqvksR7bni2U1WT36kH6Urqg/o5N19mnPmVvG2LE6tHvSc3T72oReOI8GRq3ss
	+1dRPwD/1y91VWmSz6+JcdinsS/LIom1RGCBHUGoP8xbwEuIFxk50OCKFG6bWXRytShjVLhMhqoIJ
	kqt4gqxpAL900w5bsJag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHp1z-000cOI-Ot; Wed, 09 Feb 2022 15:37:19 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHozz-000baI-Rk; Wed, 09 Feb 2022 15:35:17 +0000
Received: by mail-oi1-f179.google.com with SMTP id v67so2802720oie.9;
 Wed, 09 Feb 2022 07:35:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=87D9xgRPVhpkd0CiBsmaPizvX+fSKhfflYptts+iImg=;
 b=sZwJlul0F3WuS1ak/45V2GeVqBAPQ7rEEzMZvwX98tOyKxV3QJ87mpj0SHJqVSpSa7
 jtwK2RXwenKOWbFadkHKuE/3CbVozkc3FPwJxMqq4FY08zavFBveXg96P5bjgpFl49l1
 58BqJKI4jI7nBnHyXqyxNzTLbdM7WpXwkjknrkSpmOP4jehcMFZmQxuUvCvTvjaXgpG+
 BPhnwXxF99FOhCIaGP0MO23ABCe1jnXHHL65gSm5vYb64Os7lAyVdBDdj+T3+/av5pqx
 U0/Qfz1x4GtG3hx0KrZJgaVTXrzcgPr0N/czvLc9rjpHg+taIfM7KBAgACPxTp8+0GK7
 qVPQ==
X-Gm-Message-State: AOAM531DTTD4Ux/rM8NIWfU5Xp8HxZVT5cqYfGJDr7n2fIU1/zn1AZNv
 gr0Bs4GOpYyFwRJYbP4c5g==
X-Google-Smtp-Source: ABdhPJyPtWLE9p5DCJLdWQMRseTeW96RxJVjhB+AI0HAGDUEn+OIKwknd3fnEw5Ei7fB18SrxNWNag==
X-Received: by 2002:aca:1b05:: with SMTP id b5mr1554068oib.289.1644420914112; 
 Wed, 09 Feb 2022 07:35:14 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id s11sm6498640otq.69.2022.02.09.07.35.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 07:35:13 -0800 (PST)
Received: (nullmailer pid 391815 invoked by uid 1000);
 Wed, 09 Feb 2022 15:35:08 -0000
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 heiko@sntech.de, robh+dt@kernel.org, linux-crypto@vger.kernel.org,
 krzysztof.kozlowski@canonical.com, davem@davemloft.net,
 linux-rockchip@lists.infradead.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org
In-Reply-To: <20220209124725.2080986-1-clabbe@baylibre.com>
References: <20220209124725.2080986-1-clabbe@baylibre.com>
Subject: Re: [PATCH] dt-bindings: crypto: convert rockchip-crypto to yaml
Date: Wed, 09 Feb 2022 09:35:08 -0600
Message-Id: <1644420908.395763.391814.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_073515_935266_E1AA3F32 
X-CRM114-Status: GOOD (  12.19  )
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

On Wed, 09 Feb 2022 12:47:25 +0000, Corentin Labbe wrote:
> Convert rockchip-crypto to yaml.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
>  .../bindings/crypto/rockchip-crypto.yaml      | 64 +++++++++++++++++++
>  2 files changed, 64 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/crypto/rockchip-crypto.example.dts:22.25-26 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:378: Documentation/devicetree/bindings/crypto/rockchip-crypto.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1398: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1590370

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
