Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDDD0C56208
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 16:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYPXqJTZNJ3x9DPSgyGOQSZopgvTu9EZqvZf1pZasbM=; b=cUZY78/134i7kR
	ftng+0/FsnhMITdxJ5Qo/pM7Bt6zuAnKB5r6//OI/bOW55/zvPyh3dP4WurKDBVEvfo0Wxkyv34xv
	HDm1lJLns3T6fMo6O2ol49KVkcNtlOh63IE5TfNkhqDCyJ5RaoFgeULfu5jWHVdqenumf/6+n2j35
	linutQ7NNUAZL16ZBaBljRJBroqM42XM9csc7Mh5wasRtdEULQE586yoBOujantAoN31NxpUnxs1r
	68/t/WzPQYeMi/JiAajt/0eJqpNFeeJy3kyD7sNchzmGfzMQZlIC5EiABOaWUKMTmW5Ik40a+wWNd
	3NGZKk6PLCCjmui/4xbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0n0-00000006BhH-1skj;
	Thu, 06 Aug 2026 16:17:50 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0mz-00000006Bg7-002f
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 16:17:50 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-47f93b2fe4cso1586743f8f.0
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Aug 2026 09:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1786033067; x=1786637867; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=s2TkJw4qV4dMHeSE8n4BR00N5vqDbN8wATqN3VEnGD4=;
        b=TVdhFkr2XuRx/SupdPJLNXl7kVK60qPid/cfC2XpmtJP6ZRLG/Buw/UU8e3gbX+8jQ
         rbLhCjIo30mwHrEM2vVWvjZhCNn5yB3X8UPGi9eT6Oe8jZZKjIYwwHo/9wVcLxz1D95s
         hbiWNipcIk7k2+BMdNmbFKprhBUxyJlLHQCbIw8j/noxcPkT0jD++xVA6dF1PJJTyvr9
         lmXSPQKkJ3WF2GLg103yjOm74Dj5N2lsFqeyEAVoLpzR35XvWXULMUIm3ya+M9+IRzRG
         gbrDhGPWX+dXY5nhJIo/+hQjoonQqhreGgDpjQnOGWxR4ksm7f7izLVYhMcOMzXWQgo0
         X3mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786033067; x=1786637867;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s2TkJw4qV4dMHeSE8n4BR00N5vqDbN8wATqN3VEnGD4=;
        b=AKpoQ+txCr6qQWLnN/IAttgqo+lYtPlLzA/8k0ifUOkjgdFMqmoeyzQrf7Ky7i7ph8
         iGrI46161pa6x3XWXeua5rc3XWpfGwe9jBAbiHfo1q69pey8d9QJxu2WMT8sOjEP5fL7
         P+WqUQQyi/zbH0a8jvTdok2AYqDlpCT6Ac+lPo30yi1wVFKL4wK+7NPAJ25IqnZVSfJa
         Id78M8XizXHpBYfflOeXXHy9SU7g6PphXwYp6qY0HAE5wNMVRK8tRvdCS4aRBspJzMJ2
         fEMpASUsgnfvPx9fM7af+Un8B6otmN7s+hFUhc05IMxwIooJBC7eOQi/DjR4cVvJXoC8
         DK8w==
X-Forwarded-Encrypted: i=1; AHgh+Ro58Da6RLyO4OzIgOMn6Rkt/Xs7AiJp9A9sguyHLYQdJ3zbl6cWwPVlT6gmIY9VbhcOvSNmFLpM3jL7SRJDMQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyAm9DevbmIv5M1OJuMOtrATELpqpEeyZhys+gVZeIXhJiI3+6Z
	SRZt+KvanoXO0+f/YbLnu0Ksb5sMrysB+stQS8cdH/+gKjHTPZw3pApCGZoKI4p6g4I=
