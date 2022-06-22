Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C15E1C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jun 2022 08:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZoHJOy8+zBT7inZ1PaPk8nnA1xs97d5FEiaX1Q3SVU=; b=IDdDkYA9oWtNvg
	G6URBsDt/g2gPQzx9uqVSnhdFDUysv4RfSQV3MvWyEiz/k7ApmYPm2hT2qFeHF5Ai6/bWRtVtcfbK
	BPSSbpkBxpKX+3AkZlbuFD3xG235G0A/SsGv+Kt5IYdnXIoXoyvKlO7BVwkgkpdS57IJb/AKqz7En
	LQGMf/Xv33McPMuBCTwRYJiDKu1iUwLlf/CDxKPlkSit60gPz0zkrrKNyyTz9cAQjMVadGe6luDXn
	PD9Xp9m3wXsS6k1T0kYlroWPJMNs6t6zG0QE1MZa8HK8zw0S5eQnYyQ4zhAeFK0hfaCSzlwD9bCXJ
	XxGXSE6fIhvk1vsQ8Gvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3voU-009H3R-NY; Wed, 22 Jun 2022 08:34:14 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3voR-009H1W-Ot
	for linux-rockchip@lists.infradead.org; Wed, 22 Jun 2022 08:34:13 +0000
Received: by mail-ej1-x62a.google.com with SMTP id v1so32544332ejg.13
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jun 2022 01:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=R4vnmBvyTgB7VQL9L4DU93Y2xJoD4qlt6c7m9FRyXPk=;
        b=caR2ZF88qlkUmI4v1K+MclQl1/pHAU7wiNKGA/LNsnrgGRCC2kOUVhSYvi3yZ5NQyP
         fWKooHD2934ov3/ibtMvscDHBKdY3k+smTlOA7lJX2t+Q0pOWgy39MJhY/NI+DMYXmAw
         0v2qd5M9VX6/a2CzHsyYqsZU+r0ZdLFiqbvSnWVm+/QXm88TtyxSLvHYLBmjxMOMZ08C
         W79o0ntOhC+mdTK3Wr8VaSPMnF+xIsmqMXvovNSmiNvTYOnXJl1+htsMstWDqe4ff9LR
         XRiws1J3h+Q3mZOFBGH5vbKAeS343RUCuxZuT5mFQPX1paC3Ath2gO0yjE/lcOgLlk6T
         lYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=R4vnmBvyTgB7VQL9L4DU93Y2xJoD4qlt6c7m9FRyXPk=;
        b=WTLXXHMLNtxNqRyCOR/QWWA78vrS7lyzbqIQypxIVIp4/zELqpBW7gEOXJL4DRd4EA
         QzMfsteErEhIFD+9RD7srGl268WeLJK7NrM/9gdBEsM7AWJWXMXKwwdHjOchValK9MAb
         KTJDbU620qXValFqz4XkYxIl1zzCMiHq3V3+CoKnyGwl/QsL+0X5yTr229GtDxdxh5ww
         VKm5xJFbFFfZMBxFRumaISHFA5fi9iG68YA0kiDSUWZzN2XIwYN5A3bnpMeKm9GYrbwX
         G93zWVdbahO5dsQeQRobILbV0Lu8p35tevjvXZ+44UHAt+j89eheZoJbE4pq+/ktDKLc
         3/rg==
X-Gm-Message-State: AJIora+iM8rPCsQ6CsYfM445dtDf/h+gS5CDUuRUAlaG45UVjW/BBuTe
	nc0irEUsHzNPpA412+kkyF3sCA==
X-Google-Smtp-Source: AGRyM1uLZ9XyaZBzuTPCedQ4tW57nGzMUgHyHNrqdKha/oPbwDycCtpdirMnJIx8fCOMyRMPoAspxw==
X-Received: by 2002:a17:906:7292:b0:712:3880:3e7b with SMTP id b18-20020a170906729200b0071238803e7bmr1984178ejl.118.1655886850491;
        Wed, 22 Jun 2022 01:34:10 -0700 (PDT)
Received: from [192.168.0.223] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id m13-20020a056402510d00b0042ddd08d5f8sm14817652edd.2.2022.06.22.01.34.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 01:34:09 -0700 (PDT)
Message-ID: <ca7f343f-fec0-a365-9263-06354c920b01@linaro.org>
Date: Wed, 22 Jun 2022 10:34:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 26/40] arm64: dts: rockchip: align gpio-key node names
 with dtschema
Content-Language: en-US
To: arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
 <20220616005333.18491-26-krzysztof.kozlowski@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220616005333.18491-26-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_013411_857974_3947D6AF 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
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

On 16/06/2022 02:53, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern
> (e.g. with key/button/switch).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes since v2:
> 1. rk3308-evb.dts, rk3326-odroid-go2.dts: different names according to
>    discussion.
> ---

Heiko,

Any comments on Rockchip parts? Can you pick them or shall I grab them
with rest of cleanups?

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
