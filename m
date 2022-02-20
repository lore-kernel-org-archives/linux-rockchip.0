Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE68DC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Feb 2022 16:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3UxOqNGknq08/H/xx6bG0W93OkPL7qNaxh0qxpTu6M=; b=qLkm9AuTJTb1Cc
	8AwurQ+2ro5O+wl8KtnGVe6sC/KgwfzQl3FsXdsD7aUwd4tzy1CJYXNVVWNk62LDO9Va8DYOGiLkl
	rea1aK4pRsl8NYd+TXmIC6uWsI/4+5dRRdlOoj2QhR2/cdmnNUiiwXRf0Em1rXgCdobvMjV6meMdL
	fK+yO1hnZqw1Shz/zZG8rsSvUAvuCb6tFv5ZJ6uAzRLf9F3iUJtdONmAIGfY1Uq3GY4dqcZCmYg/9
	jDvZZnpBg7Oai8ALglSrO52+qTwW5WLNIMBXtZJuJtAMPwSfxGF4swIPFZ74Fqui5s+vH8J4KVP5q
	QLYxWecbmcvCFPsH3P3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLpQy-001teX-2L; Sun, 20 Feb 2022 16:51:40 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLpQu-001tdm-KM; Sun, 20 Feb 2022 16:51:38 +0000
Received: by mail-yw1-x112e.google.com with SMTP id
 00721157ae682-2d646fffcc2so114726247b3.4; 
 Sun, 20 Feb 2022 08:51:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AgVy9siORY+ob7QoBdZs1K6bcI2a50HTXwEIfbQUi4A=;
 b=JNws/Dm6eWewJC3wy/5jJvPPbh5C5RuUIXc4DHbd55829goCmebxRTEqAGo/p4XWs/
 OM+1JaiTrxOBj3SRguD21bdlUtZVJ22SUL/kfP3KsyktGM5izBHmTAyEYdJNi1vhmo5F
 q6E1sHYAJyiWmRnXYAubzXEGxROe9WDcqDeU1e/QCXzdajhN4B/w2ziIwBZnU9QRGK1K
 A8nEhCcmjPGY5lfj6xXkvVCPE5UkYGb7fO3qcqrfIjb0RXUGShY51OHtiBFFT/TaHzyh
 qq4IWvXqlJK8u6S8cWowyVRskoF++gqhc0//hVEpVdYWiNIoSQb7bX/4zDuiByRHJ4md
 jAQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AgVy9siORY+ob7QoBdZs1K6bcI2a50HTXwEIfbQUi4A=;
 b=4dZE/r6TOw1oQV3OY5jeqGy/zv+SyafSznjzOcNRt7hX6iZKWvoumDuUdCg+q1lLau
 fu/HG7fjV72OnTY9Bykz1edtjipBBpMlUQw1AohFJQn5cHJezzDJxOiJWUqIayTsy0oO
 aZqyDZ0Dob84/xR3Zl/2FdMXiecPe+JvGMXtGOmCM7Zzi3Mr4VIbLhjapXmCG/ltjG1u
 Ey0M4YR1KXDLu4ntXAi8w3ZUkmbvZDsoCq+/Pse7OxMc8RnUMQFKeS5lecOJ0SL5hPUV
 pqcxU6Ytbe0EGCjW36SkhjhSx9YCVQHQ4CY2haH7uWtdNQH6fUWsJlvOTCRQNBRf16fG
 l1MA==
X-Gm-Message-State: AOAM532Y01tzlJkxV8nodS8TFxX9ggIPBaP3rdIIRgplbazSnLh/hQca
 76imEAnPs8izWMqxCoFhe7cwVojugTeLkeuJ7co=
X-Google-Smtp-Source: ABdhPJz1ScnekKaSBiNuLhuSzAhv3JSuixwaFTdNC5WMfsDewUyk1rTq5BMvGrZX4SDIY+w99TJjE7TVVF16Xd6oQC4=
X-Received: by 2002:a81:5f8a:0:b0:2d0:ccb1:9c9c with SMTP id
 t132-20020a815f8a000000b002d0ccb19c9cmr16580146ywb.265.1645375894525; Sun, 20
 Feb 2022 08:51:34 -0800 (PST)
MIME-Version: 1.0
References: <CAK4VdL3-BEBzgVXTMejrAmDjOorvoGDBZ14UFrDrKxVEMD2Zjg@mail.gmail.com>
 <1jczjzt05k.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jczjzt05k.fsf@starbuckisacylon.baylibre.com>
From: Erico Nunes <nunes.erico@gmail.com>
Date: Sun, 20 Feb 2022 17:51:23 +0100
Message-ID: <CAK4VdL2=1ibpzMRJ97m02AiGD7_sN++F3SCKn6MyKRZX_nhm=g@mail.gmail.com>
Subject: Re: net: stmmac: dwmac-meson8b: interface sometimes does not come up
 at boot
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>,
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Neil Armstrong <narmstrong@baylibre.com>, linux-amlogic@lists.infradead.org, 
 netdev@vger.kernel.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-sunxi@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_085136_721962_A68640E7 
