Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7B05C48BC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 08:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9h9i8fKGgjDZ7r8I96nszPOUltXisXu34WwBFFU7Vo=; b=DYbAGe/6956cnl
	ySQOpn+Lc98oSlJFhzI33zxqPjG3Opxj4zJ59P6wKJmKYquMxg+2DYfDai8igwNVGmhTRTw3OKP93
	woqRR1LcN5iztgf9c7clz2ExUpRoNAPLrAxlrRGQiIiF9y5RDtwlMRbtKPHJTypbWIYgIMJDG4f/D
	bNY92OO9W3OVz3Qc8J5NmHfYO1ggW6ZGwUTrCV97XxFY0HhijPpt0DJFxQvTyVrJt9xTSzCEW7qIV
	LDsqPTCvm3mbDmEyl0fX0e7oQKJeWNm23swMW5NJtsIVuj7j/hJjruw1OAxvTpmW9Yb7XMukyzT7l
	lVbXmCqsHj4LplQgvETQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbynJ-00000009WRP-1ZEx;
	Mon, 19 Feb 2024 08:14:33 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbynH-00000009WPv-1p9z
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Feb 2024 08:14:32 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-412641511beso5668825e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Feb 2024 00:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708330467; x=1708935267; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p9MGknvx7gKM1o1+MnDJc2Ovn7fkZrxKQGfjWiijceM=;
        b=x4hDYEqatQ/O10MbK0VObZvsMi1E7WQW8P9QBnQcBBXJve0w2V3fTYPyYZ73AVVyvI
         YVhmViVWNen8kei99TFN9R7O27jTltFz3hMIO1HXh1O0skl8YaPAtoBK0MfOLxmDLXzr
         LSx8B0WazlCBnOMXlbszw3oppDdLh7UTK0Qy/SQjeJqIBE9mLzVE3jHo/w3rJ5unrWCK
         tzRQ2zu2FOT8mKEcoJ2B8EZloR8i3VBI7fR/SEFBxucRakQG30rctbQZVz7FKuvNPloR
         3PHAcjafXNKzOZEKNveJd4PsdF3se4wHgCFyRqSote7LxAQoA+LUC3A3MCE5KUHpP5tZ
         7ueQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708330467; x=1708935267;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p9MGknvx7gKM1o1+MnDJc2Ovn7fkZrxKQGfjWiijceM=;
        b=Z6vp9knN5j7xpGHYQcVMnOEklz6LNS4PNu3cTWA3GpBsljOE1i80kFGQZ66YPeea0B
         Mk5zvgKfsnOpbcYpd+8lEcHxPFEyExgfzp/fGKwD4QI1jj6ROgNtysxn4w7wVCZEDrXE
         /3FKOSXwStvGFpaUPBzOM+GpAyrycD64cjeJKirldiuLacLz9YvqzyoshRznJAhH2FtL
         hcPhKC1ijq+PZRzmNxehpnwQfaZwEt9afRTUPP7zjhJS9Tsb0mdqWNdx+6cJqPwD22R7
         4Kuq24oMbeJQYxAx09noxzaumM+B6IHbk7XOMOf0EFfjWWGPNdj6+SUjRobikmr2mP0G
         jOVA==
X-Forwarded-Encrypted: i=1; AJvYcCV2l71b3ksjgMGloGq3SQpM5PXID/mjOGv2KO7wMXQSleLdLlD1M9KzNdc5RnswMRv6b9KeiwooNhTpxauuVEbFEEIoOJ3ZFhvIdUUUbvF9Xyag
X-Gm-Message-State: AOJu0Yw66yX416CC/+MR4IBgT0o1M60SSd5qhro7KVD31D4chqM/7RWT
	hp2EtgUpPNZkEIPijZ1Py9eusJOKHVPmNbigQhy3ype6EydwNf0Pn3oUFV3i+dY=
X-Google-Smtp-Source: AGHT+IH6eGc6okNeBoJexPf2P4Fodhj5zQ6Bxnzn/yudT2F06lN06XajdvlixTai0kdA53i8AcDfQg==
X-Received: by 2002:adf:e846:0:b0:33d:3ff3:c8e6 with SMTP id d6-20020adfe846000000b0033d3ff3c8e6mr2375416wrn.17.1708330467350;
        Mon, 19 Feb 2024 00:14:27 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id co22-20020a0560000a1600b0033d2848046asm7075888wrb.95.2024.02.19.00.14.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 00:14:26 -0800 (PST)
Message-ID: <335472bf-7371-4555-bddd-97bb34f73bc3@linaro.org>
Date: Mon, 19 Feb 2024 09:14:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: rockchip: Add devicetree support for
 TB-RK3588X board
Content-Language: en-US
To: Elon Zhang <zhangzj@rock-chips.com>, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: weizhao.ouyang@arm.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240218065407.652213-1-zhangzj@rock-chips.com>
 <20240218085314.658223-1-zhangzj@rock-chips.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240218085314.658223-1-zhangzj@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_001431_485809_F6DE10C2 
X-CRM114-Status: UNSURE (   6.26  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTgvMDIvMjAyNCAwOTo1MywgRWxvbiBaaGFuZyB3cm90ZToKPiBBZGQgYm9hcmQgZmlsZSBm
b3IgUm9ja2NoaXAgVG95YnJpY2sgVEItUkszNTg4WCBib2FyZC4KPiAKPiBTcGVjaWZpY2F0aW9u
Ogo+IAlSb2NrY2hpcCBSazM1ODggU29DCj4gCTR4IEFSTSBDb3J0ZXgtQTc2LCA0eCBBUk0gQ29y
dGV4LUE1NQo+IAk4LzE2R0IgTWVtb3J5IExQRERSNHgKPiAJTWFsaSBHNjEwTUM0IEdQVQo+IAky
w5cgTUlQSS1DU0kwIENvbm5lY3RvcgoKRG8gbm90IGF0dGFjaCAodGhyZWFkKSB5b3VyIHBhdGNo
c2V0cyB0byBzb21lIG90aGVyIHRocmVhZHMgKHVucmVsYXRlZApvciBvbGRlciB2ZXJzaW9ucyku
IFRoaXMgYnVyaWVzIHRoZW0gZGVlcCBpbiB0aGUgbWFpbGJveCBhbmQgbWlnaHQKaW50ZXJmZXJl
IHdpdGggYXBwbHlpbmcgZW50aXJlIHNldHMuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
