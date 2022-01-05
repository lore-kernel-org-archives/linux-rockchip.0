Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6D59C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jan 2022 12:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QNfTEGNdCz8mz55QllqjSKQIvSYlR7CdACietV/3y8=; b=xccl4z7Fapo2up
	Hr/45nT57S7YW6mxGWnBuzzCPGPypbR8s2qgf8UiQvm3cx1h7WNSCEvnWRI98jjVUG8AbDUmSXGZ9
	dDLM5IKAkJ8qRAdRanRcoo70vLJtQ71U5GwoZiZ3ssf6ChCwimwwvYGjCvr9JIjSBkbYBqB8hEolU
	4gjlUt/erch4JWbs69O5wV2UFe4UuivjPdVSkw3qRLLNrcT1Y5CTLusfe1sU3NpnJAqgN/NcR2J4j
	blILmnOABWC4/mtwAm/HoxWV//kOhaYlT/w6XvN2WQijBgqGhnciQv9QZ796skE/ZRLhz9pHRC9Wn
	F2r3Ft35KBNTGbUjB4wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n55Ho-00EkTa-Ji; Wed, 05 Jan 2022 12:21:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n55Hc-00EkRi-IY
 for linux-rockchip@lists.infradead.org; Wed, 05 Jan 2022 12:20:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n55HZ-00071u-Gu; Wed, 05 Jan 2022 13:20:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n55HT-0001C5-Eu; Wed, 05 Jan 2022 13:20:39 +0100
Date: Wed, 5 Jan 2022 13:20:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <Kever.yang@rock-chips.com>
Subject: Re: [PATCH 22/22] drm: rockchip: Add VOP2 driver
Message-ID: <20220105122039.GU6003@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-23-s.hauer@pengutronix.de>
 <a0942adc-52c1-811e-0de6-d0616266ce2d@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a0942adc-52c1-811e-0de6-d0616266ce2d@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:31:47 up 25 days, 20:17, 82 users,  load average: 1.24, 1.20, 1.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_042048_624081_A512C1DD 
X-CRM114-Status: GOOD (  22.30  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Andy,

On Tue, Jan 04, 2022 at 07:07:23PM +0800, Andy Yan wrote:
> =

> =

> I thinks we should be very carefully about switch to regmap.
> =

> Most of the registers are take effect by frame sync(that is you write the
> config done bit and when vsync interrupt come),
> =

> Not only windows register, but also the SYS_CTRL, post processor(VP0/1/2)=
,=A0
> OVERLAY, hdr and so on.

That's why I marked these as nonvolatile, so that reading the registers
comes from the cache. I may have missed some registers, these could be
added when needed.

> > +	ret =3D vop2_win_init(vop2);
> > +	if (ret)
> > +		return ret;
> Do you have a count about how much time the function vop2_win_init cost ?

No. Why does that matter?

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
