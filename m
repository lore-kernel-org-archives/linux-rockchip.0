Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D830C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 09:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0L3btn186HfTNnC7IexwnnQM7ErH0MQvcqF+MOZvlt4=; b=MZBd9IP1DRzsCw
	iPZsGw6AeJEnXOsa5T8LHyQ0+tUz40d0tjASdPqtgEa5sQ0IBttM38GP+lc/0tlW2aFiQnBJHjySJ
	0fqnnK3Mp3U8kjoUm98wx7DYbmuvdWuuHoxxrarF5ycXAkHROcL/p35rhq+2VAAV3dzGh8pkcUnpj
	WuVp/0NBMaDcBM7I8QefyUQ7MZUW0VtVe4oWy+i4A8z9KcCcyU92gRrYjdJ9isORghecccA509M3H
	HjUdGkjaoq2hfjPTqbS0vgSHg5dzBpjahAbn4TwvRF6t8aeVppKA89B7ShrwZeMc9tNQfZVxn1iXR
	dMjuQ13D4y1vKE0mGRBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0gYD-002ZxJ-Tg; Mon, 13 Jun 2022 09:40:01 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0gY9-002Zu2-2I
	for linux-rockchip@lists.infradead.org; Mon, 13 Jun 2022 09:40:00 +0000
Received: by mail-wr1-x436.google.com with SMTP id a15so6373583wrh.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jun 2022 02:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=references:user-agent:from:to:cc:subject:date:in-reply-to
         :message-id:mime-version;
        bh=MrZPrCpzMv5ZGraAtIMvxCJ7sbcfmkSDpcXF0V3831o=;
        b=pZkFyjgLzgoi4J/6kncK8psnp1MLuKhj2iKl2jEnO4DyPUu5t94TYF9SK+uiKddRGX
         EBgm2MQ4YorQJHgraUZqDc9oRu14EMDO18MpcATL/glxJGyvX0JJvdYXVF244lM1tUqY
         ZKfHqgvOuQvpUb7sadTsBj6Y1a0VzfcJ+cBW5q8OPQJM8bA2sQ/dO36wJf2ClBDoTMzc
         pQGw6ziZSrQAYMf0K3fXu9MdH+jsddx1lzVSFX6n9GmHK+C5blcxGO1ACyfY8M9xk63x
         4LnnHYToGytg0ESbfoq5mrNeXEMJStDyxfLjMgeqyE8TJ8nJMObSyZPK/5Tmh+rwjHh5
         UXrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
         :in-reply-to:message-id:mime-version;
        bh=MrZPrCpzMv5ZGraAtIMvxCJ7sbcfmkSDpcXF0V3831o=;
        b=TfGnU+g4xlcT0sFlkr/HCOCjRaz4ZVaLIQ3iq3dc6/ThkfsqdeaxRWD868gWhDGnlN
         GLUXw/4bniyWxgtwji2GoRhxi0fwhGRjoAEuChrZ/+7Y4NN2/iv+mwSxfasAKEAkRkQ1
         pmRt4FV3kVe7q/h1OX6iIQsShNcfg05HdFCSm1k0NP7fRztTJosPvIpOcxvBB98HzF8h
         0gUWIyAktWxdPbizEnwirbRA4ZIv9bOaQlh14CMXMZ6D1Yxi0x/R6DUrwyOgxh3Gfv+G
         h3zDvv8s+XB9Y9P+AlHhZM4YBjoHSzqyEEb4nBpQk0nEkvqB91qM5kcpX+jN07na5N20
         aVtQ==
X-Gm-Message-State: AOAM533Pd55GODrcE1lUQrte2Vi1mHJF7S0Smv13+NlPBQhr23vGONtW
	TId+aS6WjNKgYN64WT9TEg/t/w==
