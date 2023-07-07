Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9114EB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jul 2023 06:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wg/ybE3MhimU9l/BNNCfp28QvvmevVzRQx/03JIu300=; b=yqiozMAtPmgo/X
	E7iOSNAzVh8tbS1m5LPiQ4TmuAI1GnjdyZ+Ekm+UECL5l8TuXBF/LIeixRHEdsMl5hxaXCjNi4lop
	yxSTFabef5gSB+o2QnA8x9rYkfkXff0TNKvMh0ZdlADj0GqOgWIMLnxFP/kXPQ1d42vmG4vtgu845
	2EGNFmWGKoZ96SO7oK5ljuN11/YFO3n/P19DVh/LQsnCGJ5pqWeXtm3F1BZYakOh22AIO3/2v9V6s
	mrE1bVQCDco1Q8TXT0R+9+c/v/kfcDhtrPzBIusGqqQ2PwiXCnsQgi5ROIByk/qDhz1af/gmcAdVn
	DY2eMEtdGYMZXg0U+Ymw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHevo-003kPb-19;
	Fri, 07 Jul 2023 06:27:04 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHevk-003kON-2n
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jul 2023 06:27:02 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-51dff848168so2052864a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Jul 2023 23:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688711218; x=1691303218;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0W3Gd8jBrQTVEqQoMXv1avQ4XCiWz9OzEFTfcGO5S9w=;
        b=yYMu2AnD79fmH8D7wB05ARP47RnYpezo9YbavMljtL6qURDtiWwd7uxsgnRUGOR86L
         v649Xj/HhWFkeRumQTnPb4Anrc30OuSpm4jNnG1rwtROmZi3jLJKB6Of7rrC0CnAHi/b
         P9HDTEk3pxfd9Be5Wr8XYuVIkj+FbqR/osNNU+6xzv25wnAxZwFew5Gv0FXVMBwrjE2A
         CRlQn4KpMNWvU6RALhtkSaw9VeqMllqiVyl1UUpdTUmfpxXIEjnipqF1Lsu4uoHnPD5f
         j8ioOlSdPJ0lsZ7NMHXWVoI9kjopZn4H3WVFDV4Ez723DxmV0jXDgX9oyVwf3mJRjkTb
         QgKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688711218; x=1691303218;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0W3Gd8jBrQTVEqQoMXv1avQ4XCiWz9OzEFTfcGO5S9w=;
        b=jHnK/nhkwCabRgQ82AKZ9ETU8klx8NVrSTgIRfrCcOGLx8xLOKhIoIbkSkZ8Ani45J
         y8Q9KX6AZiJ3Uau/ycd58Zbaapepx7KcpqiFJoId2SHvpCMI3t/2pk15EU9N7yTVuxtb
         l3gNrajM4dT/oXq1CrJEiFWsBt3xe/CRgR2nA0ICnM2g5ROkC8bhtKgcWvpf236SFNEx
         Wj35H1elFKZf5BO4MgN0UL/sxMjf7hv1kW1s1ZVkK+mnhyVaXIQMrhu1tebEA5iWnZqn
         Od4Mjor5hHoZXoqlFrMP1L6MvjI631WBaKjaVSW+G7bvlCCJlC6ID29R6riR1eiYhgFa
         jH3Q==
X-Gm-Message-State: ABy/qLbyC2T9Rro/JqjZaWpIuOi9Ooh0+GOnVf7x7eZjva838qwy9Y/q
	uTwbkD0FTe+Dp6y8ZWIoPLPj+w==
X-Google-Smtp-Source: APBJJlGyXXAFlZKcUiBo8uH2mXTvF+2xcpddNfdWn8QuWvicVEB5eBFG1KaGmK8LsJfFTahNxI5cRg==
X-Received: by 2002:a17:906:224d:b0:977:e87c:e633 with SMTP id 13-20020a170906224d00b00977e87ce633mr2949201ejr.23.1688711213433;
        Thu, 06 Jul 2023 23:26:53 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id ov24-20020a170906fc1800b0099364d9f0e6sm1727055ejb.117.2023.07.06.23.26.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 23:26:52 -0700 (PDT)
Message-ID: <0fd87e8f-7d09-549f-1170-3bcebbc572f6@linaro.org>
Date: Fri, 7 Jul 2023 08:26:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [RFT PATCH 1/3] arm64: dts: rockchip: correct audio-codec
 interrupt flag in eaidk-610
Content-Language: en-US
To: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230705064823.9210-1-krzysztof.kozlowski@linaro.org>
 <941ead9e-9e46-b5cb-0a8b-345df6606484@linaro.org>
 <9d9245fb-463f-c967-46e5-cfc0ac832792@arm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9d9245fb-463f-c967-46e5-cfc0ac832792@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_232700_901970_CD1A2125 
X-CRM114-Status: GOOD (  10.57  )
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

On 06/07/2023 19:49, Robin Murphy wrote:
> On 2023-07-06 14:54, Krzysztof Kozlowski wrote:
>> On 05/07/2023 08:48, Krzysztof Kozlowski wrote:
>>> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
>>> These are simple defines so they could be used in DTS but they will not
>>> have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.
>>>
>>> Correct the interrupt flags, assuming the author of the code wanted same
>>> logical behavior behind the name "ACTIVE_xxx", this is:
>>>    ACTIVE_LOW  => IRQ_TYPE_LEVEL_LOW
>>
>> This should be HIGH in both cases. I will send a v2.
> 
> Also the titles say "audio-codec" but they're all touching SDIO WiFi 
> modules ;)

Thanks. Too much of copy-pasta.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
