Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1401AC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 15:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lslWUlzGaMCyMdvA3R2L8YVNBQGiFCs4pdagYSbxt7Q=; b=PzuA8EKzlnPAK2
	EzjvNVaqyuUkEYbem4WJnmU2/mRyvo3iM8upVqxoFhq6Y/VvJnxiy2+OhNBJrFq/ziV3n7QCnQYhO
	ByaWjXsSHWOJj3WaVAyjVElL3mzvdGs+HjfpSy5soRWUlx4ozbL+BaMYyr+hXGRFxepQP01oTH6bp
	MA4wvtosLvGOsuvj0ZDC+/vLHCOKQk3Oi+v5lTUqx4dhvIO/Xu6t/Lkcq9ckAXG1ZMj3LX/MEj8TC
	ef6fj5I2mVI1/gFB32ijTTOalWQ9VNPT3q8QhAlZJRZ1oQHNUTGNxO6E+vAALN0zmhubJaEINuVLv
	pGHHVHOZ7MsczDmTnshw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhYww-00E4X1-Hj; Thu, 21 Apr 2022 15:42:30 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhYwZ-00E4Pa-B0; Thu, 21 Apr 2022 15:42:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1650555699;
 bh=qO7WWncsu8pqavraYehTZbqYkoK5x7r8ZxY5T97XoXw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=b+ULn39b+bj0QXQCBw1ebteDuTea9undETS0F3wjN4eLKsi4JB2YQXogVfc83LBez
 yKNmLOcb21RK7yGdjB5m6CjS2/vj+M6UcAbEkV7RpYjgtYRIZWuVVONj+tsRzKG1F3
 prFeyU+w5t492/e8TZXuRN8Tb0BY4Vy5259dV3Uc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.123] ([80.245.79.123]) by web-mail.gmx.net
 (3c-app-gmx-bap38.server.lan [172.19.172.108]) (via HTTP); Thu, 21 Apr 2022
 17:41:39 +0200
MIME-Version: 1.0
Message-ID: <trinity-1c858470-8354-4ecd-ace7-a6e437cb5923-1650555699148@3c-app-gmx-bap38>
From: Frank Wunderlich <frank-w@public-files.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Wunderlich <linux@fw-web.de>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>, Michael Riesch
 <michael.riesch@wolfvision.net>, "open list:GENERIC PHY FRAMEWORK"
 <linux-phy@lists.infradead.org>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing
 List <linux-kernel@vger.kernel.org>, PCI <linux-pci@vger.kernel.org>
Subject: Aw: Re: Re: [RFC/RFT 4/6] PCI: rockchip-dwc: add pcie bifurcation
Date: Thu, 21 Apr 2022 17:41:39 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAMdYzYpydGyQZT2n9Tf+ccQMLHzfhOgoyamMgspQDcjzm3Umdg@mail.gmail.com>
References: <trinity-a220fd81-2ee9-474d-bd65-505b9ed904b2-1650186482865@3c-app-gmx-bs58>
 <20220418155313.GA1101563@bhelgaas>
 <CAMdYzYpydGyQZT2n9Tf+ccQMLHzfhOgoyamMgspQDcjzm3Umdg@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:fMhCkXFkWk6jz1YC+ACHfChGGaYlwtUgwWcAnA0jyPbYw+1++3n2PWOoruUedVEe3O/nQ
 hDXeXjlmBChv+exHvKh31aXoT2WMSGUsSsGWqskuolAgm32mb16s6bTyLBSYtyP5Sg25cf0JPmXJ
 1pePEo7O+SI/2Uh8PWKiMger7oxtNy0YJJqYI+mBRs1lneD0he6ep57APIq3Euail8eSb3oQ1N1t
 QJ0n5Muonbp6RS4DYQMXP774RwDlOzQRQsjzLD/mjxpPK7b1IV/OtbmUTj8gaCQgDDN5tUv+dMym
 H4=