X-Google-Smtp-Source: ABdhPJypByM9Jw1bwLYBwoXFLYaEnhkkvavblSHVHzgB0yMEgT0UuxOZdFLWBUNs9o+WNKn4mLmoCA==
X-Received: by 2002:a05:6000:1a89:b0:219:b255:d874 with SMTP id f9-20020a0560001a8900b00219b255d874mr21656856wry.50.1655113194309;
        Mon, 13 Jun 2022 02:39:54 -0700 (PDT)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id c130-20020a1c3588000000b0039c693a54ecsm10357994wma.23.2022.06.13.02.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 02:39:53 -0700 (PDT)
References: <CAK4VdL3-BEBzgVXTMejrAmDjOorvoGDBZ14UFrDrKxVEMD2Zjg@mail.gmail.com>
 <1jczjzt05k.fsf@starbuckisacylon.baylibre.com>
 <CAK4VdL2=1ibpzMRJ97m02AiGD7_sN++F3SCKn6MyKRZX_nhm=g@mail.gmail.com>
 <6b04d864-7642-3f0a-aac0-a3db84e541af@gmail.com>
 <CAK4VdL0gpz_55aYo6pt+8h14FHxaBmo5kNookzua9+0w+E4JcA@mail.gmail.com>
 <1e828df4-7c5d-01af-cc49-3ef9de2cf6de@gmail.com>
 <1j8rts76te.fsf@starbuckisacylon.baylibre.com>
 <a4d3fef1-d410-c029-cdff-4d90f578e2da@gmail.com>
 <CAK4VdL08sdZV7o7Bw=cutdmoCEi1NYB-yisstLqRuH7QcHOHvA@mail.gmail.com>
 <435b2a9d-c3c6-a162-331f-9f47f69be5ac@gmail.com>
 <CAK4VdL28nWstiS09MYq5nbtiL+aMbNc=Hzv5F0-VMuNKmX9R+Q@mail.gmail.com>
 <1j5yonnp1a.fsf@starbuckisacylon.baylibre.com>
 <44006194-eab1-7ae2-3cc8-41c210efd0b1@gmail.com>
 <CACdvmAhcyNXViJgk6o6oAoYvAjAg-NFD74Eym_nGHJx3YAqjzw@mail.gmail.com>
User-agent: mu4e 1.6.10; emacs 27.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Da Xue <da@lessconfused.com>, Heiner Kallweit <hkallweit1@gmail.com>
Cc: Erico Nunes <nunes.erico@gmail.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro
 <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, Kevin Hilman
 <khilman@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-amlogic@lists.infradead.org, netdev@vger.kernel.org, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-sunxi@lists.linux.dev
Subject: Re: net: stmmac: dwmac-meson8b: interface sometimes does not come
 up at boot
Date: Mon, 13 Jun 2022 11:10:19 +0200
In-reply-to: <CACdvmAhcyNXViJgk6o6oAoYvAjAg-NFD74Eym_nGHJx3YAqjzw@mail.gmail.com>
Message-ID: <1j35g8gavs.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_023957_160435_1922A5B5 
X-CRM114-Status: GOOD (  51.65  )
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


On Sat 11 Jun 2022 at 17:00, Da Xue <da@lessconfused.com> wrote:

