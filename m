Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0472EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 09:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIDxVtsILSkU5FyM4FtlxeAMIE3p+Pzxttqr31wdrss=; b=nUT1phCpqbwCwU
	naaIIKE4sGMZ8FSqdgl8sH3denU2LREnRl5RU8/bD9CzPWdXOyTXQYIl7umXMGE+s7ymImqsCiNIE
	MSUtbmg2ms6dJWAJSb6orN5eW4TZdvBGrNP3Er8QsY/UwTkQHK39hZXMx7FqgQAhjRRJSw6tdthBE
	j0EgP4VHNWnAD0LU8j3Mc0MVo3AwbJSjYjAr79B7IPL1gVbSLnMkXTaLUCijOYCtAq5Utle8dNxtm
	44jvIOst/GijForM51kbLPFtIt4SyUl5UbOwK4ir3WKKCxxV0Pc/wJvlFbv6KihGrQtDMrGsIYTxa
	PAb7Rp3UFkc0LDONwUJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRsiS-007vi2-6m; Wed, 09 Mar 2022 09:34:44 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRsiE-007veE-Ot
 for linux-rockchip@lists.infradead.org; Wed, 09 Mar 2022 09:34:32 +0000
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 706BB3F1B7
 for <linux-rockchip@lists.infradead.org>; Wed,  9 Mar 2022 09:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646818469;
 bh=S6D+Jxwx9oQJfCitKNvGiSNhxjD326sJadhtw3SVqMU=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=LSDoZue8+Xj9wg7iTc7Kl1u1lDqalkcZ0lRypsv1N6OH/QljMx/m8/UncUMCr657c
 fQf3g3H6DPkqw3U75/dX3mL5hU/SpVVDn7MOiN+coAyk1eWr4aIh9Jxat3iWHLjqZV
 ZOSItpOvVWanddPdPQwmh2Bw+XDLsocQrDLycTvEy82b0yM8OnSRxwzDvdn2fENt8y
 kCRUgOd2ca/m7fi3w5k+kf0jkGMqZrCBce9Ni4Hh6G5/OclKsZjtszetrogjbqroS4
 GWNymMKzB7DmOl9R+vnNI0Kgq0vEkIElKkd8lhNBmvT11cFryeXc/Xg0gcDJo6f7pS
 RmXgc9wMFGkbg==
Received: by mail-ej1-f71.google.com with SMTP id
 q22-20020a1709064cd600b006db14922f93so991711ejt.7
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Mar 2022 01:34:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=S6D+Jxwx9oQJfCitKNvGiSNhxjD326sJadhtw3SVqMU=;
 b=4KRh+FjViUuLFkxNmdkSOccm2Mtmd8JkCaRmeGw1l8eLxvPkveex2DttVGFW5GKvFs
 uxhlD8LML4navaNM5j1cegWNf1TkAfgZ8r+hdROy8fqzUpl070fm1PTyE7Hg0abWvdJp
 GfPa/4IGRJiFdSr8kx0zZAtNJMlSS6BNzf6M0bCndgP0+fCk9LYuhUPb+BzTDo1MBPsL
 mpR56nhUX5mYQyyAkphd5zjKqS2xtIgMvTtN3bOsK6pE3AouWGq8pKmcgydwuhQxuctR
 kcFvdZcQC1voeA+WUNyPNwGhm6DSLqTczhiJXgeatzMCpwHIE7CGxx5w1uJDZ6Dq730x
 RkIw==
X-Gm-Message-State: AOAM532m3OaBOINyAKtIp9cv5WnbxDO8W7mM0lJ86yvEebx4K/hhhyaw
 QG08qwXxbXTSsk1RCkidk4AXK6TmBavezQx8suP3OtgAwSyRZAytC9SS+ALjHO0qoVk/dEON97M
 JZE1LPYfEsKNAOAtLPW82/26NivlEHiHawnfa/+ANuB8/1+L/qA==
X-Received: by 2002:a17:907:7815:b0:6ce:5242:1280 with SMTP id
 la21-20020a170907781500b006ce52421280mr16604621ejc.217.1646818469155; 
 Wed, 09 Mar 2022 01:34:29 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyJBwFDEI5sp3k042uTjXHZy93eWqTa5ABGASxo2gwT/EKB/jU2Sf2/c7jQShucPz75BXludA==
X-Received: by 2002:a17:907:7815:b0:6ce:5242:1280 with SMTP id
 la21-20020a170907781500b006ce52421280mr16604610ejc.217.1646818468954; 
 Wed, 09 Mar 2022 01:34:28 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.gmail.com with ESMTPSA id
 er12-20020a056402448c00b00413d03ac4a2sm520468edb.69.2022.03.09.01.34.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Mar 2022 01:34:28 -0800 (PST)
Message-ID: <bfec6388-bb84-f053-18b3-a0ef556b5f97@canonical.com>
Date: Wed, 9 Mar 2022 10:34:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v4 01/15] dt-bindings: devfreq: rk3399_dmc: Convert to YAML
Content-Language: en-US
To: Brian Norris <briannorris@chromium.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
References: <20220308190901.3144566-1-briannorris@chromium.org>
 <20220308110825.v4.1.I875ab8f28c5155a7d2f103316191954d4b07ac13@changeid>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220308110825.v4.1.I875ab8f28c5155a7d2f103316191954d4b07ac13@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_013431_049443_5AA455EB 
X-CRM114-Status: GOOD (  20.76  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 08/03/2022 20:08, Brian Norris wrote:
> I want to add, deprecate, and bugfix some properties, as well as add the
> first users. This is easier with a proper schema.
> 
> The transformation is mostly straightforward, plus a few notable tweaks:
> 
>  * Renamed rockchip,dram_speed_bin to rockchip,ddr3_speed_bin. The
>    driver code and the example matched, but the description was
>    different. I went with the implementation. Note that this property is
>    also slated for deprecation/deletion in the subsequent patches.
> 
>  * Drop upthreshold and downdifferential properties from the example.
>    These were undocumented (so, wouldn't pass validation), but were
>    representing software properties (governor tweaks). I drop them from
>    the driver in subsequent patches.
> 
>  * Rename clock from pclk_ddr_mon to dmc_clk. The driver, DT example,
>    and all downstream users matched -- the binding definition was the
>    exception. Anyway, "dmc_clk" is a more appropriately generic name.
> 
>  * Choose a better filename and location (this is a memory controller).
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
> Changes in v4:
>  * Update .yaml to use more "default" entries, instead of free-form text
>  * s/phandle-array/phandle/
>  * Move to .../memory-controllers, update filename
> 
> Changes in v3:
>  * Add |maxItems| for devfreq-events
>  * Improve deprecation notes
> 
> Changes in v2:
>  * rename to 'memory-controller' in example
>  * place 'required' after properties
>  * drop superluous free-form references and repetitions of other
>    bindings
>  * fix for yamllint
> 
>  .../bindings/devfreq/rk3399_dmc.txt           | 212 ------------
>  .../rockchip,rk3399-dmc.yaml                  | 306 ++++++++++++++++++
>  2 files changed, 306 insertions(+), 212 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
