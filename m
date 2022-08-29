Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 598E3ECAAD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 20:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpJFKzmb7qmfOupU62ngjrlMR3L82GOsDX5ojFuDL6s=; b=g2OH1EhWDWQr2J
	+YJgB6LD0BZCBQoDVk5clPi8xnaCYs61227THz/OfB+T+vnz35Gd2nLsyqc5mzoK9Fw8Vn7ToBDHx
	K5bfnaNyClN4Y9rGrRL4HuWS5pRQD3UVsT4/VtRomSc4YtbK1R3tRqyP4LGYEOFM+C6hQzqzB8nuD
	ujoX+EtvVfsGx2WOWsdUCRrfmTXeh09a/AEfmQv6ctMyHiREqXi6LeU/9dbA+4QOew6LCctdW5KIo
	uZYYFrK1h6d7oNgk6VK7QKZNq2HN9sXQeU7Mp0OsbYjrmqbxAC2ZVLhgxRGdV0Kku2J4yXOK7j4dM
	patjHgHlNQ4MC6WU61zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSlNl-00CdAw-PY; Mon, 29 Aug 2022 20:29:17 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSlNa-00Cd9U-RX
	for linux-rockchip@lists.infradead.org; Mon, 29 Aug 2022 20:29:08 +0000
Received: by mail-ej1-x632.google.com with SMTP id bj12so17981403ejb.13
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Aug 2022 13:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=iBDrYuK38tP07AWX3QFXuLOTrIhoz52xxnkZBhXnKGc=;
        b=eFddmdZPTAsCg08ovPXyoXSHP6EXZ0661ss+xIP0mD30x6tQaHosOhgiWaSkYc7ypK
         2lpIjsDNS2wSj2/YBuO8s2SHN2v2MvSfIRO3z764xmDPke4LY8oxmu8r798mZqARRua0
         b/qCsQ6lTXYRQZeq5ey6d0bEbJUXpmrzlu0Do=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=iBDrYuK38tP07AWX3QFXuLOTrIhoz52xxnkZBhXnKGc=;
        b=fCVg7C5mA79LBu29um5QoINx/JjCiwTJfmRuoTQDTLFS68wGSoNUTj209PJNEq0bcr
         xqjRZyfPKDHI9rOYOtVHgR3Ocaq51jyaFrAq+G2nDhEgE6XmoULl3LxlTYH9CXBuZRSt
         zpJn77FF5tU/SW1nSiMVMriHU6TcPI+wS+O0PvEJ/2jbh1qn1gpsvToWgepLa0uMHylI
         Z6yWvGTitnBpg5OdS9Rf9k4qGQZLf9pQdbSSiaZ64c3y03QSbhHJqZdDXGOF9DGUMeYM
         I7+Sj4kqDDfMT/M9WbwxErL121caICz9wVabS//OJOCbgxmdY9gsGSd75/VIGk1u2VhW
         wMsg==
X-Gm-Message-State: ACgBeo06WWnpaXozGmlWRLxY5SG5imsXwU+I+OGaf2skGqkJHW5R6EQO
	h+lQiTYnnM/rh0NDcBjqPP7keA043fx6ImiEvmaJmA==
X-Google-Smtp-Source: AA6agR6x/XIaAtR0Mo8JnsIAoaBx+9lRxsyXhIku7RHf1MsEnL3pU3ewTtuOL4HG9TWgyomlKkagwsvL9tX6SCpjqqs=
X-Received: by 2002:a17:907:6089:b0:734:be0c:e0cd with SMTP id
 ht9-20020a170907608900b00734be0ce0cdmr15135531ejc.474.1661804943116; Mon, 29
 Aug 2022 13:29:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220824080903.3696847-2-jagan@amarulasolutions.com> <20220829201752.518374-1-naoki@radxa.com>
In-Reply-To: <20220829201752.518374-1-naoki@radxa.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 30 Aug 2022 01:58:52 +0530
Message-ID: <CAMty3ZDxvaFSYpjYniXwpA6Wfyyn=c8mW5XNNUaiuqSb1niC9w@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org, 
	heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, 
	linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, robh+dt@kernel.org, stephen@radxa.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_132906_915397_9D219D2C 
X-CRM114-Status: GOOD (  15.08  )
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

On Tue, Aug 30, 2022 at 1:48 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>
> Hello,
>
> thank you very much for your work!
>
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus.dtb
>
> this is not an objection, just a note for me, currently our(Radxa)
> u-boot try to load "rk3399-rock-pi-4c-plus.dtb".
>
> > +#include "rk3399-opp.dtsi"
>
> ROCK 4C+ has RK3399-T. it needs different opp table.

Yes, I will update this in V3.

>
> > +     aliases {
> > +             mmc0 = &sdmmc;
>
> please add
>
>                 mmc1 = &sdhci;
>
> as like as other ROCK (Pi) 4 series.
>
> > +&hdmi_sound {
> > +     status = "okay";
> > +};
>
> please add
>
> &i2s2 {
>         status = "okay";
> };
>
> too.
>
> > +&sdmmc {
> > +     bus-width = <4>;
> > +     cap-mmc-highspeed;
> > +     cap-sd-highspeed;
> > +     card-detect-delay = <800>;
> > +     disable-wp;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&sdmmc_clk &sdmmc_cd &sdmmc_cmd &sdmmc_bus4>;
> > +     vqmmc-supply = <&vccio_sd>;
> > +     status = "okay";
> > +};
>
> does card detect work for you? it doesn't work for me. I think it
> needs

Yes. it is detecting for me. I've booted from SD. 2022.03.04 V1.2
revision board.

Thanks,
Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