> On Wed, Mar 9, 2022 at 3:42 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
>  On 09.03.2022 15:57, Jerome Brunet wrote:
>  > 
>  > On Wed 09 Mar 2022 at 15:45, Erico Nunes <nunes.erico@gmail.com> wrote:
>  > 
>  >> On Sun, Mar 6, 2022 at 1:56 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>  >>> You could try the following (quick and dirty) test patch that fully mimics
>  >>> the vendor driver as found here:
>  >>> https://github.com/khadas/linux/blob/buildroot-aml-4.9/drivers/amlogic/ethernet/phy/amlogic.c
>  >>>
>  >>> First apply
>  >>> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=a502a8f04097e038c3daa16c5202a9538116d563
>  >>> This patch is in the net tree currently and should show up in linux-next
>  >>> beginning of the week.
>  >>>
>  >>> On top please apply the following (it includes the test patch your working with).
>  >>
>  >> I triggered test jobs with this configuration (latest mainline +
>  >> a502a8f0409 + test patch for vendor driver behaviour), and the results
>  >> are pretty much the same as with the previous test patch from this
>  >> thread only.
>  >> That is, I never got the issue with non-functional link up anymore,
>  >> but I get the (rare) issue with link not going up.
>  >> The reproducibility is still extremely low, in the >1% range.
>  > 
>  > Low reproducibility means the problem is still there, or at least not
>  > understood completly.
>  > 
>  > I understand the benefit from the user standpoint.
>  > 
>  > Heiner if you are going to continue from the test patch you sent,
>  > I would welcome some explanation with each of the changes.
>  > 
>  The latest test patch was purely for checking whether we see any
>  difference in behavior between vendor driver and the mainlined
>  version. It's in no way meant to be applied to mainline.
>
>  > We know very little about this IP and I'm not very confortable with
>  > tweaking/aligning with AML sdk "blindly" on a driver that has otherwise
>  > been working well so far.
>  > 
>
>  This touches one thing I wanted to ask anyway: Supposedly Amlogic
>  didn't develop an own Ethernet PHY, and if they licensed an existing
>  IP then it should be similar to some other existing PHY (that may
>  have a driver in phylib).
>
>  Then what I'll do is submit the following small change that brought
>  the error rate significantly down according to Erico's tests.
>
>  -       phy_trigger_machine(phydev);
>  +       if (irq_status & INTSRC_ANEG_COMPLETE)
>  +               phy_queue_state_machine(phydev, msecs_to_jiffies(100));
>  +       else
>  +               phy_trigger_machine(phydev);
>
>  > Thx
>  > 
>  >>
>  >> So at this point, I'm not sure how much more effort to invest into
>  >> this. Given the rate is very low and the fallback is it will just
>  >> reset the link and proceed to work, I think the situation would
>  >> already be much better with the solution from that test patch being
>  >> merged. If you propose that as a patch separately, I'm happy to test
>  >> the final submitted patch again and provide feedback there. Or if
>  >> there is another solution to try, I can try with that too.
>  >>
>  >> Thanks
>  >>
>  >>
>  >> Erico
>  > 
>
>  Heiner
>
> To help reproduce this problem, I have had this problem for as long as I can remember and it still occurs with this patch.

Same here, on both gxl and g12a. Occurrence remains unchanged.
The is even reproduced if the PHY is switched to polling mode so the
merged change, related to the IRQ handling, is very unlikely to fix the
problem.

>
> This doesn't happen on first boot most of the time. It happens on reboot consistently. I have tested with AML-S805X-CC board, AML-S905X-CC V1, and V2 boards.
>

On my side, I confirm the network never seems to get stuck in u-boot but
it might break in Linux, even on the first boot after a power up from
what I have seen so far.

> I am on u-boot 22.04 with 5.18.3 which includes the patch.
> u-boot brings up ethernet on start and can grab an IP.
> Linux brings up ethernet and can grab an IP.
> reboot
> u-boot can grab an IP.
> Linux does not get anything. 
> I have to do ip link set dev eth0 down && up once or more to get ethernet to work again.
> Sometimes it spams meson8b-dwmac c9410000.ethernet eth0: Reset adapter. If it spams this, ethernet is dead and can't be recovered.

I tried several things, none showing any improvement so far
* Make sure LPI/EEE is disabled
* Add the ethernet reset from the main controller on the MAC
* Test the various DMA modes of STMMAC
* Port the differences from u-boot and the vendor kernel in the Phy driver

I have also tried to go back in time, up to v4.19 but the problem is actually
already there. It occurs at lot less though.
Since v5.6+ the occurence is quite high: approx 1 in 4 boots
On v4.19: 1 in 50 boots - up to 150.

>

When the problem happen
* link is reported up
* ifconfig / MAC is claiming to be sending packets (Tx increasing - no Rx)
* I see no traffic with wireshark

The packets are getting lost somewhere. Can't say for sure if it is in
the MAC or the PHY.

> This is fixed via power cycle so I'm assuming some register is not reset or maybe the IP is stuck.
>

`ethtool -r eth0` also seems to work around the problem.
This trigs the restart of so many things, it is close to an un/replug of
the ethernet cable :/

> Best,
> Da Xue


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