X-Gm-Gg: AR+sD11sGhYICVs/9JXCZBIJ3MI3VHnJxtzGLLouLZCEij3INRN3pCmF2XNmNGthMTW
	T6TnoXBL5bCCKGDbFkZMuvOZCFY2xBwjOXLpXtTx7RrLEx9+uPOr6YJvMtXRf1rjUAw3JKEatz3
	FrnU92ILBFPUiXXm1LU7Wxkgr0Ab+bWEr1vcLS1b7s4FGZM4srNwgiB5GyyxMgGoGPOsrnAyrGH
	mWvFsl1qNn+S4ttQzBx9VxKlbZ8DQ+HAyTRD5K13oHnsilvLSa6rkxgX4+fxhHAQsCX0ng1atWx
	8A/3Plf9v8DGNw/TXu3BnWTshcrxcprD1L0M2X2E5xlRBkDAE0GNQwRliQzLrRQO0tv7N1vDhRg
	7hVhtxjgSc/kEZ1eKhZd8rYMw5B8UVF/gceM+pEVQINi7049WwYnCYH/QAKqBCGjqfQ7l1u+3Pk
	3TuyAvNoisl3o8rDSQRqDfLI8I3OAcFr6H1ZM0jXTOoR6cmJmJb7jT+iJ5GRf0NHJ93qQszHrci
	Q==
X-Received: by 2002:a5d:6f0a:0:b0:47f:8a1c:54d8 with SMTP id ffacd0b85a97d-47fec502df3mr23870212f8f.3.1786033067170;
        Thu, 06 Aug 2026 09:17:47 -0700 (PDT)
Received: from [192.168.0.101] ([109.76.115.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47ff7b32487sm6964879f8f.34.2026.08.06.09.17.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2026 09:17:46 -0700 (PDT)
Message-ID: <43327fb2-0085-4d86-b408-8723d852c258@linaro.org>
Date: Thu, 6 Aug 2026 17:17:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] phy: rockchip-samsung-dcphy: factor MIPI D-PHY
 power on/off into helpers
To: jason98166@gmail.com, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <Ji-6adk9LJbP87Y7X6SfOcAyVnGpO4dbHk0lBikX3NGAPz3dynWpvL8QjkVM3G3jEnwTrTV0p7nOqBxPRaH0MQ==@protonmail.internalid>
 <20260726-dcphy-rx-v1-v2-2-cf9cc34a412a@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260726-dcphy-rx-v1-v2-2-cf9cc34a412a@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_091749_060231_9C4FB467 
X-CRM114-Status: GOOD (  10.42  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 26/07/2026 15:55, Jason Yang via B4 Relay wrote:
>   static int samsung_mipi_dcphy_power_on(struct phy *phy)
>   {
>   	struct samsung_mipi_dcphy *samsung = phy_get_drvdata(phy);
> @@ -1368,7 +1376,7 @@ static int samsung_mipi_dcphy_power_on(struct phy *phy)
> 
>   	switch (samsung->type) {
>   	case PHY_TYPE_DPHY:
> -		return samsung_mipi_dphy_power_on(samsung);
> +		return samsung_mipi_dphy_tx_power_on(samsung);
>   	default:
>   		/* CPHY part to be implemented later */
>   		return -EOPNOTSUPP;
> @@ -1383,16 +1391,11 @@ static int samsung_mipi_dcphy_power_off(struct phy *phy)
> 
>   	switch (samsung->type) {
>   	case PHY_TYPE_DPHY:
> -		samsung_mipi_dphy_lane_disable(samsung);
> -		break;
> +		return samsung_mipi_dphy_tx_power_off(samsung);
>   	default:
>   		/* CPHY part to be implemented later */
>   		return -EOPNOTSUPP;
>   	}
> -
> -	samsung_mipi_dcphy_pll_disable(samsung);
> -
> -	return 0;
>   }

This looks a bit funny.

Do you have an int method() {} with a final path that returns no value ?

Tooling/compilers will definitely and rightly complain about that.

---
bod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
