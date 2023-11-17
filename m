Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60DA9C197A0
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 09:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dwtAjPPwcKSvZKHYgr6JhDCkgCfvSQW6+F0eFjCOcDc=; b=4EVIwWrg9wBE+n
	lj1QGzIwOTrlj5KROWHOl9PZfrVRiGM1M/zls6bPoHETvMooH9+OdFsbr49btfRRLW951b1nlb26Z
	C0Oetl2q68fXT6pOu9P5TS9jwGSsNQBOmMOcjElRYUnN7nEbFzf59qeWLC7xO2C6OKQK5RhG9qgs+
	3PtiFzpt9gegFE3u2YzQnUbbUcANksf9OBu5fg1zoo3Ay9rxupU+QO2XDlGGBmgBEcmxG9iy0ogRi
	72+6vVN4dUOCm1vnn5zoLavEzXOu0jgWeKFOHb74lhyNQSybgY/YkxMZuwnU4v+zsXYJiIP78xV9Y
	reZi95bbITlo23AFjr1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3vKL-0066Zz-1x;
	Fri, 17 Nov 2023 09:39:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3vKI-0066YW-1G
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Nov 2023 09:39:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r3vKD-0004VP-Ol; Fri, 17 Nov 2023 10:39:45 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r3vK8-009eBl-Hj; Fri, 17 Nov 2023 10:39:40 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r3vK8-002UUH-EB; Fri, 17 Nov 2023 10:39:40 +0100
Date: Fri, 17 Nov 2023 10:39:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andyshrk@163.com>, heiko@sntech.de, hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, devicetree@vger.kernel.org,
	kever.yang@rock-chips.com, chris.obbard@collabora.com
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Message-ID: <20231117093940.GJ3359458@pengutronix.de>
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com>
 <20231115090823.GY3359458@pengutronix.de>
 <8f2ebc81-51c5-44d5-b27b-633a6cc85d0d@rock-chips.com>
 <20231116134757.zu7axb6cvriqjm6y@mercury.elektranox.org>
 <3e011d52-017e-4360-86b4-781535ef61ad@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e011d52-017e-4360-86b4-781535ef61ad@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_013950_428050_52187B31 
X-CRM114-Status: GOOD (  23.86  )
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

On Fri, Nov 17, 2023 at 03:06:35PM +0800, Andy Yan wrote:
> Hi Sebastian:
> 
> On 11/16/23 21:47, Sebastian Reichel wrote:
> > Hi,
> > 
> > On Thu, Nov 16, 2023 at 06:39:40PM +0800, Andy Yan wrote:
> > > > >    	vop2->sys_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,grf");
> > > > This already lacks an error check, shame on me...
> > > > 
> > > > > +	vop2->vop_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,vop-grf");
> > > > > +	vop2->vo1_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,vo1-grf");
> > > > > +	vop2->sys_pmu = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,pmu");
> > > > ... but please don't duplicate that.
> > > It a little difficult to find a proper way to do the check, as not every soc need all these phandles.
> > > 
> > > Do i need check it per soc?
> > I suggest adding a u32 flags to struct vop2_data and then have
> > something like this:
> > 
> > if (vop2_data->flags & VOP2_HAS_VOP_GRF) {
> >      vop2->vop_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,vop-grf");
> >      if (IS_ERR(vop2->vop_grf))
> >          return dev_err_probe(dev, PTR_ERR(vop2->vop_grf) "cannot get vop-grf");
> > }
> > 
> > if (vop2_data->flags & VOP2_HAS_VO1_GRF) {
> >      vop2->vo1_grf = syscon_regmap_lookup_by_phandle(dev->of_node, "rockchip,vo1-grf");
> >      if (IS_ERR(vop2->vo1_grf))
> >          return dev_err_probe(dev, PTR_ERR(vop2->vo1_grf) "cannot get vo1-grf");
> > }
> > 
> > ...
> 
> 
> I can do it like this if Sascha is also happy with it.

Yes, I am.

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
