Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D3E6C52D7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 17:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LY7JkmawU2jgL9xb+zVoRKtHRDGxsy64Thfddoe3Iik=; b=fYM+C7iTz4PLa6
	Cp/Ud86zSWZNaYSphrHDch48rTnpPgayWzY6UwIcULaKrE3RBvuOcTbpr7cwMBtxa4CZadhV5CMAs
	bsxUwQewFZNrSS25JnqWJ8e+lpHfk1m+weFOJ/LteOY4Z+3rIXxYNxWsUZBDt/xO7BAQ+JzZynEXg
	vk9rT8cmMiqnljnbBufkLjVKsOZnQxdypRetBDNy6daqujdNQ38HK6BzZl/qMaHZ2Em7+q1iU4nES
	32HhHodaAETuBtMk5vHpPOY/kuGSxTV2YuvNRWtI3QMQ5HTfrblBG/WKD3AGa9QXtOVhivocX71+U
	IXZ3TfNmHw7YXrvV7jVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sduwi-00000004SBa-2aD0;
	Tue, 13 Aug 2024 17:04:32 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sduwf-00000004SAD-20N2
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Aug 2024 17:04:30 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2f0271b0ae9so61856081fa.1
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Aug 2024 10:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1723568667; x=1724173467; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bmfVHiTAghiA5/icoM+TOI1VecjW2wcU/5Ch8OWg9QQ=;
        b=dfq3sa6sVstvel2L+RzpNM4WuIxQGUyByIvYCTWTxB5sEBdifGu4HiSymEK3XfiYlM
         702ZJN6dKQLM4Y7UH4Q+nwqOW5y8QLwI9k+sCTsERwaXr6ts25L7r9QKGlHmlbzHYdHR
         Kn7eS5qRRNd6NoAFLsOyNqacR8Hs1y2gSoCWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723568667; x=1724173467;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bmfVHiTAghiA5/icoM+TOI1VecjW2wcU/5Ch8OWg9QQ=;
        b=SyZgA1sdwyEjYbHRA9oCTj6704BFR97utUKKl4yJoLapMuQxrL1LRE1w/vMi3eJ9lF
         JJKpnDMtkynCQLXpw3NFqlxhaGqf6OaRVwJC3gett2mV4Y0YK+lnfPw7qkBEQV43ncWs
         m7XzP/EdyqZtKc5bNtF/jVr/HP/Kv5MeET+ivkgyfXfGQ4xTeLmte0W7SnNJU4X6HhY/
         DuEJ3vWJuUA86XEmRHQ8NqwjLpNGEn/sXdDdiDuaqcURNUe7MkbaFlBh+SOqwIvIiHzh
         N++9oiV0Y4eC/NfIXdhBUTmbwpkTdq06sRSg+PNDG8MZm36SlmJ2nLprlXnyjQG5FOZz
         dvlw==
X-Forwarded-Encrypted: i=1; AJvYcCWcl8FTndc3epAvxTXP2wNN6b6qDU2dsRB2Ow8WqRlqoSxmIY3xyEUbrT2IGxQ8u/h3/DZtEox5oMhh+pS31tt3+NzJZmitd7MYnp6IIMsfKaNJ
X-Gm-Message-State: AOJu0YxHMnt38ZygRQg8XBHOQ1RPUX9li3L0jdgFT0s2LGq3HTqkmZK3
	lByPZs8cfpxcAq3J7aTHR3gOU8gfoGZWVnAqQ9mss5CNTuCf+hG5+JsqbSRIng==
X-Google-Smtp-Source: AGHT+IGMS+LrGaCj1Lg+QZmrrlMH0Ixfn/L59zuCwNIRqWw0O7FBQUZWwFW5fNKu3n2lX5Yg9gyCBQ==
X-Received: by 2002:a2e:f19:0:b0:2ee:80b2:1e99 with SMTP id 38308e7fff4ca-2f3aa1f9dcamr96771fa.44.1723568666421;
        Tue, 13 Aug 2024 10:04:26 -0700 (PDT)
Received: from [192.168.178.38] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5bd190ad1d3sm3081547a12.28.2024.08.13.10.04.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2024 10:04:25 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Jacobe Zang <jacobe.zang@wesion.com>, <robh@kernel.org>, <krzk+dt@kernel.org>, <heiko@sntech.de>, <kvalo@kernel.org>, <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>, <conor+dt@kernel.org>
CC: <efectn@protonmail.com>, <dsimic@manjaro.org>, <jagan@edgeble.ai>, <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, <arend@broadcom.com>, <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>, <megi@xff.cz>, <duoming@zju.edu.cn>, <bhelgaas@google.com>, <minipli@grsecurity.net>, <brcm80211@lists.linux.dev>, <brcm80211-dev-list.pdl@broadcom.com>, <nick@khadas.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 13 Aug 2024 19:04:25 +0200
Message-ID: <1914cb2b1a8.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <20240813082007.2625841-2-jacobe.zang@wesion.com>
References: <20240813082007.2625841-1-jacobe.zang@wesion.com>
 <20240813082007.2625841-2-jacobe.zang@wesion.com>
User-Agent: AquaMail/1.51.5 (build: 105105504)
Subject: Re: [PATCH v10 1/5] dt-bindings: net: wireless: brcm4329-fmac: add pci14e4,449d
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_100429_538226_05AF0D3E 
X-CRM114-Status: GOOD (  10.33  )
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

On August 13, 2024 10:20:24 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:

> It's the device id used by AP6275P which is the Wi-Fi module
> used by Rockchip's RK3588 evaluation board and also used in
> some other RK3588 boards.

Hi Kalle,

There probably will be a v11, but wanted to know how this series will be 
handled as it involves device tree bindings, arm arch device tree spec, and 
brcmfmac driver code. Can it all go through wireless-next?

Regards,
Arend

> Acked-by: Arend van Spriel <arend.vanspriel@broadcom.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
> .../devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml      | 1 +
> 1 file changed, 1 insertion(+)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
