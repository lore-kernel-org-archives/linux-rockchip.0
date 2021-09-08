Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CD22C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 01:01:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C7DB661132
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 01:01:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C7DB661132
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68FgZ+5THOyfBGcPlF2AOW0WvYT/FCtN+dtT3alssEk=; b=TrgIgrirbgHT6h
	/sUJNS2uj8xvNNS2HcjG7bfvVdA4ApRfq0jT/1OGJKQj1COOrvQUqdTWDISnJmaLsdeYFWa2SsCrw
	IpJYNF4S7B34MVTaSNB0/wRwQFvV9JqBm4KfxpJaNEZ9wNIxZgmfBmxfCd51FcJmS9JIZCEwdLoQ4
	RvI+MCO6cSe7NEmSiGkS1dycv00SwFS9uM742d17KB2zQqO29b4H9n4lWMmdgxMYZZ5RmhgFgaquo
	jg0ZxHkE2LS4+KPfokQEnto+E4oMIOz2F5UKIL7f2jmgVSHU3v34C6SMNKv3pqFQgFXrCLhqpT7VB
	W0MA04LVhfptPu/391VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNlxq-0056tR-R6; Wed, 08 Sep 2021 01:01:22 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNlxg-0056sX-TQ
 for linux-rockchip@lists.infradead.org; Wed, 08 Sep 2021 01:01:14 +0000
Received: by mail-pj1-x1033.google.com with SMTP id k23so529605pji.0
 for <linux-rockchip@lists.infradead.org>; Tue, 07 Sep 2021 18:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=fL7IHHdZ/gzoOTGUPxPDxAU1KAMX+gAeeQ7IEIgS92I=;
 b=fUGYNrjWnrb3I1eaPcRpBHa5uCveys5QZgedEq6FkqjUD4OZbSwa4C3wVTN3Ea0J1E
 NEeFEDtPtBpxrAKvOWTnaDwo2B2v/P/5kd5YLX/XwbKcaO8nplHt67j6ZHZVQpMteY+4
 0eAtp+P3YO9W747F5K61gMUrXOoE1IA72GO8EM4UhZ02fP45WR68o9G/TsFy4xh+tT6j
 8Gh/i3SW9y/vNeQtT6qSMbCQ9H+zzZF6E2bhHT6OyoUZ3m6dfTL3zikE4O0/Fj8Ue6Rj
 Bh5cOEbzVLnmPBaFdSs4A1+vikjxpd4fQt9bHyJ402yyWqWjZTTapx4aTi1GtG/PfSRF
 MbAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=fL7IHHdZ/gzoOTGUPxPDxAU1KAMX+gAeeQ7IEIgS92I=;
 b=UsonHQSNxBnyFkOMFIemZJev9oSmlYa/h+U3cDjUYrIKfCY3ZVTd4LKWD59GeUJmIK
 uWOq0shGobwIHIygYumoHYJUrzouBdd44puNW/XuVoojOHmYypNNFQJc9V9OKauUIezi
 FJXfvzvzfOIKClUyVD+9wAVcXeGVY5GhnHUWwnjicq7AYD7uEUdAztrqO6YV8ziPcuDS
 +o+rZGOIZDL6qklsTxeLZtw5GGV9Foo5kuNhYTGTiJAay6UESjQQJ1paGAw8ILdAIiTi
 pfBcT2t5rKTYjdaDv6M86DS1gH9O96PRKEopvdoO4htbbx26wD/KvlQqd8xh3eNvPku3
 Ui+g==
X-Gm-Message-State: AOAM532mCFm9IXE8i0xi1lHRM0OKXYo5XpaES9Pfjr2ry9vTUH+jQ9jq
 KgJXY89y8SHzpIRrvekjAiy2IA==
