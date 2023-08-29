Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58E93C83F14
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mrHI0NEfZDyk0pbRuoHjEow5D2MAbYG0JTtqtjCaow=; b=zgwuWDbgZxzZTE
	ZJmDckgMflH2Eiz3OdKLA7EvTzG9VwWRpvfagfq+UNJadTPG9ARnoQ6fPaPvJokbI5UOVPqaTaLcw
	nQUjWuXm3PcB4TLDLMH+icdsm9v2gdkztJZtGpL3q+SXPgpTW/TAmfWoABXjLq93XTLnqo+uwZTS9
	KyIxe0MYsXlFfWslh1sY0M++uT6K0PYf95vyHBElkgLTt0Rajed2TaF2vbYwRJ8R9rrpy2/taDOvp
	fU1sw3u9kZuECwCiTO1k+amUBh4K3o5hybYRzovl9n1Pv2H7P8PD00vpHQ2rd9PG9WAYYSamOki9d
	3E+pwCldRlrvADNKTnJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Pz-00Byoo-1g;
	Tue, 29 Aug 2023 17:22:19 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Pr-00BylK-2p
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Aug 2023 17:22:14 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99de884ad25so627504766b.3
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Aug 2023 10:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693329730; x=1693934530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2tJx1LZA2LjgFtn73CfwP5M/IqTnK+MwGx8w31m75yU=;
        b=zhdT4+gqpd6hXl/1AYIMtl2I0Wi+ntmhHwcmBTqkgBdvdiVKuV+a+dl3qf6MAC89Yg
         xtFKR6zdCcg3/y9R9kN0QMBc3eeiglNerx8lEfteQJMddk3E6iZif5l2T9B4XvKrE4ma
         hYV1xLa2w3qc7BFGJIpITAtU+wKnbA5fhNkJSaRIR9+2o36urU0mHIIeYsJkxt6huU8v
         SdEYknF7yo13DKV/C0MCR/50DtwnBGfyf/pCh5qAp0176tnlclQF4fBPE5h/SKyKzi4q
         alj0NninrfISvuwp2iM8QhKKKSXceytX0YvYXWTOUbyrmlluV8qB43btBUzRiXMPYAFy
         NyDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329730; x=1693934530;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2tJx1LZA2LjgFtn73CfwP5M/IqTnK+MwGx8w31m75yU=;
        b=ZH01qEECBcS2PBT6arHRbIy7jiop83zexSx4ZQoRX2eDgj+c9wSGb5EHjUVM+iaPu2
         tm2cBybE32THLVxlkzp8I9kgBNUTSSp3k+dU/3cxUVII2BoImvq+wEQ6/Gih8UGJrOPI
         dRB2QVxtyBAg+CcNU4MeE5mcUHBUB83HualzfRzc/Nn1KMSG1FjM1TPQYEwoW30UQzhA
         CJBPLHcvwHW8O6aESh7a20Mpvk28848/dUkTsikgQApL7q41baEaV/Ah3qrFALaxBF6H
         fIfEjibJanP7aPtEV3jKM2Yj3bmEZX8lsH277GC93S0zCHGBjbZgS/g5y2n/qULOD8ss
         H34g==
X-Gm-Message-State: AOJu0YwxNlIso7Qg1t+OzRxkQzrucSICMMLGz/7iNM/eLnZ9g0NbLd+Z
	IwxftoklDNzQAjzlCzabnSHWFA==
X-Google-Smtp-Source: AGHT+IEkfyuO10UaoAlJW/IYUjOxaNUiUgX99OtB+CD8vi2Z/YeQChXUrbKkNwIR57XqpbHKCgrV0w==
X-Received: by 2002:a17:906:51d6:b0:9a1:d087:e0bf with SMTP id v22-20020a17090651d600b009a1d087e0bfmr15768869ejk.43.1693329730572;
        Tue, 29 Aug 2023 10:22:10 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id v24-20020a17090606d800b0099364d9f0e2sm6189666ejb.98.2023.08.29.10.22.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:22:10 -0700 (PDT)
Message-ID: <92b8261b-420e-d96a-ba77-9abe7d53b427@linaro.org>
Date: Tue, 29 Aug 2023 19:22:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 04/31] dt-bindings: arm: rockchip: Add Geniatech XPI-3128
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Johan Jonker
 <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 alsa-devel@alsa-project.org, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230829171647.187787-1-knaerzche@gmail.com>
 <20230829171647.187787-5-knaerzche@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829171647.187787-5-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_102211_932625_8A913B6B 
X-CRM114-Status: GOOD (  10.17  )
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

On 29/08/2023 19:16, Alex Bee wrote:
> Add Geniatech XPI-3128, a RK3128 based single board computer.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
