Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ED2ACDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 13:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XuQoF9F69qDWqVDDG/JDyhTl1pLv/2ZKOv2SyFwCpA=; b=cwNtHlhjmirErH
	PJ0NS9DrOrRQDLU2xz1EbRg7dDXEMs/ZK1xEQ5MoME4O3rYVw6LK0z3W5Q1pc20jRc/FiIJZOeeOE
	yn8SmZFjoh7BoD+AhAlVBV7+i+0TDO3/Z9m+/sTPGFmK8vGql+eQPQ6+ZEv7E6d6dccvZ7SVX42Rk
	BWtGVoch6QzOndJf7kHJ0VLrJ7ajeMXv3tF9u/zhqF2AADN5245L3e3SREvh/Ybc6qpIFiUJBuz+M
	qo91REfiynGG/Y2RS3cqh4iWMzz1dvCzkJZv+g7YZ/Rfk/RCRm6gNdww3ygOTrvg4VITVDvMrIEhn
	zuvRhCU8DKLNosLDnlZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsNMe-009h7K-1x;
	Mon, 16 Oct 2023 13:10:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsNMa-009h5o-2z
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Oct 2023 13:10:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qsNMZ-0007X1-Dt; Mon, 16 Oct 2023 15:10:27 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qsNMX-0025bR-6v; Mon, 16 Oct 2023 15:10:25 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qsNMX-00EkKQ-3o; Mon, 16 Oct 2023 15:10:25 +0200
Date: Mon, 16 Oct 2023 15:10:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chanwoo Choi <chanwoo@kernel.org>, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v7 08/26] PM / devfreq: rk3399_dmc,dfi: generalize
 DDRTYPE defines
Message-ID: <20231016131025.GD3359458@pengutronix.de>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-9-s.hauer@pengutronix.de>
 <f142ae65-0609-ccf2-5908-663cd2ecab73@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f142ae65-0609-ccf2-5908-663cd2ecab73@kernel.org>
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
X-CRM114-CacheID: sfid-20231016_061028_964340_58AB3FEA 
X-CRM114-Status: GOOD (  20.69  )
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

Heiko,

On Sat, Oct 07, 2023 at 02:43:04AM +0900, Chanwoo Choi wrote:
> On 23. 7. 4. 18:32, Sascha Hauer wrote:
> > The DDRTYPE defines are named to be RK3399 specific, but they can be
> > used for other Rockchip SoCs as well, so replace the RK3399_PMUGRF_
> > prefix with ROCKCHIP_. They are defined in a SoC specific header
> > file, so when generalizing the prefix also move the new defines to
> > a SoC agnostic header file. While at it use GENMASK to define the
> > DDRTYPE bitfield and give it a name including the full register name.
> > 
> > Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---

[...]

> > +	ROCKCHIP_DDRTYPE_LPDDR2	= 5,
> > +	ROCKCHIP_DDRTYPE_LPDDR3	= 6,
> > +	ROCKCHIP_DDRTYPE_LPDDR4	= 7,
> > +};
> > +
> > +#endif /* __SOC_ROCKCHIP_GRF_H */
> 
> 
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> 
> This patch must require Ack of rockchip Maintainer (Heiko Stuebner)
> because of include/soc/rockchip.

Could you provide your Acked-by: for this patch?

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
