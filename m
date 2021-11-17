Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3261AC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 16:06:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EBF8B61BFA
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 16:06:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EBF8B61BFA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYoNXoDIKvY6Ehd8a42TGYF6m4DP5qq2Q3HzCW/86Y4=; b=mkOhrBIAr31kue
	jt+vozlyYvasbaT7WbTrcKMAnzneJZTv0oUO/Be+i2YX7+qBn0UsKOF7kuHVKM1CGjW8mkctQSTt1
	6lOhx63DmZRCn06WjOQ/BSmvZjK0X4mHXoz5wKJLS5jNAK8P5QSVpLJlDu6bU+AVM90vL8nMdTu5Z
	rEgs1mRg75bRTaX0zPiAvJc8U9FRuWAC0MX7lZNRuzI9ksw6pv4k/UO/WOm0HH7oplBlpZms8pojI
	W+Oa8aHpfc+tUKyBohL6gCJoQjb0+7k0m6Hl+xewTyZkUalCa+YDihUxlAnPjsix9hZ/yr0mcajbl
	H5nG8qyl8Ivq1MiqKF0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnNSJ-005du7-EU; Wed, 17 Nov 2021 16:06:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnN45-005S12-1S
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 15:41:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnN40-0008Dd-MS; Wed, 17 Nov 2021 16:41:32 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnN3x-00057n-D4; Wed, 17 Nov 2021 16:41:29 +0100
Date: Wed, 17 Nov 2021 16:41:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
Message-ID: <20211117154129.GM6556@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <CAL_JsqJxJj2JT-0vN45vYyoy_Sh87NnoTfJQH-4qxRoPNwtj5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJxJj2JT-0vN45vYyoy_Sh87NnoTfJQH-4qxRoPNwtj5Q@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:58:28 up 272 days, 18:22, 147 users,  load average: 0.17, 0.18,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_074137_103737_2C7C93DD 
X-CRM114-Status: GOOD (  33.55  )
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

On Wed, Nov 17, 2021 at 08:54:37AM -0600, Rob Herring wrote:
> On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > This series adds initial graphics support for the Rockchip RK356[68]
> > SoCs.  Graphics support is based around the VOP2 controller which
> > replaces the VOP controller found on earlier Rockchip SoCs. The driver
> > has been tested with HDMI support included in this series and MIPI-DSI
> > which is not included because it needs some more work. The driver is
> > taken from the downstream Rockchip kernel and heavily polished, most non
> > standard features have been removed for now. I tested the driver with
> > the libdrm modetest utility and also with weston with both pixman and
> > panfrost driver support. Michael Riesch reported the driver to work on
> > the RK3566 as well, but device tree support for this SoC is not yet
> > included in this series.
> 
> Can you outline what exactly you want to disable? I don't think
> 'status' is the right way. I think between the parent device being
> disabled, an incomplete graph and user configuration choice that
> should be enough to disable parts.

The VOP2 on the RK3568 has three CRTCS, or video ports (VP) in Rockchip
nomenclature. Each of them can be connected to the different outputs,
like HDMI, MIPI-DSI and so on. In the device tree the CRTCs are
described as of-graph ports with links to the HDMI, MIPI-DSI nodes.
An example limited to HDMI looks like this:

	vop: vop@fe040000 {
		compatible = "rockchip,rk3568-vop";
		vop_out: ports {
			vp0: port@0 {
				vp0_out_hdmi: endpoint@0 {
					reg = <0>;
					remote-endpoint = <&hdmi_in_vp0>;
					status = "disabled";
				};

				... MIPI, dP, ...
			};

			vp1: port@1 {
				vp1_out_hdmi: endpoint@0 {
					reg = <0>;
					remote-endpoint = <&hdmi_in_vp1>;
					status = "disabled";
				};

				... MIPI, dP, ...
			};

			vp2: port@2 {
				...
			};
		};
	};

	hdmi: hdmi@fe0a0000 {
		compatible = "rockchip,rk3568-dw-hdmi";
		ports {
			hdmi_in: port@0 {
				hdmi_in_vp0: endpoint@0 {
					reg = <0>;
					remote-endpoint = <&vp0_out_hdmi>;
					status = "disabled";
				};

				hdmi_in_vp1: endpoint@1 {
					reg = <1>;
					remote-endpoint = <&vp1_out_hdmi>;
					status = "disabled";
				};

				...
			};
		};
	};

Theoretically every VP can be routed to every output, but depending on
the board there are some constraints. For example for the three vps
there are only two PLLs for the pixel clock, and the HDMI port is
hardwired to one single PLL. To avoid different VPs setting conflicting
rates on a PLL we can only allow a subset of the possible routes.

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
