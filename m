Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D7D0CA0EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 07:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7o61lDJuyOlCz8jOE9i9vFX/XdiWcBfx0g8lcrxC65s=; b=3zpATbz2spukMK
	uDOhQBjz/vV6J4pczr9fWK7iP8E0vG0Z/iA3yDphdiHmxek5C3ibeCoKBmnHB7kjPdjZzfCTxDWO7
	DS/aYU4p2dwIsXOOKYFIlQif7t1jyrMydLt+ZQoM/D6weUEldfnoce2OKJtzQySBRtoJzaAZvQFaV
	UpA7H2rWXRQx+mIwJfWgHTDBSj9jn19HmNY5ANMyCUf3Trw74ixXc8798N1LAL5QkcxqZ67JcxU1g
	sXhjP1TDT4s4GZRkzDPvdbeHVwIlVLZ5NAxlf05vLM3yrvGE4C/UAkjs2AwvGGDOqpGhNMQdZd/ez
	6letriNdlLQnMdnpq1GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoGNq-00000009bwf-2oZz;
	Tue, 19 Aug 2025 07:03:50 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoG3f-00000009ZL7-0nTW
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Aug 2025 06:43:01 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-6188b6f5f9aso784793a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Aug 2025 23:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755585778; x=1756190578; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=5NZfKG3udWMgsrYuCbWQzkndmXN80FmmveksBAwZ7vU=;
        b=drA+rkkGZbVyTE3arcZzCj8Qba436lJnQA+Sf2DN6OlMBv4zx8EfGasg26UV5+Rufy
         iq0fF//jr36nt8+KUM3kDI7YNgFiPTBnuMHfwjwWKp47q2B3IWIuuH6NYwn0pPsyDyyJ
         eb+na3EtwGbsLbGNYLwDKA3jxZWSxYgW5nvma3EPIMgVIf3aFo89U6DyEQs9TSRJDUQL
         Xvc0K1uyeVnDYNSb2corPqcD2/IkmGilbmDmxpQ+zgOFK4kb8+bboMp/ZjEhS1IKJaJ3
         wpX4ajbdNb8xHlJMN+AZEBOjdEaxFejbV+HmcsG2Bo36kBBRT7G8hFhdVKJjQun64nhH
         WIaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755585778; x=1756190578;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5NZfKG3udWMgsrYuCbWQzkndmXN80FmmveksBAwZ7vU=;
        b=k2EM/I+0BbSc/qwSIcvpfW6jhrbEO44G76lfWy9EcbhNYUFF9j8dRK7M+oPILhKt5y
         AY36njTSy84ri6wHbPjjlQeEykTEiF1xPUREYws2t13UlYfUparKHqEWxnWGicPvc1ez
         KaMIbPwzt1m72w5KDZPEFgXe9TVy0bmw8+NwIKWzsOynjXMD3kjjSMNjK9Um9uqyGVwW
         iN7f9CqXcnFnqcN63RTXEVSJ2LNMNKBNnDv9Y5nBgyHaUlESN3yu7lSDp9vQMYBbjUm6
         L1fRWvk/9ftXFZeMuXyNioQm3nzf2o/xRQiupB3NVU580aF25n2VHf92JseD0E6+/VoA
         syUQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/9e9XgOXUr+WKpQ3xnB4U86L3C5LETVtFjPd9TWKN83hcN6297vQKsiR5FD985Z7gjOjGk/d9B5rs8OeM0g==@lists.infradead.org
X-Gm-Message-State: AOJu0YydW57a/x+PdmGdS6g5IHNUAmDHtkJce3Sqvh5+qVe3kKC7PfDO
	gKwam6gnJkV+K3Hw8svejr25hLecU9QksoJwvKYKU4BS+0+qVsmh8wOByq0Poy6MgLM=
X-Gm-Gg: ASbGncscb2UM/qri5oTSKgO/qdwTs7sSPEwsgwenDXgs8xfWP/nY1h9Gil8OQn3qKbi
	CfmvG9ttrU53OFbFY4sbxmtzvwjilQoQZufHQ6oaDM5EFhdPPMG/9R9Sd1kvNlYdC0S5z1JkW1p
	WpyQPiv+Ko9yLYNS5SiJIYwwVpas0NXVEZQ9vVVdXPDLoEVAjzMtNyJJTV9Cr1Zbwm7Pr3T0ceT
	pwNp0wW7+DBl9iaKKqxw/ewwN3AqkzYdUoMCyVcpqp+igVp6koysRF4rc/91ts6FsskVUlKhHSS
	Mn9KEdYk4aR/AY6c2dSvUUiNrEFU6WrSewCxlWVdPJ+6GLeHDbgc3Jb4Q6gi6oc+DCkBjtgAgdK
	5WbSY/imz7mGp432jF3n1FMintfTJlvN0UFSMG6tEitqJ8mItl60MAQ==
X-Google-Smtp-Source: AGHT+IGK+U1B0BTvP4z58K3V9N0HAGdkPpmK/TpDUyvBa2blzD5rILla7oi2qSDdcRptU4XVkMKZdQ==
X-Received: by 2002:a05:6402:3482:b0:612:e262:929c with SMTP id 4fb4d7f45d1cf-61a7e485594mr585881a12.0.1755585777611;
        Mon, 18 Aug 2025 23:42:57 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a75778c5dsm1161708a12.31.2025.08.18.23.42.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 23:42:57 -0700 (PDT)
Message-ID: <380246b7-7e7a-4843-b82b-2e8d74e01ad5@linaro.org>
Date: Tue, 19 Aug 2025 08:42:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Change ethernet TXD timing delay
 value
To: Dongjin Kim <tobetter@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250819045018.2094282-1-tobetter@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250819045018.2094282-1-tobetter@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_234259_260025_6906EA3D 
X-CRM114-Status: GOOD (  10.93  )
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

On 19/08/2025 06:50, Dongjin Kim wrote:
> Very poor network performance is observed on the ODROID-M1 Board
> (REV 1.0 20220613) when running iperf3 (under 200Mbits/sec), and
> this problem can be resolved after changing the value of TXD
> timing to 0x35 from 0x4f.
> 
> Signed-off-by: Dongjin Kim <tobetter@gmail.com>
> Change-Id: Idecd246e3fe93447b6e3e9b165d077d2050bbd75


Please run scripts/checkpatch.pl on the patches and fix reported
warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
patches and (probably) fix more warnings. Some warnings can be ignored,
especially from --strict run, but the code here looks like it needs a
fix. Feel free to get in touch if the warning is not clear.

You CC-ed an address, which suggests you do not work on mainline kernel
or you do not use get_maintainers.pl/b4/patman. Please rebase and always
work on mainline or start using mentioned tools, so correct addresses
will be used.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
