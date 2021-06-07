Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81BA3C47094
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 13:03:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4F07160C41
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 13:03:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4F07160C41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x54q3pQw6K7knCLRAX82y60kHC+P/sK5HQoFjjKTgYM=; b=0VnYdWU4tqvq6h
	55rHtpjcvu3GEwsnYFJdGuuYDkzBgY7Rf6lQ1N14gY53AyPAvIMMb6iiVBnDCgsiDOmeKAA5R/IUU
	uQl78F4HR+lFUZV7S0VN4fT4sRHDMsO59hxZGCGUj9g/MZVy/i1TGRTeAIDSZljM0ddFedD04dD4W
	ZUZuF1MrrLVk9FxvoNJiU0W6QOOOBeHOny1MlgEoK+F5NTYvxxFc/0ZgjDC/ItgJQPaZEaVfKvl0o
	OwXzAg7nfhpjCXL7ntb0+nduDFhdpE30SPkPY36HYsdtAm3yZEtaBqPkn6qCGp2ptdxnJZxs3pBY+
	GRa0SORx36yccBomKdcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqEuq-003fZ9-HQ; Mon, 07 Jun 2021 13:03:40 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqEgT-003bZt-0u; Mon, 07 Jun 2021 12:48:53 +0000
Received: by mail-lf1-x132.google.com with SMTP id f11so25954470lfq.4;
 Mon, 07 Jun 2021 05:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YqSp7b2sF5G/FF6lZynv4Wa2NCgdSNo+g2maX/I5cg4=;
 b=pozxQO3Soc1f0c4FqsKQO2eA/CLdqPKeeIYIWArpk+9A/mym4x8dN7I/j5gGR3eWCA
 7+niI5ea+m1cgiXG0rITWVXWlhi9wqIwR+uOMaiyxnAfQVLMmTDlFWNofOaOGNuCaAr3
 0PuONwtNf++K6/Ic1rzwBZAHCCUg2yLTaXm4NYBCHfWWt3mggPqlZECDyQFqLHXGKVTL
 d6IPcVNbhsAGTPFqoD1oUBIZPh2wVxlsLsANH2szOnVKDKbA8vyDlHwfKWAtlfme1sMJ
 7LKj4LtX+sYYRL8oQosg4JYmqzo7x4HS2NBKfP7DfECNN2fg9VKQoiEw9uXxyFKOFMdS
 zFBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YqSp7b2sF5G/FF6lZynv4Wa2NCgdSNo+g2maX/I5cg4=;
 b=AxR3VvM2CUM4okchqWhZW48n7TwF+4CxHGMeigm5E3jeCJFeYGJfdBo1YgT1dG9F4p
 8AUoMV9cbfLSj/02WyciQC2I+1uxjQYVItdbiqBwkYv84tA0NSc3zA721S7mWgGEJFcW
 N6WucP+lG90j1rTGnmm3wrRDcjmmdoW6Eh9ZHc9dCSYXmaKHGGPyEwSCmvORQn/gvmxB
 jNKOeip68/Yqfp/9RErb9kglBYtiGX5Ez9+BX5DnORBbvnj4EMMYFiHLP4LN3ejV15OD
 r9BD26tbgsKOju+KiV8QseUjoAIRAFkJOD1wXRILgL10siQToP8LKES62epuCtG+Zdmq
 ASNQ==
X-Gm-Message-State: AOAM531WV7NFMlh9ewIX2dV5EZCxvP9qWCpUJOZPsPDXbk7TIeV/ILHP
 8Az2Q8BpQgq6Sntkqp7BoVSxhOfQouVl+efOrRY=
X-Google-Smtp-Source: ABdhPJwabZWyYF88pXBQ24zGo/RXBDrYpovZ3Uck29FJ5jy9VhDjT86KbW2/5rSd+najOgm/CPFmNxVbSw0A8REqkr4=
X-Received: by 2002:a19:3846:: with SMTP id d6mr12512848lfj.187.1623070127020; 
 Mon, 07 Jun 2021 05:48:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210607081727.4723-1-cnsztl@gmail.com>
 <CAGb2v66GAOtF40o5XoK_K3bWPa2L8jGxH=R-YK8060TGeAKreQ@mail.gmail.com>
In-Reply-To: <CAGb2v66GAOtF40o5XoK_K3bWPa2L8jGxH=R-YK8060TGeAKreQ@mail.gmail.com>
From: Tianling Shen <cnsztl@gmail.com>
Date: Mon, 7 Jun 2021 20:48:34 +0800
Message-ID: <CAOP2_TiZYXWnDZ1-_K-EvHt3-=sV1k8cRaenW8xqr44KdLCQiw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Marty Jones <mj8263788@gmail.com>, Pavel Machek <pavel@ucw.cz>, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_054849_128092_D19AE161 
X-CRM114-Status: GOOD (  27.90  )
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

Hi Chen-Yu,

On Mon, Jun 7, 2021 at 4:36 PM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> Hi,
>
> On Mon, Jun 7, 2021 at 4:19 PM Tianling Shen <cnsztl@gmail.com> wrote:
> >
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
> >         status = "disabled";
> >  };
> >
> > +&i2c2 {
> > +       eeprom@51 {
> > +               compatible = "microchip,24c02", "atmel,24c02";
>
> The actual part number is Microchip 24AA025E48, but I don't think
> the way this device splits its storage area is easy to support
> without additional modifications to the driver.
>

On the face of it, it seems to work fine, and I can read the data correctly.
(built with at24 eeprom driver)

Thanks,
Tianling.

> > +               reg = <0x51>;
> > +               pagesize = <16>;
> > +               read-only; /* This holds our MAC */
>
> Please also add the size, as well as a cell defining the offset
> and length to the MAC address. The gmac node can then reference
> this with:
>
>     nvmem-cells = <&mac_address>;
>     nvmem-cells-names = "mac-address";
>
> which will actually pick up the MAC address.
>
>
> Regards
> ChenYu
>
> > +       };
> > +};
> > +
> >  &i2c4 {
> >         status = "disabled";
> >  };
> > --
> > 2.17.1
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
