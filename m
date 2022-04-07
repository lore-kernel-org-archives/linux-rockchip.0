Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FF48C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Apr 2022 00:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R//chpLieOzW3F1THzyLztASCmYoaXOKZINUDCVnOwE=; b=1qrc41fuDIpBWh
	fU5K4/4ZLTlcPnE6t7pG8yQpQwIKtUDJVIxUs9GiADKH4S0iYw0SpbNDn156QPrOW4EmU6uSAoTOO
	xd+f3m1ZQtyW+/yy6OwUQtOnv1qYGL8IxJ2uxMORZMhT+KRh1gJWLy3L4xeqEAlN93rvhDkOkynOP
	SLo96+MjHbsmPipbJkAviaG97MnJWHFCy9ubi3UVNQ6D9lTUc+vwZg5+7cd1cGB4ewapBK3A55Pe2
	/Dpc8YWvwE2zLVxThB3U7rALc5nzR0CmdVlMLyfjPSfBPAAP+jCpg3J/n+LRBim/tj1o+yvgU5OVr
	Jsdd5xgBqkgPhlIegjrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncFrJ-008O8l-90; Thu, 07 Apr 2022 00:18:45 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncFrG-008O7U-5C; Thu, 07 Apr 2022 00:18:43 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id g9so6922058ybf.1;
 Wed, 06 Apr 2022 17:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZtOF1nVWWzBfSRUWOWe7k3Yt8TMXFfwKhuj0f8PfubU=;
 b=EO5VUUX/W80B+fBVBJsYEDOCsFaQiNMDW5beaVeF9HSLky0j1AS9GTxVJheOdMOmc1
 e/YsuilJIpJgpKvlE3bhGyG/BoK3T1QmAUvesn40GV6dArXl0Ji+HMvymm+6OZF1QIui
 4gKNuBn1B3ag4M2qJFi5LWntGs+gRmnFOdTOVqppF6ynv0O6+lh/BYwJzRyXjF3JZYQ4
 GHmF676qHtNSB14Ee/jsNZc2nzC3Xukq0DGB5s8mOlBxgAS7nkBQVnOl+hNTSrSSBYHS
 1/IVCQtj1+d5ryZJqWVHkr/zGCESn9s62AF2hVf6Gn/nNkNzi6A4zreq7lwRYLYzbxlS
 ZkOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZtOF1nVWWzBfSRUWOWe7k3Yt8TMXFfwKhuj0f8PfubU=;
 b=JQqFFp7H+NKcrwmlgHOXHa3GP8jhHfT7tfMyBqWSyd88Jt8d2ItwjWyCVl4bHrqiQJ
 cCwT508WwxKVgn4ELnFOnyL6cpPNJJG7QlZ3wHmlX8qERYqCl8cCT8Krai6DBTRrIXxF
 wR5DFsCXdMLiDCbMCyE1qZ1B3Q9wzYeGsPMk2MlOX2MeQdaK3uWkdSExnqc87R7sMIHs
 Zdab1Ge4TzDHAmisR8XSrzp4MvU8Aw3AIbYhlk4zC9vfw2YChThubSO5bBb1RjQyLrcZ
 pjtEjJBDY7sZ/hk+psKWZpVxyPaDkIjWseEJNHRF+/NeCQXpSB11wbvVdqTxk+LDUWrI
 URtg==
X-Gm-Message-State: AOAM533YHUx8GrIUIOpkd8fd1hs0lsb545GfljtdzmT9rTluKpouDTrQ
 e6o3pLUOzTF41elhPANY2fXGRDVtJUz34X2OfzE=
X-Google-Smtp-Source: ABdhPJwGTD192XDItbqnehwipWiszl88YKBj1/cCr8hW4ZcNNOR8Sh6kCNkZIWb8KmZt+rOlkcFI2tjFSvu2qaUleTw=
X-Received: by 2002:a25:fc27:0:b0:634:65f8:a757 with SMTP id
 v39-20020a25fc27000000b0063465f8a757mr8121122ybd.228.1649290717522; Wed, 06
 Apr 2022 17:18:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220127230727.3369358-1-briannorris@chromium.org>
 <20220127150615.v2.12.I3a5c7f21ecd8221b42c2dbcd618386bce7b3e9a6@changeid>
 <CAMdYzYo9Y_pEAAtreQU0B9DVzGsbUgpTA2g7HGRyUXcSBjMy4g@mail.gmail.com>
 <CA+ASDXP46bVqZAyzgUQkZAqqVf6Yc5Zg9CZ_1k0XCYUSYq_QLg@mail.gmail.com>
In-Reply-To: <CA+ASDXP46bVqZAyzgUQkZAqqVf6Yc5Zg9CZ_1k0XCYUSYq_QLg@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 6 Apr 2022 20:18:26 -0400
Message-ID: <CAMdYzYqvjin-S0mKFZJ5pwe4yNhG9ZH77-VMNpnL3W2HSQ6gNQ@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] arm64: dts: rockchip: Enable dmc and dfi nodes
 on gru
To: Brian Norris <briannorris@chromium.org>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Lin Huang <hl@rock-chips.com>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Derek Basehore <dbasehore@chromium.org>,
 devicetree <devicetree@vger.kernel.org>, 
 linux-pm <linux-pm@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?B?R2HDq2wgUE9SVEFZ?= <gael.portay@collabora.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_171842_254601_7FBA7D26 
X-CRM114-Status: GOOD (  21.66  )
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

On Tue, Apr 5, 2022 at 10:05 PM Brian Norris <briannorris@chromium.org> wrote:
>
> Hello again Peter,
>
> On Fri, Mar 4, 2022 at 6:47 AM Peter Geis <pgwipeout@gmail.com> wrote:
> > Transitions anywhere from the default 800mhz cause a lock.
> >
> > I'm digging deeper, but I'm hoping you can answer some questions in
> > the meantime:
> > 1. Does this require something from firmware that isn't available on
> > Mainline ATF? (AKA special firmware to the Chromebook line)
> > 2. If not, do you have any recommendations off the top of your head?
>
> I may have a better answer for you now. In the intervening time
> period, I've discovered a potentially-relevant bug, involving
> interactions between the kernel power-domain driver and ATF. See this
> series for my current fixes:
>
> https://lore.kernel.org/linux-rockchip/20220406014842.2771799-1-briannorris@chromium.org/
> [RFC PATCH 0/2] rockchip / devfreq: Coordinate DRAM controller
> resources between ATF and kernel
>
> If that happens to help you (it may help, for instance, if your system
> was toggling NPLL off/on like mine was; it also may help if you're
> hitting a race on PMU_BUS_IDLE_REQ like noticed in patch 1), I'd love
> your feedback there.
>
> It's still possible your problems are completely unrelated though.

Thank you, that is certainly possible to be the problem here as well.
I won't have time to test them till this weekend, but you can count on
my feedback as soon as I get the time to do so.

>
> Regards,
> Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
