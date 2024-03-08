Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFE53C54E4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 09:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3QKotNy1c8GGpIDsHKQPMJebHRl2m1YXAqtR2dxFBo=; b=qeX2E3u6zlxujx
	xXLZNcSIj3Xkol/R+Ptv29xo5t/evCfr7wFG8CyFIL1+oPQMfx5PJJ3DQoJlaGJ2ss9qoobbgKYYB
	iTGeAL6GJu4E0LdP7x2E/rtTJeS+AZ/n1gs8be4h6rOp5rPZUvRKSoNDs3VIJA+sGrExV+6qKKgqE
	JNbGd2PD0PkGxdiEAtT09t+Y8cx0g/xXcML4uQEqv82/ekXGyLy17nvVwNcnra3vDN6Bw6oBtJZuD
	EODRgF0eeTYyNBd1tTpBcGH58ifkrT+yOaaNopNRrfhWf9bCZHVTplLMvQ5Os7A+bg2move8M8pwx
	u61AnARoZGnekkYHr+Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWY9-00000008Zi6-1MAL;
	Fri, 08 Mar 2024 09:29:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWY5-00000008ZgQ-05S0;
	Fri, 08 Mar 2024 09:29:54 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1riWXu-0006Te-Rf; Fri, 08 Mar 2024 10:29:42 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Iskander Amara <iskander.amara@theobroma-systems.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 vahe.grigoryan@theobroma-systems.com,
 angelogioacchino.delregno@collabora.com, dsimic@manjaro.org,
 alexander.stein@ew.tq-group.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: enable internal pull-up for Q7_THRM# on
 RK3399 Puma
Date: Fri, 08 Mar 2024 10:29:41 +0100
Message-ID: <24965019.EfDdHjke4D@diego>
In-Reply-To: <ffc940bf-b9df-4731-a34d-f725a6d6d7f1@theobroma-systems.com>
References: <20240308085243.69903-1-iskander.amara@theobroma-systems.com>
 <ffc940bf-b9df-4731-a34d-f725a6d6d7f1@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_012953_109632_4D196BD8 
X-CRM114-Status: GOOD (  15.95  )
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

Am Freitag, 8. M=E4rz 2024, 10:25:43 CET schrieb Quentin Schulz:
> Hi Iskander,
> =

> On 3/8/24 09:52, Iskander Amara wrote:
> > Q7_THRM# pin is connected to a diode on the module which is used
> > as a level shifter, and the pin have a pull-down enabled by
> > default. We need to configure it to internal pull-up, other-
> > wise whenever the pin is configured as INPUT and we try to
> > control it externally the value will always remain zero.
> > =

> > Signed-off-by: Iskander Amara <iskander.amara@theobroma-systems.com>
> =

> For the whole series:
> =

> Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> =

> @Heiko I think this may match the criteria for stable backports?

at least patch1 does ... it definitly should have a Fixes tag though.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
