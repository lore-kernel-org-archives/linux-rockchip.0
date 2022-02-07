Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A1DDC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Feb 2022 10:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:To:From:References:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfQ4oFhGBA3r39IzYVLED+JUh5a2ciPXrT7U9TDYae0=; b=fGJXBQnXzj0knA
	b7h/sFbWQ9M8eziG3XUGigeeMjr1ZKwmp0KDfSdrH8HfvgRSgtONKQP41MZGy+m5axbNa9rzZel16
	vbpp4FYcpbK7Gc6N0k1GvK20nF5MEnY3vPeCeoOKfSOedupHlaGeKp6e0Yv+YfXZhDyoUVTKcMn/k
	hIuSM/+cs73dXhPqyA93h3nKw3PsvtwKvUf/kN3hmhlEFM3C4t6MUTFjele18DPnAq/iDlLNZ4XPe
	uMZmycJ5QowD++IXgQMLbbNRa9xgcz6tHiHPiSOhZnURSvUsOItIID83iNgQF0/azejY0WsF6X/zh
	FZZSL8jVarQPYKcowLbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH1hg-009udp-AP; Mon, 07 Feb 2022 10:57:04 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH1hb-009ucE-TQ
 for linux-rockchip@lists.infradead.org; Mon, 07 Feb 2022 10:57:01 +0000
Received: by mail-wm1-x32c.google.com with SMTP id
 k127-20020a1ca185000000b0037bc4be8713so1860591wme.3
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Feb 2022 02:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=references:user-agent:from:to:subject:date:in-reply-to:message-id
 :mime-version; bh=gCbLAdNfo6DzwKZZhiI2gvYSp0E58X2J6K8BZ7WMiCw=;
 b=HdVq6PkDWV64cO4Meh1wk8wgo8CdzN+zPTFC2pB2FI0bwgSi81Z/HYG5aXK5pBx5W9
 CmRKZIAdtvIRSGLTDlE7WkPAMx3+g4v7iK/1sAjHYfFRJIQxN++xO0oQC3iVySbmeEr2
 liwS39gPsfsrucyJX8zQIoivl9PssDAZCHqaTY/Q4YEotG+CRwK7yiaR7SA6dxoLkTLT
 XN4QMOE6TX7YM/Kbh9Mi64oJnP8lOtqYENqGa81nj35oCQXlA63fr2aOZkdR8SPGvjWe
 /QH8n567hcYJd3qk1Xz01BRQxfBCrVSfmkDJxRGb0BFFuatHy6dfNxj6/KD2RZaZSB2P
 1GTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:references:user-agent:from:to:subject:date
 :in-reply-to:message-id:mime-version;
 bh=gCbLAdNfo6DzwKZZhiI2gvYSp0E58X2J6K8BZ7WMiCw=;
 b=IRaNBKGCAOlvXAQjCMnzX+b6UTHPo7FAr1emFvDtk2Jv+qrk4yzhuHzkUhMib4idzF
 7YUmLOmUsAkAkv2J6TmzuCCDhE2HHlp8wwJAHcqFdyPyLRrqFPrX8AfbyChO3pL0QFsp
 4r1KSRQkfznz9JuMm/l9DdqjyCC54Y+P4AzlXIndvMzylT/ZROboHq3CiBTVKi3TCxH+
 3JKy5fKwrPQAh8UR5/g3RABW9GKYzITmddRNHBatUrhenqBxhANxECNkkO5qu1EOOj44
 2SS1Hn4ubkibz7ylDaAwtLzEkSzPLJdzof9zH4AfArAC9S+TZxYxGrwFt8H59q7nCsBE
 lbVQ==
X-Gm-Message-State: AOAM533Af4EFFeINP97Y6VuF7BwoPDqA4A//1mfxmVbY3tVqcpqOJ0IK
 ODni1+C7DcccCysgkpFITDLkzw==
X-Google-Smtp-Source: ABdhPJya4Y4U2ZAbUsCovhbUSLiaQE9fPad2ZHKayIa+Ateyevndqek8qHHFBktc7reIkkgLh7oW+A==
X-Received: by 2002:a7b:cbd7:: with SMTP id n23mr284984wmi.76.1644231416515;
 Mon, 07 Feb 2022 02:56:56 -0800 (PST)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
 by smtp.gmail.com with ESMTPSA id u14sm11073998wmq.41.2022.02.07.02.56.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 02:56:56 -0800 (PST)
References: <CAK4VdL3-BEBzgVXTMejrAmDjOorvoGDBZ14UFrDrKxVEMD2Zjg@mail.gmail.com>
User-agent: mu4e 1.6.10; emacs 27.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Erico Nunes <nunes.erico@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro
 <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, Kevin Hilman
 <khilman@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, linux-amlogic@lists.infradead.org,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: Re: net: stmmac: dwmac-meson8b: interface sometimes does not come
 up at boot
