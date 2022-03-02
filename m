Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95785C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 16:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9fzEGPeXU30MzBg5rh5tNbPici87CLGoV5bCumALd0=; b=ie1o7TzLh9Yc+8
	0DynJxZ/UDnVM6seW7Iob1lFBuz7fgSsOFWiCdrEhBus1ZLKMuvvPrYE/sBZltMLvbneTaMd3Glb3
	7t+9Zl97eh35iMRzPBtjaftZ7UIBXleqodiYlntQojwg+NUb9WRk8eZBd8FFT0Kkic8KGrbkDSpnD
	M6lRmqra4/9yEOUgfcwWCyzwTcRZQB6vp3h/VPJSM82K8NtPCPlhRxgBnlSbtmV7e/xPot1Y+iwj7
	g8Kd4+7CMCHbtAaYTPkK9Rl2gMFnnq/Xxg/i/ZxoNKHA9G4qcSFOGQQz3jgPaj0okVTGmPRIOdReM
	K/5l2OIz2yT5NC4MEd9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPRwU-003M26-5s; Wed, 02 Mar 2022 16:35:10 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPRwP-003M0x-Pb; Wed, 02 Mar 2022 16:35:07 +0000
Received: by mail-wr1-x436.google.com with SMTP id d3so3702974wrf.1;
 Wed, 02 Mar 2022 08:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to:cc
 :references:from:subject:in-reply-to:content-transfer-encoding;
 bh=+KEne0a6IJLE6Osg+JtxCNTixxOaL7fmqtVO7EUGwdM=;
 b=eriiTgh3LKCyoVVVPO6fzaMx7unAv5KWFymHLCvAXaAtlU3baqkWijEISxNLBAqkAQ
 uaxhLjzPS0aZ+EiAhwTFNGSY1zDUsl04hf8Sp1HUTvFHOMvheIn+gE4JjDlAHpdzxjdx
 YCM9TvZ/q4LkbMtqrD6ejDnNXC7xVj3gizuQgnb3U9GOR2bTx76rM5l5fHuYGeA4asa0
 7ivj4h3lqER1A/eP2BwwOHk6zR0clcrIfWad0+QanCR0bgKAgXHcNjAt1dlp7fESagx4
 RCvtVyTJYLBRythecvOrGVfdzPZmYtVpQZynCY4Atb7XQ0lwIjdAk5rApwT/4VaFlXbd
 kB9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:cc:references:from:subject:in-reply-to
 :content-transfer-encoding;
 bh=+KEne0a6IJLE6Osg+JtxCNTixxOaL7fmqtVO7EUGwdM=;
 b=IhMWMr99LLplK49P99eBxaHcexRtjXNPT/ISaddzgQDBY0LI3IE7/Emh82kFhdIulh
 aNgWsm1OUK1VASde2fa2YaGCDEjPgUFcERG9IzIYwV4nm5d6RAonsNBkwhWoUE1gLtCg
 T5lk0zjsIAgvMRkn57M0XsvvYr4rBhFOIOfar8V2QDFvNdEUJ775M27/4JtJxJMAhK0D
 QVBRTXzrpuIIwOh0eEAqq07rl2zzAErpcEHC7Q9SwoSebD7jlZTttl3ZpPBcnoIVUJX8
 J55l3QUyxVLsFmpBHv6Y0QbiglpOwW7WKpRRwRqusfgOw2gi36alsT6F3CuvcpQoInvF
 5C0Q==
X-Gm-Message-State: AOAM533rqcxtKWH2ylDL87jJhxm1d8LOrItx2XKQMeTVE7tF6qaK9809
 fMuzOdoXZwnNtWrC1ich2ao=
X-Google-Smtp-Source: ABdhPJxun3EH+nXUunB7e4Mu5u0c6eahD3gMTpXb5Ff6KYLT9eAJgez2N+mUNLfGroTKnUZupS47Ug==
X-Received: by 2002:a05:6000:1b8a:b0:1e4:b3a3:4c1f with SMTP id
 r10-20020a0560001b8a00b001e4b3a34c1fmr24081428wru.202.1646238903719; 
 Wed, 02 Mar 2022 08:35:03 -0800 (PST)
