Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E54CDC47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 09:56:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AFE196008E
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 09:56:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AFE196008E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGIsFqX21woUy3eTdVtelPfzK7vwh3eburK9I97EXFo=; b=h0R7ZjOFHkM3i7
	Efi0In5eX5/7pInGb9BtfIJ/1AMCRO67rjaRv/Yl2DGLnyzMUg40FQzMKTj+sBTHghTObelexSHtx
	Q0ikNV/uxYElP/3d5tK+50YYl+ti97es1aJDO5GOqWV5KydJiDpUorFm/TPMGhBXMVbxdXboviG+J
	dg1vbKv7Qa3Gh9NOcuElHcmME3rwE0CFWQz1NOtqHbGKkqGKW4TeGIZI9NnMWZXBmmH/9tDyDnMSZ
	p0GPqZaV/NQtQU+97Wg4r1mmP78qIqHeyv5Ov1h9doFan/rVxOaPDBkTYgKC+mdQLgsc3mamBvgOE
	NryRFYjqse6ifqdiiH+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqBzV-002kGr-3e; Mon, 07 Jun 2021 09:56:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqBk4-002fMy-Fc; Mon, 07 Jun 2021 09:40:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1EA1761107;
 Mon,  7 Jun 2021 09:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623058820;
 bh=dMkA7yzKDAeneap0OuN2Vstxla6Z28FLe6DXYuZEa04=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=uGT5UbIFKs0CskDKD4TxNsCUBNZylywLGUDNrTLHk6c2D0WnTGwB6DjJmk8AXCISu
 PWpLoU7Ull6mcducoMHM+YSQu45MIDWQpMNF5ygDaHMp8vuqybZj/LXq/cAiUMasUe
 yS4Vo+42QouyL3I5ZacGxF3uiYXDycRF/YglKUi8Nnt3a+ATluPfTbbat0YDXEqGfS
 fmkInv73TTzj1D2B8eOYEP/dpoII59MMFrH15RlwQQzIwmK8mjrx77bdlNT2RVLoJC
 Q1abQPA04R1oYpP/4Rj7le/p00JFiFcHyj1RrXWSQ+Xyiel6AmZHOYYnNtnjI1/2Y4
 0FwnCRQMh70kw==
Received: by mail-lj1-f182.google.com with SMTP id z22so5326580ljh.8;
 Mon, 07 Jun 2021 02:40:20 -0700 (PDT)
X-Gm-Message-State: AOAM533AabL+WIj6RAovNL0wkNiMhCVyHEG51ZvG5CCiqmFoKnO4rmLZ
 puKtlPmOLpZW5yjI8ePWmC0QodjvLX7M5Sk0NwY=
X-Google-Smtp-Source: ABdhPJwtnCxXRODVLvwSZYHacPCSYfKjqwYa1aRIPYbWYZ28HuJpG9cpmfbQQr1W0d32g/V56ITtxAED2434k/gmzUo=
X-Received: by 2002:a2e:a717:: with SMTP id s23mr13994339lje.282.1623058818373; 
 Mon, 07 Jun 2021 02:40:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210607081727.4723-1-cnsztl@gmail.com>
 <9258ab23-ef65-2c3d-f0d2-ca5f77d7c12a@gmail.com>
In-Reply-To: <9258ab23-ef65-2c3d-f0d2-ca5f77d7c12a@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 7 Jun 2021 17:40:06 +0800
X-Gmail-Original-Message-ID: <CAGb2v65ck=LV+UCdQoaUtEjFaTaHr9-wmGmpkCCkebUOuYtikw@mail.gmail.com>
Message-ID: <CAGb2v65ck=LV+UCdQoaUtEjFaTaHr9-wmGmpkCCkebUOuYtikw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
To: Johan Jonker <jbx6244@gmail.com>
Cc: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Marty Jones <mj8263788@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_024020_651385_5F29C9AF 
X-CRM114-Status: GOOD (  18.69  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Jun 7, 2021 at 5:31 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Tianling,
>
> On 6/7/21 10:17 AM, Tianling Shen wrote:
> > NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
> > stores the MAC address.
> >
> > Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> > index cef4d18b599d..4a82f50a07c5 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> > @@ -68,6 +68,15 @@
> >       status = "disabled";
> >  };
> >
> > +&i2c2 {
> > +     eeprom@51 {
> > +             compatible = "microchip,24c02", "atmel,24c02";
> > +             reg = <0x51>;
> > +             pagesize = <16>;
>
> > +             read-only; /* This holds our MAC */
>
> The mainline dts files should be generic I think.
> Any comment about "use", partitions or write ability should be avoided.
> It's up the user.

Per the datasheet for this specific EEPROM, the latter half (128 bytes)
is read-only in hardware by design though.

ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
