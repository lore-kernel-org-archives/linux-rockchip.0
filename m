Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEDE1CCD183
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 15:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0yOBGIaS3BdyvdZPqXijZ9DoYTshSuNGoJ/plj0H9s=; b=KGY9odWP38o43I
	8gUmm+PUgPIYlgA8qBxY+aSejkH7CA7BLM3dM21Adb24GAtllhH35+ga8xt7sED4Lyu51S0dcfGYp
	Zu+hDytOEiUVaNsTmc23Rpp7mak2/velOYkzf9JdoXNWQLv/5OxJ0FhvNQ5d7MAlIwh1uu73NVZgG
	OT84suRbVh4xcCU6mP4+Vf6cF9uVewnYDv6srWFOe0Pt1a1+1VBQp7v9RDLGlYO5tehxzYIq87ZiF
	JfcU2OEZ+3VwKR9R1GLOuuXdELg9G/XkYw73L7KamqnbHoYtmnBnBeHpAnFR9dPdWe8STp5dTLNy6
	lX8hRraq3fVsMwhcJIWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8KuA-0000000Dm4s-0jo6;
	Mon, 13 Oct 2025 15:56:10 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Ku6-0000000Dm2f-1Cds
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 15:56:09 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-afcb7ae31caso942077766b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 08:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760370964; x=1760975764; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LK0kBaNkf30iNo8Y7sNwo/F78yA794Ns47GaxpHfRwE=;
        b=EJIZfvCoDaNDWbwLW07wpOl5gEPbNorWryEY7WLgng7AmWk06hHM8efssXM8NxSEcT
         8In9pt2/Ojo+C3ZyjgXrBa66IRXgZrAcjjDaAiCUS/BYoj1W9gnKekkIy2YmEq8yYHir
         ZQ6gU14fL3DhSKVaxnKQA09yeLP2xnK3iPrPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760370964; x=1760975764;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LK0kBaNkf30iNo8Y7sNwo/F78yA794Ns47GaxpHfRwE=;
        b=j5/M0NTb8lwzyFva6Ba8SD2NH23Eos7QsttaEWfz7g5wc+YUpFrtPs0YltCm/1TwHh
         Gz08mBAoBIZAdMQtuN2t8DOPLkpJI8UNbjyuqzjllvmj3bL1Xi3uzKiPoQCtlq2u3+Qh
         +A7sSAmGgP+4XWWSQ7JM/YwcVPGr3GsQ6fdmmAOBRgJaSPOdv3ESsZJQj4qcKVGlDc+O
         oe/HBOPHwe3XNOGg3+L1V7k3cOq7Dm/GGqfw2JDfiDCKeruaR/G2VDgBvWkuXW9/2qn7
         Yk9cv7QFAmoN5bDQ4a7ZBO2ssz3LNC9QgExwd524LRWQYERADI8rwTzywcxP3kzHgXcy
         7s8w==
X-Forwarded-Encrypted: i=1; AJvYcCW/V+gVwDafoJ0+sbRFe1rFggabyouhzgTv4ni8cTaL6MUFHSUC1mauJTsWBlvOpoil8wYomGTjLVzJcyJx3g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJJSmc1b23W7hpHVur324JtI2iNdx0IVqCPDAP/olOIM5xCKn6
	mIWvvPa9nZzCtnjWQcT6xXLPmPHNrHFJkqfbKsJdWkWvEO1UTCZAUJK2lE0UogzHy0aOsCpWA+j
	zPKzpYLj8
X-Gm-Gg: ASbGnctmurQAmZV9IG/B2PAE48mxcwpmzypzQlVaFClJkRUSvZyZRopoHZhUGRzeaoA
	24d0NuIeMbAbuaYeznLPfD84v5ByjaupkCOK0WMeh0oi8N8mpQaOZN83GdbhbJaYxv5sIKnM+9q
	rHLmyY0XyPQUzwXU/95f2JjF6D0RIT4oe867R6xUOKhJzuMDcfNgPNqlOOIJqISAdQPPoReq5WY
	5OxZkrHNQemBhDBy0xKE7YjpIBAKu+9UOQYTR9hI5qBbQkz1EBKfDXdW/jlpPUh9Q88ELnIYinP
	KKLu6f9Ugv97yNbk6HGLofsUyzII/f3rsD8hxbBCwpe8JkIJBowrofeat1wVr726HWLsEUrfoRw
	1SLzhvNB9lZ/+dw2IvwhHaE93hQbeDLtW9J4YdfeyP+Bmbt/tBmtW/nBf7d6qPQvOButvU0KM0k
	rbgUI=
