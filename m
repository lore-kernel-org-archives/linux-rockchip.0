Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A12CC64EC4
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Mar 2023 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j+0zfJBb2hvDqFLJmVDQU1iIMGgtnCHW4fJSinTB1GM=; b=Rp0IxVqUop7LOj
	L5hanAoVfXj7WEcfvIbzfRwEsITEvxhnntCCV7j8ZybOH3myxs9duShXpxI8w28111pr41sSv7GWU
	ziPEoY6LU5xydrAGmzk6GcFEspvK7S7+K5LpCQLncH9V+TqNmQJUz8SioJw/eFjQsJ81xFA8DAGAs
	ohC4UrPvR3DhKnf9xZaMOd2zEHyLAKzRu/Z1VreLWnYCqVBTBUAxZaxUHcb7mGGvNBwNuWjopGlE7
	PhpBXjaPQUEBgQkjXmV8IqTWOPxcrSlOJPas5SI0dtfZRUNXjoyjKBSJkXxh45ay85f4jEVZQqc2e
	nypZIzRcHXEtMWedkmOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY7dk-006joh-Hp; Fri, 03 Mar 2023 15:48:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY7da-006jml-6k; Fri, 03 Mar 2023 15:48:03 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pY7dO-0005tb-P2; Fri, 03 Mar 2023 16:47:50 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: rafael@kernel.org, daniel.lezcano@linaro.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Kucheria <amitk@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Markus Mayer <mmayer@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Mark Brown <broonie@kernel.org>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject:  Re: [PATCH v5 06/18] thermal: Remove debug or error messages in get_temp()
 ops
Date: Fri, 03 Mar 2023 16:47:55 +0100
Message-ID: <1753720.VLH7GnMWUR@diego>
In-Reply-To: <20230301201446.3713334-7-daniel.lezcano@linaro.org>
References:  <20230301201446.3713334-1-daniel.lezcano@linaro.org>
 <20230301201446.3713334-7-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_074802_281523_4E095E2D 
X-CRM114-Status: GOOD (  16.67  )
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

Am Mittwoch, 1. M=E4rz 2023, 21:14:34 CET schrieb Daniel Lezcano:
> Some get_temp() ops implementation are showing an error or a debug
> message if the reading of the sensor fails.
> =

> The debug message is already displayed from the call site of this
> ops. So we can remove it.
> =

> On the other side, the error should not be displayed because in
> production that can raise tons of messages.
> =

> Finally, some drivers are showing a debug message with the
> temperature, this is also accessible through the trace from the core
> code in the temperature_update() function.
> =

> Another benefit is the dev_* messages are accessing the thermal zone
> device field from the structure, so we encapsulate even more the code
> by preventing these accesses.
> =

> Remove those messages.
> =

> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com> #Armada
> Acked-by: Florian Fainelli <f.fainelli@gmail.com> #brcmstb_thermal.c

Acked-by: Heiko Stuebner <heiko@sntech.de> #rockchip



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
