Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58984C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 21:04:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C06E760FE9
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 21:04:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C06E760FE9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CGo+0bHKiBGWKo+G9/t7gtSNH9FlePu30mE2SZQFfzA=; b=S5epHoUUr6MKAVGMuJMLarGDO
	CKx8XeiMO9jgD0aRFuXz4xWx9f/HWQvKsDtya61p5d7mNyIqa1OLg9o/3Fl1OoLiMp428U0gMsqEI
	fjVVzqyxDT6tF7sBDxRcGgxBifTnuMYHQAErBla9gs3JFUl+nFDbaxLI1i4Dw2mdkYJf3iul/gJcN
	LcMrJz6grHkzoFJFYJhuiCAwM9PoFv7FlFfgXNV9p/oDhn1HEXGgWQD+0OJ6+kpHzyfaO+AayMkMT
	k+JaY6Kh8T6COL5ZH7MQIrPxv3jA21vRJ64cndae9beqxwYRXkPeLeHYl4Sx8YyGfE0H22d3ZIA4X
	KA/HaMIRw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lheyq-0090gh-BV; Fri, 14 May 2021 21:04:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lheyn-0090gU-63
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 21:04:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=kPsrSGNLOizkCAKBiLnRmnyslOtMn2HPUetpjlj9ass=; b=NSkx/fosNvYPGvkjac8k323kRD
 x/aX6MuYP/xxgSNCIxWheIhfTfeBiLX3l+ArSnN2jE4JGDGKIBT1hsPSuDuPtyVcsIg+ryhzg+tkq
 ju5fSsrs0Dw5Qgc9raTKXwb/AoSu2BlGtmjQFAegJ8L9tA2aQxInlSlv0fVMtb4cX+jUuurBBYahs
 hqM2DEqUwW+TIlGNskMhrI5e7SHR7/NTSDKEAz67W0MJmhTCWIRMNcbw8kQNXrlNXhcvDDOYegqoP
 xbZYE4iNNd0/acl2AgFUiVK7o+MH/U/gYDiSmw16UMXzdFHlDw4m9iAXOr1/c1759R/QTjwhXSXaq
 /K0tU/QQ==;
Received: from mail-oo1-xc32.google.com ([2607:f8b0:4864:20::c32])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lheyk-00CGEm-4z
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 21:04:15 +0000
Received: by mail-oo1-xc32.google.com with SMTP id
 o202-20020a4a2cd30000b02901fcaada0306so160412ooo.7
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 14:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kPsrSGNLOizkCAKBiLnRmnyslOtMn2HPUetpjlj9ass=;
 b=gmg0uTvE+oR8hGseo5ZXul0Xt/uIiy78Qxwtv8aEV3EB41+Qmff2E8JFEaRU9rI8Se
 IfsVub1vxb/n/MBUcO+LpUmSZpdACFIdBeF4FCD0klz8/NEF6HhFmCCYg9dV27wVkXk4
 qYqoG0RcPpDdf/FVb9uYPL/6GeAsO64kz0msN2bG8S4RfwC5gt1nWypSUF0gA04rYnsf
 5CTmWJwLtAEdjDMLmmcpCW6PufLWt97gqiNHJjpvDjjUN2rYu8zX71cRyHvTcfCoU3MZ
 aup/3LoYV+7gzA8VW1kSKqvLMoEUbKPLnjj6MZNiNJ/tl7SARhjILFjjsnW4OWfsSS7Q
 j0Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kPsrSGNLOizkCAKBiLnRmnyslOtMn2HPUetpjlj9ass=;
 b=QeFCd+966PQ3dETdRvZaMpAITQ2IH2ppcJ0kk6ePghyd/C7NajbjrJVjxkQvDijRR2
 hdx26e5zVVOdHsNQkAXG1aMsB4nFas0FilDPb6r59K5WSyrv/8iYcvpbuTTYrskB158g
 BSZb64akEoccxI/p4BJqGtfeW5IMLWdjzmiUL/XK5tZFVxHwmBe01/jZ0ym56hvc2oWu
 qFbFHSZ9bkORdKhH8QTVjD/98TIEbBtQwpp9unIG7DdRhbUmLwaUXPCJvot6nEPwy4Rz
 9ebw9nTipiII+4kophkyp2lleR0OaOdpSBK1Hw6//sYSBH4qA8uuRP4aqHJdxMBTI9tG
 VPNQ==
