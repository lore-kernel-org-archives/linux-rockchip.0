Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E21C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:30:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8A1EC6103B
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:30:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8A1EC6103B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGd6rZPlEfjKQJpwa5JcWMK6ntHkTs9leqsSm66SW+c=; b=Gr7ogwIgcJdoNz
	+HQP3SiE3aih5fgmvac6vOvVfLGY+HpVaPOpvMjC5jEtk1JS+HV1eHgwYXj05DobgJeZ9hdhpiRUx
	wUkK5MbcqWkKZGRtm8B/K3D5A8nrPBrGRtZCsJE4O1v4HVH4aIw174ETMvw+AkbAFCJ4QPp54azwQ
	8Jy69tRcCcsSHDyfBMzBjPn9sNy5d69QBBdjEi1DvI5GFqVt7+pJn7V1Q4rtQJBuvtq9QvcfccXZV
	0+HfJaFrfr4clai78t03/DdGSQLsFpYiYbGSCBaUBFuVm7LSuMJh6TPyxWq0GpZRiooQ6G1S4/sru
	aOx3oIB2W50P0B6tCY1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8oJt-0025JC-Fw; Wed, 28 Jul 2021 18:30:17 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8oJg-0025Hc-4C; Wed, 28 Jul 2021 18:30:05 +0000
Received: by mail-yb1-xb32.google.com with SMTP id q15so5555048ybu.2;
 Wed, 28 Jul 2021 11:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y95ajZGFXcI2xcNt97PSRH6Nx3noubDMmxeuFO9Gk2o=;
 b=bNDvnmWEOW5mJA2nX6+TwYm+WfU/8VI/sTK0FcMohSw8ezYb31tiy3T70kSUl334Ry
 xdeiM/EpCKCyiSFMi0u1Kd+2OZWOal7irKJG+ep4Hq3B2pAdfGd8jzWBHpoPxfxhnG3L
 LvReE8RPlv9ta5ns0axwZXOeWMyDvKqQWNykLBTW1r0aG3vPCkIMdr2Uj5mug8kuUQJb
 EptKzl+PZMeRqA1KD4VG6evHWDZ8VxKQ08W6x5iMvu0tLmfMMKMxXC0crResOblZuc+D
 oB1CgZ/PDqBr3LXRjwIJoN9kV8K+9m9Y4v2F1qQD9LiRgLmN5hp8BY6sVfCAMB5dsOvO
 JbUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y95ajZGFXcI2xcNt97PSRH6Nx3noubDMmxeuFO9Gk2o=;
 b=txw6RAcaHwKSliqtcHwHxUANZ97hFlvCG3Ng2wV5mmDNoh9lFLgRZKiFAa4okZDkWV
 JvIN9fWd5C+0d6iKUMOq1SFSOw8bzXH2p53djh11e2RWOHs+UMatUZPhRb4bXmVmZAxb
 YvnrJWh5z89MRO+mRCT2qgvdjromzg0MuUyLap2ZlSiGw1x2iynZxj6JaVhFG/SzMP/G
 d1MwngKccXAIHsNvpTGiXHHmutVM1vLJ6ULvTg5ibENRTva/IsIltgZKEx37CG0af7Cs
 z/atl2pnWX4YFReai9cuhR0bXH7KXsTH3yHaWjQihrYMlaIE2Ugi1Lw20pOR23A9w11F
 oXdg==
X-Gm-Message-State: AOAM531sikffe5N8VdQShkiTYMwC94EaA/vv7hHOekSZnXuVyE9C7+gI
 ToersmMu6nATgqSP1SZm4e1zK0wwZUzkf1aJg7o=
X-Google-Smtp-Source: ABdhPJz8AaPKzA6NAbKDMFvIaMMGEpaICIrpzm6ZaC0jVYadagMj+meR/xZJdBaq+MGpF5RxyIfm4Ihl6OkuyeK+hrc=
X-Received: by 2002:a5b:48f:: with SMTP id n15mr1368515ybp.457.1627497002716; 
 Wed, 28 Jul 2021 11:30:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210728161020.3905-1-michael.riesch@wolfvision.net>
 <20210728161020.3905-3-michael.riesch@wolfvision.net>
 <YQGaAFvqqc7wXrWD@lunn.ch>
In-Reply-To: <YQGaAFvqqc7wXrWD@lunn.ch>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 28 Jul 2021 14:29:50 -0400
Message-ID: <CAMdYzYo8zf0wjtAxTuYQnZQsBtw38prNuAA0j0sBEamcbzZbfA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3568-evb1-v10: add ethernet
 support
To: Andrew Lunn <andrew@lunn.ch>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_113004_231519_16D5EF1A 
X-CRM114-Status: GOOD (  17.38  )
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

On Wed, Jul 28, 2021 at 1:55 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Wed, Jul 28, 2021 at 06:10:20PM +0200, Michael Riesch wrote:
> > +&gmac0 {
> > +     phy-mode = "rgmii";
>
> ...
> > +
> > +     tx_delay = <0x3c>;
> > +     rx_delay = <0x2f>;
>
> Hi Michael
>
> In general, we try to have the PHY introduce the RGMII delays, not the
> MAC. Did you try
>
> phy-mode = "rgmii-id";
>
> and remove these delay values? It is hard for me to say if that will
> work because i've no idea what 0x3c and 0x2f means? Are they
> equivalent to 2ns?

Unfortunately the driver and TRM are both rather non-specific as to
how this works.
The driver sets the tx_delay to 0x30 and rx_delay to 0x10 if these
values are not defined, or sets them both to 0 in case of rgmii_id.

Generally all rockchip boards use this value instead of the rgmii_id,
I imagine because it's more consistent to tune here than the hit or
miss support of the phy drivers.
The usual course of action is to test to find the lowest and highest
working values and take the median value to plug in here.

>
>      Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
