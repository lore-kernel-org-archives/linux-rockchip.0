Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96056C3DA49
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jul 2024 06:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0fOdvAE4014G02jAYu2jJWfxo+sKWT8eYYhGoh82/GE=; b=2N0EdogoQBc2nC
	mHCIoZsnL0ZUMDXnWXcPP994nXXtgGcyKQqNawcpxdl7Rw1GsxmkR6f54r7ZS7Veeq3AbeJ98bzIF
	z3s+ChatQtJtVPogTHMVMdUA6oE3YwXndeBza2vhmydePrsShM36KpJq4MccM0qdkE/nGaQ36q8A0
	arNTPGJEKivy7W3q8sYo4/x5KIW+a7vh0kNUVRdt9EVGW4GwfyTmJAe7I/rPI+fBvCsJfbrMAN/PW
	TxVbuYDk2CafnoyM4iPCI6sa8Ku97iHuNXGm5RplDK6TSdGiuI5OQfYfWis2pG3NHU45zeWA53giL
	oKbpHg6cH/pziRVvdg0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXx2D-00000007zk8-1FV0;
	Sun, 28 Jul 2024 06:05:33 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXx1g-00000007zc7-0n9D;
	Sun, 28 Jul 2024 06:05:01 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-5d5bf833de7so1327544eaf.2;
        Sat, 27 Jul 2024 23:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722146699; x=1722751499; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u2zfcZwYG3kul58agQUX3yzpubFbACd2Ih5AzOdGpIg=;
        b=aud8KBFYgrTzVwzt0tF5DLdMvADKjVx/c4vhhfhuZ4Np0T3yuIotrtFuFF44an0XNo
         6VFEjHqDbBjqzweJRARV8uBMfNFt+y7tVXi9DFqEPk2dMWdqaIeUql2wRPBjm3wHbNy8
         sTdftbMrgo7UOgjH57u8xIqgqTaPXcDdRVyisFw3vSzsb+AuDYN2eax3LqQGirZsR5Ni
         aCtMV6iQQBJO4itlxojws652SA1sA65oqraPAzLFKhBAcd53tqC00dFIihKrREXViSBP
         vcrRVvZw92Fjq7aQIJU3aAVNucs3iikkQ8hUiEdrxIk6jvhcXcCGjjmYDUdlS3On6CAm
         IlXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722146699; x=1722751499;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u2zfcZwYG3kul58agQUX3yzpubFbACd2Ih5AzOdGpIg=;
        b=cRGp5EsZC1pM3dbJuW2g1/naJel51uzJS7u7grlsj3eHl5ZuI2vjcr2l9TQUJUFHIq
         LZk3wvG/LERJwKr9uZzPnn362czYygkr2AFXEXEyIqTmhT8RRMdb8Ke4nt8wsZUpFH+Y
         2AADkdux6QB5uOWwqbTffvTUYiYaibbtX+Kj7OgKt9eb8JAGtwAcQ+S02Y0x44p2svcu
         kSad0wgWMi11my6g32hQupzwM2WugzMVqI2Fek301qr6EEY0cJkcch75gt5sPIx/dDIR
         q9NZlKCgooJH4ScI8agjCC5SqTtvwBtgYYEaRtCpR6pQSPxfGbd9b9FVRzb1C6AFBT5s
         GDrg==
X-Forwarded-Encrypted: i=1; AJvYcCURXxTQVYOF/WJnZdaSOuKZ6aYvKruKjrqyzL6Q+aQhx2rQky0eDC9ocPlELVKlJeLBsRuS6VlY5QovWmxEx3yp9L1PqUc2FiVmjzNvgDKuJAUErJQkfEU+KXNmeZHe9RwPYlK5AqVmF9QZRnvvY8vpfwGx7wud+es=
X-Gm-Message-State: AOJu0YwOOLEE/BN6AMukWIFX2fSJGBL3UR8bvgnQyRCTFsQcxv6CQeET
	kZjVUOjaAe+5R9Of+9+ZYUqm43ron8u5tI2/ps4b9VI2Nose0I9ZOh/HQUlao93SKijFdNMiCF8
	UXze/ADClTdQoMYxh7JuYrV8CBcg=
X-Google-Smtp-Source: AGHT+IHxNR5AU0pa0wceEMuoZRoYMc8O9+eA8C/hzeiyBHWGAUhjsF4WLgxtIwUZcc0wKx1vTSSIW6kF37UgziboJVA=
X-Received: by 2002:a05:6820:1ca8:b0:5d5:c3a9:4010 with SMTP id
 006d021491bc7-5d5d0f1e0a1mr4493802eaf.5.1722146698783; Sat, 27 Jul 2024
 23:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <20240726110050.3664-1-linux.amoon@gmail.com> <880603a5-35c5-4968-8cd0-81ebd2958bce@kwiboo.se>
In-Reply-To: <880603a5-35c5-4968-8cd0-81ebd2958bce@kwiboo.se>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 28 Jul 2024 11:34:42 +0530
Message-ID: <CANAwSgTTeHvzCZ=PTVFAqPOhwcs9GeYFqRRMiog+AnbEnZgixg@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] arm64: dts: rockchip: Add missing pinctrl for
 PCIe30x4 node
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240727_230500_263729_CF06A453 
X-CRM114-Status: GOOD (  27.08  )
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

Hi Jonas,

On Sat, 27 Jul 2024 at 01:37, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Hi Anand,
>
> Sorry for no reply to your v3.
>
> On 2024-07-26 13:00, Anand Moon wrote:
> > Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> > signals. Each component of PCIe communication have the following control
> > signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
> > high-speed signals and communicate with other PCIe devices.
> > Used by root complex to endpoint depending on the power state.
> >
> > PERST is referred to as a fundamental reset. PERST should be held low
> > until all the power rails in the system and the reference clock are stable.
> > A transition from low to high in this signal usually indicates the
> > beginning of link initialization.
> >
> > WAKE signal is an active-low signal that is used to return the PCIe
> > interface to an active state when in a low-power state.
> >
> > CLKREQ signal is also an active-low signal and is used to request the
> > reference clock.
> >
> > Rename node from 'pcie3' to 'pcie30x4' to align with schematic
> > nomenclature.
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > v4: rebase on master, used RK_FUNC_GPIO GPIO function instead of PIN
> > number.
>
> Why this change? Only reset should use gpio function, if I am not
> mistaken. Also how come you change the internal pull-up/down on these
> pins?, and why do they differ for each pcie node in this series?
>
> Please see [1] for some discussion related to these pins.

I thought every board-specific dts supported GPIO function,
>
> """
> The PERST is for sure should work as GPIO, and the same as WAKE;
>
> for CLKREQ, only those board want to support L1SS need to work as
> function IO,
> """
Ok understood.
>
> As stated earlier only the reset pin need to be muxed to GPIO function,
> and that should also matches the only pin controlled with gpio in the
> driver, if I am not mistaken.

I will drop this in the next version.

>
> [1] https://lore.kernel.org/u-boot/6de0ee14-3d85-4fda-af9d-9be7e0057dc8@rock-chips.com/

I'm sorry, I did not read the complete email thread.
>
> Regards,
> Jonas
>
Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