X-Google-Smtp-Source: ABdhPJzn6dDaPFPvD6xD3dX6BMiDBYlT3VapdFvc9aR8lJIc1mWPZRw21Ia813useTb+MqcxrF740A==
X-Received: by 2002:a17:90b:33c8:: with SMTP id
 lk8mr1221312pjb.241.1631062867247; 
 Tue, 07 Sep 2021 18:01:07 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id g2sm239957pfo.154.2021.09.07.18.01.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Sep 2021 18:01:06 -0700 (PDT)
Date: Wed, 8 Sep 2021 09:00:58 +0800
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
Message-ID: <20210908010057.GB25255@dragon>
References: <20210425110200.3050-1-shawn.guo@linaro.org>
 <cb7ac252-3356-8ef7-fcf9-eb017f5f161f@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb7ac252-3356-8ef7-fcf9-eb017f5f161f@web.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_180112_991007_6356ED07 
X-CRM114-Status: GOOD (  27.85  )
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

Hi Soeren,

On Tue, Sep 07, 2021 at 09:22:52PM +0200, Soeren Moch wrote:
> On 25.04.21 13:02, Shawn Guo wrote:
> > Instead of aborting country code setup in firmware, use ISO3166 country
> > code and 0 rev as fallback, when country_codes mapping table is not
> > configured.  This fallback saves the country_codes table setup for rece=
nt
> > brcmfmac chipsets/firmwares, which just use ISO3166 code and require no
> > revision number.
> This patch breaks wireless support on RockPro64. At least the access
> point is not usable, station mode not tested.
> =

> brcmfmac: brcmf_c_preinit_dcmds: Firmware: BCM4359/9 wl0: Mar=A0 6 2017
> 10:16:06 version 9.87.51.7 (r686312) FWID 01-4dcc75d9
> =

> Reverting this patch makes the access point show up again with linux-5.14=
 .

Sorry for breaking your device!

So it sounds like you do not have country_codes configured for your
BCM4359/9 device, while it needs particular `rev` setup for the ccode
you are testing with.  It was "working" likely because you have a static
`ccode` and `regrev` setting in nvram file.  But roaming to a different
region will mostly get you a broken WiFi support.  Is it possible to set
up the country_codes for your device to get it work properly?

Shawn

> =

> Regards,
> Soeren
> > Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> > ---
> >  .../broadcom/brcm80211/brcmfmac/cfg80211.c      | 17 +++++++++++------
> >  1 file changed, 11 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.=
c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
> > index f4405d7861b6..6cb09c7c37b6 100644
> > --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
> > +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c
> > @@ -7442,18 +7442,23 @@ static s32 brcmf_translate_country_code(struct =
brcmf_pub *drvr, char alpha2[2],
> >  	s32 found_index;
> >  	int i;
> >
> > -	country_codes =3D drvr->settings->country_codes;
> > -	if (!country_codes) {
> > -		brcmf_dbg(TRACE, "No country codes configured for device\n");
> > -		return -EINVAL;
> > -	}
> > -
> >  	if ((alpha2[0] =3D=3D ccreq->country_abbrev[0]) &&
> >  	    (alpha2[1] =3D=3D ccreq->country_abbrev[1])) {
> >  		brcmf_dbg(TRACE, "Country code already set\n");
> >  		return -EAGAIN;
> >  	}
> >
> > +	country_codes =3D drvr->settings->country_codes;
> > +	if (!country_codes) {
> > +		brcmf_dbg(TRACE, "No country codes configured for device, using ISO3=
166 code and 0 rev\n");
> > +		memset(ccreq, 0, sizeof(*ccreq));
> > +		ccreq->country_abbrev[0] =3D alpha2[0];
> > +		ccreq->country_abbrev[1] =3D alpha2[1];
> > +		ccreq->ccode[0] =3D alpha2[0];
> > +		ccreq->ccode[1] =3D alpha2[1];
> > +		return 0;
> > +	}
> > +
> >  	found_index =3D -1;
> >  	for (i =3D 0; i < country_codes->table_size; i++) {
> >  		cc =3D &country_codes->table[i];
> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
