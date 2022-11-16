Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F341DC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 12:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iG70u/cpcawnvQ6Vt1j2faG4TbJ+cid0fPf2Je8KBE8=; b=d/0G3YiMTWvYeR
	wIvHd9YSZfkrgg7Ffq20F3ZBYhem0/Fkxas0c+Pwomeav5jSo1PTtgyKj/96apzjV+RMvCfZBLePA
	tkAmdx1mT7sTwG+wjODzxjR3TuJZDBQwK/Rz9A2p/Uaqm5EyMkc+28rZeem5MOeuuHL/GJ30fIh2E
	959oRO6WBU7vQiDTXl5A+uuYrHCPQV/sJ66ytASr8O50L854rr6RGAVZmtipy2ASGBmO03/2B69uZ
	dIQXzScOat4meOdsN2lCUcodXN/RJbnRVuhF/Tt8Wc8jD3UeUu+1f1WbP78Y8uBXqnPEIAoD3R1Nl
	b+gIWE5Mblj+J5+Ja1IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovHpb-003Yx7-R4; Wed, 16 Nov 2022 12:47:55 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovHpA-003Ygv-0p
	for linux-rockchip@lists.infradead.org; Wed, 16 Nov 2022 12:47:30 +0000
Received: by mail-lf1-x12a.google.com with SMTP id a29so29304625lfj.9
        for <linux-rockchip@lists.infradead.org>; Wed, 16 Nov 2022 04:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yWytaf7KjaX3rV8674YFhntP2xNI3bcqedV5LC1PodQ=;
        b=TBnK6tfq6XxwdNaksANghIOWS2IFs661yugM3/n1H0H+uWxC9A0W9WKG4Dee3qQPyZ
         71KrDvN9cc+ps2i8j2mbQOeR3bb0+bJA7PELFauhALkslTs9WSXro32ZQnQw91/oN+UH
         wN/dajL7LrfX+BuIzYSNcw/n9vVzPQp1cDSO256PHZJCt9XqkF+8qrF6KqiY4M1ANFgS
         k/JLYTFo0XsNGbkKWuyvC7HpWDCdjoAPgSPoRffoSIgH5cBsW4F3c5pwAtoxENOkmhta
         LibP451oLEGqhBVx1ypmBlZxEWEQwAC4HzzylD2S4pldjOcOIhRZbTatDBf95BhyVf4q
         3f6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yWytaf7KjaX3rV8674YFhntP2xNI3bcqedV5LC1PodQ=;
        b=GGcYcoKXs993LBUtTM3YuAcQcSqRs0dwiLAY7lgIb7aYjJM2nJPua+dUlzUscZzE9R
         T1Vk1NQO+lobX0xGPGTxOD8WYM1Ssml+oZoNgAgZZNqm1jwYTEdsVz1TmKcfRKwsEva1
         ocHgemGX5JZ4RlcSTLUDzazbYb/ixxiCae4r9EasRuYYKGhouzkroen02xghxZxGDy4A
         HG4pJgah/cQFIuO0b6Fw3q3zXmOaO5mat/nQBc1AsYE8NScwB4E1gI49ATsWLBjqC0vJ
         cLSD+SwcISsevIeNJB7BVWt1hSy8ENrh2/PpsEj6zf2lHjD13OrBOb343Qr92A+jhION
         ynVg==
X-Gm-Message-State: ANoB5plQwoH2cUsLESdKZbxrG5UDNE/jTEIA38d6IiR0ca8lcQ6XNAhw
	DoirA+QVMjrFkd2d7pW7E/8t1w==
X-Google-Smtp-Source: AA0mqf5A1/wkJ9vvf5y3bwd/45qiDtE9B4jMa2SaETcrW+LCC1R+b0Wyi/oirSLj6Yt/tkhttDxaGQ==
X-Received: by 2002:ac2:4c92:0:b0:4b3:b3e6:167 with SMTP id d18-20020ac24c92000000b004b3b3e60167mr7775768lfl.312.1668602843268;
        Wed, 16 Nov 2022 04:47:23 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t16-20020a05651c205000b0026fc8855c20sm2993541ljo.19.2022.11.16.04.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 04:47:22 -0800 (PST)
Message-ID: <e34d73e8-9adb-beea-ec88-5d440012db5b@linaro.org>
Date: Wed, 16 Nov 2022 13:47:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 1/4] dt-bindings: arm: rockchip: Add SOQuartz Blade
Content-Language: en-US
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221116115337.541601-1-frattaroli.nicolas@gmail.com>
 <20221116115337.541601-2-frattaroli.nicolas@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221116115337.541601-2-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_044728_131519_E0F08DB7 
X-CRM114-Status: UNSURE (   7.50  )
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

On 16/11/2022 12:53, Nicolas Frattaroli wrote:
> This adds an enum for the SOQuartz Blade base board to the rockchip

Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> platforms binding.

You do not add enum. You add compatible for the or document the SOQuartz
Blade.




Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
