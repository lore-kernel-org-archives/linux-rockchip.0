Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27C68C636CC
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Feb 2023 11:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d5+76TgKFti9ssC8gCXoE4VU8SwfZ4Vx5eGXhzX9n5U=; b=1l8ZTbQSFbveLK
	T+kt8egtZucM0Rwj83UJ4ghVgrQ0UlraA9/Z7OIr61pjIO2cjSWCxWxaTMV7judQKGaC+PZXiPvSX
	bKAju0AATG7JZkAN01Y2J5zdGfVMC8ltke11R3n6UJ91vvtH7aULd7hGCQLKIDSI1dHw9kmU+U+fy
	HC4VX1GiuYfF8HHMqZucKSPNPWuhgzrgO8J0afXraVX28GzJONvFOzPiALrjb03TvP7GyxPagJ+gd
	7qY7l/cQjEVie7jMCLYIuKX4mIlIgUAUM/29VuWR+6I7SurLHlqqFwMbjDP9tsH523kLxnoIfN6Np
	pkhZG69BCxH6FMqHaCNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPiJT-00FQHG-1M; Wed, 08 Feb 2023 11:08:31 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPiJK-00FQF0-On
	for linux-rockchip@lists.infradead.org; Wed, 08 Feb 2023 11:08:23 +0000
Received: by mail-yb1-xb34.google.com with SMTP id g2so21712956ybk.8
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Feb 2023 03:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=H3UlESeBgDciAANYrbDYeDSe/nLTXzJWVU7vv0QvjTQ=;
        b=FpTH+5SNG50VekrvfskE3miwhfUFl+CWP4tBydhtVNcsbNGeVvYDyBR45eJn3DiqC+
         RQApd/xtzL6xrDBazYsmciFcRnbB+A+8EVTN8uOr7YbtjfTyCkvhpbSYs9PYUQzNPSQ+
         IfAjUFG3UrAWy7KH515p6NiHKTERG1xLCsjZitWwrn4hpUHG5myGgFUyqkjcNszyelPE
         4XgiaA3YlvBsYmYmJDOhzWb/jXN3mRFaOwqmiLTMVWotEINHmsZT4XlDLf7+pEaAhLRX
         zUmDirZkeX7gifq04Zt9YgA443YIJ8UBXd7fFsMj2naruVfbTHXO0x/comBGG06fqMed
         fMqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H3UlESeBgDciAANYrbDYeDSe/nLTXzJWVU7vv0QvjTQ=;
        b=DAloXP1bEqiz2ZIfl/GOZnYPF52dcE9dY+asyQtguc25Yr/PRhD606GGh/fAEhI6tX
         8ugZDMJyd0COHZi6z46L5a2MQq21txp+is2nBrGM/K98NzEM9vcwiV+6H8Q8apkHeZ2i
         ZCZ4Sfb5qQ/731DIUOAbUXSLBfFuKbiqLPxgWs+anPx8T0jhCjkp7m31pjegkFAFdrfH
         Q3SKTisaqSTH93gmHPpUyqCXvbqZlbiJBoRvbj4C5UR80CgiG87mAbDuwvCsIK0dI2u0
         4DgDTBiqtM+0e+OasviIY/Eh4H8QltzjeJzp33KtvesVMyrsL7EnBJ369PdIDA7mv0WB
         zY/g==
X-Gm-Message-State: AO0yUKVPhxMAvOhRTO3j00Ro4R6AGlHC+JS/PURVD1y2htsY3TkXrx5m
	cyCYhE+HUctGKpo0aZQlwmo6XxREO8WTL2qBmGq5zQ==
X-Google-Smtp-Source: AK7set8xHbCP+Q2iJNCuxgj4D+UrE9o+1uWIfbVQJLQpwO5h1x/YO2XK51m0DHdQHHPEJpJ0k7HEhsu/xE2qaEsRvws=
X-Received: by 2002:a5b:85:0:b0:8c0:638c:74c6 with SMTP id b5-20020a5b0085000000b008c0638c74c6mr252977ybp.341.1675854499608;
 Wed, 08 Feb 2023 03:08:19 -0800 (PST)
MIME-Version: 1.0
References: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
In-Reply-To: <03627216-54b5-5d9b-f91d-adcd637819e3@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 8 Feb 2023 12:08:07 +0100
Message-ID: <CACRpkdbmXri1vtRShm7a3N0sRA7Qg_ni5FpAtiEv+72a6g9Wng@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] dt-bindings: gpio: rockchip,gpio-bank: add
 compatible string per SoC
To: Johan Jonker <jbx6244@gmail.com>
Cc: brgl@bgdev.pl, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	heiko@sntech.de, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org, 
	philipp.tomsich@vrull.eu, john@metanate.com, 
	quentin.schulz@theobroma-systems.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_030822_812070_6F2A6E6D 
X-CRM114-Status: UNSURE (   8.46  )
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

On Sat, Jan 21, 2023 at 12:06 PM Johan Jonker <jbx6244@gmail.com> wrote:

> Currently all Rockchip gpio nodes have the same compatible.
> Compatible strings should be SoC related.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Bartosz can you merge this one patch and keep the rest back
so we get a more defined DT binding baseline?

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
