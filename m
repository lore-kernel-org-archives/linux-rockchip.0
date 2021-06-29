Return-Path: <SRS0=3Wd+=LX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29A7AC11F66
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 09:30:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4D3C561D88
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 09:30:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4D3C561D88
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJ/HMzi+i/leBKmrY8lMHMQEfe1wn425WyrMgzB1TFE=; b=LQYTJYHcXoE7/Q
	itpGeRunIX51WjodPeo+iZZIaQ64RNAsAlkAFe8ZY/yZFD1Xf3Ujto7vKo1ni/c7hFsAsXgJAZSyD
	LZL5X6sqiXelOo+vfOllwOuz4H6f5sIbMn6gdLwlKd+/YDzFo178DX6kVgMBmVE9fQ5vFJKRdqp2n
	gVXInlcTK1sLCcs+79nVFvpAb78hYVRXcYOdXtsowlgtIxhMKDjHa140aZ1Ld5ZTtaQi0Ns4zgYci
	UaI+f5r3EuJVIeFxNrJmwiqY4hLyQE9eJ/T2gKn9NleeNnuliBRVnfjrA1c7oHG/5ynIhy/hBFuNb
	zyugxJv6uSPZGd7lEuYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyA4a-00AMyz-RO; Tue, 29 Jun 2021 09:30:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyA4Y-00AMyL-1p; Tue, 29 Jun 2021 09:30:27 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lyA4J-00023X-AF; Tue, 29 Jun 2021 11:30:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Levin <djw@t-chip.com.cn>
Cc: Wayne Chou <zxf@t-chip.com.cn>, Kongxin Deng <dkx@t-chip.com.cn>,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Jensen Huang <jensenhuang@friendlyarm.com>, Johan Jonker <jbx6244@gmail.com>,
 Liang Chen <cl@rock-chips.com>, Marty Jones <mj8263788@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v0 2/2] arm64: dts: rockchip: add support for Firefly
 ROC-RK3399-PC-PLUS
Date: Tue, 29 Jun 2021 11:30:10 +0200
Message-ID: <3771996.aKNjEaI27c@diego>
In-Reply-To: <149c2171-471e-343e-8126-38394746b044@t-chip.com.cn>
References: <20210628035402.16812-1-djw@t-chip.com.cn>
 <20210628035402.16812-3-djw@t-chip.com.cn>
 <149c2171-471e-343e-8126-38394746b044@t-chip.com.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_023026_152239_E57ADEC5 
X-CRM114-Status: GOOD (  18.64  )
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

Hi Levin,

Am Dienstag, 29. Juni 2021, 11:15:59 CEST schrieb Levin:
> Hi all, is it possible to turn on some codec mixer switch in the device 
> tree?

I don't think that is appropriate and/or/ possible in the devicetree.

Instead I think you want an Alsa UCM profile for it, see:
https://github.com/alsa-project/alsa-ucm-conf/tree/master/ucm2/Rockchip


Heiko

> 
> 
> Currently, to hear to sound, we need to run the following commands from 
> the user space:
> 
>    # turn on mixer switch
> 
>    amixer -c 1 sset 'Left Mixer' on
>    amixer -c 1 sset 'Right Mixer' on
> 
>    # raise volume
> 
>    amixer -c 1 sset 'Output 2' 36
> 
> 
> If these settings can be embedded into device tree, and set by kernel as 
> initial ALSA path settings,
> 
> user can hear the sound with zero ALSA config. That'll be great.
> 
> 
> On 2021-06-28 11:54 AM, djw@t-chip.com.cn wrote:
> > +
> > +	es8388-sound {
> > +		compatible = "simple-audio-card";
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&hp_det_pin>;
> > +		simple-audio-card,name = "rockchip,es8388-codec";
> > +		simple-audio-card,format = "i2s";
> > +		simple-audio-card,mclk-fs = <256>;
> > +
> > +		simple-audio-card,widgets =
> > +			"Microphone", "Mic Jack",
> > +			"Headphone", "Headphones";
> > +		simple-audio-card,routing =
> > +			"LINPUT1", "Mic Jack",
> > +			"Headphone Amp INL", "LOUT2",
> > +			"Headphone Amp INR", "ROUT2",
> > +			"Headphones", "Headphone Amp OUTL",
> > +			"Headphones", "Headphone Amp OUTR";
> > +
> > +		simple-audio-card,hp-det-gpio = <&gpio2 RK_PA6 GPIO_ACTIVE_HIGH>;
> > +		simple-audio-card,aux-devs = <&headphones_amp>;
> > +		simple-audio-card,pin-switches = "Headphones";
> > +
> > +		simple-audio-card,cpu {
> > +			sound-dai = <&i2s1>;
> > +		};
> > +
> > +		simple-audio-card,codec {
> > +			sound-dai = <&es8388>;
> > +		};
> > +	};
> > +
> >
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
