Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9A2C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 14:14:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CBF2361408
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 14:14:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CBF2361408
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qQ3PBvj90b+jcMUwHZ2IOl9/i86KoW2GoaH5eVYoEME=; b=cpycoxpPri8hRvYMcKB3iH7xP
	kKKAZrzNbhkj0RoIRzfwRrevVEZN4l18wLEjW4cdh9X5RBznS955SGTnzCHwibuqhWvwBe+XS5AXy
	hzC+FSjfkfsr31Q3K0Ohyy6xDACt5KOEXZPODDAj78UOn8G2WAVlMJLDy/Bt26ADViLXL3FFE1c4d
	NDIaMg3K8WZUAMwCMOCa47xMkYZaXmOoPnDb4a36OBlRq6VcTpuDyZ9e3UOdNFcq7VdLaPSMtRyDK
	VXeBmNAb5gD19Lp/xPgfDNoUf8ctOqbTDzXQ/a6CvIbHLyiHB2JNZmsIr/i+BNVs671svwbsJvbEf
	1LUXvxkpw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhYaT-008FSU-8y; Fri, 14 May 2021 14:14:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhYaR-008FSK-In
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 14:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=nttpRZs1g+ECIwTlOlKEVgc7K4EvlGQDJ8iK+5sNCik=; b=p9iC+GMDYbO9Uqbiabxm8RhX+m
 tXqei7QtmskVriFkHX2y5VAWQDLT+q2pm1VKhGs7pHkxqpmoxG35GMF6NQpOxQgo0IVNy94wwO6f7
 QZP+yEDlBGKKXqXWOEe1xxMhEJzmKmNE+Jpl/hW+eLPRFr126u6QdA2ktqL5ZB8/V3uEIzr62aZaO
 x2VrMV1hMJRWQND64s3XW876sXaCESq0whDR+e4dS6EWiBcqjYAP16tCtRH0L7+3hJu+1OxI/zF1j
 tQR/T1OndUak3e8MdO8b2uJ3QHTC726cM3vMrMmcoD1LHLgrQbJuG32Pg+5ZpeWFTCmyOoVg1m98e
 FO9kyFAw==;
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhYaO-00C21A-Oi
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 14:14:42 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id q144so6775476ybq.0
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 07:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nttpRZs1g+ECIwTlOlKEVgc7K4EvlGQDJ8iK+5sNCik=;
 b=kcCKtQO1X5QpY9ffYMYFxFLZ0g9MnaVd9kYBpNpvbYaGJ0uTg59WF6nlEaxuZzd9hU
 3zzv1z5FAVOjcKUpF5qrRD4Zz9k+v87ZNv/eM7LPcjTB+ycux/SAmHMTVfREd99Rr+jF
 2FtrTE9ynDWoQoVIg2itwrA3Rpl0LZwnfgrWQC8Xe/bzLMBAWIF8bVpM4i6Ah4UFx1V6
 Tw90gW6ijsTPEl4WQNwUHLZA+9uji3Z3znbDi3mnaLp5YutGptBnZCSHtZarjmdh8YPN
 GAHc9zi13f2A7LSgFgm5P9G+IIr5WmQsUIy707kYBQamN7ivUsCdO2WBd7H8cGZTvyGk
 NNgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nttpRZs1g+ECIwTlOlKEVgc7K4EvlGQDJ8iK+5sNCik=;
 b=dWhLj1NmMNErFk+UjkIxiuq208vvR6PXwJPyKOgHAe/gIY9PpT091lC74GtUnBv6vC
 j/Cc2qmJF+qHnDrEobf8+Ir1I0lTY+21sVT4MmnM4c7G671uEyRhef23cwlnwPSbzbNa
 aiyBpWatRTrfSW2pkikqz+9INa8lmZ/mSWiHOPWqOIdMTZjt3RpbQXevM4/tRc6muT13
 JpCcN4yff8Z6L1gUQLjlW9C68fkyc3MjA3bjsvFXctnQ5xcmTi4vYpfziYHvRmAL1xEZ
 9GmhfEMfYFIRPDkv7mtpImHJbE04RbWYX3kEnp6kBjQkSGagqSn39fhw4PDLteucOrZV
 7c5g==
