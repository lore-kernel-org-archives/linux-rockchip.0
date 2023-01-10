Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43A90C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 14:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LcZ9hrCYilbUTxXohOzUHs/RgxVaApTymoElRszAByk=; b=INSWHCEwE+gmTi
	0/f2JzK7A+zLXYeOgp8CTvhoIfsoz54b5NGsGx11UHjtCweVfla+Pv4TMyWdGY0FiFMj4wG372Xul
	G3xRQ55ta0lAmOByzpsK3Bet9S56FoSVD7txkWHf/CzZ5SF6Bgms4GFxYTLpHZjQpHpmaiz7V0Nz6
	tmayJfDqrrZhPbbMjPHyFrgnshwS+a8C2JshtNGiBofAqxA7wKYNh71yaG+sDVaqWdULHxvZKyxbJ
	nVpS8FIs4jQ1Zmi+/z8tw51cDCUw9pnYtU+8TjVjhudk+MYG/am0K6n0FZhMjY5/EnsW43tnXOANX
	TuwebWd+tZcM87hjmyyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFKy-007EJx-UX; Tue, 10 Jan 2023 14:10:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFKg-007EBp-1A; Tue, 10 Jan 2023 14:10:31 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFFKd-000540-2v; Tue, 10 Jan 2023 15:10:27 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: wens@kernel.org
Cc: pgwipeout@gmail.com, Furkan Kardame <f.kardame@manjaro.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add rk3566 audio nodes
Date: Tue, 10 Jan 2023 15:10:26 +0100
Message-ID: <3835889.hdfAi7Kttb@diego>
In-Reply-To: <CAGb2v66RnP+Gk+3ZAVjb9Fde=+82BTaRuRCnuibbzQ84+FQU6w@mail.gmail.com>
References: <20230109203232.45192-1-f.kardame@manjaro.org> <167335938203.2550251.9294002031370939026.b4-ty@sntech.de> <CAGb2v66RnP+Gk+3ZAVjb9Fde=+82BTaRuRCnuibbzQ84+FQU6w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_061030_107040_68DAB4D9 
X-CRM114-Status: GOOD (  20.04  )
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

Am Dienstag, 10. Januar 2023, 15:08:50 CET schrieb Chen-Yu Tsai:
> On Tue, Jan 10, 2023 at 10:05 PM Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > On Mon, 9 Jan 2023 23:32:33 +0300, Furkan Kardame wrote:
> > > This patch adds simple audio card nodes
> > > Enabled i2s0_8ch as it is needed for hdmi audio
> > > Added i2s1_8ch as it is needed for 3.5mm audio jack
> > >
> > >
> >
> > Applied - with remarks below!
> >
> > [1/1] arm64: dts: rockchip: add rk3566 audio nodes
> >       commit: 9ce61898b3075892b01792fd3a44507b7e459c6f
> >
> >
> > The core i2s@fe410000 node should _not_ go into a board devicetree.
> > Thankfully an identical node for the i2s controller was already
> > added to the core rk356x dt, so I've just dropped the one from
> > your patch.
> 
> Shouldn't hdmi_sound also be enabled? Otherwise i2s0_8ch is enabled
> for nothing.

Furkan, care to send a patch for that?




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
