Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8D9AC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 May 2022 16:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3dQ02vU1yMz+OBeATqisJeSdinfQm7WSOHmJe7yRR8=; b=qxZrrxy1+4Y9Wh
	bC/HtDu2CJx6wt6FLIglhpWdntLFoeYw6ZQlIrGWg2RPycEWknHpoXvMfG+UHPwHJqC6pSd/AKVO4
	Piq6SF6Z5xf2p4lkooA0iyjbUpPYg2VTqUtUe2jtglw7gfopJVyvvPs/ihgYWRcVke7FSZr8iOWPU
	hmMnoFy+/T5M+zUNtfF94tVqCK/D1t5yd3xwK3OtgAKQ1QgukVrslWlNA20Y3CDMHTmmBp4902T2I
	6nuSW+OmmN0RoH4gqvmm810uIO4gR+EKgDO3mw8rKu0RKdDfNZ/GBoVd7C4rJ+jB++FGhWruW2rPR
	1QIXDl+CUZcy1iIJAvQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1no5oG-00FFrQ-MW; Mon, 09 May 2022 16:00:32 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1no5o5-00FFni-8G; Mon, 09 May 2022 16:00:22 +0000
Received: by mail-yb1-xb33.google.com with SMTP id g28so25749508ybj.10;
 Mon, 09 May 2022 09:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=knnW3YdGHU3dQmhoQ/TIt12Wud5O9OTp/LrpDaN4GjM=;
 b=gBo755tMf9Osy5tffBppRj7GfJn4ql1mKymzn97tMmsCY7Ovgg3Kvs3yRy3+4Aalcc
 7KUYzLx4mobr7QA0sQjmav3JM0lT4HGbe90OVpKyYL6B8SqhIMEsUOTQ8KsM8Juyeuoj
 TCRbl+PuQ1y0LWQOfM8m53FgLypONm6ia1cr2XMvW1Y6NxfAOmb49oqvIxGLafkafPj1
 oazllSGRNd9UaEK/q76XMrqpgxNvlTLZIoshpDQmPfdewjNWyw5XGAJdDPu2RrosDaW/
 P1pW1xWg026bNkocIWIl4BBR6IqIgvItap/A6KrxDBotH0mbvIo/KaIyCPpLt0drClE7
 FxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=knnW3YdGHU3dQmhoQ/TIt12Wud5O9OTp/LrpDaN4GjM=;
 b=U0S5MgAIPk0AJZvAxrNharu1R0k945mJW7qg1tThFaA5C6y15Z+0tKDyLiYUCHbwPY
 rgwWTvtTerimuEQqUeG+eWcJTggbaEtcz/lY3/56IvEHMNDr2WhDdtCvSCrv40oCDc4u
 MM8yGhRtSpzllTE9zY2pbpp2VH2dBjgIdSRrSrkGj7bJxVOkNEFRRw8P834KXqHL97mi
 x4NNj7+iCJ6fSjOd3mbqIzJlR+BXgUU9Y1bukeHMPYcw2lk14TfzPwDjggrq1Mcesmmg
 t+pggfrG9XKmFCCrMF8zzHmnB2HX8olZmoWNvmykZJH4pp0pWOq5Ylkfoho/28eRh465
 WDhw==
X-Gm-Message-State: AOAM530+LWdky7KG8Ze2Mcoauz1xiEBM0aBwOh6CmH5Kzekian5mZYOX
 gkre+Ldcf4297S0tCoyKiUIlwRW3QKyeegqMUHc=
X-Google-Smtp-Source: ABdhPJzE0yuDYQajfmjTVe+xPs9zcVxiG4bkyGXxUy+igdOw39M2htAP7fLlOx0fjjDMxhJ38jlzCt8sXC0uyVUM7Aw=
X-Received: by 2002:a05:6902:706:b0:649:daee:ada1 with SMTP id
 k6-20020a056902070600b00649daeeada1mr14322790ybt.366.1652112020072; Mon, 09
 May 2022 09:00:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
In-Reply-To: <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 9 May 2022 12:00:08 -0400
Message-ID: <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 dri-devel@lists.freedesktop.org, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_090021_336032_F8BF1F8C 
X-CRM114-Status: GOOD (  18.19  )
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

On Sun, May 8, 2022 at 2:21 PM Piotr Oniszczuk
<piotr.oniszczuk@gmail.com> wrote:
>
>
> >>
> >> I think i have this already (pls see L231/L232 in https://pastebin.com/67wu9QrH )
> >
> > I see you have hdmitxm1_cec as the enabled pin. Are you certain it's
> > the m1 pin and not the m0 pin?
>
> It depends on board ver.
> pls look: https://github.com/radxa/kernel/commit/c1d727692e85c0a265913a72e517cf2bd71131ba

If you want to confirm the hardware is configured correctly you can
remove the cec pin from the hdmi node and set up a cec-gpio node.
https://elixir.bootlin.com/linux/v5.18-rc5/source/Documentation/devicetree/bindings/media/cec-gpio.txt

For some reason the board developers decided to make this selectable,
check the location of R90652 and R90653.

>
> >>
> >> Maybe i miss something but adding:
> >>
> >> &usb2phy0_otg {
> >>        phy-supply = <&vcc5v0_usb_host>;
> >>        status = "okay";
> >> };
> >>
> >> breaks working usb3 port0
> >> (so none of usb3 ports are working)
> >
> > Please pass along a full dmesg in this configuration.
>
> Here it is: https://pastebin.com/uArtBLaZ

I have some concerns about the DTS you've built here. For instance how
come you are modifying the power domains?
USB3 is broken because the rock3-a is a rk3568 device and you're
missing combophy0.

>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