Date: Mon, 07 Feb 2022 11:41:36 +0100
In-reply-to: <CAK4VdL3-BEBzgVXTMejrAmDjOorvoGDBZ14UFrDrKxVEMD2Zjg@mail.gmail.com>
Message-ID: <1jczjzt05k.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_025659_961922_1F492CDE 
X-CRM114-Status: GOOD (  32.00  )
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


On Wed 02 Feb 2022 at 21:18, Erico Nunes <nunes.erico@gmail.com> wrote:

> Hello,
>
> I've been tracking down an issue with network interfaces from
> meson8b-dwmac sometimes not coming up properly at boot.
> The target systems are AML-S805X-CC boards (Amlogic S805X SoC), I have
> a group of them as part of a CI test farm that uses nfsroot.
>
> After hopefully ruling out potential platform/firmware and network
> issues I managed to bisect this commit in the kernel to make a big
> difference:
>
>   46f69ded988d2311e3be2e4c3898fc0edd7e6c5a net: stmmac: Use resolved
> link config in mac_link_up()
>
> With a kernel before that commit, I am able to submit hundreds of test
> jobs and the boards always start the network interface properly.
>
> After that commit, around 30% of the jobs start hitting this:
>
>   [    2.178078] meson8b-dwmac c9410000.ethernet eth0: PHY
> [0.e40908ff:08] driver [Meson GXL Internal PHY] (irq=48)
>   [    2.183505] meson8b-dwmac c9410000.ethernet eth0: Register
> MEM_TYPE_PAGE_POOL RxQ-0
>   [    2.200784] meson8b-dwmac c9410000.ethernet eth0: No Safety
> Features support found
>   [    2.202713] meson8b-dwmac c9410000.ethernet eth0: PTP not supported by HW
>   [    2.209825] meson8b-dwmac c9410000.ethernet eth0: configuring for
> phy/rmii link mode
>   [    3.762108] meson8b-dwmac c9410000.ethernet eth0: Link is Up -
> 100Mbps/Full - flow control off
>   [    3.783162] Sending DHCP requests ...... timed out!
>   [   93.680402] meson8b-dwmac c9410000.ethernet eth0: Link is Down
>   [   93.685712] IP-Config: Retrying forever (NFS root)...
>   [   93.756540] meson8b-dwmac c9410000.ethernet eth0: PHY
> [0.e40908ff:08] driver [Meson GXL Internal PHY] (irq=48)
>   [   93.763266] meson8b-dwmac c9410000.ethernet eth0: Register
> MEM_TYPE_PAGE_POOL RxQ-0
>   [   93.779340] meson8b-dwmac c9410000.ethernet eth0: No Safety
> Features support found
>   [   93.781336] meson8b-dwmac c9410000.ethernet eth0: PTP not supported by HW
>   [   93.788088] meson8b-dwmac c9410000.ethernet eth0: configuring for
> phy/rmii link mode
>   [   93.807459] random: fast init done
>   [   95.353076] meson8b-dwmac c9410000.ethernet eth0: Link is Up -
> 100Mbps/Full - flow control off
>
> This still happens with a kernel from master, currently 5.17-rc2 (less
> frequently but still often hit by CI test jobs).
> The jobs still usually get to work after restarting the interface a
> couple of times, but sometimes it takes 3-4 attempts.
>
> Here is one example and full dmesg:
> https://gitlab.freedesktop.org/enunes/mesa/-/jobs/16452399/raw
>
> Note that DHCP does not seem to be an issue here, besides the fact
> that the problem only happens since the mentioned commit under the
> same setup, I did try to set up the boards to use a static ip but then
> the interfaces just don't communicate at all from boot.
>
> For test purposes I attempted to revert
> 46f69ded988d2311e3be2e4c3898fc0edd7e6c5a on top of master but that
> does not apply trivially anymore, and by trying to revert it manually
> I haven't been able to get a working interface.
>
> Any advice on how to further debug or fix this?

Hi Erico,

Thanks a lot for digging into this topic.
I'm seeing exactly the same behavior on the g12 based khadas-vim3:

* Boot stalled waiting for DHCP - with an NFS based filesystem
* Every minute, the network driver gets a reset and try again

Sometimes it works on the first attempt, sometimes it takes up to 5
attempts. Eventually, it reaches the prompt which might be why it went
unnoticed so far.

I think that NFS just makes the problem easier to see.
On devices with an eMMC based filesystem, I noticed that, sometimes, I
had unplug/plug the ethernet cable to make it go.

So far, the problem is reported on all the Amlogic SoC generation we
support. I think a way forward is to ask the the other users of
stmmac whether they have this problem or not - adding Allwinner and
Rockchip ML.

Since the commit you have identified is in the generic part of the
stmmac code, Maybe Jose can help us understand what is going on.

>
> Thanks
>
> Erico


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
