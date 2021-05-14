Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F655C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 16:37:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 90F1361354
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 16:37:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 90F1361354
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CTQMDvSJFhn5hGJ/nutAnbqOyV+xj71VxEJfK7lCZTQ=; b=NQymV2ihvLY03smN3T9H9AuQl
	emaX5HiCOfiumBy04p1Zyc26uPFM/THHFRKUT5Anch3NFADy+K3081WHu8kAp3Df13wtiNODBV4RT
	6aYdMiCj6qdmOsKpmPIZ/HIoLwtFMznGEZeLatMfpjBnubM7Bod+ZB61+olxC6kK0XjTfqG5sM35z
	wM9WcvxhMeQmPURRTTQHuHkw0YNCnI/qb627jlf8AkbktvkQG5PgqvvzS+c5R8Z6y+dFg6GiUVEu0
	/6WcedLIR0R+oLjlz7e3exW1c/48/+eP91svIwpgzPBVJUR5AZzvfJIk5eYrtnWgQuLc9fWFDabvd
	mlPRXPz7w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhaoe-008W8r-V2; Fri, 14 May 2021 16:37:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhaod-008W8h-4A
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 16:37:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=xr0xaBZMvO/kGXi85o/wakibkzhICIQuMbwy4lsOZ+U=; b=zdJqAC83UMYm2I6obfYiq372Da
 f0E56k+apirS9L+HH0l7E/1t5/1491nKPic+nQaRrlzt1ZXHWdN5lgsNkkYHy4M1fPgZ7VSgqWff7
 NvVvMjxGOXKDLNfSOCV+6fmQbrG+a5e94cMWESvZhcYlyCrXsZLgQvb+Apo6GIFZ0vwa2XB92ULZ+
 pCgEHOuWF9VknxIQm/RPs0vq3muYKJQXYLidJCO32GKayYtpXtT+EOnGvaXCLdU6y8sNAtR6qhpvE
 dwLwC3BAiolGnsZ0vGA5dTBC/26OXRqbcme4xKR2AXqfSKKvbS1RRCKtWT9RIKQm8MS3fJ0TiHXHa
 Kz7cACTw==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhaoa-00C7gH-78
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 16:37:29 +0000
Received: from p5b127fa9.dip0.t-ipconnect.de ([91.18.127.169]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lhanv-0003oa-RH; Fri, 14 May 2021 18:36:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Lee Jones <lee.jones@linaro.org>, Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, robh+dt@kernel.org,
 perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v9 1/4] mfd: Add Rockchip rk817 audio CODEC support
Date: Fri, 14 May 2021 18:36:47 +0200
Message-ID: <4053760.iZASKD2KPV@phil>
In-Reply-To: <20210514155008.GA5719@wintermute.localdomain>
References: <20210505140854.15929-1-macroalpha82@gmail.com>
 <20210513201114.GE805368@dell> <20210514155008.GA5719@wintermute.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_093728_294652_339B3378 
X-CRM114-Status: GOOD (  52.63  )
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

Hi Chris,