X-Google-Smtp-Source: AGHT+IEJu6Xy2cqihEWK/0JUkndBS8kSlnOSdXbxbGm78enE2ehalhg5B4IuwBm+fGFQaaglo0b3vw==
X-Received: by 2002:a17:906:eec7:b0:b46:8bad:6960 with SMTP id a640c23a62f3a-b50abfd69e0mr2415306166b.31.1760370964216;
        Mon, 13 Oct 2025 08:56:04 -0700 (PDT)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com. [209.85.208.46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d931d806sm988429466b.71.2025.10.13.08.56.04
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 08:56:04 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-63163a6556bso8702603a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 08:56:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXM1YmNCVne/SwOg6EWo+M9PhJWDq+HWoG+9lcXBoJf4mekwiAjWmp6DR18sxdczzjwvSX9bJTYfLOZ+tUKFw==@lists.infradead.org
X-Received: by 2002:a05:6512:1095:b0:58b:75:8fbc with SMTP id
 2adb3069b0e04-5906dd8ef00mr6030162e87.50.1760370658194; Mon, 13 Oct 2025
 08:50:58 -0700 (PDT)
MIME-Version: 1.0
References: <20251013-ptr_err-v1-0-2c5efbd82952@chromium.org>
 <20251013-ptr_err-v1-1-2c5efbd82952@chromium.org> <aO0cXYeGLwwDABP6@lizhi-Precision-Tower-5810>
In-Reply-To: <aO0cXYeGLwwDABP6@lizhi-Precision-Tower-5810>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 17:50:44 +0200
X-Gmail-Original-Message-ID: <CANiDSCtxnR-ydCquhH1=g-XwZ9DN=eeJNxRBOGiqufS_DMYzUg@mail.gmail.com>
X-Gm-Features: AS18NWAjEedfD0tRDHHy9p2HIYCpNxcTQpn_Xf2f0oNW4TLvTJ881tcLSkxWDmQ
Message-ID: <CANiDSCtxnR-ydCquhH1=g-XwZ9DN=eeJNxRBOGiqufS_DMYzUg@mail.gmail.com>
Subject: Re: [PATCH 01/32] Input: cyttsp5 - Use %pe format specifier
To: Frank Li <Frank.li@nxp.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, =?UTF-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Leon Luo <leonl@leopardimaging.com>, 
	Kieran Bingham <kieran.bingham@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Julien Massot <julien.massot@collabora.com>, Jacopo Mondi <jacopo@jmondi.org>, 
	Daniel Scally <djrscally@gmail.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
	Sylvain Petinot <sylvain.petinot@foss.st.com>, Yong Zhi <yong.zhi@intel.com>, 
	Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, 
	Tiffany Lin <tiffany.lin@mediatek.com>, Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
	Yunfei Dong <yunfei.dong@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Rui Miguel Silva <rmfrfs@gmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Martin Kepplinger <martink@posteo.de>, Purism Kernel Team <kernel@puri.sm>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Yemike Abhilash Chandra <y-abhilashchandra@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, imx@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_085606_346524_07460B02 
X-CRM114-Status: GOOD (  21.32  )
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

Hi Frank

On Mon, 13 Oct 2025 at 17:36, Frank Li <Frank.li@nxp.com> wrote:
>
> On Mon, Oct 13, 2025 at 02:14:41PM +0000, Ricardo Ribalda wrote:
> > The %pe format specifier is designed to print error pointers. It prints
> > a symbolic error name (eg. -EINVAL) and it makes the code simpler by
> > omitting PTR_ERR()
> >
> > This patch fixes this cocci report:
> > ./cyttsp5.c:927:3-10: WARNING: Consider using %pe to print PTR_ERR()
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  drivers/input/touchscreen/cyttsp5.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
>
> Suppose it will go though input subsystem intead of media.
> Need post seperated at difference thread?

Indeed, it belongs to input. if there is a v2 I will move it to a
different thread.

Thanks!

>
> Frank
>
> >
> > diff --git a/drivers/input/touchscreen/cyttsp5.c b/drivers/input/touchscreen/cyttsp5.c
> > index 071b7c9bf566eb0b58e302a941ec085be1eb5683..47f4271395a69b8350f9be7266b57fe11d442ee3 100644
> > --- a/drivers/input/touchscreen/cyttsp5.c
> > +++ b/drivers/input/touchscreen/cyttsp5.c
> > @@ -923,8 +923,8 @@ static int cyttsp5_i2c_probe(struct i2c_client *client)
> >
> >       regmap = devm_regmap_init_i2c(client, &config);
> >       if (IS_ERR(regmap)) {
> > -             dev_err(&client->dev, "regmap allocation failed: %ld\n",
> > -                     PTR_ERR(regmap));
> > +             dev_err(&client->dev, "regmap allocation failed: %pe\n",
> > +                     regmap);
> >               return PTR_ERR(regmap);
> >       }
> >
> >
> > --
> > 2.51.0.760.g7b8bcc2412-goog
> >



-- 
Ricardo Ribalda

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
