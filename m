Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E2F4C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 09:27:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF55061437
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 09:27:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF55061437
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZxEOcUZ1obSlr3UeUyUalNmeNp7RogK+8V8Hkpx+x8U=; b=nQLG4ZaaPpVDkhhdh6IoxlYsv
	QbTMek96FNyaHT0ICo+SGOCRejtHX4xq55/RLZ5jIisgqN8syhsh5NCUIIKi/yGvqQTiz4/+EWnM1
	OaCg3jHvSRc21j6wngUooqFGtKlFoUPuutU8PbgK48pyM+ctuzKa22oMX/KeGpnrbplavABGtDxi6
	vgfhe1QQHnwW0eKKcqHFZy1FGakchasbCH4FYi2L1ck6hxhU6vhewA5L856mQ4NY6HLOukL1BPPjY
	WpQGJcu5m5Qw+q+hND9W6iKghO/nVEj7VZmOoWuQCIst/sQ3JbFJGi1FPqeFC+bXB7pMK8jNctCXA
	Kg3QtMa1Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZ98W-00E9FW-1p; Wed, 21 Apr 2021 09:27:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ98U-00E9FO-8R; Wed, 21 Apr 2021 09:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=/hH6gOY5Krjw8Rc2Sxt75fVQdHpdQjhafzlD6HdCfVc=; b=hBljtvU9JSq5e1vsVh+AKHXEby
 PJj0TAR3FCeWzqWrJ7NIr4KTeMdfA8F3SAM/30ZoOhj53eSzhOrTKUYNTtgpthYtahIBE6GO3TSWM
 dWGDPfg63uvr/rOijYqCMz5qwfX8dVsYlqwXj+CSLt2XPOpt8LaEb2lrs2qW2L30Tzu2dvbGiQHzY
 cgXmJChxr78Ha0a8MrRLIIwlbw/QAoUd+2AJ2xvTESrGrHfMoY0yKb5+EdJEb2XsYTQPp2dUkdDDM
 jvuqTtn0ONbwlCz0Vzq168rXNXFBE5jnlSYO59B9CXhHHubP2FlekhMTzduGJZcH/GEmPwPgOgvnA
 /EYBn9BQ==;
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ98R-00CkwJ-GM; Wed, 21 Apr 2021 09:27:04 +0000
Received: by mail-ed1-x52c.google.com with SMTP id bx20so47384644edb.12;
 Wed, 21 Apr 2021 02:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/hH6gOY5Krjw8Rc2Sxt75fVQdHpdQjhafzlD6HdCfVc=;
 b=hJNclq7CenzlSQ5Zhk5Ww/3t0wzxy9F/QcPiPW4f0ljxEUi2HXp8kTEaZdeUDawaLe
 dkhPonR9EENLcqruGCcYlhDBX10TWvnKCLkuSdwin4DSt3D88dhN2bhnoibh1FZO7HXW
 GcvBpik5Eht2Tx5XeM+HkiQbJKz7Q7SaSYCHdmPxCNpYpyfN30/SXnpMvGsH/2qJGkT2
 gvFuah46Fe6/S91lMoV0wa8PvdWDVY+aRjpu1fldBQ4f7tmAQ5ztfmqGtT13IdXyRqIo
 I2xkmlcEH8lwPoTu8Xdx1SjFRr8jw4tIYsL5bqOxNbWxRg+wh/m0TOhAtzNsPx2xsZGc
 rBzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/hH6gOY5Krjw8Rc2Sxt75fVQdHpdQjhafzlD6HdCfVc=;
 b=itq8RTQPDbhF42Mkce9JX6ThS0JgxJCRgJGNHiphyoXvaSjczqfueTpod+nIsQmkt1
 hX3NLfk1F3A6lWQX6cGxuGFGXC4zoi+rvL5I30MeTcz//0O9z/9CYxKJMhjIT/uXX4Zy
 gqNZCfZJu+TMwvaf+/bqMZUMacTYftRfAtWpNQwnTULzHlGd09vL4Rh846OkgdJTrzqL
 O4Ru1YGZV369L6v8kknx4jIGgagFesTIaO16frOOAzMdjh+TPXcJkBSe2hws8YCIXCf/
 GxnWX1Ygbr1ZcasczxSTRGrzuUniXEZKqkyDjwIUzEXLPeST1vh/u5iB/CKGbaT+eElO
 NO5Q==
X-Gm-Message-State: AOAM533y4oMBR27LErs3iHqvD0TUoPHduiciKYJglhiftEkqW2ygw0Z6
 rBF/Mh8GdGa2MFxWW3gR7vw=
X-Google-Smtp-Source: ABdhPJyhKDP7bQ6iqb8kCTWEN9iCqDKVLP4xB+AE90OA08e7doKGYDxLySzFZ32pdT5LcVqvSNVmZQ==
X-Received: by 2002:a05:6402:350:: with SMTP id
 r16mr29860142edw.227.1618997221534; 
 Wed, 21 Apr 2021 02:27:01 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 j9sm2496474eds.71.2021.04.21.02.26.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Apr 2021 02:27:01 -0700 (PDT)
Subject: Re: [PATCH v1 3/5] dt-bindings: mmc: rockchip-dw-mshc: add
 description for rk3568
To: cl@rock-chips.com, heiko@sntech.de
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com
References: <20210421065921.23917-1-cl@rock-chips.com>
 <20210421065921.23917-4-cl@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <7dde9617-9d71-9fdd-6f91-3fc327fa9bc1@gmail.com>
Date: Wed, 21 Apr 2021 11:26:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210421065921.23917-4-cl@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_022703_576520_CF9AA25C 
X-CRM114-Status: GOOD (  16.82  )
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

On 4/21/21 8:59 AM, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> add "rockchip,rk3568-dwcmshc", "snps,dwcmshc-sdhci" for mmc nodes on
> a rk3568 platform to rockchip-dw-mshc.yaml.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 3762f1c8de96..2a6c1cee4887 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -27,6 +27,8 @@ properties:
>        - const: rockchip,rk2928-dw-mshc
>        # for Rockchip RK3288
>        - const: rockchip,rk3288-dw-mshc

> +      # for Rockchip RK3568
> +      - const: rockchip,rk3568-dwcmshc

Remove.
This would create two descriptions.
"rockchip,rk3568-dwcmshc"
"rockchip,rk3568-dwcmshc", "snps,dwcmshc-sdhci"

>        - items:
>            - enum:

>              # for Rockchip PX30

Remove comments.

> @@ -41,6 +43,8 @@ properties:
>                - rockchip,rk3328-dw-mshc

>              # for Rockchip RK3368

Remove comments.

>                - rockchip,rk3368-dw-mshc

> +            # for Rockchip RK3568

Maybe remove the "#" comments in this enum part too.
This was one of the first Rockchip documents that was converted, but is
not really needed, as it both mentions the soc name.

> +              - rockchip,rk3568-dw-mshc

Sort this below rockchip,rk3399-dw-mshc

>              # for Rockchip RK3399

Remove comments.
>                - rockchip,rk3399-dw-mshc

>              # for Rockchip RV1108

Remove comments.

> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
