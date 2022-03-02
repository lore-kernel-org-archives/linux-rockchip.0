Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AE2EC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 14:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xcVG/ClRtlNuPuUDTmbmXxgb78wE8x7nKeCJQ6Iuw5c=; b=fFkJtpXdAl2Idm
	wvbdcixFc2tGyP1LZ62VDFeIjqVJ8ltGph4r8w7RveGmKbNHzgyHvuRoB+uuFkSMPKBg2zjJT3NQX
	5OBPxz2KBdsNyw5IR+NtW6B5DP8aUKOhE29D8YOS1wRgXBcEVgdkc2Lh4zKnwd0H3fo7DB8NI64Dk
	tMhArxSeVONQISoN3YPszwGn6NX1WLwzXKrb1f2T97GuCjJX0tid4ahke5J3qgXjPUtpoZLndOEWS
	jt2I8KOojjT3Knc22GcJ6czR6t37sN1jpcLfRY+kNI0SpWCcTZ8bL3Rodt0AO+4Fbtr772cJy9B/P
	qcdcCNgjxIZr0lr4oHqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPQDF-0032qW-Lo; Wed, 02 Mar 2022 14:44:21 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPQDA-0032oI-OO
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 14:44:19 +0000
Received: by mail-wr1-x42c.google.com with SMTP id b5so3175902wrr.2
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 06:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=references:user-agent:from:to:cc:subject:date:in-reply-to
 :message-id:mime-version;
 bh=FhWPuxj/YTUyK847np3IX93yxzJZHcz7qh4GO+7rXKE=;
 b=msaaAUtYJ4UsgZwG4sJuMhyxBIBNud3N4C+lLFW9viMe+uajCi99kjRwYykX652Lgw
 2eSEg9m/6Thl27dD6VUUYSkPVLH54de9va8DFzmM9uKdE+jGdik4V2AxcDjPRt35rRUb
 7J3Ip4w45tgm3bkTpAY7608rIwWUzCfwOUDbvo8OP6HrGh/eBXxu/g3NlRXUgyWTxnQ7
 SXtOpCdZrCfmkFdQpTOTWYHxPU8VHAyLZCM2k/SlgAbVKODxOX79JXrG3AnR/uhBKHpc
 vvGCPOC4bPdxA++OUaECwgdBTpG96LjSfeI9NY5M7AswjyV9Ccp8e5lshz5zSEGZ/P7J
 oAEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
 :in-reply-to:message-id:mime-version;
 bh=FhWPuxj/YTUyK847np3IX93yxzJZHcz7qh4GO+7rXKE=;
 b=ddD1sozuAVXKGmXTS0Auu/Xip+8+GIINIMsbZZbOgbo0t4TM8POOBVi4Q3p8AOcEdw
 vU6ghYEX6AmgYN7XxB8th0QsT+xW3OTCeLG7r9qm3aP6GAJFRl8DmsJEgj91fu6hbPdK
 TmKSmiZ50wChQ4gtNzbVT85XeX0DQmVnvYa3o/J97ylYX1HETXb/sdZAvfDq7f1RMzuV
 fBgZuB8idRGNHs/Z69Hf3NaCbU9d0Elhe2aWxqP2bMoGnHzeSBlZMwzphp/723hVMwfh
 6mRbDIw0Yxf1DUsezz1W5OQYoVt934rtpkN5I8RLastZ131xRNM7JahJCCVmqn308wmi
 ewVg==
X-Gm-Message-State: AOAM530uYKn3+oD2a0lxSh/4Fka4+GUbzamelVVBTk3t9AQDNYVhXTU0
 t1H+lCVCgvZTwX2Xz2J9P8xTFg==
