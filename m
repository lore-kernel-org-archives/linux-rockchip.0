Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20EF8C00144
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Aug 2022 08:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fG/1exYF55sRa14JTj3EOuvh4txZwze3mwy6nkmODXk=; b=Qg4SB5XwAY0bzR
	0tsUwH+ZnrxO0TJAg1JqQV4IWSgkmLsvO0rYcT+ktERvqtrF85HjBo0BlC1Mq07HzaOH7N9usRfsw
	OaDBwdcUk1UIkiC9ULj+LQVc2ZN2rf+fz9oUwiWcTOc2WG6B9yzeg0DtsixgikBZwWFda8GfqGhkI
	O1ot4vYGExNq783v005u5WhWxfNV168ZdgwRduDybskf+o1oiEkZp2Qxe/xSn8YBwXMx/4tpSzE7/
	uif3mdOL5ZdO1jDcJzht3TZQbXrYbzKN6sm73i1solA3wXb6f4Txq7FHSm5p0idID7k4LJ0y6aiwk
	DKdJIabGrdt96a+AShUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIR8B-0049mL-5n; Mon, 01 Aug 2022 08:50:31 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIR84-0049hh-RJ
	for linux-rockchip@lists.infradead.org; Mon, 01 Aug 2022 08:50:29 +0000
Received: by mail-wm1-x335.google.com with SMTP id b6so5416339wmq.5
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Aug 2022 01:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc;
        bh=31O8ovLNtTNvEXUXIG07xH4GCHGVnpgSiTE7ih01mcI=;
        b=DEVZa/eNJ/hpFhH4u1Bs4bQp+4ZzM5ExT+7Ewp7B16j1EbDEf6ldaYV79hhefRl12K
         8RWl2VqNYaPc5GvZfjow5F7qnoqIeFVE65dWd7WsgGeaWfnx3Su1ab6fRZ9KDybec4UX
         5KA9zzSf+cjNV8RQHCGlbxdMRStGPxqLHoeli9UADZN9lSlKhf3zqGs2Ezu1AR+9oapr
         eRjLPE60/SiMRYPHSuqXdZVtZlPT5FZMmQbLeSGgMBF2M4wSo/JXj/fOU9II3hDjTn9w
         N+Chk96Dg3DwMR9TQI6iW69qU6hFeZ7SriOhqY741066BGXHvcFn2ZTUllyjVuQ7d48I
         fNug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc;
        bh=31O8ovLNtTNvEXUXIG07xH4GCHGVnpgSiTE7ih01mcI=;
        b=KXT37k9uLmys1+Z4nUYRhGLCaIJAJ7jYF7dJ1ZTLHJ7C1PqGr4DtNgfav/uUM8MhcO
         smJ6k+oZWuM9LFKu0AbGijbfIvBN1RS94gvTALPLIXOYaAJc/gLTgQ5v5ROZrVFQpLek
         Pcu/UwWDCq/hyoADAcvzS7Ur/okuep/Nhsw/3wUftMr6F0rY91fC84l9fsx4bMKSShWs
         DCEgCeV3gbECFcUdcvPhRgVvOCRzf4voyirvYmwnFonR6MKUK8JQsgDPtv3S1Bx8TKkU
         JXIcSX6upJyzz9KsiRzQjvxL3i4oHNyOhiDtU/A47rD5Z710fMYcxY9VVI8YwtDz1dTI
         E9qA==
X-Gm-Message-State: AJIora8BV/Woym9brY3aN3dNLfDWV2jbUFR38Nkq+YH8q4ugn7uhNHB3
	kD/Bxnq97PsZQaNFo5L6kFMfFg==
X-Google-Smtp-Source: AGRyM1v0rDwsCTzsOFZJWkATMcBdINS/2/Y+B2iG7/TtU913pUZQ3zG7JgtLkTnd3S6+dFK5HwIWWA==
X-Received: by 2002:a05:600c:2044:b0:3a3:15a1:ddfd with SMTP id p4-20020a05600c204400b003a315a1ddfdmr10506355wmg.3.1659343822506;
        Mon, 01 Aug 2022 01:50:22 -0700 (PDT)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a1-20020adfe5c1000000b0021e491fd250sm4810200wrn.89.2022.08.01.01.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Aug 2022 01:50:21 -0700 (PDT)
References: <ca9560eb-af9c-3cfa-c35e-388e7e71aab7@gmail.com>
 <CAFBinCCMinq1U2Pqn2LPjC9c+HqfHjvW81b1ENMxdoGmB6byEw@mail.gmail.com>
 <88d6ef05-f77a-57a2-f34a-e3998a8d70d4@gmail.com>
 <CACdvmAgSvsYj6zorYDrBaEUvZzPi_c0XpVzx3fz8nHp8+TXMuQ@mail.gmail.com>
User-agent: mu4e 1.8.6; emacs 27.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Da Xue <da@lessconfused.com>, Heiner Kallweit <hkallweit1@gmail.com>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "open list:ARM/Amlogic
 Meson..." <linux-amlogic@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: Meson GXL and Rockchip PHY based on same IP?
Date: Mon, 01 Aug 2022 10:45:09 +0200
In-reply-to: <CACdvmAgSvsYj6zorYDrBaEUvZzPi_c0XpVzx3fz8nHp8+TXMuQ@mail.gmail.com>
Message-ID: <1jzggowdo5.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220801_015025_190993_D1B08775 
X-CRM114-Status: GOOD (  18.99  )
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


On Mon 01 Aug 2022 at 03:09, Da Xue <da@lessconfused.com> wrote:

> On Sat, Jul 30, 2022 at 3:31 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>
>> On 30.07.2022 19:06, Martin Blumenstingl wrote:
>> > Hi Heiner,
>> >
>> > On Sat, Jul 30, 2022 at 5:59 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>> >>
>> >> Meson GXL and Rockchip ethernet PHY drivers have quite something in common.
>> >> They share a number of non-standard registers, using the same bits
>> >> and same bank handling. This makes me think they they may be using
>> >> the same IP. However they have different quirk handling. But this
>> >> doesn't rule out that actually they would need the same quirk handling.
>> > You made me curious and I found the following public Microchip
>> > LAN83C185 datasheet: [0]
>> > Page 27 has a "SMI REGISTER MAPPING" which matches the definitions in
>> > meson-gxl.c.
>> > Also on page 33 the interrupt source bits are a 100% match with the
>> > INTSRC_* marcos in meson-gxl.c
>> >
>> Great, thanks for investigating!
>>
>> > Whether this means that:
>> > - Amlogic SoCs embed a LAN83C185
>> > - LAN83C185 is based on the same IP core (possibly not even designed
>> > by Amlogic or SMSC)
>> > - the SMI interface design is something that one hardware engineer
>> > brought from one company to another
>> > - ...something else
>> > is something I can't tell
>
> Per Jerome, both are OmniPHY IP.
>

I believe it to be the case, yes.

However, the version of the IP could be different.
The integration the SoC vendor did is very likely to be different too.

I'd be in favor of keeping things the way they are now.
I don't think merging the drivers now is really worth the effort.
With the uncertainty there is around SoC integration, It could bring more
problems that it solves down the line.

>
>> >
>> >
>> > Best regards,
>> > Martin
>> >
>> >
>> > [0] https://ww1.microchip.com/downloads/en/DeviceDoc/LAN83C185-Data-Sheet-DS00002808A.pdf
>>
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
