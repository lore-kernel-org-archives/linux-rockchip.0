Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24E75CCD18E
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 16:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSBjHG9+twFRwXyJEqdniQKm7ZgdmBWKbtVwIQpS+no=; b=Bq9UKks9KgharN
	G8DfS5kyaI+zSZSGd096GiFjb17T5N5nc5bTDLu2+Qw/w0HtYrzRfQE8rK0Yqi0yR7Q+0wqKqkhqE
	HYMwuzRuxjBcpszsDuf5Aicuf0H9088eem6Wgzta75BhJ8OVpXd638ZpKD5Sw8Q5K28kQUTrKK2Z5
	+0jApb/QErHxCX+SkGIV5YlUf1blA7LCE3DZ+4aNl8EoA2unSsc4CNB/4Vy4PoKRmYDFNggoeoC/r
	Gy4ZPXQhtBAHKubrggIE8ZtBiv8KgdOG8VgegjnHBj1PRkJxYpJJaYxL/10BBs+lfOkyuLDKaX+7T
	6kXL6azmSSjDrqTQ9ozA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8L0u-0000000DnOb-1Vb4;
	Mon, 13 Oct 2025 16:03:08 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8L0r-0000000DnO5-2i8c
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 16:03:06 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-b40f11a1027so785530366b.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 09:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760371384; x=1760976184; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=85zW8eAa0UUuhYK13qFSD0pz0Cqd0sUrz3cG+0d4BSc=;
        b=bjyC42g4TZwzLtCjf3OuWs/P0ciIFKKjq4oA+sVU/gvx+QZxJjkXX9ukqKCzvorF8E
         1BhyqXl9pHHn3E+Rq8jMfX7zEYXXxGP87mggaijdHynfvh2TfGvF+2oIPpV/5B7o3RQJ
         GxkY2kfifi9MaoOX+JuaoDB/FMu/hOu644rTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760371384; x=1760976184;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=85zW8eAa0UUuhYK13qFSD0pz0Cqd0sUrz3cG+0d4BSc=;
        b=XN/9j+JFVKcC/4MNYO1SdyP2VcczdKvdp6XmFw2hZdFypfPlRgf5CCL8oiXjM5mn+X
         7KtaQik7VffW7QwbuoM/KN4ohJl+TwAqqMYkTF3qfNh9djjuuDVMRg3Ejqa3AgQSFFLz
         Sd3T8OXY2LA2zf79qM2I8yWKrhj6B0NXjkWRRrLq3AFzgNtWtf5JLu7Pt9TeimfeJkha
         u8a7m0OZmqn7bOMHwqFjhktgTeAoTqCf520ynzCN0wOMHZHYAwY7uviByz5BzQ1xfJg6
         KQ75cFowi7DtFYR89QkMLSSwThgDVguFHTYiG+csJbyIYRTG76Wd6LQKSB02ma4jSXQ1
         +whw==
X-Forwarded-Encrypted: i=1; AJvYcCVRPpL1O3qzfchvJ9YwoaB8z89O0s5Ix0g6WSIYfqIpZANc+G9MoGBr1httJPTcYTZxjU7rdtD2EUAdCtqWkg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyEhsv+Rw97+BT7xIUXAb3eGCpXAggjTwl5CwzDMDpCQxKwSKj9
	bAH+xslZTfA58Gw/lLUU/bVamsc48Zp5IbmYkpBtUw1vMrE9JNQioKH/gIZ2ie8XHqyTx1ya2Gi
	tC23HgR7h
X-Gm-Gg: ASbGncvmrM2ZejroeZrAQaociDdWiVX/9UPtWwVdsgnMFY8uQspM7hRAa8VDAXiVB86
	wWZq1h0FrGzbZFYVMrkB9Mc9csKINvjQ2lzpTJtNKYRzcdoEDwzdoju1WUYyHIMd2j0nejfoVHm
	H++vGqitWwL/VdWcKjI8GjSwOTrZw6zNoksJhP4JLCb/2nhUzCXCCpInFvlZC3RwislJ55X6rtF
	kvuBmuD8aCZLwAeFWDmdJ8AB/XFePtKs7zGDKyxV+O7ZZmtGFOKriWE3M/AzeOh5vb4IdWpsnwg
	J/WDo75mt0qqc9N29bX2uHwmzmyGbf3eaxocg3SyF5fsc1yyb3y+kx5FnRrxfTu6rairLZOZ6mr
	p0lN+k+/a6lyLgb/jZPqNAD7KVSivwwuh+ZD2UaQKhujuVupeeofkQjOp2OgrLMTrf2W/RCRhta
	/j95E=
