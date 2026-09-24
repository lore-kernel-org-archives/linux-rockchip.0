Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6EB0C9830E
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 15:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwoXrStQCx28BQgNeth8elscGoi7SB4vQ9ffk36XPjE=; b=R6/wmf/Eef6K48
	oU6O/6auNF+4+Kfh1/5EsSqAx6refR7oCai7GMUF1lOcqkcMXW33pHH5qZ673GWKCMEduqzc9SlvT
	K9HkInKB23IIHoygEOLlNF+HA98AezWVSxeDg0uz6yiiPnsiWeb57oxy40Cc31DYYZz88FKB4i+4+
	zYhgM9cpoCv2Z7+rLjMb1DS9GoQrt7ndUeeGSYrMxVE+w+M27kGiMOc5tWkDEKoWC64S8yeR7Dp9n
	BAYT8lo4Wx40WTIWTrT0V/aolxLKHVUUAi64msmrKITqPxsTo0ce9GWPsFU5XPjigQsHwWw8M2Dcu
	MCiPGuqf9x0iptC9mp5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9lPA-0000000BQXX-47hP;
	Thu, 24 Sep 2026 15:30:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9lOf-0000000BQ5a-1pqH;
	Thu, 24 Sep 2026 15:30:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1CCF343607;
	Thu, 24 Sep 2026 15:30:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A8C91F000FF;
	Thu, 24 Sep 2026 15:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790263805;
	bh=3xaD1IMfAyp/uIU4MITG18na4g3zXQJFSDgCzveCcZU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EW0B7Nc6zPIXKvae2h9udoFtfnvLgEztZgFp0GIOtPQU6aa0CKVM4BU/HUwpZ0vKr
	 1Ng2uL1PApIcsZ4dt5R5rJKBtQ+ejpuIHqzHFWmmVVwhmekO997ypwXY7o1b50WfWZ
	 jNFyYcsC4YxISGl8X5n0lAnADzdfFjebSuXNuMX4ChHZy2l4ud2CDTfr6dJYsj4GSw
	 /HSilVBl9WDa93bYPAWt+PWertSA1Ap0Lu9AOmmd31jcJF3mOw6bQ5CoDyBZirCmh8
	 972QlyXRwXWLAAYyvARx/fHNTHXFpJ4VQs7bNe/4FU9mINsUnDG7ZOXj72PcCtGHg4
	 yo2B1+UfXTs2Q==
Date: Thu, 24 Sep 2026 10:30:01 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Yan <andy.yan@rock-chips.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Joshua Peisach <jpeisach@ubuntu.com>,
	Stephen Boyd <sboyd@kernel.org>, Lee Jones <lee@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	Hal Feng <hal.feng@starfivetech.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Maxime Ripard <mripard@kernel.org>,
	Maud Spierings <maud_spierings@murena.io>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	dri-devel@lists.freedesktop.org, Jonas Karlman <jonas@kwiboo.se>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>, mfd@lists.linux.dev,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Graham Markall <hello@big-grey.co.uk>, linux-clk@vger.kernel.org,
	Paul Walmsley <pjw@kernel.org>, Robert Foss <rfoss@kernel.org>,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Dominique Belhachemi <db@domibel.de>
Subject: Re: [PATCH v4 06/20] dt-bindings: soc: starfive: Add
 starfive,jh7110-vout-subsystem
Message-ID: <179026380151.180820.13279134510036926790.robh@kernel.org>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153224eucas1p1c19b20f6af600b1c3228a9a8f4bb4490@eucas1p1.samsung.com>
 <20260915-jh7110-clean-send-v4-6-f0e4fd6f2cc8@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-jh7110-clean-send-v4-6-f0e4fd6f2cc8@samsung.com>
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


On Tue, 15 Sep 2026 17:32:14 +0200, Michal Wilczynski wrote:
> The JH7110 groups its display hardware into a video output subsystem,
> dom_vout_top, covering the DC8200, the HDMI transmitter, the video
> output clock generator and the video output system controller.
> 
> They share one NoC port whose clock and reset gate access to every
> register in the region, and the region sits in the PD_VOUT power
> domain. Describe the subsystem as a bus node so those resources are
> owned by the block that shares them, rather than by whichever consumer
> happens to probe first.
> 
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  .../starfive/starfive,jh7110-vout-subsystem.yaml   | 218 +++++++++++++++++++++
>  1 file changed, 218 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
