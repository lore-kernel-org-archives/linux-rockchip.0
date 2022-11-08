Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAD0DC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 18:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+rHcyISIPOKehgRhboJyBP8A2mXYQkNx7xafqfgRhk=; b=ORNjOY6HNkVDTc
	s0igWc+Yrack6Bh3m4XEu4xsQdmEkVOSJObnd5PzIH+4yD5Zh6zDuOjvQCQJb6eVnjpwJu4CWAQuk
	hmq2BVTs6O4NDGbn8313/acTO2UAZgNE3E8abie+KKyRfVECopuFhl7vOQNQtn907OwCKi/8bOReX
	r/BoXhGUmJLNBt6Fea5GfPkZQPSTy9dtQbaZcKWecptvPLRGeRwBJbFoBfIaWWBm07oYfqF9W+dvn
	SdTiypfE5iCiQmqIKo8weS0JY5AwifmZFUvIicankaYwSn4tB4E7bIAFu0BvpvWdqTQwSfu4lnIEu
	ZlgFy4yt1NHiwJRbEljA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osT2K-007MNQ-Ev; Tue, 08 Nov 2022 18:09:24 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osT29-007MM3-Of
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 18:09:14 +0000
Received: by mail-lj1-x22d.google.com with SMTP id u2so22338873ljl.3
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Nov 2022 10:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dO/s9yP23N552ooQfZFgnhLrk4aAI5UdBTJMKg7XmQ8=;
        b=dC9KBQED+XttO3S2OUNMahGCou+hVYqpC8zWMLN8tX1BKU9ejmaKf3UqhP5nCZuPq8
         Y9kJd5UNlG0+p4LXM59AMrI+tJPY4kSa1tbJKg8hsSWdRIhtToFIqlI+YgGIJdQg3BaG
         +OR8MhiC969fFfeyScRSUpLUpIPK3ANvHfH8Nbls2gsNFKx4g6XY3lnjOi2TjJQ2lxvU
         s7qPsZJyPymUzznfXKVhXO4m+KJCQHzmWSHvXBst3Vf7Tz7PFIBV45tRgErr2kTRQ+cR
         7IfyYwoNQm5flTSAxdq69hGAurKeZA8QARzF+2i/ubvCAuzRh4mkLH5BpWFqbMlcgASn
         t+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dO/s9yP23N552ooQfZFgnhLrk4aAI5UdBTJMKg7XmQ8=;
        b=xygM46UF5fvHdLHQMD6AtW99zPtI2oqDTpQ5NRFKi1FOJx09wUtSHTHTfJQYaQtTOy
         xXE2ZiHUxC7I+ySaipP7ZpT6Dz1IqwNus3UcT9odrAf+davSuV4yWLpfyYhu5R/Vml75
         vODAPN3TNDlAafw2KMYnGKXrFmqAgFW9EnmyOoGuaqiupzfBr50QPh2tWTzJ2SQoXDfT
         Rl1kL1dKhVVVTvXA0J4cD2LBh/9u2qXeDsx9JTwPAfAStyv6IYL47IIIF3jPdjo8k+Gr
         J00aaOlTUdorwZ96XWeK/b62NQVVfcbT7mNtgxaKHMRu/r69oA95iorAAGEPcJh/AdCr
         Ezvg==
X-Gm-Message-State: ACrzQf0BgUi4q7z8iIDZpJMvK//f1CTwQiaV5HaPUsCJrrc2ycICPIZp
	dbI/+5IZ8nChn5akqRuMgg1LYg==
X-Google-Smtp-Source: AMsMyM7XF7PKFMvdGUnfxui1KW1zDPEgDY8JvtMhYGo0GLOQnbv4lLndJGTCvUOf/9/BCF8SOiGeXQ==
X-Received: by 2002:a05:651c:b9a:b0:277:18f1:195c with SMTP id bg26-20020a05651c0b9a00b0027718f1195cmr20970320ljb.233.1667930951371;
        Tue, 08 Nov 2022 10:09:11 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id x12-20020a056512078c00b004917a30c82bsm1873162lfr.153.2022.11.08.10.09.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:09:10 -0800 (PST)
Message-ID: <ec1ac04b-8db5-f50b-9d74-72c5e7c0301f@linaro.org>
Date: Tue, 8 Nov 2022 19:09:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 01/10] dt-bindings: arm: rockchip: Add pmu compatible
 for rv1126
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-2-jagan@edgeble.ai>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108041400.157052-2-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_100913_806091_21C42486 
X-CRM114-Status: UNSURE (   8.07  )
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

On 08/11/2022 05:13, Jagan Teki wrote:
> Add PMU compatible string for rockchip rv1126.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
