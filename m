Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E681C04FF6
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 15:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RcyaLghwWvgcLE3dmGOokORc2DdglsLWmVCuVXW6l0M=; b=H+OCDdElfdyaIx
	Rmyjor+yHFbLJ5WpkRVAxyAa33RqPgiOE4oCBl6jEGfX9UOI9sJzqCgFtvXdCYcqCTF0IdZ3dbED/
	Ir7rglV2KTXDzleYkC5MDXGlWj/wYzPu4KxzebCNxushH6GuM5tptAkSrgppVhOtC/VxsqzRPGIar
	j5eNGa/31NhGRwv8O4D0H5mGzMSq7rSwaOiwjCEVbVYuW7sRRmYwjNa6gE0r2eyoeWwYp6zJtwj2d
	xvrzBU2/pQo1TfPn0jQcnhQKCqTgn8jDZ0naS8k3cYH1DVyDjavOo+HzZcjZywYUemX6fumNPBcTC
	dTWve2UAQ9n3oOUXy+cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfd2-00000003U7j-0pJL;
	Sat, 13 Apr 2024 15:49:20 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfcz-00000003U6W-2R2u
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 15:49:18 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-516d1c8dc79so2425979e87.1
        for <linux-rockchip@lists.infradead.org>; Sat, 13 Apr 2024 08:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713023355; x=1713628155; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LI1j23QI4qxI38ZToeDX84dvQ68X7cYSls1NW0rPep4=;
        b=wi+b75KSK3Rnt185ig4WaVPUD8zr0A82RNxQYgfm4UVSDaq6Es1ilQZ2JkbQ+gMvMH
         9LzBYhnN4pQksCESZBnGROtf/Fl5HTT9z0Y6AQNKQT5SJY9nm/mFlWhKf9J0psVZXXMB
         PBJuipU3WYdaWNYQiy6L8yPCEGSdks0Oz6EtHdFq2+Gn5iW81NSe2UtpgXArpBLa3v7X
         M5aOq29hR5kSNao/1Lypk2MfC9Nx0mgk9GGr8Rbx6DCZxPOAmKkEhZ5fsCpVy3Xn1Zz6
         OM9D2pcPANhl3dmz0dZb8+4Tmz1xLH07q1bUiyWkUhrVpzQNdR0KlCQ2raOOyJ3Y3b6E
         nvRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713023355; x=1713628155;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LI1j23QI4qxI38ZToeDX84dvQ68X7cYSls1NW0rPep4=;
        b=MwWEwAWAnjs2GWdzasW5s5Elbu24YTaU4/P7TEt0CeSjdkRH5X4YzRVCrN+8RPEgvT
         la81YxLWEW4I3BtRmt0ZOHdS4PMRQYgywJsGkRxbCLTzo7SqDZ/q+nmWMp3vCV/a0SfH
         MbppIUeUljIAdkFC38xjVcQ7iKDVjB+h/3Iq4mQvVfwxyCsCFsRmgB4Ntk6Zzs373rTh
         SDQNz9vm1nI4hiIW1tY75tjharnNNek4tVtafgn8W2rQXuedstltCCsaRs81fUuACm8B
         +7uvnsEGpQ+iygeYmVYYw6Yrm6AH2jvc9XAdNoxzk2FOY7fIXLMBvnB+NI5WK35RX+5o
         +t4g==
X-Forwarded-Encrypted: i=1; AJvYcCWnh91TKwZc5cv44wiVvLVia4/H7droukAtJMSrffQiDHBXh7tMukm9WTRKYMIBfkoD2SMI7ccGmCvZLAy1ifEct7B8t+2QPY0SNrC5YWAD4WxK
X-Gm-Message-State: AOJu0Yz/UrMEyi/ggKwddc/7m+8uJq/wcerisSCFJQ2IfTjGC4p/tlCj
	grv815tapZE2odJqwfOaybeZzTxcxJkQLNz+syIUQWjO+BUZ70Azc6ZERAl5lnc=
X-Google-Smtp-Source: AGHT+IGEgI+QLJqSo/abtBRc6T3hoK4XDlnELOmCXYz8Ua3pBgaflgnnDBZwLNOA76sH2R4Va5xr4A==
X-Received: by 2002:ac2:4c81:0:b0:518:9952:2740 with SMTP id d1-20020ac24c81000000b0051899522740mr2486516lfl.41.1713023355353;
        Sat, 13 Apr 2024 08:49:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id r18-20020a170906549200b00a4e98679e7dsm3125754ejo.87.2024.04.13.08.49.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Apr 2024 08:49:14 -0700 (PDT)
Message-ID: <45eea851-ed28-4066-8bc1-d04acf4021f7@linaro.org>
Date: Sat, 13 Apr 2024 17:49:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Avoid error message on rk3328 use
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 shironeko <shironeko@tesaguri.club>, Etienne Buira <etienne.buira@free.fr>,
 Jonas Karlman <jonas@kwiboo.se>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <ZhqO-DEmh-6TeHrt@Z926fQmE5jqhFMgp6>
 <f245966c-267f-4159-a9ca-2561693d24d9@linaro.org>
 <Zhqjhvq38oNH5-sR@Z926fQmE5jqhFMgp6>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <Zhqjhvq38oNH5-sR@Z926fQmE5jqhFMgp6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_084917_746996_A7B5436C 
X-CRM114-Status: UNSURE (   9.24  )
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

On 13/04/2024 17:23, Etienne Buira wrote:
>>> presence of gpio,syscon-dev node (or it will call dev_err() when probed).
>>> Correct rk3328.dtsi and related documentation to follow syscon's
>>> expectations.
>>
>> No, look at gpio-syscon driver. Parent is used.
> 
> Parent is used, but the next lines are:
> ret = of_property_read_u32_index(np, "gpio,syscon-dev", 1, &priv->dreg_offset);
> if (ret)
> 	dev_err(...)
> 
> So if gpio,syscon-dev does not have at least 2 items (or is missing),
> dev_err will be called, 3 items for dev_dbg.
> Current tree displays a spurious "can't read the data register offset"
> message.

Hm, indeed, then I think driver, so
aa1fdda8f7ebf83f678e8d3c2ab4f1638c94195f, should be fixed. Otherwise
please say why binding is not correct and driver is good.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