Received: from ?IPV6:2a01:c22:7331:8a00:f01c:7f48:1898:5008?
 (dynamic-2a01-0c22-7331-8a00-f01c-7f48-1898-5008.c22.pool.telefonica.de.
 [2a01:c22:7331:8a00:f01c:7f48:1898:5008])
 by smtp.googlemail.com with ESMTPSA id
 i20-20020a05600c355400b0038164ef5418sm6761846wmq.32.2022.03.02.08.35.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Mar 2022 08:35:03 -0800 (PST)
Message-ID: <a4d3fef1-d410-c029-cdff-4d90f578e2da@gmail.com>
Date: Wed, 2 Mar 2022 17:34:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Jerome Brunet <jbrunet@baylibre.com>, Erico Nunes <nunes.erico@gmail.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-amlogic@lists.infradead.org,
 netdev@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-sunxi@lists.linux.dev
References: <CAK4VdL3-BEBzgVXTMejrAmDjOorvoGDBZ14UFrDrKxVEMD2Zjg@mail.gmail.com>
 <1jczjzt05k.fsf@starbuckisacylon.baylibre.com>
 <CAK4VdL2=1ibpzMRJ97m02AiGD7_sN++F3SCKn6MyKRZX_nhm=g@mail.gmail.com>
 <6b04d864-7642-3f0a-aac0-a3db84e541af@gmail.com>
 <CAK4VdL0gpz_55aYo6pt+8h14FHxaBmo5kNookzua9+0w+E4JcA@mail.gmail.com>
 <1e828df4-7c5d-01af-cc49-3ef9de2cf6de@gmail.com>
 <1j8rts76te.fsf@starbuckisacylon.baylibre.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: net: stmmac: dwmac-meson8b: interface sometimes does not come up
 at boot
In-Reply-To: <1j8rts76te.fsf@starbuckisacylon.baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_083505_907400_F01570B8 
X-CRM114-Status: GOOD (  51.42  )
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

