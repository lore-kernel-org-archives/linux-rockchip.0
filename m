Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62011C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jan 2022 08:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+w3FBjdGoXwpempahBgUEnbvaw7fc+0lJ273Dq/c/0=; b=Va7qh5sXS5coIz
	Ma3ylA1vHwrbNeTKZW7wY1jY8RnHLq3itceSsp2hkrf/6tfhGZQb6sy24p3Xm7mF1f3/Ez+78lER2
	Tav/yg+vjn+QG547g840zHLT95yFZ5DtreIvJif2O8HR+OInUDQrmedWQiSrI5Yqi5hBTt/WgteHe
	K3K+2P3fOKn8g6r3ao0sQ1Rqi9qc9rlfl+m15HhUwi2pos3ZwJHQstIYG8SwZ3kis1Pnr9HjlleaX
	FaNgQ9ylXKZdd3Q2umu+au6AMtPAsyMqZzo1LoXth+Jvfs3Dkl7wla9+kXIBqFu0ehI7ofhplygL8
	3n1D3HKOj6os7aijvhmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9NZb-00E7Ll-Tp; Mon, 17 Jan 2022 08:41:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9NZV-00E7I0-Gm; Mon, 17 Jan 2022 08:41:05 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1n9NZP-0006T4-TT; Mon, 17 Jan 2022 09:40:55 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-rockchip@lists.infradead.org, Lin Huang <hl@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] arm64: dts: rockchip: Switch RK3399-Gru DP to
 SPDIF output
Date: Mon, 17 Jan 2022 09:40:54 +0100
Message-ID: <3970568.xje1Q9F24u@diego>
In-Reply-To: <CAGXv+5H0-dM28YQj_orS1_14NLcJve8VtO6oLcBiRpJFjaf5KA@mail.gmail.com>
References: <20220114230209.4091727-1-briannorris@chromium.org>
 <20220114150129.v2.1.I46f64b00508d9dff34abe1c3e8d2defdab4ea1e5@changeid>
 <CAGXv+5H0-dM28YQj_orS1_14NLcJve8VtO6oLcBiRpJFjaf5KA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_004101_589251_6CC8C144 
X-CRM114-Status: GOOD (  17.92  )
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

Am Montag, 17. Januar 2022, 08:44:37 CET schrieb Chen-Yu Tsai:
> On Sat, Jan 15, 2022 at 7:03 AM Brian Norris <briannorris@chromium.org> wrote:
> >
> > Commit b18c6c3c7768 ("ASoC: rockchip: cdn-dp sound output use spdif")
> > switched the platform to SPDIF, but we didn't fix up the device tree.
> >
> > Drop the pinctrl settings, because the 'spdif_bus' pins are either:
> >  * unused (on kevin, bob), so the settings is ~harmless
> >  * used by a different function (on scarlet), which causes probe
> >    failures (!!)
> 
> I suppose that means the default pinctrl should be dropped? Or maybe this
> use case is the outlier. Up to Heiko?

Interesting question. Right now it looks like Gru is the only one using spdif
in that way, so I'd think dropping the pinctrl here is the "saner" option
at this time ;-)

I guess we can reevaluate if this becomes more widespread

> > Fixes: b18c6c3c7768 ("ASoC: rockchip: cdn-dp sound output use spdif")
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> 
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
