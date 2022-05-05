Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA276C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 06:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Rn+50fBVzE5z0lNnvacDsyNbr+4qsQUribIGMyllEc=; b=sngEgKpljFh38E
	8e1s5nUP/pQOj5rcKOU0Gh26/zNpJmY4W5m2etwTeVZy7rZW2FunlD7wfdA3ky7OH/VWtxiUReuEW
	M6w2S9/fLzfax70nDzjY6A06HeoLm9R2OUku3BUwlHn4PnLhZYKlFOkpdQiPmAq9vHIp94ATPeCEL
	84Z/A7IM5tVbwTr5jW4GhlMEZtiXuIT6fchWQ7Wvit/40IfFlepMrtyXBxsERhDQXI9Lyvi8DaDLt
	6JTHGq/KfyIpzy7zDYaUsb+7VEXcvUUU94UPccIdEJ09fLz/eI+7aRAU4tYRMWzRkyVOxJfGHZ2dT
	k/iRGbuP8Skp8XDQE67w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmVBG-00EFoW-9G; Thu, 05 May 2022 06:41:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmVBD-00EFnR-N7
 for linux-rockchip@lists.infradead.org; Thu, 05 May 2022 06:41:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmVBA-0005Pp-0K; Thu, 05 May 2022 08:41:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmVB5-0004zN-Cf; Thu, 05 May 2022 08:41:31 +0200
Date: Thu, 5 May 2022 08:41:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v11 16/24] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Message-ID: <20220505064131.GF4012@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-17-s.hauer@pengutronix.de>
 <1911394.usQuhbGJ8B@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1911394.usQuhbGJ8B@diego>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:39:55 up 35 days, 19:09, 74 users,  load average: 0.09, 0.10, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_234139_815806_94A37A24 
X-CRM114-Status: GOOD (  22.96  )
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

On Thu, May 05, 2022 at 02:28:24AM +0200, Heiko St=FCbner wrote:
> Am Freitag, 22. April 2022, 09:28:33 CEST schrieb Sascha Hauer:
> > The VOP2 is the display output controller on the RK3568. Add the node
> > for it to the dtsi file along with the required display-subsystem node
> > and the iommu node.
> > =

> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Acked-by: Rob Herring <robh@kernel.org>
> > ---
> > +	vop: vop@fe040000 {
> > +		reg =3D <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
> > +		reg-names =3D "regs", "gamma_lut";
> =

> reg-names does not seem to be part of the dt-binding.
> Though now in the vop2-driver I see that the code uses that naming.
> =

> I guess we might want to just go the vop1-way by using numbered
> platform-resources via a follow-up patch and drop the regnames here?

Or we could document the reg-names properties in a follow-up patch.
Wouldn't that be better?

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