On 02.03.2022 14:39, Jerome Brunet wrote:
> 
> On Wed 02 Mar 2022 at 12:01, Heiner Kallweit <hkallweit1@gmail.com> wrote:
> 
>> On 02.03.2022 11:33, Erico Nunes wrote:
>>> On Sat, Feb 26, 2022 at 2:53 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>>> Just to rule out that the PHY may be involved:
>>>> - Does the issue occur with internal and/or external PHY?
>>>
>>> My target boards have the internal phy only. It is not possible for me
>>> at the moment to test it with an external phy.
>>>
>>>> - Issue still occurs in PHY polling mode? (disable PHY interrupt in dts)
>>>
>>> Thanks for suggesting this. I did tests with this and it seems to be a
>>> workaround.
>>> With phy interrupt on recent kernels (around v5.17-rc3) I'm able to
>>> reproduce the issue relatively easily over a batch of a hundred jobs.
>>> With my tests with the phy in polling mode, I have not been able to
>>> reproduce so far, even with several hundred jobs.
>>>
>> It's my understanding that in the problem case the "aneg complete"
>> interrupt fires, but no data flows.
>> This might indicate a timing issue. According to the meson PHY driver
>> (I don't have the datasheet) the PHY doesn't have a "link up" interrupt
>> source, just the mentioned "aneg complete".
>>
>> Below I send an experimental patch that delays the link up processing
>> a little and eliminates not needed interrupt sources.
>> Could you please test it with PHY interrupts enabled?
>>
>>
>> By the way, to all:
>> I found that interrupt mode is broken in fixed (aneg disabled) mode,
>> because link-up isn't signaled. Experiments showed that irq source
>> bit 7 can be used to fix this, but this bit isn't documented in the
>> driver.
>>
>>> For completeness I also tested 46f69ded988d (from my initial analysis)
>>> and setting the phy to polling mode there does not make a difference,
>>> issue still reproduces. So it may have been a different bug. Though I
>>> guess at this point we can disregard that and focus on the current
>>> kernel.
>>>
>>> I tried adding a few debugs and delays to the interrupt code path in
>>> drivers/net/phy/meson-gxl.c but nothing gave me useful info so far.
>>>
>>> Do you have more advice on how to proceed from here?
>>>
>>> Thanks
>>>
>>> Erico
>>
>> Heiner
> 
> Hi,
> 
> I also did some tests on my side as well. Mostly with v5.10.93 ATM
> It is true that I can recall seeing this issue only on boards using the
> internal PHY (g12 and gxl board for me - I don't have meson8b boards)
> 
> I tried on the u200 (g12 based). Being the ref design it has both
> the internal and external interfaces and I can choose.
> 
> To my surprise, I could not reproduce the issue on it with the internal
> PHY ... until I noticed that eMMC was initialising more or less at the
> same time as the network.
> 
> I disabled the eMMC, out of curiosity, and the issue was back.
> Like Heiner, I suspect a timing issue - at this stage, I can't tell if it
> is PHY related though.
> 
> I also tried with the external phy, could not reproduce. Unfortunately,
> as we can see from the first test on the u200, not reproducing is not
> really a proof and it difficult to conclude.
> 
> Like Erico, I tried bisecting but I ended up on a BT merge ... Clearly
> inconclusive :(
> 
> Disabling the IRQ is an interesting test but, on my side, I have mixed
> results (on the libretech-cc this time):
> 
> * I first tried quickly while bisecting, on commit
>   5.6.0-rc3-01434-g8d4ccd7770e7:
>   - With IRQ => NOK
>   - POLL => NOK
> 
> Seeing Erico's report, I thought maybe I mixed things up so I tried again,
> doubled checked IRQ were disabled ... still broken. There was another
> commit I reproduce it without IRQ but I lost it.
> 
> * I also tried on v5.10.93:
>   - With IRQ => NOK
>   - POLL => OK ... (well, I got bored before the issue showed up)
> 
> It seems that switching to polling, in some case, changes the timings
> just enough to hide the issue ... but not always. Unless I forgot to
> consider something else ?? Ideas ?
> 
When using polling the time difference between aneg complete and
PHY state machine run is random in the interval 0 .. 1s.
Hence there's a certain chance that the difference is too small
to avoid the issue.

> If I understand the proposed patch correctly, it is mostly about the phy
> IRQ. Since I reproduce without the IRQ, I suppose it is not the
> problem we where looking for (might still be a problem worth fixing -
> the phy is not "rock-solid" when it comes to aneg - I already tried
> stabilising it a few years ago)

Below is a slightly improved version of the test patch. It doesn't sleep
in the (threaded) interrupt handler and lets the workqueue do it.

Maybe Amlogic is aware of a potentially related silicon issue?

> 
> TBH, It bothers me that I reproduced w/o the IRQ. The idea makes
> sense :/
> 
>>
[...]
> 


diff --git a/drivers/net/phy/meson-gxl.c b/drivers/net/phy/meson-gxl.c
index 7e7904fee..a3318ae01 100644
--- a/drivers/net/phy/meson-gxl.c
+++ b/drivers/net/phy/meson-gxl.c
@@ -209,12 +209,7 @@ static int meson_gxl_config_intr(struct phy_device *phydev)
 		if (ret)
 			return ret;
 
-		val = INTSRC_ANEG_PR
-			| INTSRC_PARALLEL_FAULT
-			| INTSRC_ANEG_LP_ACK
-			| INTSRC_LINK_DOWN
-			| INTSRC_REMOTE_FAULT
-			| INTSRC_ANEG_COMPLETE;
+		val = INTSRC_LINK_DOWN | INTSRC_ANEG_COMPLETE;
 		ret = phy_write(phydev, INTSRC_MASK, val);
 	} else {
 		val = 0;
@@ -240,7 +235,10 @@ static irqreturn_t meson_gxl_handle_interrupt(struct phy_device *phydev)
 	if (irq_status == 0)
 		return IRQ_NONE;
 
-	phy_trigger_machine(phydev);
+	if (irq_status & INTSRC_ANEG_COMPLETE)
+		phy_queue_state_machine(phydev, msecs_to_jiffies(100));
+	else
+		phy_trigger_machine(phydev);
 
 	return IRQ_HANDLED;
 }
-- 
2.35.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