X-Gm-Message-State: AOAM530rbnD5IimNin83perbt2RzVVeyMRrEizKOFthtUN/DERwES+ij
 X9jHpe9AeT6z+mEpMakfP6M=
X-Google-Smtp-Source: ABdhPJywA71X32l+efBN953nFSTeFQ8QaU2Msij6JPHZaQjR/Bplli3+ys66OBToEQLSKLHrVZXbNg==
X-Received: by 2002:a05:6820:611:: with SMTP id
 e17mr11158941oow.0.1621026251826; 
 Fri, 14 May 2021 14:04:11 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id c95sm1492964otb.80.2021.05.14.14.04.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 14:04:11 -0700 (PDT)
Date: Fri, 14 May 2021 16:04:09 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
 perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v10 2/4] ASoC: Add Rockchip rk817 audio CODEC support
Message-ID: <20210514210409.GA4597@wintermute.localdomain>
References: <20210514171940.20831-1-macroalpha82@gmail.com>
 <20210514171940.20831-3-macroalpha82@gmail.com>
 <20210514174958.GC6516@sirena.org.uk>
 <20210514183324.GA20917@wintermute.localdomain>
 <20210514195835.GD6516@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210514195835.GD6516@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_140414_223708_36013E45 
X-CRM114-Status: GOOD (  35.72  )
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

On Fri, May 14, 2021 at 08:58:35PM +0100, Mark Brown wrote:
> On Fri, May 14, 2021 at 01:33:24PM -0500, Chris Morgan wrote:
> > On Fri, May 14, 2021 at 06:49:58PM +0100, Mark Brown wrote:
> 
> > > > +	if (!node) {
> > > > +		dev_err(dev, "%s() dev->parent->of_node is NULL\n",
> > > > +			__func__);
> 
> > > There's no need to fail the probe here, you won't be able to read any DT
> > > properties but that shouldn't stop the driver binding.
> 
> > If I'm not mistaken this is actually telling us to fail if the parent
> > device (the PMIC itself) isn't present. I think I'll remove this as not
> > necessary since if the parent node isn't present the mfd driver will
> > never load, meaning this driver will never load either.
> 
> So it is - I edited incorrectly when I went to reply.
> 
> > Below this line however we're failing if the codec node isn't present.
> > Are you telling me we want to bind the driver if the node isn't present
> > (such as in the edge case where the driver is present and the PMIC is a
> > rk817, but the CODEC is not in use)? I will remove the return code if
> 
> Yes.
> 
> > you think that is what needs to be done. My concern there though is if
> > we do that we'll either be in a position to again report a bunch of
> > errors for the edge case of users who want to use the PMIC but not the
> > codec (in this case missing clocks and whatnot) if we try to bind the
> 
> Why would there be any errors?

There won't be here. I'm thinking of the edge case where a user has
this driver but doesn't want to use this hardware again, but I'm
getting scatterbrained and thinking overall and not in the context of
this one section.

Once I remove these lines the last place for an error to occur is when
fetching/activating the mclk in the main probe function. A user who is
trying to use this hardware would want to get an error associated with
a missing clock or one that couldn't be activated, whereas a user who
does not want to use this hardware won't care. How do you think I
should handle that?

I'm assuming if the clock isn't present or working that's where we'd
want to stop the driver, since without the clock it's useless. I'm
thinking if the clock is not present we should simply exit out and drop
a dev_dbg message to aid in troubleshooting when someone wants to use
this hardware but forgets to define their clock. However, if either the
clock is present but fails to activate or the codec fails to register,
that should probably give an actual error message (and still prevent
the driver from binding successfully).

So I'll clean up the rk817_codec_parse_dt_property to not check for a
parent node (useless), and remove the return values from it since
neither of the remaining conditions should cause the driver to fail to
probe. I'll also remove checking for the device parent in
rk817_platform_probe, since its' not necessary. If you think it's the
best solution I'll then change the clock dev_err to a dev_dbg, and
leave everything else the same.

Thank you.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
