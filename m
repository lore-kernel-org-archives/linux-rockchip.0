Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A2A9C61DA4
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Mar 2023 12:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYhTgZLG9jynJJqtZ58C5Pq22/Cpfmm5mt8grzDqu8g=; b=jlZTO18xiadTdS
	ImHm5dxxLh6DwVuVZApBvII3iOKfDY+4lu/HuSNYBCcMWyBGh5zkraDfZLBenGoJ8Kdo+IsTbhTj2
	kC18ocNt5OY18eI5wVvLPtc5vUQ8QR1vxafyguUQBYRyRGDIBTtajqCT3g6Fh647G1E+Oa0/P5ZLc
	Wbakk2wDWlFhqsCh88P/uVONbcDWR8+JK7lX7QlIXD5fDjlGTNBg0EgGkOjGMi7r0+NSl1VrBIQxg
	MP5VQcYlwOi46IYnkGFKkHcuuUw2fTzp59swC+5s/iixW8yh4u2AAHRJ+H6ZR/Af+loUxOwg62Pox
	0N59pVrfX2lDv2hrAn4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZA65-00CikL-8Q; Mon, 06 Mar 2023 12:37:45 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZA62-00Cigp-BG
	for linux-rockchip@lists.infradead.org; Mon, 06 Mar 2023 12:37:43 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-536bf92b55cso180375317b3.12
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Mar 2023 04:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678106244;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B1fqN+Osai6CCo/4uAM/DIM6+3uZVeAU3x7P6Nh+AL4=;
        b=kgXWRALfBwicLyIj2AHvNJ5gg1ibq5RRNApO/nCtrsRirMEDwTI5eh0fJAvmB/ndck
         HwNhtV3anhcNQD7++OC5LilGZx5ixD8Glg2v8x99OigvY9zxcftolFR22ghvZSq51nXP
         AnAJms+vpoaILeIY9Va4Bz8ba0ZgAKj8lkgtfdbX+3hcp6kJbXeR6LJlulkzZ+qj8xnT
         TvI52p1HkQ0EmO3dncEs0eR6HsvnOLN0qLgRZeBzztmea9TImX1bef/+VidIUmCxcGgZ
         2cFej9kS7yRFYwSC2/Pa4B/KJAszeeav8VcqOKl7UcF7ZQto/dlPsfU+tRrHrNB6Jmt7
         R1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678106244;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B1fqN+Osai6CCo/4uAM/DIM6+3uZVeAU3x7P6Nh+AL4=;
        b=iowH95iOoZqBNv2XugIhO+0cQKlvQhS56R0ZTerLGX7/QY68GexrD7g8Uqt7pAhl6a
         IqrMi/89WHU0EGd3HhO528Qg6+tDdV9nmfYPgwS7HvgNoj6ayx1mWc1gvqiJzElZilGG
         jyInh55sUxNeP9EWd7jWLVig3OJJwx44Nmrmm2GIxPVFuuhs+76tSKeFpTYyyeOL0wLe
         ucP8RrM34sZ/dpU7WhXHOYuaQDLCVEqXae3szmY6DI1416C9tUoYB8KN1n90bUqE1Mg+
         oTvLb/Vrtsbl9aMZmCfnWud5SMxGDReyxUORyg/ScI3BFyjxf+mAHwA2MXJDGZ9vbA/g
         sQtA==
X-Gm-Message-State: AO0yUKWBvLUkGn1dHp2Nw00lN+SGjeQjPCpJXky7Xozf4w2dWIU8o6CY
	/i14vfbnj9zeu673JXFH8vN6zYEyBjZK+ciOyJAPjw==
X-Google-Smtp-Source: AK7set9JqmeLzn+ZpNjBjlBik7FoHGXFdpiI5Z4ulz0J2fN04dJzku/RxjI5AxZT8fYCWSsV9AXnTrQu1Y6OPL7lPX0=
X-Received: by 2002:a81:ad24:0:b0:52e:bb2d:2841 with SMTP id
 l36-20020a81ad24000000b0052ebb2d2841mr6245708ywh.10.1678106243865; Mon, 06
 Mar 2023 04:37:23 -0800 (PST)
MIME-Version: 1.0
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
 <20230127181244.160887-10-sebastian.reichel@collabora.com>
 <CACRpkdbQfaCX=ZbFQh3p_T3biWEex-QZofXTrbVKd5hYOzMAug@mail.gmail.com> <ZADNS9dqqbBE9Ohb@google.com>
In-Reply-To: <ZADNS9dqqbBE9Ohb@google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 6 Mar 2023 13:37:12 +0100
Message-ID: <CACRpkdbPHnzLBsg6RkFi7AA3ZfHMergXkdPhvx1DQKWRBJ1GUA@mail.gmail.com>
Subject: Re: [PATCHv6 09/11] pinctrl: rk805: add rk806 pinctrl support
To: Lee Jones <lee@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Alessandro Zummo <a.zummo@towertech.it>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com, 
	shengfei Xu <xsf@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_043742_410049_A2E794B3 
X-CRM114-Status: GOOD (  15.99  )
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

On Thu, Mar 2, 2023 at 5:22 PM Lee Jones <lee@kernel.org> wrote:
> On Mon, 30 Jan 2023, Linus Walleij wrote:
> > On Fri, Jan 27, 2023 at 7:13 PM Sebastian Reichel
> > <sebastian.reichel@collabora.com> wrote:
> >
> > > Add support for rk806 dvs pinctrl to the existing rk805
> > > driver.
> > >
> > > This has been implemented using shengfei Xu's rk806
> > > specific driver from the vendor tree as reference.
> > >
> > > Co-Developed-by: shengfei Xu <xsf@rock-chips.com>
> > > Signed-off-by: shengfei Xu <xsf@rock-chips.com>
> > > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> >
> > Is this something I can just apply? I haven't had Heiko's review
> > on it but it looks innocent enough.
>
> Ack please. :)

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
