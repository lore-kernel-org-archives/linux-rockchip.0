Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F857C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 14:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsL/s1kEXcX05z4eeyrYuV8OrZ6RlemZ8iSfmNtFjTk=; b=sC6p5YtVJ6BRta
	DVlVuuYBLNB9nkID/mu1ERkvCnAEJzkOCaj0gGTkqT3JYHZiQyui5HvNG573XkG7LexUU/3g10Juq
	p97YOXc+9FDnNiWBLym/Ae9O6G3MiGkVAcPNOdmrtmNHkh1EQl3qfuZEc2qrk6rH29WKX2ebUz+Z5
	FZi+EK8sIYy0j/BZu9H6rA5ybKBOETbizfF+2RgXIbNVKCI8hUecNvN3/jihyLZ3S81BmI30MoDT8
	opqwuUUCjalDFW6IADH6vcBtysRxim0DV+kVm62tT120pcAO8B4UXYplUBQHI/oMXyFpjAgJElNQO
	qm+j0wHNCYgWa3GRnjYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3V6-00FPAe-Ag; Mon, 07 Nov 2022 14:53:24 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os3Gc-00FHq3-1J
	for linux-rockchip@lists.infradead.org; Mon, 07 Nov 2022 14:38:27 +0000
Received: by mail-ej1-x635.google.com with SMTP id bj12so30566511ejb.13
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Nov 2022 06:38:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1m3WexH3gXC/W93bwft/1e2FdQuh2bz86DBo3IQGDFA=;
        b=nxt1innCOUnItJ/vSC+ZnoISLb3/4mNbDHY1tcDU12La8mVlS/4nwaGXgUAf2HKjkJ
         dmvmu8PrmCBoPoWIJY3Pq+RTcR7Hhxdw3MGuHmMCTE+WRJ0hvHBxaIb0Mm3XDRZT1EfZ
         i8+b/5FA+VNsDeAiASZmK9JY4BvKzw/fv+FQKtleYjn38uQVIYF4EvFvbZ7k4508G1pH
         7s7XcC0TVXgQh9KwmZGjqLA2IOzrzHg1rAiRvVEYqUUmvyqz4FAbtqwpFgh12dGdQ9Mj
         E4bLe96XeHpvQccNB9RtYzTsOhYLbRBBS21qCn0Ijo+xCPHojPcpcJv26/GzqkKQSC9x
         ZrjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1m3WexH3gXC/W93bwft/1e2FdQuh2bz86DBo3IQGDFA=;
        b=AzPtc75sb7n1VUH3B+m3wOJrOgmvnIMtxboGLYrmwrYgEbo8cySnS36LPr2St5ZSQv
         tIKLg6lxWi0ndmWQvxK9O1yWdF2Fl010edtEHIm8jIJ87e0/n5ii0p2NEvUEu51a7069
         n4KGMHPZhuKRbAZANHXipKrdhtlHkvr/+Z+K2hAJkPNv62N8PHFzIJ1nzgK7uSjnRGfl
         ADYx8SaDz1783AXiYXNOgo641c1NAHl0H22voBiWD72UAWhgSDKk+P6tE1Q386BiK4iR
         pjqq2Awx6W6/uzR63edQD4WTHLkQTuCSFtC3VnbNLDThtxX+sE3aOkzN9TgAVZ+nArUt
         ZWCQ==
X-Gm-Message-State: ACrzQf1M+URBWIA0JEYAH3empdRJYqPvW+pLUnjeLliqdqE8p6jxDZQB
	KjVVZyaw8bCdI3lK4yNAWqhl5advXYu9E+mAjksb+Q==
X-Google-Smtp-Source: AMsMyM6+xtL8+Yj7c1bt1AQJ6bqIcZFaL33G19BOfGXBGRhC9sazlQqdgMff+YbzEMnfzPenUeDbPgvidKxKz3dQW10=
X-Received: by 2002:a17:907:c1e:b0:7ae:31a0:571e with SMTP id
 ga30-20020a1709070c1e00b007ae31a0571emr16628108ejc.690.1667831901503; Mon, 07
 Nov 2022 06:38:21 -0800 (PST)
MIME-Version: 1.0
References: <20221017-upstream-px30-cif-clkoutm1-v1-0-4ea1389237f7@theobroma-systems.com>
In-Reply-To: <20221017-upstream-px30-cif-clkoutm1-v1-0-4ea1389237f7@theobroma-systems.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 7 Nov 2022 15:38:10 +0100
Message-ID: <CACRpkdZQ45ocGsZ372apH1gTG3ORofPwn2bZtJjDT-=nkWzgUg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: list all pins in a possible mux route
 for PX30
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: heiko@sntech.de, david.wu@rock-chips.com, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_063826_207086_0B235A3A 
X-CRM114-Status: GOOD (  18.29  )
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

On Tue, Oct 18, 2022 at 2:17 PM Quentin Schulz <foss+kernel@0leil.net> wrote:

> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>
> The mux routes are incomplete for the PX30. This was discovered because
> we had a HW design using cif-clkoutm1 with the correct pinmux in the
> Device Tree but the clock would still not work.
>
> There are actually two muxing required: the pin muxing (performed by the
> usual Device Tree pinctrl nodes) and the "function" muxing (m0 vs m1;
> performed by the mux routing inside the driver). The pin muxing was
> correct but the function muxing was not.
>
> This adds the missing pins and their configuration for the mux routes
> that are already specified in the driver.
>
> Note that there are some "conflicts": it is possible *in Device Tree* to
> (attempt to) mux the pins for e.g. clkoutm1 and clkinm0 at the same time
> but this is actually not possible in hardware (because both share the
> same bit for the function muxing). Since it is an impossible hardware
> design, it is not deemed necessary to prevent the user from attempting
> to "misconfigure" the pins/functions.
>
> Fixes: 87065ca9b8e5 ("pinctrl: rockchip: Add pinctrl support for PX30")
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
