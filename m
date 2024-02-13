Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24B06C48260
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 11:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8gM24tBugEYXesBIKTS4MGBl55NhNgXeyZaoK8zewY=; b=WM/5qfUZVDFQVl
	jMlVrodutYHIdfQLBbkkiQPhUuMRZfaM6uMwudKeByKh+nQgv02DTyk+jCg9uiy8EbvXPjrjl0eqj
	6+/Skd8r5m4FBh9Wtyyfn3vyXVXXw8/R0dBneYrizrXrFu/WV8jT+DsLcD+fvK0XK24YHcfkSAAxm
	DjzuD71htNJ30ciJ/1gIUu07iW3J6PLN51jByA8GH4R0bEotAhv0bVrs2qPXP2+7IoxqHvfuAL+CB
	b2rjSbuZeXbiBEUbjrG2xdKR5vyeDK7TdErSSu54dlxBoBxBmio0xyprMmbzl3YjiC1VekC1jm1Dg
	xaOHhwsSN+M82JEcC8XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZrKx-00000009566-14Yg;
	Tue, 13 Feb 2024 11:52:31 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZrKu-0000000954F-2lec
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Feb 2024 11:52:30 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-410db155e57so13466905e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Feb 2024 03:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707825144; x=1708429944; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5d3Z/NF6a7ZPQfF9qbF966oZ0kG4Ex+JXd6p8X8s4Fo=;
        b=OnartF8HG6KAvBV+9ilv/mMu2IYtnSFZMNZLH0A+b2irIN9rdKPf9yt+oYDRWikhEs
         KJRv+bJP/HmSRrhcTosAX+uXvbY2UsJpp4zsaSy2EvRvFhTOKQd0Pix/GRt1OjlJfnFt
         Q3HArFH5obGrCe75LY9Tayle6B35sZaDA0/MWbMe2CJZUGgveptdkLim0kArziYfPVRD
         sz39/znGNeC2To/oM5ugd9lzYOue0DBDVwUkWCob+6lpBaRMTAcRZ7k3TSmSbGimkBeP
         o6m2zf7H/PuUVzyQXWAWVVtXJPpVLc+NO8WhNYYZX71wCzcCsPWFoovLQWBvDutXFpip
         BwWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707825144; x=1708429944;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5d3Z/NF6a7ZPQfF9qbF966oZ0kG4Ex+JXd6p8X8s4Fo=;
        b=CXKCFQYtoG+CYzROgpCeh7M0gCb2t+dwXCSZkuheP9Lzq/dd0gTfCFXvxv/9QDvznH
         96uPhpyyXFMGbG5SdFRtja5TXBecBh2rPnEQLrFwgMZJiXz5s02EXFIiQRX4RSpWo0vL
         fSnOnDx8BEvOwznWJ92/2BwCMV9Q8TC9GpDrLKNL1b8Tgx78h35MK7PntusEtkAOxrw6
         2PkhVzktxuXKyLuvwSV4Wku/ZLUYepJIuYSFkrfCH6GorljsrRth4Hbt8vuacdx7RYUi
         gLA8VoZEpT8IzywtqDSQTXHh3c80zkmwLfcC6FuO5qo3loDDihrJHf5HfVMg6hMxJsID
         grgA==
X-Forwarded-Encrypted: i=1; AJvYcCV1R0FXRPeTnIk6ma3cNsqOuuix7u+pxMHd/Vq7LzGC77XhJ0iIAPrRyov3F7mbEbXd2hkALYpk0toYFlk54owOlotuPOnyO+G/Q3PNmR3oUutz
X-Gm-Message-State: AOJu0YxwGRjwQPoqa4HSk0rEHBliIJ4lnD3sPbQmGWThQcKqGdz618w9
	RveRzF6HjZjW5v4e3Hx1khzNIpXM/itVepXybUVI3nevVnE0k8fWOw/Qtxna25w=
X-Google-Smtp-Source: AGHT+IH1dvPhAF1Xt3/TWhNxmonPxt9a1r+G7hgR3bKZsuaAkpwAgTvfN0Kf34ArTknAa1l9pZSQGQ==
X-Received: by 2002:a05:600c:3503:b0:40f:ddc8:f804 with SMTP id h3-20020a05600c350300b0040fddc8f804mr8193229wmq.17.1707825144512;
        Tue, 13 Feb 2024 03:52:24 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXChUvc/75NNUW6EN33sG4iwtLsk0ZiYXD+6BjO/sA3gZr7XERA51BtWD3sdapR0sVAMGwjRBdj4KcByp8Hvs1m3jxQ+vLLzRvwVFH41SPlDUK2Q5AEfEl4e7dEledSTM5bUrRfHyhL6rbqC2I0kfWhgmy08M5Mky0bkg8nj7glhBfyc2h3V0Ik1ZMLpd56EVVEzNES8qvYNTux0ZHclFJeEbgdbBWPg0aM5Du2IzmmXp12mfvMlQuoN280U0RFKiv6tMYO8ZBqumuKsjyxifh+etP9YYLrCR0tgOUjB0qf6c76kkgTJu1gTcH40dSMBgj/fjfxnr7XO7DSHcyMqs6O69eSvws/MBkRuGnuokUl435sHPLr+P50N6DbmPC4NWFPW1xJ2GaGTQyEDSlaAbik9hmUXyGcCh7Efn4tSbRQJCF66HtY7oThePcwIpzwNi/NgeiiPIUMPfLqsRQWTYW5lQM7vBt50MTdEvCQpgfduW3rLjsQw18MFwiV+d6rm09g0KjXnoKMyEbV8fL6wCPTWADgo0COCY0/cAQNYfnmZdtWL5l8sva7LJJCQNTrtQf1FQh7O1LPgacYtwyEOR3Te8z3antuM8HcH4GS64Bh
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id ce9-20020a5d5e09000000b0033cddadde6esm1090631wrb.80.2024.02.13.03.52.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 03:52:24 -0800 (PST)
Message-ID: <b1653331-2ccf-4d0b-bc1d-a5b39e6d9a9a@linaro.org>
Date: Tue, 13 Feb 2024 12:52:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] dt-bindings: arm: rockchip: Add Powkiddy RGB10MAX3
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, megi@xff.cz,
 kernel@puri.sm, agx@sigxcpu.org, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-7-macroalpha82@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240212184950.52210-7-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_035228_737385_D9A038F2 
X-CRM114-Status: UNSURE (   6.14  )
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

On 12/02/2024 19:49, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Powkiddy RGB10MAX3 is a handheld gaming device made by Powkiddy and
> powered by the Rockchip RK3566 SoC.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
