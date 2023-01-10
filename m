Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F36EC54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 17:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWBOdWGbGTmh/BvSX0WxXqOy1EmwdCHDp7YWsTe3Hws=; b=XklkLESHJbAb4g
	W7eyg+3gbnq83xaXao5HhI9Ctg+uJ/tMyAIWFNDGmREMzsLMPyITSFf4TLkjP4rYkixkthxqGY+es
	+8bVVEDtGL/j79QXsy+wwG0CaVxAp8u7rzKXAj/rMSdszhb50o7mgNQ9GRUOhPh2i+e+Ta29CpAk4
	LVH7CMkWOdS5WljLD1nbEnkBRwJ2hnkAA5Q2Phjx52m1PTi7jyDuArw5/BHg6AT/OrYp4Whx8QAnb
	mgw5H9oILSUev8JPf6Ra2lSA1k5O6kFqJHzOZr7cVNDdRlDnJkGUQVTJA0AUiwprGoxDr1dbWn0rx
	xzSZyFawRIkSnzI/5yug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFIeq-0081AV-8Q; Tue, 10 Jan 2023 17:43:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFIeg-00818e-4k; Tue, 10 Jan 2023 17:43:23 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFIea-0006UJ-7o; Tue, 10 Jan 2023 18:43:16 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: wens@kernel.org, Furkan Kardame <f.kardame@manjaro.org>
Cc: pgwipeout@gmail.com, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add rk3566 audio nodes
Date: Tue, 10 Jan 2023 18:43:15 +0100
Message-ID: <7896875.lvqk35OSZv@diego>
In-Reply-To: <1673369800029.3980439484.1306325648@manjaro.org>
References: <3835889.hdfAi7Kttb@diego> <1673369800029.3980439484.1306325648@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_094322_197454_B22019BE 
X-CRM114-Status: GOOD (  29.24  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Dienstag, 10. Januar 2023, 17:57:18 CET schrieb Furkan Kardame:
> On Tuesday 10 January 2023 17:10:26 (+03:00), Heiko St=FCbner wrote:
> =

> > Am Dienstag, 10. Januar 2023, 15:08:50 CET schrieb Chen-Yu Tsai:
> > > On Tue, Jan 10, 2023 at 10:05 PM Heiko Stuebner <heiko@sntech.de> wro=
te:
> > > >
> > > > On Mon, 9 Jan 2023 23:32:33 +0300, Furkan Kardame wrote:
> > > > > This patch adds simple audio card nodes
> > > > > Enabled i2s0_8ch as it is needed for hdmi audio
> > > > > Added i2s1_8ch as it is needed for 3.5mm audio jack
> > > > >
> > > > >
> > > >
> > > > Applied - with remarks below!
> > > >
> > > > [1/1] arm64: dts: rockchip: add rk3566 audio nodes
> > > >       commit: 9ce61898b3075892b01792fd3a44507b7e459c6f
> > > >
> > > >
> > > > The core i2s@fe410000 node should _not_ go into a board devicetree.
> > > > Thankfully an identical node for the i2s controller was already
> > > > added to the core rk356x dt, so I've just dropped the one from
> > > > your patch.
> > > =

> > > Shouldn't hdmi_sound also be enabled? Otherwise i2s0_8ch is enabled
> > > for nothing.
> > =

> > Furkan, care to send a patch for that?
> > =

> > =

> > =

> > =

> =

> =

> Sorry missed hdmi_audio, will add it to the patch.
> I remember why i2s@fe410000 was added to the device tree.
> It uses limited pinctrl-0 than the ones in rk356x.dtsi
> =

> I will fix these 2 points and send v2 soon.

please send a follow-up patch instead

Your patch is already in my branch for 6.3 [0], so changes should be done
with a patch building on top of that.

A node should never be in a board-dts, so if you need to i.e. replace
a pinctrl setting, do this in a &i2s_* { ... }; setting
Though I may be wrong but the pinctrl settings did look the same between
your patch and the one in rk356x.dtsi.


[0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.gi=
t/log/?h=3Dv6.3-armsoc/dts64



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
