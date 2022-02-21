Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2288C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Feb 2022 10:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QumB43NwxFTlJdCc62rxVsAVsdv2vKhqPvg2TTz8X/Q=; b=mQbdm3UGQM3QvN
	SE9T3s9AixxQPEgCw402dipf7DUM0/ABOSxzpsFm1StrV1pR+xny68AOaNVnJgOjGoWF/N3s/NEPk
	Mj8qvJVKmxPvUmudg4NDbXdEyx+HnIElY6SWW9LALvbtCRzXvBqqqtbOwL06tBfsNDqvLep+LAR2I
	TYH7gHUBeCC/a9YP2se8JMp2JEZRQYi6+KMN+saG7o/P38FWH3IVnxST60fkpcQjZDKSMp3TDiuzo
	RHGEcjUebEQuLHNesK1iTYnMHpav1oXQIPEXn2dKoAZIv4wuM0dOlWwcEZJUmCMf2UGPnwUuZGXHm
	XIDWph3U55usNboyACTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM5yl-004xZm-Q9; Mon, 21 Feb 2022 10:31:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM5O2-004hAD-V4
 for linux-rockchip@lists.infradead.org; Mon, 21 Feb 2022 09:53:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nM5Nx-0007Rt-Vf; Mon, 21 Feb 2022 10:53:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nM5Nu-0006XB-4c; Mon, 21 Feb 2022 10:53:34 +0100
Date: Mon, 21 Feb 2022 10:53:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v6 17/23] arm64: dts: rockchip: rk356x: Add HDMI nodes
Message-ID: <20220221095334.GC18637@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-18-s.hauer@pengutronix.de>
 <trinity-1fb35fb4-c954-46bc-ae87-02d5df121a01-1645433668183@3c-app-gmx-bs60>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-1fb35fb4-c954-46bc-ae87-02d5df121a01-1645433668183@3c-app-gmx-bs60>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:52:17 up 72 days, 18:37, 85 users,  load average: 0.08, 0.21, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_015343_023735_1D9136CF 
X-CRM114-Status: GOOD (  21.60  )
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

On Mon, Feb 21, 2022 at 09:54:28AM +0100, Frank Wunderlich wrote:
> Hi
> 
> > Gesendet: Donnerstag, 17. Februar 2022 um 09:29 Uhr
> > Von: "Sascha Hauer" <s.hauer@pengutronix.de>
> 
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -10,7 +10,6 @@
> >  #include <dt-bindings/pinctrl/rockchip.h>
> >  #include <dt-bindings/power/rk3568-power.h>
> >  #include <dt-bindings/soc/rockchip,boot-mode.h>
> > -#include <dt-bindings/soc/rockchip,vop2.h>
> 
> why dropping this after adding in part 16?
> 
> >  #include <dt-bindings/thermal/thermal.h>
> 
> it looks like you moved this to board includes...imho this should stay
> in the rk356x.dtsi, because compilation will fail if a board without
> the vop2 (and missing the include) is derived from rk356x.dtsi.

I dropped adding the include from Patch 16. The include is not needed by
rk356x.dtsi. When a board without vop2 support is added then it won't
need the include either.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
