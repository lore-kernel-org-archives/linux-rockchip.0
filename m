Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A3BFC6FA8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gROlysmQLj3Rl/AxrcCIhM9h4/kLMsespwmsccpDskU=; b=Qc5WXKHJvjOlr9
	S+r4oyrhwsFgVS06ZryqhcCtwxhjSpsS42gsreQglerWzp95BYxQUnfJBiP4WXc+MrJvNqx1xh9Jj
	Yy1YbP30GdD7tNDwa9doIJWMzmB8rxCnzW1oRykoBroYXmsWjDphI9q/QM3L8W6LDOMmlbvXMNzDq
	TdNGJOcTcnDAu/C8JK95dbyvaI/q7CvZo0O+xZH9totdIuTAY94zP7D++CfN/oqWb5rxh2dUNmmCn
	uUJvaYUFZ8WCkGy2wOfGn3Kl5V/72PTe0TA2mLeXGd0HluINgor/49226LmoqRm38xm0zn8z8CPgQ
	mvwlU42jOgVgo7JzNOow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2OR-00ByJy-2C;
	Tue, 29 Aug 2023 17:20:43 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2OO-00ByHY-1s
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Aug 2023 17:20:41 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5008faf4456so7372753e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Aug 2023 10:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693329638; x=1693934438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2gJh7hh3Cv4MKGAYWWiEyZbDkr75Vxh68gw9dOhliEo=;
        b=svFv/Z9pr7z+fE96FtSY4wNw5Qa2yWz9MMDZgo8e5txPC7jOPprZ+/VfkDOhO9+5ff
         JZbANOmLFqeO8HbS9PoJbKb8b3ziDDnQyTUOlfVWdJ5IBXengbnaH+UBjH1U6aFAEsWo
         H0F44cpGBCVK18gmBV0dWJi1qVfi3txaFE2I4YM9onDQB2OfMS4VTVoCQQQJgZhD8dhi
         aq57PQjk/nBpwCbPwjSHfVxNMRTfNVqOiqu600sz3+nNxjjDIs7GU6nLF0fFWuOKdgm4
         k2Nj6XlyP0xiztq8gbA+3vi2kXSKxd4ze0yumQ8Hz9IDWAknT7KaS9nXgckiNRTMnjdh
         HJRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329638; x=1693934438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2gJh7hh3Cv4MKGAYWWiEyZbDkr75Vxh68gw9dOhliEo=;
        b=DwTcz8hVGHLcCViACqXOxuM9euRb7Jexu8JY2Ld48GpYWrWMFUtMj9sNOBBqN674RW
         pPo7pvHKhRW1CjrbfymL8YzS1X6ANXOt4Wc6SVJpqsK0/K7p+ofVrp4j481Cw6ICUp8y
         hg6Sd55Kuwfx/i0Vza9YjDBew+qBJ1t0u13nazPhFx+1d71R5GBQRRtazl2wBP8Nawno
         vaQ5yo0yXBQJg03xg9FYjrfhcEA0dUFUNcMbVFsS/NPSIT+sUbICFUFRM3Eup4wNGfd/
         37QioqXEMAFxBNgcVg7nrIc+0LZ2qn4YtmBvqUBqCEJ4lZTjzgqPBVlDy2aOCVYs6q5P
         uMyw==
X-Gm-Message-State: AOJu0YwjLXNmzOVE08rGQ/9g5Se9o8qwzNJK0AXCtuDfpQW0L26E//b2
	dcz6aMur8ly/uROy27P8a0bomA==
X-Google-Smtp-Source: AGHT+IGlVnUWA48hZ1fV2ZgoaAUWDkmNEboaK1aSOxLC5DhzgZm2KyvX6J5uG+IbCKz7WrZM5DcSfA==
X-Received: by 2002:ac2:4985:0:b0:4f9:51ac:41eb with SMTP id f5-20020ac24985000000b004f951ac41ebmr17504153lfl.16.1693329638491;
        Tue, 29 Aug 2023 10:20:38 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id u18-20020a1709064ad200b0099bc08862b6sm6299274ejt.171.2023.08.29.10.20.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:20:38 -0700 (PDT)
Message-ID: <20308990-0701-6dae-a5f3-b0c5d6cccbe4@linaro.org>
Date: Tue, 29 Aug 2023 19:20:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 01/31] dt-bindings: mfd: syscon: Add rockchip,rk3128-qos
 compatible
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
 <20230829171647.187787-2-knaerzche@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829171647.187787-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_102040_637615_EFF38150 
X-CRM114-Status: UNSURE (   9.44  )
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

On 29/08/2023 19:16, Alex Bee wrote:
> Document Rockchip RK3128 SoC compatible for qos registers.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +

You should probably split patches per subsystem, if you want it to get
applied.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