X-UI-Out-Filterresults: notjunk:1;V03:K0:2nkMVzuz8fg=:WjCZA2rE/qwwh+MU3sEN/r
 je5+6b+/RRLEZWWlafKstjYHv9f42eqbK6znP181CwuscNFSZjPl+ZR0HKMM7EydWaRcZe/ll
 BCl+krEEXdZUBXvWxN7pl11y0YtJRF/i6dPA75W2WcZOp3+4A65+kN9+ny41jIuUEDMs74lhH
 mlr1cKsf35glpeo45jO6pK6jJcuXVlctuuf0NAvA2rMuAzjHtYFAbYULFQ4NMMKgwDzge1yo8
 j4Lyb7g1uK+V0PwRFsRsWTFrrgK7r3KeHAoy0yjxVTw10wa9hQaRqyS6AYEBnA9MKhCECi6BF
 IooRgAAog8qUceYmla24ULXMV52boFDwi50i7zQFDUn2JUCVw2wJIli0TtSDY76YvVfG16Rqe
 kRZ7vXEtrSLD0eBvjy9o1qoZ+XuRbzMvLC2uxvGwG4uKTT6R1jd59YbrosallEcZqsmO5+Kr5
 xi3NoAXZsdYMYVWQoOFYguVwJlJ05EaBIgoUYtmUx1SDO4JLZhypXT2uoKccQlEIwOS4KlvZO
 9HfdqR+WKJAllWAbVUtSrhGjQ+yaNXPWNmSv8K+1dqKdbXF65ccZxnET97oWwubt3p67rR0jQ
 affk8sssrapLyMlQ6zJ5CA2iC7h6xRXYxkwV0nYiaobtjCYLLwMOSvupflLa4xyk9lrgEXZt4
 aHim3uq8km4fyBx7FG4mygswCimCKLaiNJWINxGFUzliPO1i23YRcWaZKKUA7LGnEBdO0lazI
 V+/cc0pXMdiZYEG0k/hxV4sGCzUUphJ4RWxS+GvuKGrOQCGk+otFOoyS2Ncv4BdrqvmOOdXuh
 ALV1zmu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_084207_882027_B3D90D50 
X-CRM114-Status: GOOD (  24.97  )
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

> Gesendet: Montag, 18. April 2022 um 18:17 Uhr
> Von: "Peter Geis" <pgwipeout@gmail.com>
> > On Sun, Apr 17, 2022 at 11:08:02AM +0200, Frank Wunderlich wrote:
> > > > On Sat, Apr 16, 2022 at 03:54:56PM +0200, Frank Wunderlich wrote:
> > > > > From: Frank Wunderlich <frank-w@public-files.de>
> > > > >
> > > > > PCIe Lanes can be split to 2 slots with bifurcation.
> > > > > Add support for this in existing pcie driver.
> >
> > > > Is the "rockchip,bifurcation" DT property something that should be
> > > > generalized so it's not rockchip-specific?  Other controllers are
> > > > likely to support similar functionality.
> > >
> > > I do not know if other controllers support similar functionality,
> > > but i ack a property without vendor prefix is better. Should i use
> > > "bifurcation" as name or do you think about a different name which
> > > is more generic?
> >
> > Really a question for Rob about what name would be good and where it
> > should go.
>
> It might be good to define this as a lane map.
> In the Rockchip implementation it's only 2+0 or 1+1, but that isn't
> guaranteed if this is made into a standard definition.
> So perhaps:
> pcie-bifurcation-map = <0>, <1>;
> pcie-bifurcation-map = <1>;
> pcie-bifurcation-map = <4>, <5>, <6>, <7>;

how about a lane-map like this (from controllers point of view):

rockchip with only 2 lanes (like rk3568):

controller 1:
lane-map = <1 0>;

controller 2:
lane-map = <0 1>;

here bifurcation is set if a controller does not aquire all lanes.Afaik rk3568 cannot select specific lanes so i end up with bifurcation = true/false (an aggregation-mode on phy) again. but it makes dts-property more usable for other devices/SoC.

this contains the maximum of lanes and as mask the lanes to take by the current controller. It is scalable to support more pcie-lanes (x2 x4 x8)

example for 2 controllers with PCIe x4 (with 8 lanes available):

lane-map=<0 0 0 0 1 1 1 1>;
lane-map=<1 1 1 1 0 0 0 0>;

of course they can be mixed, if driver supports this.

lane-map=<0 1 0 1 0 1 0 1>;
lane-map=<1 0 1 0 1 0 1 0>;

such lane-map is more flexible

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
