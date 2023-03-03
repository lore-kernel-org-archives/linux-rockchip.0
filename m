Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ACD5C7EE2D
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Mar 2023 15:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M9W6LkwBCah/6TECjWAcj5BAJq5JKo3NSBxrnWTswr8=; b=RDTpUrhrf7BYBW
	wVS57tZXPWI/YclIBMSOib81vcHXPUfAXd891e6YSMR1Q1PMK7avSvVM725JwNOHnsjg67tnAk0Z4
	GUhkDUEy3X1jm66Fj0PNn6ZBfgxdsFwBQFYh01ygkR3b4mfJlD68vLlvyE3MdEYVqJSmNm8BNpKbE
	egELgNSYRkx+fUOGLJ57UPW9odMCyrdSExrzOy6UCAqtc4iXMXtyn/BPNmIx1nnIPcm1q1lcczy+S
	2bPaKS23lYToeeRwKOUYzecWb7QR2juD2ubBeZR8TzeDEkzhULxBdNcAmjwSVnuFLybVmCURmC+cb
	7ZsAZhBfEfBCd1+kap8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY7eS-006k3I-UK; Fri, 03 Mar 2023 15:48:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY7eI-006jza-4T; Fri, 03 Mar 2023 15:48:47 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pY7e6-0005wL-Hm; Fri, 03 Mar 2023 16:48:34 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: rafael@kernel.org, daniel.lezcano@linaro.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Niklas =?ISO-8859-1?Q?S=F6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Florian Fainelli <f.fainelli@gmail.com>, Amit Kucheria <amitk@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Niklas =?ISO-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Dhruva Gole <d-gole@ti.com>,
 Stefan Wahren <stefan.wahren@i2se.com>, Mark Brown <broonie@kernel.org>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 ye xingchen <ye.xingchen@zte.com.cn>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:RENESAS R-CAR THERMAL DRIVERS"
 <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject:  Re: [PATCH v5 07/18] thermal/hwmon: Do not set no_hwmon before calling
 thermal_add_hwmon_sysfs()
Date: Fri, 03 Mar 2023 16:48:38 +0100
Message-ID: <1943849.usQuhbGJ8B@diego>
In-Reply-To: <20230301201446.3713334-8-daniel.lezcano@linaro.org>
References:  <20230301201446.3713334-1-daniel.lezcano@linaro.org>
 <20230301201446.3713334-8-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_074846_209753_E7C3E0D6 
X-CRM114-Status: GOOD (  10.14  )
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

Am Mittwoch, 1. M=E4rz 2023, 21:14:35 CET schrieb Daniel Lezcano:
> The thermal->tzp->no_hwmon parameter is only used when calling
> thermal_zone_device_register().
> =

> Setting it to 'false' before calling thermal_add_hwmon_sysfs() has no
> effect.
> =

> Remove the call and again prevent the drivers to access the thermal
> internals.
> =

> Reviewed-by: Niklas S=F6derlund <niklas.soderlund+renesas@ragnatech.se> #=
R-Car
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Acked-by: Florian Fainelli <f.fainelli@gmail.com> #Broadcom

Acked-by: Heiko Stuebner <heiko@sntech.de> #rockchip



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