X-Google-Smtp-Source: AGHT+IFon7xMJRLjUjO2xyhy6SHc1g5SRkk3bZx010yakTO1f1Opk/oqJou8wsDW7J/N4N2bIYTeFw==
X-Received: by 2002:a17:907:9408:b0:b3c:a190:b85 with SMTP id a640c23a62f3a-b50aa8a9305mr2205981266b.21.1760371382126;
        Mon, 13 Oct 2025 09:03:02 -0700 (PDT)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com. [209.85.218.46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d951deb6sm955346466b.76.2025.10.13.09.03.01
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 09:03:01 -0700 (PDT)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-afcb7ae31caso943885366b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 09:03:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVB3ONaOJASumfIEGQpI8s9VMPpLZr0KaTovMHCewk3FRe1+vLd54S6FvBU4U54ShihPq3HL2qeUDKs8UPjFw==@lists.infradead.org
X-Received: by 2002:ac2:4c50:0:b0:55f:4ac2:a58c with SMTP id
 2adb3069b0e04-5906dc0ff30mr6173104e87.22.1760370964286; Mon, 13 Oct 2025
 08:56:04 -0700 (PDT)
MIME-Version: 1.0
References: <20251013-ptr_err-v1-0-2c5efbd82952@chromium.org>
 <20251013-ptr_err-v1-10-2c5efbd82952@chromium.org> <176036780330.559803.287308146210017676@ping.linuxembedded.co.uk>
In-Reply-To: <176036780330.559803.287308146210017676@ping.linuxembedded.co.uk>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 17:55:51 +0200
X-Gmail-Original-Message-ID: <CANiDSCsuPkdz0=U2b_mNh4TWTNztAd9qEwJaiMRdGy1sf3UEbA@mail.gmail.com>
X-Gm-Features: AS18NWCmgLaH0rMvCIhheSPVtWPGKkpbEBd_aB_kzUyM4RaB_yHSiy8sRs-muw0
Message-ID: <CANiDSCsuPkdz0=U2b_mNh4TWTNztAd9qEwJaiMRdGy1sf3UEbA@mail.gmail.com>
Subject: Re: [PATCH 10/32] media: i2c: imx335: Use %pe format specifier
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>, Bingbu Cao <bingbu.cao@intel.com>, 
	Dafna Hirschfeld <dafna@fastmail.com>, Daniel Scally <djrscally@gmail.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Fabio Estevam <festevam@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Hans Verkuil <hverkuil@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Jacopo Mondi <jacopo+renesas@jmondi.org>, 
	Jacopo Mondi <jacopo@jmondi.org>, Julien Massot <julien.massot@collabora.com>, 
	=?UTF-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>, 
	Krzysztof Kozlowski <krzk@kernel.org>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Leon Luo <leonl@leopardimaging.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Purism Kernel Team <kernel@puri.sm>, 
	Rui Miguel Silva <rmfrfs@gmail.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Sylvain Petinot <sylvain.petinot@foss.st.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Tianshu Qiu <tian.shu.qiu@intel.com>, Tiffany Lin <tiffany.lin@mediatek.com>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Yemike Abhilash Chandra <y-abhilashchandra@ti.com>, Yong Zhi <yong.zhi@intel.com>, 
	Yunfei Dong <yunfei.dong@mediatek.com>, linux-input@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-staging@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_090305_710755_6464F1F6 
X-CRM114-Status: GOOD (  21.51  )
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

Hi Kieran

On Mon, 13 Oct 2025 at 17:03, Kieran Bingham
<kieran.bingham@ideasonboard.com> wrote:
>
> Quoting Ricardo Ribalda (2025-10-13 15:14:50)
> > The %pe format specifier is designed to print error pointers. It prints
> > a symbolic error name (eg. -EINVAL) and it makes the code simpler by
> > omitting PTR_ERR().
> >
> > This patch fixes this cocci report:
> > ./i2c/imx335.c:1013:3-10: WARNING: Consider using %pe to print PTR_ERR()
>
> Ohhh nice. Is this new ? First I've come across it.

It is actually from 2019:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=57f5677e535ba24b8926a7125be2ef8d7f09323c

I just learned about it because there is a new check in coccinelle :).

It is pretty cool, but you need to be careful to check IS_ERR(ptr)
before doing the printk, otherwise %pe will print the pointer value.

Regards!

>
>
>
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  drivers/media/i2c/imx335.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/media/i2c/imx335.c b/drivers/media/i2c/imx335.c
> > index c043df2f15fb25b3a56422092f99a1fd9a508fa9..71ed9a0d84a252ee362621c4d38001508fb86d28 100644
> > --- a/drivers/media/i2c/imx335.c
> > +++ b/drivers/media/i2c/imx335.c
> > @@ -1009,8 +1009,8 @@ static int imx335_parse_hw_config(struct imx335 *imx335)
> >         imx335->reset_gpio = devm_gpiod_get_optional(imx335->dev, "reset",
> >                                                      GPIOD_OUT_HIGH);
> >         if (IS_ERR(imx335->reset_gpio)) {
> > -               dev_err(imx335->dev, "failed to get reset gpio %ld\n",
> > -                       PTR_ERR(imx335->reset_gpio));
> > +               dev_err(imx335->dev, "failed to get reset gpio %pe\n",
> > +                       imx335->reset_gpio);
>
> Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
>
> >                 return PTR_ERR(imx335->reset_gpio);
> >         }
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
