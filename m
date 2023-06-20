Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B122CEB64DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 17:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ww0Y/+e4kCMMLopKuh6gTKu4z1bZquitVaK+xYr4PBY=; b=0+fHz6KywpWc/c
	PI6P+HOXDjMp1f/lJvqWlwO8c+RRfD+DhPxuz+q6RkjqZYowpcGwuaxgfcP+d6SBxbZ5ZCLA5UWIY
	5HLpXUZh98lwJQ3l5ZVuHkklCEWu6LdnKgg/P9rnRrUGT3l2GfwdFSYbZrLkf8fCstAeTEUIf43LP
	Fd2Cfjq3BaCEfpCXlJdxL9/Li+iCidDzbsLbBsOB9wzA6UjuJrTk0VPEwnI/9Pa9jaGoMtyTndXo5
	vLFjIujBcCJHtwk+JCTRNROWYpihiSaSS6RA2HblP9f7q0SFQeAYA6oXbNJC/pkkskzeaO6np6q+N
	EPhZBGN2GaEvVyR0Q2MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBeyr-00BucG-12;
	Tue, 20 Jun 2023 17:17:25 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBeyo-00BuZo-1V
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jun 2023 17:17:23 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b4725e9917so43168821fa.2
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Jun 2023 10:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687281438; x=1689873438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/XabCVCnKN/+LbuMDododZmkqW6HATgL+WSAC/bjcDk=;
        b=NJqn42QJSscKRFEldVznl4jsn9FWxMZtL7Ma5dT9YIOSe63Nr1VhEfwVfkN4MaNrtw
         FRMZEIh6RDVvfy/jvZQJwxXdsn/3BWZEmQuALvm8VVJ/kU6D6J0h4YMNokKxL/8DYCR7
         DMU/TWF0CEoynWmHIPgzcHrH1RsGwJ9slDo1YDW40VbjXZ+UUztdOsraaPseyu86RakZ
         psl7jkeu/T58P92Gm4iS3V2Bl3Dcd4Ijc5dsIl9olj84wbaRpKfgzeOQRJX+HitDg3/3
         sRuaST+ntMyhI8P/darxU94uG+c8fTWUEShA3xmOC9F525FoQqZi52wE0C5dfEQwXno9
         uXbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687281438; x=1689873438;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/XabCVCnKN/+LbuMDododZmkqW6HATgL+WSAC/bjcDk=;
        b=cXd4CehZ5c1pvrrZYHy8c7gGsaQYuI2tMEMGdQdlwTs7uZbcSeEMeTZbDiViitc2xP
         WUJa3nhY7zZqjTWhtL7GubNqqpCBKomOK1+eNwi4SRfOcnQGMmQgASIRQ45sfIzn20YZ
         hVkNLx4WZ++cZ8EZJQmLxoolpQ/LvMPJvdMZ8zF9yTCnXSxUox/OFfbB/pGQgNNriTP0
         1PAWMfNx1Y/qBLutMwHaAu+p6DCemUhBvi9MLN+p3EyeZCHvSDNmKgDE5stfzHo5gJvs
         zhObaJxwMoLYIfXuAuSEtlo9jFXztSumPsAmZWXphYkcf7ZY6YGDf1No2nYgVQSvNYrr
         Axbg==
X-Gm-Message-State: AC+VfDz2tQQaaOG1NH/6oL4rS/tWoCEk/ENYoMNGMMiyiY3iqMEsDSDS
	CfoyNj5DzBcE7LL6XE6nATc1Lw==
X-Google-Smtp-Source: ACHHUZ7HmOZ5iUHATH17EiFwU86g/fw8G/0/mk89VyaIIpiZGcHhgt6Azbs6QiCq7zflkCAlb4U2XA==
X-Received: by 2002:a2e:a413:0:b0:2b4:6c47:6253 with SMTP id p19-20020a2ea413000000b002b46c476253mr5577460ljn.38.1687281438388;
        Tue, 20 Jun 2023 10:17:18 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id by19-20020a170906a2d300b00982bf866f9esm1712568ejb.66.2023.06.20.10.17.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jun 2023 10:17:17 -0700 (PDT)
Message-ID: <ff9045bd-1030-b3c6-9692-e223846b0ee5@linaro.org>
Date: Tue, 20 Jun 2023 19:17:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCHv3 2/2] arm64: dts: rockchip: add dts for Firefly Station
 P2 aka rk3568-roc-pc
Content-Language: en-US
To: Furkan Kardame <f.kardame@manjaro.org>, robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
 broonie@kernel.org, deller@gmx.de, dsterba@suse.com, arnd@arndb.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <c020531e-c56e-7606-1846-5ca7332de96f@linaro.org>
 <1687280004029.3690769854.982412891@manjaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1687280004029.3690769854.982412891@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_101722_506265_0F9CB44F 
X-CRM114-Status: GOOD (  10.03  )
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

On 20/06/2023 19:05, Furkan Kardame wrote:
>>
>>> +	};
>>> +
>>> +	hdmi-con {
>>> +		compatible = "hdmi-connector";
>>> +		type = "a";
>>> +
>>> +		port {
>>> +			hdmi_con_in: endpoint {
>>> +			remote-endpoint = <&hdmi_out_con>;
>>
>> Missing indentation.
> 
> I am not able to see any missing indentation in the patch. 
> I did run checkpatch and did not find any such warning.
> Please advice in detail ?


remote-endpoint is a property within a node, so it cannot have same
indentation as the node.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
