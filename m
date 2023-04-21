Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1209C77B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Apr 2023 07:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xn0g3vdVSNSIt+VftHDblJHBnL1fZau5tGE7UT+4JU4=; b=3e4lFuKHGEu0Tl
	IrWGMMjj8k45L415tdPhZzhSzw12vmg4+bjfsVYSZhBQlG0j9ptsBNFQfyzLIKtkET6cCN74nx1iN
	BGeQ8F3apERWx/tRIFSgeOqK/Zgp0OssoH9wXFVVm30b0cR3Q3POWcK56XUy2mZvNJ82tw1NBs7dw
	8GdYVKcjsEPIZMra3F71ayM5RodBrpIUxDuFAF1BnxZcymoB0s9KaHkc+ALkIfX06rD6hiupUG9XB
	v14mXa1elYEULNmjFCq7c6wQlEZL7g+vSDkwYX3v+nGRTs/kz10GVa1RSi5IFGeylX4O+VeZ3NxVk
	Rzxo5pWtV2sCxFNYcZcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppl7e-009xN1-38;
	Fri, 21 Apr 2023 07:23:58 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppl7c-009xLt-1B
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Apr 2023 07:23:57 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-504ecbfddd5so1908894a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Apr 2023 00:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682061835; x=1684653835;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=prqrfzm1qDAOCB1S3DlddybXVErcXD5n4O11g8gCXdo=;
        b=JOhZ1ATLNeARFmRj1IkbfMUpPFUJqheOPyhwJrivu5pBziPkUWx4NHgk6fBcn6UpaL
         O2kTcHxJX/OxXzbzZQzmj8B/TzJV0rxP6indgTWrKY8AISZYvGRbKmiNWk2AJLgah1In
         7lwROoMppcQ1K0viXlTcAfs9JrdJh85wSTaTE9ZsMDBHag7C/qkMye15gNIhCJBGns+m
         WgH1RbTGGqrI5wJAyXBvMBVwkrQMnfNLU15XIEOxdLhmlu5tqmhrfiOLbtX1hNzliICe
         zdt79G9r9fH7Gc5+qbg54SdFCmRI3IidR1p3wxveNw7ZAqC1t4ErfUWc0mA7z4x8YOJU
         Pmdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682061835; x=1684653835;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=prqrfzm1qDAOCB1S3DlddybXVErcXD5n4O11g8gCXdo=;
        b=TnxukvcfFvc2puGZ1b53UPSNj48G7HCELkhHl5+AVxCi0ll9tVXti3W/C5oyk9KW2U
         VH6VPYBCZ/z2k9Pr4hWEHmFfZkTSKzPbgW4bVY3rGbp9g9YsD/0KGhL+0QqFL/zrY/Oi
         /wGfW2UVJ3/u+Rj9/jb0hD0vdx6+j22CV564WOEWsxebHBCWW4Ot12X28Xch3sVfqj96
         khzLDUuiVcgCjegqansSFYe7jG5d41WNcPAktc4MQBoYwcKvWw9LQkd0zTRyijzp8AVF
         OC4j+Qg8CaArLxBXFB6lH4QpvdmzzgZ0IXBQS9GT9MgJ6zZBDQ3i/vmT3rCtPU8JwyMn
         XW8g==
X-Gm-Message-State: AAQBX9cnVDSK9TEnekI4lM8Dvr65aAwDzE792k47Rrg6PTM98l2eKFSF
	MpkhHtLvLaxxijodm2gECZ/egQ==
X-Google-Smtp-Source: AKy350YgcUsXsalWPaVeSw5M0+bkcudrenAyULZM13pxyUXbMr7Y9HVWrdBHEXIxeyZssdARWUhEaA==
X-Received: by 2002:a17:907:3ac3:b0:94e:70bb:5f8a with SMTP id fi3-20020a1709073ac300b0094e70bb5f8amr1119505ejc.66.1682061834884;
        Fri, 21 Apr 2023 00:23:54 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:668b:1e57:3caa:4d06? ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id gz19-20020a170907a05300b0095076890fc1sm1721175ejc.1.2023.04.21.00.23.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 00:23:54 -0700 (PDT)
Message-ID: <ee5e2621-36db-864d-bdde-885232381a23@linaro.org>
Date: Fri, 21 Apr 2023 09:23:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 1/3] dt-bindings: timer: rockchip: Drop superfluous
 rk3288 compatible
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20230419181309.338354-1-cristian.ciocaltea@collabora.com>
 <20230419181309.338354-2-cristian.ciocaltea@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230419181309.338354-2-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_002356_406041_5B0F0959 
X-CRM114-Status: GOOD (  11.13  )
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

On 19/04/2023 20:13, Cristian Ciocaltea wrote:
> The compatible string for Rockchip RK3288 is wrongly provided in the
> 'enum' item, in addition to the subsequent 'const', which allows the
> usage of an incorrect specification:
> 
>   compatible = "rockchip,rk3288-timer", "rockchip,rk3288-timer";
> 
> As the rk3288 string is also specified in the top-most 'const' item, the
> binding already allows the usage of the correct variant:
> 
>   compatible = "rockchip,rk3288-timer";
> 
> Drop the unwanted rk3288 entry from the enum.
> 
> Fixes: faa186adbd06 ("dt-bindings: timer: convert rockchip,rk-timer.txt to YAML")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