X-Google-Smtp-Source: ABdhPJzpL4aEUuKagqpQ7KI1a1VSvKWc65xZONt1iWiFcNA6nLEK1U7HWta5oDI+FEGGzZdYSfZ2hw==
X-Received: by 2002:a5d:5889:0:b0:1ef:d7e1:c6c with SMTP id
 n9-20020a5d5889000000b001efd7e10c6cmr10337751wrf.569.1646232254953; 
 Wed, 02 Mar 2022 06:44:14 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31]) by smtp.gmail.com with ESMTPSA id
 t9-20020a05600c198900b0037c0342cb62sm7842262wmq.4.2022.03.02.06.44.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 06:44:14 -0800 (PST)
References: <CAK4VdL3-BEBzgVXTMejrAmDjOorvoGDBZ14UFrDrKxVEMD2Zjg@mail.gmail.com>
 <1jczjzt05k.fsf@starbuckisacylon.baylibre.com>
 <CAK4VdL2=1ibpzMRJ97m02AiGD7_sN++F3SCKn6MyKRZX_nhm=g@mail.gmail.com>
 <6b04d864-7642-3f0a-aac0-a3db84e541af@gmail.com>
 <CAK4VdL0gpz_55aYo6pt+8h14FHxaBmo5kNookzua9+0w+E4JcA@mail.gmail.com>
 <1e828df4-7c5d-01af-cc49-3ef9de2cf6de@gmail.com>
User-agent: mu4e 1.6.10; emacs 27.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Heiner Kallweit <hkallweit1@gmail.com>, Erico Nunes
 <nunes.erico@gmail.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro
 <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, Kevin Hilman
 <khilman@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-amlogic@lists.infradead.org, netdev@vger.kernel.org, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-sunxi@lists.linux.dev
Subject: Re: net: stmmac: dwmac-meson8b: interface sometimes does not come
 up at boot
Date: Wed, 02 Mar 2022 14:39:47 +0100
In-reply-to: <1e828df4-7c5d-01af-cc49-3ef9de2cf6de@gmail.com>
Message-ID: <1j8rts76te.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_064416_824243_BAF99EFF 
X-CRM114-Status: GOOD (  44.96  )
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


On Wed 02 Mar 2022 at 12:01, Heiner Kallweit <hkallweit1@gmail.com> wrote:

