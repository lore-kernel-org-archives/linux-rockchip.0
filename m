Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95FFCC83F12
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 18:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JmUHteDIusZS2Zhs+97T2nLFL2Ho4tfNVaETiarRiok=; b=znrKNO2MXipHPD
	rtmcRKXmCHkBg6sqwnm5GIi8K8DCT5rJzHfXJEtGco+1xFaTh3laOmXh+N8GG3hRkQFG1P+cfQut2
	EXF0qR6JO4H/R3zsFi0qzb7NQVLNJiUQNU2RV8McpHf7qZEz0cqv6pr1vvWkfEFp/gW3sN/7EzY5R
	9gxsOJLS1QJAFHEKFcQOemepDLOjXV+bwOVzmdmnKbcmszzXfXAjACGIV39+W2d2mRu5kWbwiE7w5
	tPsc6LxkyX9qIuIm/OEarl8R76uGbcKdjJlqKTMXvO/9UxznGjMvQyUILbFwOpTqyxyi8DVM7clU2
	e0A0WFUtrkkyJjOTCeGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb3Zp-00C3av-0U;
	Tue, 29 Aug 2023 18:36:33 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb3Zm-00C3a4-1q;
	Tue, 29 Aug 2023 18:36:31 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50087d47d4dso7612503e87.1;
        Tue, 29 Aug 2023 11:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693334187; x=1693938987;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d7WlyYzqen5MI4P1iAbKBmvgwbKop0nGPA7AULKnw6o=;
        b=M7jKN5n3mbxOj6lToXlIBhPfrGvC6yd0H/btRqbTG5GN77QQEHXEnWUgB/u9h37HEM
         aQ3Yh0h+zDVLmyJK1+FIDzgTteH8rmbZviHp/ff61hTQgrTcyy0nUiodskPcy/wcBh5n
         NIuaedyS4vgw2lhchhMUJW5L3lUOqkq8ajWK5jlq3m2SAdam1bwzA4e90x5TL4aZpkSM
         YWobFR2JHrACTFmlppIlFi7ZjN29jj0Mal8JFRUSPqudgAs54EYml17nc/0bF0TlJu6K
         124Lf8rCO4uKn9XVkhJWCryQagTVCb81ZFN8UFsc7Vzw1IrjJXssjEykqsPrreIM0fBF
         8CXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693334187; x=1693938987;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d7WlyYzqen5MI4P1iAbKBmvgwbKop0nGPA7AULKnw6o=;
        b=lKT9QSHWrSAgZDa4Jg34xvwn8fyGSRCgquSnI3nl+XKRixKuaGepXeYTSpU7EFYJVH
         5Yrdnm2ej0TiD+3ha8Sek+Zbc7ZBCHpFf/9KJ8MdpgJdXJRBIVU7ZMmRpaPj4X9idn2+
         jwpHDv/P2HvjUNOHEE3lnuKVqeDdUe1CLFc9/0mCdOPDSoDtTldCHqJyX6OHFBcH3c5p
         qQ0o1lKQK8Rk/OZl1XeRWhrdAduhuSmZ2xlT7WyYSJtdXS68S5BGQXqgVbzOwAqW++nD
         2gCtCb5ZM+zwjDhFPyIcaVB4dn3AD1veP4CfSiMydTDFQI6QqeOsHp26DJK0lFCEqYSq
         jlQA==
X-Gm-Message-State: AOJu0YwdjruZLLwRRfj+AqtM5Jpi8ncMJ8pwGypkegFMQq2ZhAvMTlXS
	NHb69uzqE3AJj8pdtY0kJg==
X-Google-Smtp-Source: AGHT+IEjZeDr07xYkGFW1xI0KR3jmlLbN0sEkoa4/s1YsvQ7klaZ7CTwLESdDc6wxza92JGAV/2Zkg==
X-Received: by 2002:a05:6512:282c:b0:4ff:8f29:4411 with SMTP id cf44-20020a056512282c00b004ff8f294411mr23976106lfb.9.1693334186618;
        Tue, 29 Aug 2023 11:36:26 -0700 (PDT)
Received: from ?IPV6:2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8? ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id p22-20020a05640210d600b00525683f9b2fsm5961948edu.5.2023.08.29.11.36.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 11:36:25 -0700 (PDT)
Message-ID: <9954d57c-d864-0215-2efc-67440ce86563@gmail.com>
Date: Tue, 29 Aug 2023 20:36:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 05/31] clk: rockchip: rk3128: Fix aclk_peri_src parent
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Lee Jones <lee@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, alsa-devel@alsa-project.org,
 linux-clk@vger.kernel.org, linux-phy@lists.infradead.org,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
References: <20230829171647.187787-1-knaerzche@gmail.com>
 <20230829171647.187787-6-knaerzche@gmail.com>
 <dc2f32d3-001c-746f-6dc5-58a2a6a4a8e6@linaro.org>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <dc2f32d3-001c-746f-6dc5-58a2a6a4a8e6@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_113630_630462_2CDC8517 
X-CRM114-Status: GOOD (  14.65  )
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

Hi Krzysztof,

thanks for your quick feedback.

You're right: This series mixes up too many things. I'll split up and 
re-send.

(And fix my typos, indeed)

Best Regards,

Alex

Am 29.08.23 um 19:40 schrieb Krzysztof Kozlowski:
> On 29/08/2023 19:16, Alex Bee wrote:
>> From: Finley Xiao <finley.xiao@rock-chips.com>
>>
>> According to the TRM there are no specific cpll_peri, gpll_div2_peri or
>> gpll_div3_peri gates, but a single clk_peri_src gate and the peri mux
>> directly connects to the plls respectivly the pll divider clocks.
>> Fix this by creating a single gated composite.
>>
>> Also rename all occurrences of "aclk_peri_src*" to clk_peri_src, since it
>> is the parent for both peri aclks and hclks and that also matches the
>> naming in the TRM.
>>
>> Fixes: f6022e88faca ("clk: rockchip: add clock controller for rk3128")
>> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
>> [renamed aclk_peri_src -> clk_peri_src and added commit message]
>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Please send fixes as separate patchset. Don't mix it with other work and
> definitely it should not be in the middle of the patchset.
>
> Best regards,
> Krzysztof
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