X-CRM114-Status: GOOD (  41.15  )
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

On Mon, Feb 7, 2022 at 11:56 AM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Wed 02 Feb 2022 at 21:18, Erico Nunes <nunes.erico@gmail.com> wrote:
>
> > Hello,
> >
> > I've been tracking down an issue with network interfaces from
> > meson8b-dwmac sometimes not coming up properly at boot.
> > The target systems are AML-S805X-CC boards (Amlogic S805X SoC), I have
> > a group of them as part of a CI test farm that uses nfsroot.
> >
> > After hopefully ruling out potential platform/firmware and network
> > issues I managed to bisect this commit in the kernel to make a big
> > difference:
> >
> >   46f69ded988d2311e3be2e4c3898fc0edd7e6c5a net: stmmac: Use resolved
> > link config in mac_link_up()
> >
> > With a kernel before that commit, I am able to submit hundreds of test
> > jobs and the boards always start the network interface properly.
> >
> > After that commit, around 30% of the jobs start hitting this:
> >
> >   [    2.178078] meson8b-dwmac c9410000.ethernet eth0: PHY
> > [0.e40908ff:08] driver [Meson GXL Internal PHY] (irq=48)
> >   [    2.183505] meson8b-dwmac c9410000.ethernet eth0: Register
> > MEM_TYPE_PAGE_POOL RxQ-0
> >   [    2.200784] meson8b-dwmac c9410000.ethernet eth0: No Safety
> > Features support found
> >   [    2.202713] meson8b-dwmac c9410000.ethernet eth0: PTP not supported by HW
> >   [    2.209825] meson8b-dwmac c9410000.ethernet eth0: configuring for
> > phy/rmii link mode
> >   [    3.762108] meson8b-dwmac c9410000.ethernet eth0: Link is Up -
> > 100Mbps/Full - flow control off
> >   [    3.783162] Sending DHCP requests ...... timed out!
> >   [   93.680402] meson8b-dwmac c9410000.ethernet eth0: Link is Down
> >   [   93.685712] IP-Config: Retrying forever (NFS root)...
> >   [   93.756540] meson8b-dwmac c9410000.ethernet eth0: PHY
> > [0.e40908ff:08] driver [Meson GXL Internal PHY] (irq=48)
> >   [   93.763266] meson8b-dwmac c9410000.ethernet eth0: Register
> > MEM_TYPE_PAGE_POOL RxQ-0
> >   [   93.779340] meson8b-dwmac c9410000.ethernet eth0: No Safety
> > Features support found
> >   [   93.781336] meson8b-dwmac c9410000.ethernet eth0: PTP not supported by HW
> >   [   93.788088] meson8b-dwmac c9410000.ethernet eth0: configuring for
> > phy/rmii link mode
> >   [   93.807459] random: fast init done
> >   [   95.353076] meson8b-dwmac c9410000.ethernet eth0: Link is Up -
> > 100Mbps/Full - flow control off
> >
> > This still happens with a kernel from master, currently 5.17-rc2 (less
> > frequently but still often hit by CI test jobs).
> > The jobs still usually get to work after restarting the interface a
> > couple of times, but sometimes it takes 3-4 attempts.
> >
> > Here is one example and full dmesg:
> > https://gitlab.freedesktop.org/enunes/mesa/-/jobs/16452399/raw
> >
> > Note that DHCP does not seem to be an issue here, besides the fact
> > that the problem only happens since the mentioned commit under the
> > same setup, I did try to set up the boards to use a static ip but then
> > the interfaces just don't communicate at all from boot.
> >
> > For test purposes I attempted to revert
> > 46f69ded988d2311e3be2e4c3898fc0edd7e6c5a on top of master but that
> > does not apply trivially anymore, and by trying to revert it manually
> > I haven't been able to get a working interface.
> >
> > Any advice on how to further debug or fix this?
>
> Hi Erico,
>
> Thanks a lot for digging into this topic.
> I'm seeing exactly the same behavior on the g12 based khadas-vim3:
>
> * Boot stalled waiting for DHCP - with an NFS based filesystem
> * Every minute, the network driver gets a reset and try again
>
> Sometimes it works on the first attempt, sometimes it takes up to 5
> attempts. Eventually, it reaches the prompt which might be why it went
> unnoticed so far.
>
> I think that NFS just makes the problem easier to see.
> On devices with an eMMC based filesystem, I noticed that, sometimes, I
> had unplug/plug the ethernet cable to make it go.
>
> So far, the problem is reported on all the Amlogic SoC generation we
> support. I think a way forward is to ask the the other users of
> stmmac whether they have this problem or not - adding Allwinner and
> Rockchip ML.
>
> Since the commit you have identified is in the generic part of the
> stmmac code, Maybe Jose can help us understand what is going on.

Hi all,

thanks for the feedback so far, good to know that this is not only on
my board farm.

Any more feedback about this from the people in cc?

Thanks

Erico

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