> On 02.03.2022 11:33, Erico Nunes wrote:
>> On Sat, Feb 26, 2022 at 2:53 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>> Just to rule out that the PHY may be involved:
>>> - Does the issue occur with internal and/or external PHY?
>> 
>> My target boards have the internal phy only. It is not possible for me
>> at the moment to test it with an external phy.
>> 
>>> - Issue still occurs in PHY polling mode? (disable PHY interrupt in dts)
>> 
>> Thanks for suggesting this. I did tests with this and it seems to be a
>> workaround.
>> With phy interrupt on recent kernels (around v5.17-rc3) I'm able to
>> reproduce the issue relatively easily over a batch of a hundred jobs.
>> With my tests with the phy in polling mode, I have not been able to
>> reproduce so far, even with several hundred jobs.
>> 
> It's my understanding that in the problem case the "aneg complete"
> interrupt fires, but no data flows.
> This might indicate a timing issue. According to the meson PHY driver
> (I don't have the datasheet) the PHY doesn't have a "link up" interrupt
> source, just the mentioned "aneg complete".
>
> Below I send an experimental patch that delays the link up processing
> a little and eliminates not needed interrupt sources.
> Could you please test it with PHY interrupts enabled?
>
>
> By the way, to all:
> I found that interrupt mode is broken in fixed (aneg disabled) mode,
> because link-up isn't signaled. Experiments showed that irq source
> bit 7 can be used to fix this, but this bit isn't documented in the
> driver.
>
>> For completeness I also tested 46f69ded988d (from my initial analysis)
>> and setting the phy to polling mode there does not make a difference,
>> issue still reproduces. So it may have been a different bug. Though I
>> guess at this point we can disregard that and focus on the current
>> kernel.
>> 
>> I tried adding a few debugs and delays to the interrupt code path in
>> drivers/net/phy/meson-gxl.c but nothing gave me useful info so far.
>> 
>> Do you have more advice on how to proceed from here?
>> 
>> Thanks
>> 
>> Erico
>
> Heiner

Hi,

I also did some tests on my side as well. Mostly with v5.10.93 ATM
It is true that I can recall seeing this issue only on boards using the
internal PHY (g12 and gxl board for me - I don't have meson8b boards)

I tried on the u200 (g12 based). Being the ref design it has both
the internal and external interfaces and I can choose.

To my surprise, I could not reproduce the issue on it with the internal
PHY ... until I noticed that eMMC was initialising more or less at the
same time as the network.

I disabled the eMMC, out of curiosity, and the issue was back.
Like Heiner, I suspect a timing issue - at this stage, I can't tell if it
is PHY related though.

I also tried with the external phy, could not reproduce. Unfortunately,
as we can see from the first test on the u200, not reproducing is not
really a proof and it difficult to conclude.

Like Erico, I tried bisecting but I ended up on a BT merge ... Clearly
inconclusive :(

Disabling the IRQ is an interesting test but, on my side, I have mixed
results (on the libretech-cc this time):

* I first tried quickly while bisecting, on commit
  5.6.0-rc3-01434-g8d4ccd7770e7:
  - With IRQ => NOK
  - POLL => NOK

Seeing Erico's report, I thought maybe I mixed things up so I tried again,
doubled checked IRQ were disabled ... still broken. There was another
commit I reproduce it without IRQ but I lost it.

* I also tried on v5.10.93:
  - With IRQ => NOK
  - POLL => OK ... (well, I got bored before the issue showed up)

It seems that switching to polling, in some case, changes the timings
just enough to hide the issue ... but not always. Unless I forgot to
consider something else ?? Ideas ?

If I understand the proposed patch correctly, it is mostly about the phy
IRQ. Since I reproduce without the IRQ, I suppose it is not the
problem we where looking for (might still be a problem worth fixing -
the phy is not "rock-solid" when it comes to aneg - I already tried
stabilising it a few years ago)

TBH, It bothers me that I reproduced w/o the IRQ. The idea makes
sense :/

>
>
> diff --git a/drivers/net/phy/meson-gxl.c b/drivers/net/phy/meson-gxl.c
> index 7e7904fee..0acb3a99a 100644
> --- a/drivers/net/phy/meson-gxl.c
> +++ b/drivers/net/phy/meson-gxl.c
> @@ -7,6 +7,7 @@
>   * Author: Neil Armstrong <narmstrong@baylibre.com>
>   */
>  #include <linux/kernel.h>
> +#include <linux/delay.h>
>  #include <linux/module.h>
>  #include <linux/mii.h>
>  #include <linux/ethtool.h>
> @@ -209,12 +210,7 @@ static int meson_gxl_config_intr(struct phy_device *phydev)
>  		if (ret)
>  			return ret;
>  
> -		val = INTSRC_ANEG_PR
> -			| INTSRC_PARALLEL_FAULT
> -			| INTSRC_ANEG_LP_ACK
> -			| INTSRC_LINK_DOWN
> -			| INTSRC_REMOTE_FAULT
> -			| INTSRC_ANEG_COMPLETE;
> +		val = INTSRC_LINK_DOWN | INTSRC_ANEG_COMPLETE;
>  		ret = phy_write(phydev, INTSRC_MASK, val);
>  	} else {
>  		val = 0;
> @@ -240,6 +236,9 @@ static irqreturn_t meson_gxl_handle_interrupt(struct phy_device *phydev)
>  	if (irq_status == 0)
>  		return IRQ_NONE;
>  
> +	if (irq_status & INTSRC_ANEG_COMPLETE)
> +		msleep(100);
> +
>  	phy_trigger_machine(phydev);
>  
>  	return IRQ_HANDLED;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
