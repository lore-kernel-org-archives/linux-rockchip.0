Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65F3C43461
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 18:33:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A7E061457
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 18:33:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A7E061457
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5t3/O1XYwq/APDePOKtFsalP0O1YD6eimjrxqVrIu+8=; b=qM4yV5+D0tUacOQvaDOjVBiSg
	uR/j0L2EEWvsJVB2AP60aQF0nztzz31T6s7rX8SrPHswv7ls9AqtI5IFuZAbvJYdExph9aXIEBG/o
	lDevx1MjSfI0krCKaunU+whV8beQO+obsBuR/YX88WJEkLn7PCpSu7GOzunTjwwNqaYCYrhc8DgEi
	VKfaR7ai8SFhAc50IRBki12lorwuXGJ9fJ2zoCrd1VmTw1UQ5fq+Fj2pSwzER0e9fNUR+Pg2KxLqb
	BUowzv7VQkco4t5L0FLY5PcV4DnEg3Ho4rz8bsCFUN51m+fH8F7D4/tuaBGEbzSD5YGGWEqdK+0R+
	DSaTc8GRQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhccu-008i2k-Qs; Fri, 14 May 2021 18:33:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhcct-008i2b-03
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 18:33:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MyepW9OZoA5Tfnsk829LBdO7lppfBfCNDTAkF2rLFjw=; b=wVm/do4gliMlE5qch3S0AOday7
 oH2atSHs0D8U57aaKyk43kW86ZhTNcqQzcEGiRzWXuMQ6UDWOSgsp7IL62t6hiGLIiiCsAgGvhh1C
 cnscusU7gDDTHiL2Pke0aoljasewyjJMbQ3TNjkSE56EZ9zsWeYTrg+YWmit+6PwFRC1t5E9mlDai
 i4X9f68O2bZDcT9lmoQqn9khn8tDDdFPktgWfSxTAQPNk70PVIBmmPtZbw2XSKC8Qu9fbY+L6Bs4J
 q/a3NAseMr1w4AeMovlJbBn94x7qfYnUvVTHZ5vwCMamfHUITCjUcGAx2raFb/0J2K15prMCymQLD
 hURKUVlw==;
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhccp-00CBIz-Qn
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 18:33:29 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 r26-20020a056830121ab02902a5ff1c9b81so48652otp.11
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 11:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=MyepW9OZoA5Tfnsk829LBdO7lppfBfCNDTAkF2rLFjw=;
 b=CSruQYkZcAvyzO2bwdSLSevjn6wHjzL16r4vHhL3WjVB3Wmud9BONG+RXENhltUe5z
 QbRig6W7y1v7Hqiv6xbTxAMtt/QzbcbWfbbWvJNLnEEpzWgm3/2GakdSSSHlvXR2/huV
 0wYXCs0tFCLIi4zF1EE674UyBsA5BDSDAYcRr1ox9xCLM6L/uQCk4ikuDbAYtOZu6HMB
 BrfcFLZYIQueonpmtZKGNThbUD2M+8wrfudMTV7Uk4z+tIQA5XC10G6qi8JgGyZ1U/nG
 IVd3RtCeROniLEIr73zMa2pltdFkKC+Re4rRPXtFcgNEeVttA0bRsE3/1HiiVR275ONS
 nI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MyepW9OZoA5Tfnsk829LBdO7lppfBfCNDTAkF2rLFjw=;
 b=dy6THo6AHgJNjJrq6CPMJ/6foxfsmQwmJXHKKI8rXFYpWMv69HTnGCcBmBnzNVnwVt
 u9H/pFdVCt8BRY1EpK74zTFOvxNZd/yA03+eGMZ4RUQb5BJEKMEYmsCpoOh2k1GkiL4c
 HZ4x2jB5AAfOLeEV31QXL2ZV3lNtsyuvA2hY5s1o/Wxv+Jdv9pSfZ5BzWLe8jS9drc3I
 v8D+tsIcWZllr0wY+0xb24jGFym2WMIK9tIguePUV66Uk7Lx8b2BsxjHYzjMh8+LzZzu
 hByOlQYlJXa29k4rezArg63w1hrOBWYtw6ETvoap/+5eehGPmZSyjLOxG/9ffCiYe/YM
 qtmQ==
X-Gm-Message-State: AOAM533RwFQJlyHmkv3s8HdGVvuULoOV9t+YpC+RZQxZk8czpMQ5I3pG
 BV7BzhlpLBrSdUv6HTRL+dk=
X-Google-Smtp-Source: ABdhPJxXAj49fp1LA89JGsmz+P/omVWNY4qgVVhPM43OY3SY7lNrKcSbRajKZ4rZRZprL6MVcO7rRg==
X-Received: by 2002:a05:6830:1693:: with SMTP id
 k19mr18376058otr.210.1621017206861; 
 Fri, 14 May 2021 11:33:26 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id u201sm1296914oia.10.2021.05.14.11.33.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 11:33:26 -0700 (PDT)
Date: Fri, 14 May 2021 13:33:24 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
 perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v10 2/4] ASoC: Add Rockchip rk817 audio CODEC support
Message-ID: <20210514183324.GA20917@wintermute.localdomain>
References: <20210514171940.20831-1-macroalpha82@gmail.com>
 <20210514171940.20831-3-macroalpha82@gmail.com>
 <20210514174958.GC6516@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210514174958.GC6516@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_113327_907146_E99469A6 
X-CRM114-Status: GOOD (  21.31  )
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

On Fri, May 14, 2021 at 06:49:58PM +0100, Mark Brown wrote:
> On Fri, May 14, 2021 at 12:19:38PM -0500, Chris Morgan wrote:
> 
> > +static int rk817_codec_parse_dt_property(struct device *dev,
> > +					 struct rk817_codec_priv *rk817)
> > +{
> > +	struct device_node *node = dev->parent->of_node;
> > +
> > +	if (!node) {
> > +		dev_err(dev, "%s() dev->parent->of_node is NULL\n",
> > +			__func__);
> > +		return -ENODEV;
> > +	}
> 
> There's no need to fail the probe here, you won't be able to read any DT
> properties but that shouldn't stop the driver binding.

If I'm not mistaken this is actually telling us to fail if the parent
device (the PMIC itself) isn't present. I think I'll remove this as not
necessary since if the parent node isn't present the mfd driver will
never load, meaning this driver will never load either.

Below this line however we're failing if the codec node isn't present.
Are you telling me we want to bind the driver if the node isn't present
(such as in the edge case where the driver is present and the PMIC is a
rk817, but the CODEC is not in use)? I will remove the return code if
you think that is what needs to be done. My concern there though is if
we do that we'll either be in a position to again report a bunch of
errors for the edge case of users who want to use the PMIC but not the
codec (in this case missing clocks and whatnot) if we try to bind the
driver and the user doesn't want it. I can also set those errors to
debug level, but I think that they might be important enough for users
who DO want to use the codec to keep them as dev_err.

Let me know what you think.

Thank you.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
