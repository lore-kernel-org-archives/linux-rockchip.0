Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36311C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Dec 2022 10:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kf7cGwuNRHoHkYNnTv2bHamOOFCuvebzzjqZAFF+NaQ=; b=M/wlvn0ezfHL3g
	8DYobU4EUphtp2OvDkzmIgAPyFZKxlyeKgQN+mnQzfAm4TT4mwK6ZzqCmrdQwLWI2V35C4V9LHwbz
	8cnWf7Cz0Wr1v10mhzdOMIfLefl9a6/ExXupgaEDkXjwTYySWa4nAdlea1fF1gk00lxTca+Wi1nvR
	iaH8SW+UXDFv6r39TjKDGxzHPA1+rCBCV4hZEObzO1qnajlh4kp1OZeT9nEPx1M+lSO0xjAHh/lFr
	53Nmm1/AKe6B6+uRVhKgV9oINsYDxSrfryRQU2zax4zO19lesk4wObqdCzG4n+EfVTXDuWtQ1Hn6i
	wyNQ+mjt4i2xONFtyNdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1Pby-0032vt-1W; Sat, 03 Dec 2022 10:19:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p1Pbk-0032uJ-2D
	for linux-rockchip@lists.infradead.org; Sat, 03 Dec 2022 10:19:08 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1p1PbV-00075A-UP; Sat, 03 Dec 2022 11:18:41 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>, Linus Walleij <linus.walleij@linaro.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, maccraft123mc@gmail.com, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, thierry.reding@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 2/3] drm/panel: Add Samsung AMS495QA01 MIPI-DSI LCD panel
Date: Sat, 03 Dec 2022 11:18:41 +0100
Message-ID: <7746700.MhkbZ0Pkbq@diego>
In-Reply-To: <CACRpkdZK9=Z1i3Uv=fwS=t=NXHJkucg9FYOCfog_qhomf9GV=w@mail.gmail.com>
References: <20221129172912.9576-1-macroalpha82@gmail.com> <20221129172912.9576-3-macroalpha82@gmail.com> <CACRpkdZK9=Z1i3Uv=fwS=t=NXHJkucg9FYOCfog_qhomf9GV=w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221203_021907_313116_B07994F0 
X-CRM114-Status: GOOD (  22.78  )
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

Hi Linus,

Am Samstag, 3. Dezember 2022, 10:03:42 CET schrieb Linus Walleij:
> On Tue, Nov 29, 2022 at 6:29 PM Chris Morgan <macroalpha82@gmail.com> wrote:
> 
> > From: Chris Morgan <macromorgan@hotmail.com>
> >
> > Support Samsung AMS495QA01 panel as found on the Anbernic RG503. Note
> > This panel receives video signals via DSI, however it receives
> > commands via 3-wire SPI.
> >
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> 
> > +config DRM_PANEL_SAMSUNG_AMS495QA01
> > +       tristate "Samsung AMS495QA01 DSI panel"
> 
> I am always a bit careful with these "Samsung" panels. Well the
> panel is surely Samsungs and usually it has that name, but very often
> it is mainly a display controller, made by someone else, then a physical
> panel slapped on and then the actual display controller is obscured.
>
> Typical example:
> panel-novatek-nt35560.c handing Samsung ACX424AKP.
> 
> If you know the actual display controller, then the driver should be
> renamed after that, but keeping the compatible and DT bindings
> as is. The reason being that tomorrow there is an LG panel
> using the same display controller and then we don't get duplicate
> code.
> 
> It feels like this is a Novatek controller. Just a feeling I have.
> Mostly from the way it does brightness using ELVSS and
> gamma. But who knows.

Though in past projects I've seen the same display-controller used with
different panels (and different dsi-init-sequences). In one project the
display manufacturer even EOL'ed the first panel and provided a replacement
with said same display controller (and a different init) - but the
datasheets for the display-controller were for the same chip still.

So while in my experience the actual display name from the manufacturer
identifies the display + controller combo, I don't really think you can
go the other way with the controller name identifying the display+controller
combination.

But that whole display business is arcane anyway, so this also only
stems from past projects and not factual knowledge ;-) .


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
