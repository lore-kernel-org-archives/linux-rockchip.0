Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35311C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 10:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mcyDAsT0ZqsEj65RV6SPPYIOXT38icJMMsmfs0IT5E=; b=mY8I0ikZvMZL4S
	O8UUZjY8V/Ba2/ry+WE2/0KUi3E99AS/GSF8aF3Y54LvpfELQwql+E64pjynHTcUcb4HU5/31udL4
	C+coMXHWWPvKa4oDHp07J4fk0tmu1wE35iLxRa5w595q2tSOKMGaCtJJcAsLyvXA4HFDJAAy/jF+9
	cs1aC2G4bZQv65JfG03IqR288CqTyDkoyJVLlyna2E4zTg7LZElmcb7UvaHFIWT1D9XEraFnjuRJV
	kvygAmwAXC0L/yevr7XpHItzt+Nba0bK2UERs++C0qdGEiomZ9pxC6P6ziPh7127pZbkPvSgL65P5
	gx4LpsOhz/ha2kNlkmIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpQXl-00000008Px5-29yW;
	Wed, 27 Mar 2024 10:30:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpQXi-00000008PwC-1Oor;
	Wed, 27 Mar 2024 10:30:04 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rpQXg-0005y5-Td; Wed, 27 Mar 2024 11:30:00 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 boris.brezillon@collabora.com, linux-kernel@vger.kernel.org,
 kernel@collabora.com, sebastian.reichel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: quartzpro64: Enable the GPU
Date: Wed, 27 Mar 2024 11:29:59 +0100
Message-ID: <6007945.alqRGMn8q6@diego>
In-Reply-To: <0f3759ee390f245dac447bbee038445ddfecbec0.1711383286.git.dsimic@manjaro.org>
References: <0f3759ee390f245dac447bbee038445ddfecbec0.1711383286.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_033002_533695_C5E9001F 
X-CRM114-Status: GOOD (  13.85  )
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

Hi,

Am Montag, 25. M=E4rz 2024, 17:19:04 CET schrieb Dragan Simic:
> Following the approach used to enable the Mali GPU on the rk3588-evb1, [1]
> do the same for the Pine64 QuartzPro64, which uses nearly identical hardw=
are
> design as the RK3588 EVB1.
> =

> The slight disadvantage is that the regulator coupling logic requires the
> regulators to be always on, which is also noted in the comments.  This is
> obviously something to be improved at some point in the future, but should
> be fine for now, especially because the QuartzPro64 isn't a battery-power=
ed
> board, so low power consumption isn't paramount.
> =

> [1] https://lore.kernel.org/linux-rockchip/20240325153850.189128-5-sebast=
ian.reichel@collabora.com/
> =

> Signed-off-by: Dragan Simic <dsimic@manjaro.org>

as lore.kernel.org and therefore b4 seems to be on vacation today, you
get a very personal "applied" message ;-) .

So, applied for 6.10 after the core rk3588-gpu-series from Sebastian.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
