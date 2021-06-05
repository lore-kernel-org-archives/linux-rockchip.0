Return-Path: <SRS0=rTbS=K7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D7FC47082
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Jun 2021 20:31:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8176B6120D
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Jun 2021 20:31:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8176B6120D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hkxmvQygbehoyJNuTnpMrjgy3cEZn9q0cfCNXBP7Hqw=; b=0KbzB6zr6kq4LmYZIVeF8NSkhR
	ha8RWxj6Oo/mOaXJFwnzDmm/rLLEtc5/5JkG2EqBdn+hOupl1K3n7zMitAL52hLVzQqwj7+ymLtuL
	U1C7KHfBBWO1ASzQvZV8f/BFonWfc+jM7B7ZrUkBJRQc1LDjfP+StsVOQaiJW6cJQIEhrStj4X6+i
	xuiIq3rNmd9CffLidsUlpelaYi+koe34eV9ScxGvLNWINNCchqs+z+ZKsEugZPQ+b1J28VulEy7vd
	ilEL49/EzV1S7D7gkb7xwBbPjrUFjknBpKDJkJTX4Pc7pxi+FzMi5FhaSlLGldraZlF6L8ejZShmS
	PP1PUPAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpcxQ-00H3oP-A1; Sat, 05 Jun 2021 20:31:48 +0000
Received: from mail-ej1-f47.google.com ([209.85.218.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpcxN-00H3nR-Qm; Sat, 05 Jun 2021 20:31:47 +0000
Received: by mail-ej1-f47.google.com with SMTP id k25so14384411eja.9;
 Sat, 05 Jun 2021 13:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Bg6i0ht+HMTqf2MEiGJ2dT2cOYKn1ScteYwQvOOu/BI=;
 b=KUfurtWGI2CyAvYaKYNKXA8d9YImp4I9JoHKPCJcuGmUi50loiQJ/8hCJB9oWbsuSi
 Gx4Wpl/gLbZqOdtVXhMBSGIHxS6EPV8ha4GsaWyHjPeVQM/Vo/QfWTWHjOH4cuytLG3l
 2O9+qO1JZ9eBTz3CHAZW6hQDOQOtyQAc9Uo6h7t+nuUv8gIe3KF93ItkfrrPlUxyjB0j
 p9vIaQwTos5HvIBa8/UFsyycvsJwfc44mEkkqlhlb9mh8noe1mNRB5XGV9ktOZUSq5Iq
 5XA8PCp7xdcuxR+KP7Er66G2zlEXwCmIB14LRo3w1hZ//kAxKdQLtoioi2KR/8Gstq7C
 nF1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Bg6i0ht+HMTqf2MEiGJ2dT2cOYKn1ScteYwQvOOu/BI=;
 b=KEm68f0NGSZ/3raPgdOCw0UnrdbANC79I4NvbuvbE4g8Rfzzxyhf3w4lXm3ayTWeCJ
 xo5i6oE4UrLfR0vFy97CkVCa0Ayq162B/1xNdkHITeb3M0K/8Ybx2pIzTuDKs4+B6gm3
 VdNFNG8jPtZpbyjs5KzpCjZ2y9yaM3Plk8ImLajWojibz6G7EnSNpwMAxRxh2KI1FIaW
 NJwS5Mf9xrDR2VN7GmnGU4ODgVAh/3CcMIUFL8kn5FL5UuawIt5ISTrwy/bAM1neBqR4
 SvDTRVyyG8D2s1vadUT+gvrZwjsBwrSMAVfh6uD9TWLIfG2geMQj4hCj35mi3kKFv3Uv
 0DHQ==
X-Gm-Message-State: AOAM53329jjeB4cmfAmqp4GnVq9HxP0UbSDr1tLOmBGQcZB6ESngJbMx
 dAemxRjQC1Ep7zo1lm2E5WU=
X-Google-Smtp-Source: ABdhPJyEc3sDGxfTIsX3mhX+VIkW45KefcxZqIhQFILfxm9/TYUXTvOkLL/THitEgVSj3veLwgE63g==
X-Received: by 2002:a17:906:9512:: with SMTP id
 u18mr10463117ejx.61.1622925042740; 
 Sat, 05 Jun 2021 13:30:42 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 k21sm5301351edo.41.2021.06.05.13.30.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 05 Jun 2021 13:30:42 -0700 (PDT)
Subject: Re: [PATCH v3 3/8] dt-bindings: spi: spi-rockchip: add description
 for rv1126
To: Jon Lin <jon.lin@rock-chips.com>, broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@esmil.dk
References: <20210605094659.13507-1-jon.lin@rock-chips.com>
 <20210605094659.13507-3-jon.lin@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <4d60a524-5a54-f972-7605-25db3b825cfa@gmail.com>
Date: Sat, 5 Jun 2021 22:30:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210605094659.13507-3-jon.lin@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210605_133145_907073_AC0090A4 
X-CRM114-Status: GOOD (  16.77  )
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

Hi Jon,

Some comments. Have a look if it's useful.

===

In order to get this patch reviewed by rob+dt you must include:
robh+dt@kernel.org
devicetree@vger.kernel.org

Check your review status here:
https://patchwork.ozlabs.org/project/devicetree-bindings/list/

Get the other lists and maintainers with:
./scripts/get_maintainer.pl --noroles --norolestats --nogit-fallback
--nogit <patch1> <patch2>

===

Please try to order patches like:
(1) dt-binding - compatible addition
(2) driver patches
(3) devicetree node patches

The script below gives a warning if the wrong order is used.
./scripts/checkpatch.pl --strict <patch1> <patch2>

===

The [PATCH v3 2/8] has duplicate Signed-off-by's.

Signed-off-by: Jon Lin <jon.lin at rock-chips.com>
Signed-off-by: Jon Lin <jon.lin at rock-chips.com>

What has changed in version 3 ?
Maybe add a cover letter and a change log too?
git format-patch -v4 -8 --cover-letter HEAD
===

The commit message in [PATCH v3 4/8] has to many "applications", so
maybe restyle a bit?

Add compatible string for rv1126 to applications for potential
applications.

Adding "rockchip,rv1126-spi" to rockchip_spi_dt_match[] is strictly not
needed when using "rockchip,rk3066-spi" as fall back string.
Could a maintainer advice?

Maybe this bug of mine should revert too?? Or is it legacy? ;)
spi: rockchip: add compatible string for px30 rk3308 rk3328
https://lore.kernel.org/r/20200309151004.7780-1-jbx6244@gmail.com

===

Johan

On 6/5/21 11:46 AM, Jon Lin wrote:
> The description below will be used for rv1126.dtsi in the future
> 
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> index 1e6cf29e6388..4ed5b72a8494 100644
> --- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> @@ -27,6 +27,7 @@ properties:
>        - items:
>            - enum:
>                - rockchip,px30-spi

> +              - rockchip,rv1126-spi

Sort alphabetically.

>                - rockchip,rk3188-spi
>                - rockchip,rk3288-spi
>                - rockchip,rk3308-spi
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
