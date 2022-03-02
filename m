Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BD4BC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 19:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B/bCo1zJc/L9WpOfraXgHJZ77qB+xhd86NtV1A7XNuU=; b=3WMOxwVAlWK4xx
	HobwE2Xeo5DY/Pb+F97Ah5Wel0K4CDgk9Yfdb+/5BtTzNNnj6l5cpYpvJdbe49DDCc7L4lWCT78rp
	O5MZ4ECowSRkLa+ZwMQHTWlusFTuiRoSZlJj4v0DTmaBlsJykj+cYo12bs7viLRIOVyEyS84B1wUN
	uO3YunzV6vukZ6fCD6u68wJzD1nDkUPQ7LJYocslGU0xXzUbmyCgno52oYEsbLoZ0ctw/aHj+smoi
	4nTUkugKl9hAZ8JPBTTbhr2bUUVDfFI+hvaUM7vkn9FPSqwmfpWTSwp2Fk0gcjjl1UMNtAKJt7I7k
	7SZecUBDfQZmp9eRfoNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPUHb-003uTx-UQ; Wed, 02 Mar 2022 19:05:07 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPUHZ-003uSq-9X
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 19:05:06 +0000
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E8F7C3F1E6
 for <linux-rockchip@lists.infradead.org>; Wed,  2 Mar 2022 19:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646247901;
 bh=o/gq2zH0XhC0PaitqVD/LagQpkqLCpBFDwRKMGbmd0w=;
 h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
 In-Reply-To:Content-Type;
 b=paifCzoumozPCgowa7dzMuwXNt5AtzNtgP1WBHuhsti2tBLjMHEHucxawN3B+TM1G
 CNSpca91RncTQM9IVHpW6yxHhnf3udLllgtDWGpZrdaHsT065UmvnI2u6VBN7PXfqh
 5qQUpwt4iy8q/NtXdTd7c8ixPKyJbJ6T10GpkfWmcTMmx9MrCfhWXIh8nwtPrEfWzC
 YVV0F57X64k2qX7a2qac1lmhYralJf9WUxuMllqPvbOVtWTF789iFnzavdIi7r87N8
 oZJElokxFjeHOHq0AuE7vuY9TqjPHL6ZYqMvZ1rt0U4hZUlEeWcSJBMQO+yF1mRh2v
 DXbnwuYGLJGTA==
Received: by mail-wr1-f71.google.com with SMTP id
 h11-20020a5d430b000000b001f01a35a86fso972306wrq.4
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 11:05:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:cc:from:in-reply-to
 :content-transfer-encoding;
 bh=o/gq2zH0XhC0PaitqVD/LagQpkqLCpBFDwRKMGbmd0w=;
 b=rpU1a/A1y15Ndx945AYZ+i3cNk/xsgR3KjLpFZ+CBfrkdu41AUqLXHSn/5Kr2yGYU8
 Kh9tF82ugTzjB0yJ5tXI7tKV7xP4sdPJ2atQsXANJvBC2hvErHbZcJkIY+lEFBn6Q10/
 5dUb8woGoxYFbin6taCaS0A1dXgeGplZ/+oyHPvp774CyOOFbMIitITVMTkNaLNNVgW1
 TtevKOZt9XElXACxvUKX5D97wKoJO1cy3qz1SZQX3G/ZLRuG+jelBpHgpLdjHY6A/MgD
 fqkA8JQFvN/n0SrU8bRym9QnTLek89VZdMtpEWFF1a0a1DrYqylaU5cFjw04IPzmfmUe
 e+Hw==
X-Gm-Message-State: AOAM531EKxaX/GGRyOLptPwxWE4OzdQ6Jw8RwEnprXHLTL8xACTd2tt9
 WazposgxHj+6hnF8X1tzTte82Ni1QzVzjb1lcpuDHNhxmuh6zJWK+6CYVaTqU1Wh3H5xrprX5de
 mqPMu4teIug66E82S75ah9RMfjMTae3DmlzyLCmrFFeoPORdTnw==
X-Received: by 2002:a05:6402:26cb:b0:3fa:3817:1f78 with SMTP id
 x11-20020a05640226cb00b003fa38171f78mr30654864edd.219.1646247889926; 
 Wed, 02 Mar 2022 11:04:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy5ud+uzIs5hvG4Gs8CgEyL9Hzob7WkoDzIJWUkIA9MRmpeL5TH6uATTuuggM0eZzWdPfuGEw==
X-Received: by 2002:a05:6402:26cb:b0:3fa:3817:1f78 with SMTP id
 x11-20020a05640226cb00b003fa38171f78mr30654817edd.219.1646247889629; 
 Wed, 02 Mar 2022 11:04:49 -0800 (PST)
Received: from [192.168.0.137] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 t14-20020a170906608e00b006d1455acc62sm6630349ejj.74.2022.03.02.11.04.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Mar 2022 11:04:46 -0800 (PST)
Message-ID: <211b3d35-1d8d-b71c-996a-b185324815f7@canonical.com>
Date: Wed, 2 Mar 2022 20:04:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 00/15] pwm: dt-bindings: Include generic pwm schema
Content-Language: en-US
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Heiko Stuebner <heiko@sntech.de>,
 Palmer Dabbelt <palmer@dabbelt.com>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Yash Shah <yash.shah@sifive.com>,
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
 Vignesh R <vigneshr@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Anson Huang <anson.huang@nxp.com>, Rahul Tanwar <rtanwar@maxlinear.com>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jeff LaBundy <jeff@labundy.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-rockchip@lists.infradead.org
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_110505_475863_23697269 
X-CRM114-Status: GOOD (  11.28  )
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

On 14/02/2022 22:21, Krzysztof Kozlowski wrote:
> Hi,
> 
> Changes since v1:
> 1. Add tags.
> 2. Adjust subject (Uwe).
> 

Hi Thierry, Uwe and Lee,

Any comments here? Rob acked all these, so these are clear to go via PWM
tree.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