Am Freitag, 14. Mai 2021, 17:50:08 CEST schrieb Chris Morgan:
> On Thu, May 13, 2021 at 09:11:14PM +0100, Lee Jones wrote:
> > On Thu, 13 May 2021, Chris Morgan wrote:
> > 
> > > On Mon, May 10, 2021 at 05:23:29PM +0100, Lee Jones wrote:
> > > > On Wed, 05 May 2021, Chris Morgan wrote:
> > > > 
> > > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > > > 
> > > > > Add rk817 codec support cell to rk808 mfd driver.
> > > > > 
> > > > > Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
> > > > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > > 
> > > > Nit: These should be chronological.
> > > 
> > > Acknowledged. I will make sure to do this if a v10 is necessary.
> > > 
> > > > 
> > > > > ---
> > > > > Changes in v9:
> > > > >  - Add cover letter.
> > > > >  - Remove documentation for interrupt parent per Rob Herring's request.
> > > > >  - Remove unused MODULE_DEVICE_TABLE to fix a bug identified by kernel test
> > > > >    robot.
> > > > > Changes in v8:
> > > > >  - Added additional documentation for missing properties of #sound-dai-cells,
> > > > >    interrupt-parent, and wakeup-source for mfd documentation.
> > > > >  - Corrected order of elements descriptions in device tree documentation.
> > > > >  - Changed name of "mic-in-differential" to "rockchip,mic-in-differential".
> > > > >  - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
> > > > >  - Removed unused resets and reset-names from the i2s1_2ch node.
> > > > > Changes in v7:
> > > > >  - Removed ifdef around register definitions for MFD.
> > > > >  - Replaced codec documentation with updates to MFD documentation.
> > > > >  - Reordered elements in example to comply with upstream rules.
> > > > >  - Added binding update back for Odroid Go Advance as requested.
> > > > >  - Submitting patches from gmail now.
> > > > > Changes in v6:
> > > > >  - Included additional project maintainers for correct subsystems.
> > > > >  - Removed unneeded compatible from DT documentation.
> > > > >  - Removed binding update for Odroid Go Advance (will do in seperate series).
> > > > > Changes in v5:
> > > > >  - Move register definitions from rk817_codec.h to main rk808.h register
> > > > >    definitions.
> > > > >  - Add volatile register for codec bits.
> > > > >  - Add default values for codec bits.
> > > > >  - Removed of_compatible from mtd driver (not necessary).
> > > > >  - Switched to using parent regmap instead of private regmap for codec.
> > > > > Changes in v4:
> > > > >  - Created set_pll() call.
> > > > >  - Created user visible gain control in mic.
> > > > >  - Check for return value of clk_prepare_enable().
> > > > >  - Removed duplicate clk_prepare_enable().
> > > > >  - Split DT documentation to separate commit.
> > > > > Changes in v3:
> > > > >  - Use DAPM macros to set audio path.
> > > > >  - Updated devicetree binding (as every rk817 has this codec chip).
> > > > >  - Changed documentation to yaml format.
> > > > >  - Split MFD changes to separate commit.
> > > > > Changes in v2:
> > > > >  - Fixed audio path registers to solve some bugs.
> > > > > 
> > > > >  drivers/mfd/rk808.c       | 85 +++++++++++++++++++++++++++++++++++++++
> > > > >  include/linux/mfd/rk808.h | 81 +++++++++++++++++++++++++++++++++++++
> > > > >  2 files changed, 166 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> > > > > index ad923dd4e007..9231209184e0 100644
> > > > > --- a/drivers/mfd/rk808.c
> > > > > +++ b/drivers/mfd/rk808.c
> > > > > @@ -65,6 +65,7 @@ static bool rk817_is_volatile_reg(struct device *dev, unsigned int reg)
> > > > >  	switch (reg) {
> > > > >  	case RK817_SECONDS_REG ... RK817_WEEKS_REG:
> > > > >  	case RK817_RTC_STATUS_REG:
> > > > > +	case RK817_CODEC_DTOP_LPT_SRST:
> > > > >  	case RK817_INT_STS_REG0:
> > > > >  	case RK817_INT_STS_REG1:
> > > > >  	case RK817_INT_STS_REG2:
> > > > > @@ -163,6 +164,11 @@ static const struct mfd_cell rk817s[] = {
> > > > >  		.num_resources = ARRAY_SIZE(rk817_rtc_resources),
> > > > >  		.resources = &rk817_rtc_resources[0],
> > > > >  	},
> > > > > +#ifdef CONFIG_SND_SOC_RK817
> > > > > +	{
> > > > > +		.name = "rk817-codec",
> > > > > +	},
> > > > > +#endif
> > > > 
> > > > No #ifery please.
> > > > 
> > > > Just replace it with a comment.
> > > > 
> > > > If no associated driver exists, it just won't match/bind.
> > > 
> > > I did the "if" here because I noticed that if I have a rk817 and do not
> > > utilize the codec I receive a dmesg warning. I put the if here to silence
> > > it in the event that someone was using this PMIC but didn't want to use
> > > the audio codec. I will make the change if you say so though, but I just
> > > want to confirm that it's acceptable to have a warning for all rk817s
> > > that do not use the codec about a missing codec.  The hardware is always
> > > present, I just can't say for certain it will always be used.
> > 
> > What is the dmesg warning you receive?
> 
> It appears I was confused, I will update the code. No warning is
> received when I take away the ifdef guard. However, if I build the
> codec and don't include a devicetree node for it I get the following
> lines in dmesg:
> 
> rk817-codec rk817-codec: rk817_codec_parse_dt_property() Can not get child: codec
> rk817-codec rk817-codec: rk817_platform_probe() parse device tree property error -19
> 
> So it looks like this ifdef was meant to "fix" a problem that it
> doesn't even fix. I'll get rid of it and resubmit. To that end, do you
> think these messages above are okay, or should we try to fix them in
> the edge case of a user with an rk817 who doesn't use the codec but
> still has the codec driver compiled?

The general case is always having most stuff enabled (as modules)
think distro-kernels. So having the codec available but a board not
using it should not result in error messages confusing the user ;-) .

I don't think the rk817-codec will be the first mfd to stumble upon
this, so I guess just looking through others might provide the
solution on how to resolve this "silently" ;-)


Heiko






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
