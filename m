Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86A88C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Nov 2022 12:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pAJZq6vRcoODBjd/UYTfUzYcXVCc1dpxfiwM9OobFA=; b=wTqDgrNiGY1YTu
	kxhSNVozaOh9dxrPZNCjqhQk26bsAeeltYV67u3RsufsYCATFpVGZh0dgXaO83muHxIzr5GIGqqwz
	z5bqQcHbDZANlV5cscuG37pfV7bixP+aCcNkwYUt1F6yTlYGkawz/bvsBUpeb68IMQeFJc6PxmjD7
	fLpUIk+0egqKRPUCOG8v8BamRslBvegxoYOH8en6Z9sGOqSUMyho+s7zvJlG6ZwnnQrHwY9pinMoO
	R6uqGa2xlfAMbdkx70sMgPOzjv1mraIijADc9yHEFcJuYZmMlKnBOWIuAoai8ca415kUHKVcAXQUG
	6Ngo452XmVQL3k74VEwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oskIH-00DPw2-Bi; Wed, 09 Nov 2022 12:35:01 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oskI6-00DPs2-U7
	for linux-rockchip@lists.infradead.org; Wed, 09 Nov 2022 12:34:52 +0000
Received: by mail-pf1-x435.google.com with SMTP id d10so16553361pfh.6
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Nov 2022 04:34:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1SRVYqSw1BlyTAyOUO2f9GyvglFpWlLdZyegiX8i2LY=;
        b=dxSmSUsBhp39mrZ061eGA6D6c6fiSbuNin5eMh/mkBjQ5eKP1HYDVxdMwBFWoU6PNo
         OPzKJfs9CxBO/3/tZ0+ERFuvyVfx/HEhBECt8DWpzQeiEi7amB7jf1l8lNsx1rzbolQv
         fuJJ51aMO4XcN1sjuoFQB0lROYQ9jDXpplAXAgWR2QhgLK31OVx8wZcwkF42ZXfcNAky
         SG2+fgw79mWb5ss0wC+WzBxugRqzlLRbm40BBCBJykNJn9iKoVm0TJXpeQE+S0SnIv+I
         MTPVSvPpgJPxi7bK8Pa/WAILVdpnP8mkD9zflfoY3UC4BsBRshYDtL0LU/a5UBR5ge8j
         iWRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1SRVYqSw1BlyTAyOUO2f9GyvglFpWlLdZyegiX8i2LY=;
        b=3wsNiaE/5jnWOhR6gatTVeHeFjyjtn5wdJG6tYHhlkr8YbndCOCnIMRwdfdvoESje3
         /mnl0z3Ks3zykxZBSPwd3st2KcRamQcSt/j4x/qMOZgfW2DtWj2LZemL43jRdHv5d7hZ
         5I6sIwZhnNrOH2nlkLp8BpQO0mYaJYrp1v3TlC5PKnaua21+LXgg9twHlC4M2IFtEoK8
         ioTtwBhqsNG5qENlvokHYIc0bvI0d6x6itYC3s2C4f/GoxDZplNx2dZDDjEu6i1tYxx9
         cPErmbwfjET0fqlZSx+tVUxMx/JW4Mq8+C3e1VO9GBc2M6yS1BduXO7pZ2ZLiU41ksuF
         v5iA==
X-Gm-Message-State: ACrzQf1Kc9h/9lJKUc4UMkgtmwCDG64+nc0xj271RHOtbmHTMpht+m0/
	ODs4pxQAfMca9yYZA6RxIRM6rkEorh2AP9ewKJSjtw==
X-Google-Smtp-Source: AMsMyM6ZU5ESHEtxsXXMaDBmFrcveCgizXWWxdQhAFHhVPogn1qvvU/1SmpprSects1Z3ISdUfIsH/Qg9cHrgi95DJo=
X-Received: by 2002:a63:464d:0:b0:441:5968:cd0e with SMTP id
 v13-20020a63464d000000b004415968cd0emr53525795pgk.595.1667997285975; Wed, 09
 Nov 2022 04:34:45 -0800 (PST)
MIME-Version: 1.0
References: <20221108041400.157052-1-jagan@edgeble.ai> <20221108041400.157052-3-jagan@edgeble.ai>
In-Reply-To: <20221108041400.157052-3-jagan@edgeble.ai>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 9 Nov 2022 13:34:09 +0100
Message-ID: <CAPDyKFqtgSedouQKMkk0YfwjP21fhyJDwBQg8mhfP4nRY0fEhQ@mail.gmail.com>
Subject: Re: [PATCH v7 02/10] dt-bindings: mmc: rockchip-dw-mshc: Add
 power-domains property
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Johan Jonker <jbx6244@gmail.com>, linux-mmc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_043450_985651_CBA2039D 
X-CRM114-Status: GOOD (  15.17  )
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

On Tue, 8 Nov 2022 at 05:14, Jagan Teki <jagan@edgeble.ai> wrote:
>
> Document power-domains property in rockchip dw controller.
>
> RV1126 is using eMMC and SDIO power domains but SDMMC is not.
>
> Cc: linux-mmc@vger.kernel.org
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Applied for next, thanks!

Kind regards
Uffe


> ---
> Changes for v7:
> - new patch
>
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 95f59a5e3576..c7e14b7dba9e 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -71,6 +71,9 @@ properties:
>        to control the clock phases, "ciu-sample" is required for tuning
>        high speed modes.
>
> +  power-domains:
> +    maxItems: 1
> +
>    rockchip,default-sample-phase:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      minimum: 0
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
