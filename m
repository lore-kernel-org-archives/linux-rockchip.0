Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DE64C7618A
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 18:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kz0e4pGwVPGz6WAI4CZGnXGd1AuNW+4WkRRsl+eCo20=; b=0hbe2jIbfRr99M
	rXcKw8tCtwjpOppZJCNQUpcRkJCfO11XmX/s/kjO1Y8xyswa/QaNeCeV/0BvB79xiYzwmRj0GAcQ0
	v0odoqk42S3Yw9qXgMqd8eIO5elr5IdxN8qLaVX3cXGIFDmUZ/uhum7DF2at9QiEWsvSMgY5XbX7x
	zLs2EM1I/C7ZlKhiH4vfx1X/ZGVQuIUoCrQfWKoHkK66B1UB7LnAkoc1Ezo9Y0ZYtNMIXIJykeXzJ
	fItVHz2lUg1xscvggEA3w2O2RZObEWXyTu5+4Bp8UNIOJrKEwZcWuGW5mj45ssvKEIYyK8nKGD+8F
	1WgK8cMX2AiSdGSTpaAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peJwm-00A5tl-0C;
	Mon, 20 Mar 2023 18:09:28 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peJwi-00A5s2-1f;
	Mon, 20 Mar 2023 18:09:25 +0000
Received: by mail-qt1-x82a.google.com with SMTP id c18so14163840qte.5;
        Mon, 20 Mar 2023 11:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679335763;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9Ym0Aa6IJr35fCbX8wJyITkzyONp9K1eXcn9gLrMKEM=;
        b=jV+wT9G9dMq++VXoHOITcaMwSKfT7Ne8l6voVfiCeH20VK0uzRJIf9CA2v8jn1mE42
         9De/qJTXiN3NlwKDdk7NArH7WT5H+4m7s71wZTV+2BygDTiQuwk+mRLMpRhBukxFua9x
         67hE9fL+3OgJ1dTRBMXtTwDXEznGIlnqEuoH6BXNz+DtDWm5LZSaKbCnlxFhePXKvQQw
         biWPqZK1eoCZ6HeXFY1w+DmsNHS4W090fENE/el13ZE/cuRLHNVC7Li/p30/Ai1N8xhv
         3ejM9NTyAoTh9dtKbufIgtWOwd6srKtNAzDZ9KiKE0PTE7Lb1wYokPUbe9HLqHLVnTp7
         mdLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679335763;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9Ym0Aa6IJr35fCbX8wJyITkzyONp9K1eXcn9gLrMKEM=;
        b=sFkUNlnrkHnFnvMNZ3QRDc2FcexzBNm1/jeMvqxqccCPvSSjiAZW9QWB3PUOTikTBz
         4+7qgU4D7iapSYX1uRnN3sZ94tU3CQFc/+I0LlJdRUJpAcmY/UM5sWttEMVWXv6BBv23
         +LDIJXqUFPwPwv1kYA3Pi10vbicTeK4MD3J/CtGju10Sxs+RDpMOL/98CXElAMdyaxNi
         kpG0WZLFegNmdYkDgbJjPV6nvEMk3m207WHKWLEQEIcDmnw8EOimBijBWfzEIQU0ITYW
         jifXRmGB5TY3B0/iV1Tq5S+gI46WX0ZMywWtfJp2Bhdzb9v7Bb1+tBCag2EDEJmYCqO5
         1VCQ==
X-Gm-Message-State: AO0yUKVGtYxi9GyZuPJiiiBTuLvzf9KG+GafxvonnoLxC7lwMs7yLfCE
	2anSK/t3UIxRavOgyZq1Gno=
X-Google-Smtp-Source: AK7set/rOHA8qVlayMALPx0FGjCcSWh/Kq1WvV8aodxfR3XsSBymHa1dS0evHblRHeVucdEeSCUF5g==
X-Received: by 2002:a05:622a:190e:b0:3d7:1979:829e with SMTP id w14-20020a05622a190e00b003d71979829emr125230qtc.27.1679335763440;
        Mon, 20 Mar 2023 11:09:23 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id l16-20020ac84a90000000b003d4ee7879d0sm2042741qtq.56.2023.03.20.11.09.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Mar 2023 11:09:22 -0700 (PDT)
Message-ID: <82ae9fd5-a4f9-89a6-8040-c64d22a85ebb@gmail.com>
Date: Mon, 20 Mar 2023 11:08:56 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] dt-bindings: net: Drop unneeded quotes
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <mani@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 Michal Simek <michal.simek@xilinx.com>, Andrew Lunn <andrew@lunn.ch>,
 Vladimir Oltean <olteanv@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Tobias Waldekranz <tobias@waldekranz.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-aspeed@lists.ozlabs.org, linux-can@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-mediatek@lists.infradead.org
References: <20230317233605.3967621-1-robh@kernel.org>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20230317233605.3967621-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_110924_552642_4D45A56E 
X-CRM114-Status: GOOD (  10.37  )
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

On 3/17/23 16:36, Rob Herring wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>   .../devicetree/bindings/net/actions,owl-emac.yaml  |  2 +-
>   .../bindings/net/allwinner,sun4i-a10-emac.yaml     |  2 +-
>   .../bindings/net/allwinner,sun4i-a10-mdio.yaml     |  2 +-
>   .../devicetree/bindings/net/altr,tse.yaml          |  2 +-
>   .../bindings/net/aspeed,ast2600-mdio.yaml          |  2 +-
>   .../devicetree/bindings/net/brcm,amac.yaml         |  2 +-
>   .../devicetree/bindings/net/brcm,systemport.yaml   |  2 +-

Acked-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
