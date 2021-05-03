Return-Path: <SRS0=lPHn=J6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00041C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 May 2021 22:41:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4940F61177
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 May 2021 22:41:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4940F61177
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S159g+wwDg9kGUNscgfom75AN+721zoDEgVydBz4iEM=; b=bOZZXv0+hbP1cJnQ3uxMOD6Lb
	FzXuoazgXtY4J6172PoMnauqusMdKkCg/r2EzGqH0deJu1LfuFLfdbX+4B29nY3tlXCU9mhcXJBbA
	U/vFra99FV3b4JnUYeWAKDUZj7d4u6nAgWeYxMzK8Tc9QcIzqAb9bN0yI3C345CSfxtVmTMKnHjur
	iBWyfd1aQpkkQGup2gQuLqwWV9DPnJfUpWtBMlJ0G5IBca7mntCk/OLd3ACJks2k2x9qx+et4nPD1
	eBp/MWyI9Jb+0oRBO3334sKqHj/syhE5pfBgqiMbKzcuHOhn8PdJwB5zqbafqzT75DYws8C6wts9A
	HWGQNLIMQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldhFc-00EwVC-3c; Mon, 03 May 2021 22:41:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldhFR-00EwSi-CI; Mon, 03 May 2021 22:41:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+FNJulhcXHR06uzoM7aGL9FTgE5UXKoFDdUbDg5KidU=; b=nL0D75il6WqqA3fmYftl/mvrY9
 ZQ5xYgnr8t26YP4SJLg44BmQmvpvceFBnUePK5U25GMq1JqQ0OS9VzRAFUTI8dkL5UQUUVEEjLtiZ
 mbMSoAlSs0eXZhBCVraBO9G18ufKr5Qjuc2I9gBqBA6iTWbU6ThTWkyqFub6bEPn6X/gkTaRdlA/G
 6sv3JjBtL9234Ula2RsEj4kyJVFmLtprFKlO4kdofAYgbmX8D6qPWy48CDVJ67bnzwsTVznNuZhoK
 fzxB+vDRQe1YnQ9HVcDf16wYKJYm63qqxA1flgb2XKJYYV8Hh40Svj3NVpTLnGHnb7c4BLzPRRRuB
 DARBmnaA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldhFO-003Wkj-NY; Mon, 03 May 2021 22:41:04 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5887B61244;
 Mon,  3 May 2021 22:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620081661;
 bh=LdKcAT7K/DkFCaR8C88qu25r0RUNHy4L1uLPd9vMTLI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=fMOxt4XTJq8QaONd21MjjLpWV5DQlfdSxxAV2eXl8FbyHRkeJvO56XumU3XpRXF52
 HCr7aVusik/ed/f22iZeKCNMOge1hSJ1T575aWlK43zXUfWcXxieF6EMwaANifIFF3
 MOy8nRIh7V0YNi14Q6o2QnJUMnt1qCU2l9fIn0mL6oxaxjJ0V82WvAgqlsCVnBsW4t
 Vtph0NE+/Hh/ZgQn+qMteKZA8RpusiMn8Ad8w4s/qMvZkjfbO5m4pUCP9CdniQNJHG
 9DkBQCdF9DwlrcLoI/1K3nJKh6vF+PrPB8h77x8YBQhwPRYTHm0vaGhc7jTslAyzWo
 BxzDfLtMt4A5w==
Received: by mail-ed1-f50.google.com with SMTP id i3so8269238edt.1;
 Mon, 03 May 2021 15:41:01 -0700 (PDT)
X-Gm-Message-State: AOAM531Pno6KRLtVsL1jaMZ8YPX5IbuWWYiLt+PheSx4E2K9UWazo1JW
 fVWv4wHarBj1xP04obT859YLJ+XrDIWTeihzSw==
X-Google-Smtp-Source: ABdhPJyjJlgMbAtLNrpOWXXUCdw8kmlr4Vuzf1SyEuSlHgUsi/v06FB7HcrfsvgPMlZb6Hd+aFb75+cVfhZiRbfIRi8=
X-Received: by 2002:a05:6402:234b:: with SMTP id
 r11mr22579121eda.137.1620081659993; 
 Mon, 03 May 2021 15:40:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210430072138.6537-1-jbx6244@gmail.com>
In-Reply-To: <20210430072138.6537-1-jbx6244@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 3 May 2021 17:40:48 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKnD1t7oRDY5sTi3TjJ0vbFK0tQcVj1qCw_jiOfOQh=mA@mail.gmail.com>
Message-ID: <CAL_JsqKnD1t7oRDY5sTi3TjJ0vbFK0tQcVj1qCw_jiOfOQh=mA@mail.gmail.com>
Subject: Re: [RFC PATCH v1] dt-bindings: mmc: snps, dwcmshc-sdhci: fix rockchip,
 txclk-tapnum
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, shawn.lin@rock-chips.com, ulf.hansson@linaro.org, 
 Jisheng.Zhang@synaptics.com, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_154102_813687_B01227BA 
X-CRM114-Status: GOOD (  22.41  )
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

On Fri, Apr 30, 2021 at 2:21 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> A test with the command below gives this error:
> mmc@fe310000: rockchip,txclk-tapnum: missing size tag in [[8]]
>
> With this added to a dts file:
> rockchip,txclk-tapnum = <0x8>;
>
> A look at the driver shows that:
> DLL_TXCLK_TAPNUM_DEFAULT        0x8
>
> Adding the default value to the dts files is not needed.
> Every clock is divided into 32 taps equally and
> the max value is 31.
>
> Fix rockchip,txclk-tapnum property in snps,dwcmshc-sdhci.yaml by
> adding a minimum, maximum and default.
>
> In the driver the function of_property_read_u8() is used,
> but with dtbs_check the notifications only disappear in YAML
> by changing uint8 to uint32.

Did you check what value the driver sees when you put 8 in the dts. I
expect it will be 0 because you are reading the 1st byte in big
endian.

> The driver has no limit check for rockchip,txclk-tapnum.
>
> make ARCH=arm64 dtbs_check
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index e6c9a2f77..f43d8d829 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -48,7 +48,10 @@ properties:
>
>    rockchip,txclk-tapnum:
>      description: Specify the number of delay for tx sampling.
> -    $ref: /schemas/types.yaml#/definitions/uint8
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 31
> +    default: 8
>
>
>  required:
> --
> 2.11.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