X-Gm-Message-State: AOAM530AJQjiIaC8JqBNxlPRmCHwqOrFmLqU0JjfZYlSC+asKlpRLg1v
 CVDjMrkpDydkwpp9oN4zseB42omWO5Z5CDEF91Q=
X-Google-Smtp-Source: ABdhPJzi3HRVqzFQJgeSHMexWxFS1Qng1v69CknCeldIP8G2COuQM0zsJD/5JbMl1mLIPs0Mmo2s/ImzTJn6iPEw14M=
X-Received: by 2002:a25:4241:: with SMTP id p62mr52757613yba.141.1621001679203; 
 Fri, 14 May 2021 07:14:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210514115826.3025223-1-pgwipeout@gmail.com>
 <YJ56G23e930pg4Iv@lunn.ch>
In-Reply-To: <YJ56G23e930pg4Iv@lunn.ch>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 14 May 2021 10:14:27 -0400
Message-ID: <CAMdYzYrSB0G7jfG9fo85X0DxVG_r-qaWUyVAa5paAW0ugLvoxw@mail.gmail.com>
Subject: Re: [PATCH v3] net: phy: add driver for Motorcomm yt8511 phy
To: Andrew Lunn <andrew@lunn.ch>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, 
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_071440_841340_01E69286 
X-CRM114-Status: GOOD (  26.42  )
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

On Fri, May 14, 2021 at 9:24 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Fri, May 14, 2021 at 07:58:26AM -0400, Peter Geis wrote:
> > Add a driver for the Motorcomm yt8511 phy that will be used in the
> > production Pine64 rk3566-quartz64 development board.
> > It supports gigabit transfer speeds, rgmii, and 125mhz clk output.
>
> Thanks for adding RGMII support.
>
> > +#define PHY_ID_YT8511                0x0000010a
>
> No OUI in the PHY ID?
>
> Humm, the datasheet says it defaults to zero. That is not very
> good. This could be a source of problems in the future, if some other
> manufacture also does not use an OUI.
>
> > +/* RX Delay enabled = 1.8ns 1000T, 8ns 10/100T */
> > +#define YT8511_DELAY_RX              BIT(0)
> > +
> > +/* TX Delay is bits 7:4, default 0x5
> > + * Delay = 150ps * N - 250ps, Default = 500ps
> > + */
> > +#define YT8511_DELAY_TX              (0x5 << 4)
>
> > +
> > +     switch (phydev->interface) {
> > +     case PHY_INTERFACE_MODE_RGMII:
> > +             val &= ~(YT8511_DELAY_RX | YT8511_DELAY_TX);
> > +             break;
>
> This is not correct. YT8511_DELAY_TX will only mask the 2 bits in 0x5,
> not all the bits in 7:4. And since the formula is
>
> Delay = 150ps * N - 250ps
>
> setting N to 0 is not what you want. You probably want N=2, so you end up with 50ps

The manufacturer's driver set this to <0> to disable, but I agree the
datasheet disagrees with this.

>
> > +     case PHY_INTERFACE_MODE_RGMII_ID:
> > +             val |= YT8511_DELAY_RX | YT8511_DELAY_TX;
> > +             break;
> > +     case PHY_INTERFACE_MODE_RGMII_RXID:
> > +             val &= ~(YT8511_DELAY_TX);
> > +             val |= YT8511_DELAY_RX;
>
> The delay should be around 2ns. For RX you only have 1.8ns, which is
> probably good enough. But for TX you have more flexibility. You are
> setting it to the default of 500ps which is too small. I would suggest
> 1.85ns, N=14, so it is the same as RX.

Makes sense, these are the insights I was hoping for!

>
> I also wonder about bits 15:12 of PHY EXT ODH: Delay and driver
> strength CFG register.

The default value *works*, and from an emi perspective we want the
lowest strength single that is reliable.
Unfortunately I don't have the equipment to *test* the actual output
strengths and the datasheet isn't explicitly clear about them either.
This is one of the values I was considering having defined in the devicetree.

>
>          Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
