Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CB4FEB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 06:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDQ2iLFWlKAoPWduZRmS1Tptx9yvYyyeYSBOsw4mKNg=; b=4KH1XVs3nnmoSA
	m1lnOikOJ7rgEFd2Ir/e7J6aabirJD0J44mE5cS1LYr74Ak3Y1PS0JShj3EgFHQFqMv7YTVPPol0u
	UvYas1cwTtZHP24N6VFHhYvZGVhtpjc0y150BcUJkn0WpJ1fVegMsFEs/Cik8PFeVA9OUKoYvYBHA
	5zvIl+MGOncQTi7yHINR+VW/D2itpDaBtThAlGBfM27mMaHjvk2ahDOXj4lmJXKqVmsPWhhtiTsYc
	Y/pOkTnQIh0m52ikDMxWb3inINHefUY87FZC4xde/LDjYP1cmVgimO8x2wQ1h69wzr5RFnrijuh0Z
	6JS/EY7iFH25y5aob+qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBrEl-00DP5Q-0o;
	Wed, 21 Jun 2023 06:22:39 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBrEh-00DP4Q-2j
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 06:22:37 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-98934f000a5so188651266b.2
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Jun 2023 23:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687328554; x=1689920554;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nOnf1IwNAj9eWxqQ3NaJ61zegJDoEg9fxsPDNf+LrA8=;
        b=vLX1S8h70Y3uUmQ/uz4k+GVA5A6NGNFwW+5QH0qR0xEsqi6M4PO1VXFbQ0gOsZ1xeC
         s1ZHpq8nrTlMfUgVzIjTB6UVhgosmiQ137q9Nx7E7Br6oShSph0awERCcjxHb+KocMEJ
         8ySw5/qTmMP1MGC1oNVTl9LozTu6jWMHVEI9KMWKgdS8SYmf7xKExkglqOePbvq60sjq
         lWNYBbbznPB8J9mqve6iC1cITm2l0OVg8FS0xYrdtEGvvSzA5WBAuyyGe2NtXtdljxxI
         tCqYH6zER5FtIQO2hAW2Sr9o6LD5Men0ohhsbDSAbRPCiuzzyJnmF8YW5eyFNiIPufmv
         HSPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687328554; x=1689920554;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nOnf1IwNAj9eWxqQ3NaJ61zegJDoEg9fxsPDNf+LrA8=;
        b=howzrlHJVdsVZN3EI4mGuavIE98nuxoYVgbr3EWFqAAWMIs0fiMHcyTUTE+xGlRfJY
         aoMh+5Oxb5fRrG85UxBUrydXdTDKvhFCNgZnY5jYCH7ueXi92dmRAepjD4uFfo3KqxtN
         wa7fnlYQVu80H3g/7OTrmomNaQFEGrnlbh3Dujasyfa5M6b2/qML7NOYymr1dLuujOwH
         ijnLgUI4+jsiPfrG5In2x9lWyGEivB+BzzNDInNCpUpc+8XmfM13FDWKzm7ITq1JJS70
         DdNe6tNoIJmLBM4urFZP1OEW5lRgzkEtlXRvLMQYUc99PRx0dw3BNSdvPanQnu9ear5r
         cp0g==
X-Gm-Message-State: AC+VfDwdgVQl0DZbXL4XQjRDvPfX3cawaJikviQdfdJkqA1cI9wi+Oap
	a1U0vuSB+9J8+9j86/PkIj4H3w==
X-Google-Smtp-Source: ACHHUZ50+qrhepCQsuUeAYYv6aa5weBNKXA3yMmkFj+KS1yKcgIV10DK2KspkSILnaZUEwc3l7KYaA==
X-Received: by 2002:a17:906:9748:b0:989:d9d:d8f7 with SMTP id o8-20020a170906974800b009890d9dd8f7mr4458595ejy.5.1687328554140;
        Tue, 20 Jun 2023 23:22:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id ju15-20020a17090798af00b009788554ad10sm2547201ejc.138.2023.06.20.23.22.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jun 2023 23:22:33 -0700 (PDT)
Message-ID: <66d5a117-abc7-e147-f416-5366706b5f26@linaro.org>
Date: Wed, 21 Jun 2023 08:22:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCHv4 1/2] dt-bindings: arm: rockchip: Add Firefly Station P2
Content-Language: en-US
To: Furkan Kardame <f.kardame@manjaro.org>, robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
 broonie@kernel.org, deller@gmx.de, dsterba@suse.com, arnd@arndb.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230620184746.55391-1-f.kardame@manjaro.org>
 <20230620184746.55391-2-f.kardame@manjaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230620184746.55391-2-f.kardame@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_232235_910256_690354BD 
X-CRM114-Status: GOOD (  10.79  )
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

On 20/06/2023 20:47, Furkan Kardame wrote:
> Station P2 is a single board computer by firefly based
> on rk3568 soc
> 
> Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
> ---

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
