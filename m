Return-Path: <SRS0=gAqv=N7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 357EDC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Sep 2021 02:20:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C8D1661166
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Sep 2021 02:20:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C8D1661166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/y9EdPvC2qY80b8O15nGsAnrq1EAyX4aqtf3jN5N+4=; b=tIp/0bcwdgpb7N
	2TtoiofhXvNwL7Sc4EbrUNcRWjTiWAYHZ4t6lbxUhY+mAILq/CKlGIkuPZuUoFfRBWSfnQ+h44DSz
	hmrjHzzo8Ra0erP6oHbXdN50/xDlIbGAxf6X3vTUPhHGFzyDPKEn2yes7Bmw4QwH15hpblSP/bAY9
	xLN6qx169G5VHtS2k+BM7DXNmZQfxAjrtESzAxUPT4Q//4zem+j6My6WE8bsc6J8DN9oCz7iY6HND
	jCFJX/5KuVDZ/h/fsPmLZDQb3y/qEKY4XfkdCI8gXFQmCzQQIOCbUcrLhh1F/n0QDIDkt81bi2AAG
	1DCYBQh8LXuOAm8er5nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mO9gJ-0084Kq-75; Thu, 09 Sep 2021 02:20:51 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mO9gG-0084Jv-4A
 for linux-rockchip@lists.infradead.org; Thu, 09 Sep 2021 02:20:49 +0000
Received: by mail-pl1-x62a.google.com with SMTP id l11so92950plk.6
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Sep 2021 19:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=IAfEpqoGn5FhStESKZaKaDUjCrQlR5OZFuiaBUrglls=;
 b=jJmJTCtfPAKF991YiwhZ2iuFcRvrCaPxQ1lZfOk1extXuMMmVAhSL90s/OVbdW8Sxn
 DhrNhzgi4cKOEUCONL3oi4UGm3kjzozY07CHS+4zQlFwCOf2mshbsVeL5swtaFYTPNFW
 upX559upPQOsY09pAoXcsyBWBCJG8h9hzOFcIoAA9BX14BVYj5IMQwhJ+8KZMRyXuhLB
 kUWSGt1gZuXwPLj3r+J6rdUga3MJL5NhGRF4+Db74BIOuWdodfGhpjnw224u+rC99ypI
 8vL/bIR3o/qXf/SDkQGIfCAEk+mRX6atIqo0Dvv9QY0ULM3rhRg/Ur8tMuTG/gOOfj0B
 FjFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=IAfEpqoGn5FhStESKZaKaDUjCrQlR5OZFuiaBUrglls=;
 b=K/IShpyLfrkeRSimA+Ft82GpqjPa4fxOfOqW2ZWY9yXarEtlHIj3HAdbiUaGNAdP7n
 gyTDfIKE7kvV9qnwXCQ/cK3LxBAQmGjtw6cjM6nzRGZAbxsU+ZjFxDBFF8KVZzDLuT+g
 lEqgqLGfXmXCAU8+99cITfACufGs1MKQCK4S/mgOMTkHgw7abA1kvhXj4BqEiTjfuxs0
 8cDEqG0D1QF8J+H4m0FrwzFFCFxB5shwx+MagKsrb7qOLRL4WREOw/53b7MzOpt/N1kB
 5wPloc/evDM5KmKpasc+XAjqe7nyO2tKy+NPeUdKUJjUDYlvCLuiQS0LTDnH2go6WJfF
 eotA==
X-Gm-Message-State: AOAM533g1XRUHfdQQdMNN8l+tnZO/9u9tGi20a0+rQHoaScnfNrXZUHb
 4X67+u3j8kgE6TiEyKuwQngDOQ==
X-Google-Smtp-Source: ABdhPJwYF4Xh93yfTGLpHTHkwGPubew671yHD4XOKaor4DCc/1m70ThjbGoaTcW7EHsW5Ds41hu40w==
X-Received: by 2002:a17:902:778a:b0:13a:bfd:94ed with SMTP id
 o10-20020a170902778a00b0013a0bfd94edmr511368pll.24.1631154046606; 
 Wed, 08 Sep 2021 19:20:46 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id v25sm183290pfm.202.2021.09.08.19.20.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 Sep 2021 19:20:45 -0700 (PDT)
