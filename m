Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58CA7C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Dec 2022 23:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ftk62Lq+pXpn+1mC3TKLxkoUA+4agjhTcYHKaLLLKZI=; b=DUi1ugNkIWJ+AU
	C1uPTUETRz0bZwMfygIMbDWmQ0s1dPdzOX1m+6PcCkSfIFc+M/b4SI/6MUtiMkt/VZa5b6Kr/M0Xe
	1Ni0LtHhrQ3vWTdA/fzeT8EzDb2pl00oMcK+2Z+Z1zAU910M4zmWHhDx98PukrdJ6JxpbmJsMEqmm
	2FPSk7ET3+Xz/f4a/XK2dQjPJC23JpPvVk/5uaRT6PWssuPKoll0Bbs0Js9eZvDl+e32eyL6EOIxP
	166mJ/qcZE/NXG0MjO4BCUrdUtd8aNMWollNdcOFkECSrW+o+JjdIxGkwwXVWN971MikJ/9JxLCt7
	Vh6Jj/UsT9sriyyXJttw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1FRY-001fnq-A3; Fri, 02 Dec 2022 23:27:44 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1FRV-001fmZ-4L
	for linux-rockchip@lists.infradead.org; Fri, 02 Dec 2022 23:27:42 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id 189so7809479ybe.8
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Dec 2022 15:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=01Dh81m4jbKqJgneaTvo1zhRa3UD/HHJqjoMbOfF7J4=;
        b=a9xmb67lFpFoi4YEDWdAsR+kRrZg1Vr2lMYe1a6A8d0JpMMOlIXszaUkLarTleeNEU
         zBlly5tuIWV45UB2FUN6Z7ZOmgl8BiAWc9KUkjSw53Kovacvd7z75f2pGLL6E6+0mkUm
         D920BYaBXJl9eC4lWFhiue8lFdsSNE2c6wP/SWua7K+dcIPW644lswUb3Ssbj32OvMyq
         fc2nfO8dt6oeBIL7nsNhE54xSg7koqWTdY+52LbY27NYIHXsCvQoi6leYjwDyzm+g5zN
         Q1pt1EmqXyGUwqFmYTNsPZU6ZT8erB/sqm5hhRkoZLgSxvER4k5D+88zeFBOKhsjw6mk
         sc3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=01Dh81m4jbKqJgneaTvo1zhRa3UD/HHJqjoMbOfF7J4=;
        b=3dZGJP2R1cw0UQDGx7daUt3Kepda+1Bw3wAn1J3fhgkx6baM3S9WKF/CywMXS08rzN
         OWELYM+w2556ppqFs95UOaLQTrYXX1v39JahlVL73HBvNy6oQ52aLefOpH+9RKiwWbsv
         y0+uJgLAP+romyJGeA5CfN2dgAQy6+Mo1TCKSdhsDv8nMSaTAmJki/B913nWHHuzZVwO
         4x/NAcVPRn7aJR0UdzQC1rKsCH8t6IJC0F/3hnCK5S5VrnMDZK9H+gGzj93aevQgXH86
         tvYsKBy0+6qh91+UwGrp0TamnI1L9qhjo86HJWej1qsedxfIZSEgiFYu+IUDBz6RgGlp
         j7NQ==
X-Gm-Message-State: ANoB5pk/AtTGyaxoIWezB9BF74IYGfvtRfRYuWiyy6WsHga0ljNfPOzh
	8B8d+UYDH8rEwBMGWSb0fLga4w4kgBGncg68ZYcqfQ==
X-Google-Smtp-Source: AA0mqf6PJ/bVmIQ/wE4S1OExKpRT9O5k9pewZIINIWmGYbkjwPDqfiGxa28TxTOCYjDRDy8IyKB5CP3C62LgP1KqHhs=
X-Received: by 2002:a25:c7cb:0:b0:6fc:834c:9c89 with SMTP id
 w194-20020a25c7cb000000b006fc834c9c89mr7444498ybe.43.1670023656365; Fri, 02
 Dec 2022 15:27:36 -0800 (PST)
MIME-Version: 1.0
References: <20221129172912.9576-1-macroalpha82@gmail.com> <20221129172912.9576-2-macroalpha82@gmail.com>
In-Reply-To: <20221129172912.9576-2-macroalpha82@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 3 Dec 2022 00:27:24 +0100
Message-ID: <CACRpkdaW8d5w5tnn-vdKQpvqXjC0N=6nCB0QfzUJ5rUk0oTt9w@mail.gmail.com>
Subject: Re: [PATCH V4 1/3] dt-bindings: display: panel: Add Samsung AMS495QA01
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, maccraft123mc@gmail.com, heiko@sntech.de, 
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, daniel@ffwll.ch, 
	airlied@gmail.com, sam@ravnborg.org, thierry.reding@gmail.com, 
	Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_152741_208472_A8F06263 
X-CRM114-Status: UNSURE (   8.21  )
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

Hi Chris,

thanks for your patch!

On Tue, Nov 29, 2022 at 6:29 PM Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add documentation for the Samsung AMS495QA01 panel.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>

> +  reset-gpios: true

Can you add a description saying that this must always be specified
GPIO_ACTIVE_LOW.

With that change:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
