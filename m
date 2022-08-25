Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0980CC04AA5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 06:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuBt8kUXzXKXesJup9X38oY+EMzWINlQi+djZwbtlD8=; b=oIw9An3w6ZGcFo
	ipjZjVpjnQN5J3He2UxXinTj+4+kFXccUzZFZx2r6xdcjelj7eyM/mlg3LcMMex7wyPlA9pz5yRqW
	B8Cj+PYuGBCzMPcaGdnQ7h5/9hVRH6U0DKQJX8So8E7Roi2yLO8yGs7pmuje2Ev0G01uebK3oWeaR
	SrafNGsondHUzpjWhTJlct9XFJ+k2dpWhqjOsJlSXXq3gawIqfG2xd2fiU9OOv70tSZsgPPJVKQYw
	DZlNonh/2o9o1HLpmboWoBOldkOnlc2qIsDIZrYR+A3kl75CHAKLYGn3E1o1dZX56BXiz7X999nNs
	JGJCo0Og6zNiQbS0AnnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oR690-007mxj-1C; Thu, 25 Aug 2022 06:15:10 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oR678-007mGn-9T
	for linux-rockchip@lists.infradead.org; Thu, 25 Aug 2022 06:13:15 +0000
Received: by mail-lj1-x22e.google.com with SMTP id n24so16393804ljc.13
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Aug 2022 23:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=wXqYQNt6cQwwovEWaPctQuIwu12r6o/ryFEQHXvmidw=;
        b=Z8V/D1iHr+3qt3pSFcQ5ZOeH0iO4G/pHn+XoNotaIYjxtt+oIh0RJD9YL3fzn6NmF2
         keRguEOY+JCT3rPJ4clH8kP1+xBJEQvelpo2RA91EyugRKUr7jACpJxh49EkA75pYy+R
         4u1FzXdV5fEX3vnN7Uuu1Tcxfrs4J3riE0OLKIGGS8Wuio93l6VtWFG3NUMbWDRZ2XIj
         m3cArYVlka9n7JbWg2A0+Pbrvx+Afr3ku+XlfM8+eqZ6HURCFjdxteLrXE0IuPmQJzai
         lUJDfZtzcC0W0+lYdbZeAgdnRKGwUbTbD/6hq31m3HOs5yzAyK5n0yqIel30J6Tw8bSs
         OHBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=wXqYQNt6cQwwovEWaPctQuIwu12r6o/ryFEQHXvmidw=;
        b=Pfni97NL9Rnyr2B1n+4XbZmC3Y9AqP8QIhA4cxQQ7FzwwlI/ICUw9Eu6Vcm1XPBJ5v
         ykDNVkuBwBPovQBwD5t472+nZXw7/Cy8T+6ZXub/nMbdKDnETKQtk0JLk3hUs9bYCyfA
         vZLvO5t7UjkBTLWWUE4xu5Odrxrl72U746HW1glIXbVX5OsVxxXaZWpvSIrouBPC1LZy
         4Aw0oomCB/Rd4X1VjoW2Dl4uNThZNwqGOIimY4NYABuET4t2PSmJDtuExA1tOkXDEspm
         Y/bpppNE3H65SgOiJQ+0WnY7ViuHOWLioH4dOZJQd1TXbBHakYjVcsNHnmHlaFqXSPi2
         PBjw==
X-Gm-Message-State: ACgBeo1Ih7eYBcMAKj8HfYPjub0+2q2XM0xYucg8Ihh0qJ7TKFXWGvOU
	VDoEeP149dcYs4qI0Hm71uL6yg==
X-Google-Smtp-Source: AA6agR4m4Z9GwEQ+k4jSc0Z8Nk2/b5GFxRJY/8LmssR1LVZFSvwsKEH0v/tzq4so1SvajWcwWWcQxw==
X-Received: by 2002:a2e:9913:0:b0:261:ccfa:da6d with SMTP id v19-20020a2e9913000000b00261ccfada6dmr580559lji.269.1661407991448;
        Wed, 24 Aug 2022 23:13:11 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id p3-20020ac24ec3000000b00492b494c4e8sm301859lfr.298.2022.08.24.23.13.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 23:13:10 -0700 (PDT)
Message-ID: <9f293197-b4f9-c53c-ead4-08e2113d9c8d@linaro.org>
Date: Thu, 25 Aug 2022 09:13:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: mfd: Add missing
 (unevaluated|additional)Properties on child nodes
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Lee Jones <lee@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Tim Harvey <tharvey@gateworks.com>, Robert Jones <rjones@gateworks.com>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Maxime Ripard <mripard@kernel.org>, - <patches@opensource.cirrus.com>,
 Steve Twiss <stwiss.opensource@diasemi.com>, Chris Zhong
 <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>,
 Alistair Francis <alistair@alistair23.me>,
 Amelie Delaunay <amelie.delaunay@foss.st.com>,
 Linus Walleij <linus.walleij@linaro.org>, Renner Berthing <kernel@esmil.dk>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20220823145649.3118479-4-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823145649.3118479-4-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_231314_350106_DE59D5C8 
X-CRM114-Status: UNSURE (   8.74  )
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

On 23/08/2022 17:56, Rob Herring wrote:
> In order to ensure only documented properties are present, node schemas
> must have unevaluatedProperties or additionalProperties set to false
> (typically).
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
