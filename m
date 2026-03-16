Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C76AF53D6F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 16:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJQiwpsmMC7stqRRwpv/nF2q2qmPpZ2yy2qgAap4pS0=; b=cA0BFUhX1x//kH
	8pGkvISAnFoeUo32rklyuq2A2+346HKu/DGqmGZe14RP2+ULEHOulNz2CL1UlHQUI8Unn0R+wfcrH
	xqUvsvaMKWeXgw6XEJBWbf+RuIk1TUeuseBKUlZnT8+w/qP6AlVdbyYCdjLGT9xOgWVsPmkjhOvNK
	zX3R79tVgEGDr8xRX7+4EL9BeUxLr4JpuWci6IBQ05TsRZqKkREHDjpmNrEDpO9mgZFFtpRuA6mr5
	ecABjaQb/qT59XOJjchL/AGyNF+69fMUK/yLn1qkVMxV0ItQp2E52jKN4oT4MFodULNco2geNmICr
	yixmSxOMbCReE8rLcmrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2ANt-00000004OwQ-1kUt;
	Mon, 16 Mar 2026 16:01:37 +0000
Received: from mail.andi.de1.cc ([2a02:c205:3004:2154::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2ANq-00000004OuN-1Qns;
	Mon, 16 Mar 2026 16:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=dWWCo/O+pQjJJIUXRtm/J1Y1RBo9QKqpObu24MQlaGY=; b=atadA64dERkEQZdp6W+nmGUH/Z
	1D1lTQNh+oGmNntAdmswXaRHPGoum+O4ecFDk/RgR/KGMb14rHewPnxKCQJqB8kcOHL8W9Qz7ykZO
	Yk+WZQHBCd8+4sLEjhWF0klaRSCrbyJmXKzMG+jD1maBSr5aK0fgorZ5iFVVe1KTvqVEk+4tAr4bu
	+vOR/WdNAw31pw6MxJmQARISl1KSmdbDMmndrVXdTRsognlNrzdrKz7aEpngN+1asv6S7j1AdVbVu
	N35t8xgOudCsgtEHu9fm3mb9wf/4PPiT3Ghaetes9LDPdQ3wusvoJXQ1HsvGXMOH3MsTCBelKTqBy
	uP1kw4aA==;
Date: Mon, 16 Mar 2026 17:00:34 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Mark Brown <broonie@kernel.org>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Ulf Hansson
 <ulf.hansson@linaro.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, Scott
 Branden <sbranden@broadcom.com>, Saenz Julienne <nsaenz@kernel.org>, Lee
 Jones <lee@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Shree
 Ramamoorthy <s-ramamoorthy@ti.com>, Jerome Neanne
 <jerome.neanne@baylibre.com>, Paul Cercueil <paul@crapouillou.net>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Dmitry Osipenko
 <digetx@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Joseph Chen
 <chenjh@rock-chips.com>, Chris Zhong <zyw@rock-chips.com>, Zhang Qing
 <zhangqing@rock-chips.com>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Jonathan =?UTF-8?B?TmV1c2Now6RmZXI=?=
 <j.neuschaefer@gmx.net>, Lubomir Rintel <lkundrak@v3.sk>, Julien Panis
 <jpanis@baylibre.com>, Matti Vaittinen <mazziesaccount@gmail.com>,
 Alexander Kurz <akurz@blala.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 =?UTF-8?B?QW5kcsOp?= Draszik <andre.draszik@linaro.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 00/15] Convert power-controller to dt-schema and update
 various yaml file to referencing it
Message-ID: <20260316170034.31bee485@kemnade.info>
In-Reply-To: <f329f1b4-787e-4c8c-ba26-e419a047023b@sirena.org.uk>
References: <20260316-power-controller-v1-0-92c80e5e1744@nxp.com>
	<f329f1b4-787e-4c8c-ba26-e419a047023b@sirena.org.uk>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_090134_388501_4B7ED6CB 
X-CRM114-Status: GOOD (  11.65  )
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

On Mon, 16 Mar 2026 14:55:21 +0000
Mark Brown <broonie@kernel.org> wrote:

> On Mon, Mar 16, 2026 at 10:47:35PM +0800, Peng Fan (OSS) wrote:
> > Convert power-controller.txt to dt-schema
> > Update various dt-bindings to use generic power-controller.yaml without
> > defining local property.  
> 
> Are there any dependencies here?  It doesn't look like it.  In general
> please don't send a single series covering multiple subsystems unless
> there are actual dependencies, it just makes it harder to figure out how
> to handle things.  Send a separate series to each subsystem instead.

It seems that everything depends on Patch 1.

Regards,
Andreas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
