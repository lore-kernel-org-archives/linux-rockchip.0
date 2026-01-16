Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DBE2D47CDE
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 12:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xy8g7N8CUpcpYYqt14IrISAkzeH1VQGWqSL32gsUV5Q=; b=eUnskN8kTDXpkh
	uOPJgXCzlofZ8J9kQ7j5YoDfi1tisrilVpa1Nq4uSXvbDQ7SdgY/CHUIXuSxe7BoG6zeMIG1OWcJB
	jLggG7r3/e7ET7Hvzpo4hZC7yengySEaJ0781qCxnkjiTCMgruMh3aaLF/D21f7NpLInA9bwf2+C6
	RiEBZZYJJHjEev5SJTJYb7FUKUFmNuEV2JMnMRC67/Yla8mPjTzb2MzSpbe6Zz6unBOWMYL835wYZ
	IGZ+axX/zkWPVnq80VbKApgzImuvcgt8sfSSH8IJBVF1m3wlgADyQvHxCT0uOPahu4Eamu6AaO08n
	djWVbl6sHYbCXaoYfI+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgieu-0000000E5Xi-1J5S;
	Fri, 16 Jan 2026 12:10:32 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgieq-0000000E5WY-28mj;
	Fri, 16 Jan 2026 12:10:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768565429; x=1800101429;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=QfxbdCdKhEdyEN02+r2vp+Ub4nbIlg5f/Z9mt5myDKk=;
  b=Uv9Z3GZ1ltRu6E8jE4jZJdGbuGC2ZV6T6aNpnha+wGnRit3nUt4Z2/3Y
   Xx1ni00NAsr5aI0CtQNEkamLnhuvkc3MHLEn00ii7yjrEziRe8HqyWjo5
   TeoIcPzd9qDQUklvnpw4+6EBq+KtohOX046OXGbajj++M79c7bF4Wi7bh
   xDeagXASe3cCJ0x7uqq6Idzy6aN26lsKz2AcxzX4bJk6ZovZeXD19KWWX
   vFbr+RwY1qGafq72cGFTnlptnBLC2B6lCM++S3MUCmsXmqrIHTBhRCKk1
   6XYnaa/4Uq4QjjqQljSvc7kokhRxnlASB4kpgA4lWTgUQYNChxAapoDls
   Q==;
X-CSE-ConnectionGUID: nA4e4EN0SpGZystczFZHsw==
X-CSE-MsgGUID: Jkj+/spcQsOGTfves5QVyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="87455665"
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; 
   d="scan'208";a="87455665"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jan 2026 04:10:27 -0800
X-CSE-ConnectionGUID: SEuBDxBVSc2y4zLvJuYMiw==
X-CSE-MsgGUID: /Lgbij9+QH2fis18QSZjHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; 
   d="scan'208";a="205127523"
Received: from abityuts-desk.ger.corp.intel.com (HELO kekkonen.fi.intel.com) ([10.245.245.150])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jan 2026 04:10:22 -0800
Received: from kekkonen.localdomain (localhost [IPv6:::1])
	by kekkonen.fi.intel.com (Postfix) with ESMTP id 6791711F726;
	Fri, 16 Jan 2026 14:10:22 +0200 (EET)
Date: Fri, 16 Jan 2026 14:10:22 +0200
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs, Bertel Jungin Aukio 5, 02600 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: michael.riesch@collabora.com, Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>, Frank Li <Frank.li@nxp.com>,
	Mehdi Djait <mehdi.djait@linux.intel.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Collabora Kernel Team <kernel@collabora.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] media: dt-bindings: add rockchip mipi csi-2
 receiver
Message-ID: <aWoqrhHJwUHQpb2K@kekkonen.localdomain>
References: <20251114-rockchip-mipi-receiver-v4-0-a9c86fecd052@collabora.com>
 <20251114-rockchip-mipi-receiver-v4-1-a9c86fecd052@collabora.com>
 <aWoOzn_d7ixgbzj4@kekkonen.localdomain>
 <5173450.iZASKD2KPV@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5173450.iZASKD2KPV@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_041028_564192_A3898BB2 
X-CRM114-Status: GOOD (  30.90  )
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

Hi Heiko,

On Fri, Jan 16, 2026 at 12:07:22PM +0100, Heiko St=FCbner wrote:
> Am Freitag, 16. Januar 2026, 11:11:26 Mitteleurop=E4ische Normalzeit schr=
ieb Sakari Ailus:
> > Hi Michael,
> > =

> > On Thu, Jan 15, 2026 at 07:26:07PM +0100, Michael Riesch via B4 Relay w=
rote:
> > > From: Michael Riesch <michael.riesch@collabora.com>
> > > =

> > > Add documentation for the Rockchip MIPI CSI-2 Receiver.
> > > =

> > > Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> > > Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> > > ---
> > >  .../bindings/media/rockchip,rk3568-mipi-csi2.yaml  | 141 +++++++++++=
++++++++++
> > >  MAINTAINERS                                        |   6 +
> > >  2 files changed, 147 insertions(+)
> > > =

> > > diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-=
mipi-csi2.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-mi=
pi-csi2.yaml
> > > new file mode 100644
> > > index 000000000000..2c2bd87582eb
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-cs=
i2.yaml
> > =

> > I'd add a compatible string for the base IP block and name it according=
ly.
> =

> personally, I wouldn't do that.
> =

> While the RK3568-variant is a somewhat smooth integration ... the now
> (temporarily) omitted RK3588 variant of a similar block is not.
> =

> I.e. the RK3588 has quite a number of those CSI hosts, with a bunch of
> resource routing bits and bops between those CSI hosts sitting in the
> Rockchip "Gernal Register Files" (dumping ground for random bits and bops=
).
> =

> So you then get a syscon accessing per-soc registers and bits.
> =

> So while it is (compatible to) some Synopsis IP block, the integration to
> make that thing actually do something is highly soc-specific.
> =

> That's also why the for example the dw-hdmi/dsi IPs don't use a common
> compatible [0] [1] [2] [3] [4]
> =

> =

> [0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-dw-hdmi.y=
aml
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/Documentation/devicetree/bindings/display/hisilicon/dw-dsi.txt
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> [4] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.=
yaml

Ack, thanks for the explanation. This sounds reasonable to me; this can be
later extended or renamed if needed.

> =

> =

> > > +    soc {
> > > +        interrupt-parent =3D <&gic>;
> > > +        #address-cells =3D <2>;
> > > +        #size-cells =3D <2>;
> > > +
> > > +        csi: csi@fdfb0000 {
> > > +            compatible =3D "rockchip,rk3568-mipi-csi2";
> > =

> > This would become e.g.
> > =

> >             compatible =3D "rockchip,rk3568-mipi-csi2", "snps,dw-mipi-c=
si2rx";
> > =

> > See my comments on the driver patch as well.
> =

> In the PCIe area, we have  rockchip,rk3568-pcie and rockchip,rk3568-pcie-=
ep
> for a similar combo.
> =

> For CSI the receiver is the vastly more common thing to do. So if anythin=
g,
> I'd go with "foo-csi2" vs. "foo-csi2-device", if somebody really develops=
 a
> "camera" SoC, with a fully featured DT-based OS in the future ;-) .

There may be surprises, CSI-2 transmitters may be used in other kinds to
devices than cameras. Therefore I'd add the "rx" part in the name, at the
very least when it comes to the Synopsys IP block. Some of the other
receivers are named that way already and we have a transmitter driver, too.

-- =

Regards,

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
