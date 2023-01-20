Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9362DC05027
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jan 2023 10:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HI0sBlecamD6KWxtb5SUt1fWRpYkjsv6CjB2p1kWYo=; b=i4oe6euaaw+OEb
	ITwTq+yOBY6P6u8W5XUJjQmHFXo+tou6f+9LNWLGISkJMmiOHSEZXe0A65cPmZ3ZwIpSv35Adsh/T
	ylZq7fo3fm2RAC4vE1eG33a5CfP00zYqM8bQhuXP1mpC1rCikqjcRF9XB9vsMr5X+5TQk/9yrbnOb
	nHEpZ+T4ZA7j22AN2BnlehjQv65ULrzBRQebwHL1l7MHrJ6Zg1yPFyJqs0ePNPgZNavA68gF8DqvW
	ddgOJDqc2Ba7u+fEwyb5tLO1M3C48xPVmV+xQ+vId6vdmmbPjMw3u4H30yDdkwqUSdZsBE8Bpqx+F
	czNLXj28w8HYsySpvQhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIoEY-009dd3-Mb; Fri, 20 Jan 2023 10:02:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIntx-009TAg-CE
	for linux-rockchip@lists.infradead.org; Fri, 20 Jan 2023 09:41:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pInth-0006vW-Qz; Fri, 20 Jan 2023 10:41:21 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pIntd-00064S-Gh; Fri, 20 Jan 2023 10:41:17 +0100
Date: Fri, 20 Jan 2023 10:41:17 +0100
From: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
To: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>
Cc: "a1ba.omarov@gmail.com" <a1ba.omarov@gmail.com>,
	"heiko@sntech.de" <heiko@sntech.de>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"hjc@rock-chips.com" <hjc@rock-chips.com>,
	"michael.riesch@wolfvision.net" <michael.riesch@wolfvision.net>,
	"macromorgan@hotmail.com" <macromorgan@hotmail.com>,
	"daniel@ffwll.ch" <daniel@ffwll.ch>,
	"frattaroli.nicolas@gmail.com" <frattaroli.nicolas@gmail.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"pgwipeout@gmail.com" <pgwipeout@gmail.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"frank-w@public-files.de" <frank-w@public-files.de>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"ezequiel@vanguardiasur.com.ar" <ezequiel@vanguardiasur.com.ar>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"airlied@gmail.com" <airlied@gmail.com>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 1/3] drm/rockchip: lvds: add rk3568 support
Message-ID: <20230120094117.GM24755@pengutronix.de>
References: <20230119184807.171132-1-a1ba.omarov@gmail.com>
 <20230119184807.171132-2-a1ba.omarov@gmail.com>
 <20230120091641.GL24755@pengutronix.de>
 <9fe2678da0ae10e6996889971a3137799a68c4b9.camel@siemens.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9fe2678da0ae10e6996889971a3137799a68c4b9.camel@siemens.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_014137_447470_AC69BA1A 
X-CRM114-Status: GOOD (  18.96  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jan 20, 2023 at 09:31:43AM +0000, Sverdlin, Alexander wrote:
> Hello Sascha,
> =

> On Fri, 2023-01-20 at 10:16 +0100, Sascha Hauer wrote:
> > > +=A0=A0=A0=A0=A0=A0=A0/* Enable LVDS mode */
> > > +=A0=A0=A0=A0=A0=A0=A0return regmap_update_bits(lvds->grf, RK3568_GRF=
_VO_CON2,
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 RK3568_LVDS0_MODE_EN(1),
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 RK3568_LVDS0_MODE_EN(1));
> > =

> > Isn't this the same as:
> > =

> > =A0=A0=A0=A0=A0=A0=A0=A0regmap_write(lvds->grf, RK3568_GRF_VO_CON2,
> > RK3568_LVDS0_MODE_EN(1));
> > =

> > Unless I am missing something I find a plain regmap_write() easier to
> > read.
> =

> the former is setting a bit in a RMW operation, the latter is a plain
> write, isn't it?

That's right from the view what the function itself does. Note the
registers that are accessed here are a bit special. They effectively
are 16bit wide, the upper 16bit contain a mask. Only the bits set in the
mask are actually modified in the lower bits. See the register bit
definitions:

#define HIWORD_UPDATE(v, h, l)  ((GENMASK(h, l) << 16) | ((v) << (l)))

#define   RK3568_LVDS0_SELECT(val)             HIWORD_UPDATE(val,  5, 4)

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