Date: Thu, 9 Sep 2021 10:20:37 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Soeren Moch <smoch@web.de>
Cc: Kalle Valo <kvalo@codeaurora.org>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Arend van Spriel <aspriel@gmail.com>, Franky Lin <franky.lin@broadcom.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Chi-hsien Lin <chi-hsien.lin@infineon.com>,
 Wright Feng <wright.feng@infineon.com>,
 Chung-hsien Hsu <chung-hsien.hsu@infineon.com>,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 brcm80211-dev-list.pdl@broadcom.com, SHA-cyfmac-dev-list@infineon.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Re: [PATCH] brcmfmac: use ISO3166 country code and 0 rev
 as fallback
Message-ID: <20210909022033.GC25255@dragon>
References: <20210425110200.3050-1-shawn.guo@linaro.org>
 <cb7ac252-3356-8ef7-fcf9-eb017f5f161f@web.de>
 <20210908010057.GB25255@dragon>
 <100f5bef-936c-43f1-9b3e-a477a0640d84@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <100f5bef-936c-43f1-9b3e-a477a0640d84@web.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_192048_199529_6ED0D7F8 
X-CRM114-Status: GOOD (  34.04  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Sep 08, 2021 at 07:08:06AM +0200, Soeren Moch wrote:
> Hi Shawn,
> =

> On 08.09.21 03:00, Shawn Guo wrote:
> > Hi Soeren,
> >
> > On Tue, Sep 07, 2021 at 09:22:52PM +0200, Soeren Moch wrote:
> >> On 25.04.21 13:02, Shawn Guo wrote:
> >>> Instead of aborting country code setup in firmware, use ISO3166 count=
ry
> >>> code and 0 rev as fallback, when country_codes mapping table is not
> >>> configured.  This fallback saves the country_codes table setup for re=
cent
> >>> brcmfmac chipsets/firmwares, which just use ISO3166 code and require =
no
> >>> revision number.
> >> This patch breaks wireless support on RockPro64. At least the access
> >> point is not usable, station mode not tested.
> >>
> >> brcmfmac: brcmf_c_preinit_dcmds: Firmware: BCM4359/9 wl0: Mar=A0 6 2017
> >> 10:16:06 version 9.87.51.7 (r686312) FWID 01-4dcc75d9
> >>
> >> Reverting this patch makes the access point show up again with linux-5=
.14 .
> > Sorry for breaking your device!
> >
> > So it sounds like you do not have country_codes configured for your
> > BCM4359/9 device, while it needs particular `rev` setup for the ccode
> > you are testing with.  It was "working" likely because you have a static
> > `ccode` and `regrev` setting in nvram file.
> It always has been a mystery to me how country codes are configured for
> this device. Before I read your patch I did not even know that a
> translation table is required. Is there some documentation how this is
> supposed to work? Not sure if this makes a difference, BCM4359/9 is a
> Cypress device I think, I added mainline support for it some time ago.

One way to add the translation table is using DT.  You can find more
info and example in following commits:

b41936227078 ("dt-bindings: bcm4329-fmac: add optional brcm,ccode-map")
1a3ac5c651a0 ("brcmfmac: support parse country code map from DT")

> =

> I have installed different firmware files, brcmfmac4359-sdio.clm_blob,
> brcmfmac4359-sdio.bin, brcmfmac4359-sdio.txt, the latter also linked as
> brcmfmac4359-sdio.pine64,rockpro64-2.1.txt. This probably is the nvram
> file. ccode and regrev are set to zero, which probably means
> 'international save settings".

I'm not sure how this 'international save settings' works for brcmfmac
devices.  Do you have more info or any pointers?

> > But roaming to a different
> > region will mostly get you a broken WiFi support.  Is it possible to set
> > up the country_codes for your device to get it work properly?
> In linux-5.13 it worked, probably with save settings (not all channels
> selectable, limited tx power), with linux-5.14 it stopped working, so it
> is a regression.
> I personally would like to learn how all this is configured properly.
> For general use I think save settings are better than no wifi at all
> with this patch. This fallback to ISO CC seams to work with newer
> (Synaptics?) devices only.

I do not mind you send a reverting if you have problem to add a proper
translation table for your device.  But that would mean I have to add
a pretty "meaningless" translation table for my devices :(

Shawn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
