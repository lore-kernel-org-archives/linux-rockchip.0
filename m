Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFC83C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 11:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LmigNHkUiKs+9EQ/gPnToeth097j1FfGLoz8hEQliJs=; b=q5tEnzN+Gh9byA
	hqyGm8EtlsyMBleJ3Hj1+f/EcpJ3jKnabGptpMFc2pCTcv2nk4euhTGE7EA6DwPUa4WT2ygOq8jCJ
	mZuLat4zQl+qL3vEHA6Jj6OS5Qnk3VxAxP7pUNacXQZitJg69Aiyef3R04BMfe5TDwoiiSXDqSNCC
	ESSOhfsPKmhHle3kIitLT9BGXdhYd4lCyNKTucYdMsvpmKVEp5DYSv81LpitE+50pYhTQVMe4T0vM
	ZwcYENGhAsb/II3ldx08pTQKiT89bbZJGrv1EKg8IZKreCTGjv8R5Rw4JpsTKM1Ghyx41Dxs/0qQs
	1KVoofU3g/UrSfVs+P/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA7Fv-003epI-27;
	Mon, 04 Dec 2023 11:36:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA7Fo-003eoF-2s;
	Mon, 04 Dec 2023 11:36:54 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rA7Fk-0004Ac-MV; Mon, 04 Dec 2023 12:36:44 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Wolfram Sang <wsa@kernel.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-i2c@vger.kernel.org
Subject: Re: [PATCH v3 3/8] i2c: rk3x: Adjust mask/value offset for i2c2 on rv1126
Date: Mon, 04 Dec 2023 12:36:43 +0100
Message-ID: <4850448.MsWZr2WtbB@diego>
In-Reply-To: <20231203215530.mewjd7n7ltaeed3w@zenone.zhora.eu>
References: <20231203124004.2676174-1-tim@feathertop.org> <4413905.22IY78Rhhi@diego>
 <20231203215530.mewjd7n7ltaeed3w@zenone.zhora.eu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_033648_954580_3563850B 
X-CRM114-Status: GOOD (  18.92  )
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

Am Sonntag, 3. Dezember 2023, 22:55:30 CET schrieb Andi Shyti:
> Hi,
> =

> On Sun, Dec 03, 2023 at 08:48:43PM +0100, Heiko St=FCbner wrote:
> > Hi Andi,
> > =

> > Am Sonntag, 3. Dezember 2023, 20:06:20 CET schrieb Andi Shyti:
> > > Hi Tim,
> > > =

> > > On Sun, Dec 03, 2023 at 11:39:59PM +1100, Tim Lunn wrote:
> > > > Rockchip RV1126 is using old style i2c controller, the i2c2
> > > > bus uses a non-sequential offset in the grf register for the
> > > > mask/value bits for this bus.
> > > > =

> > > > This patch fixes i2c2 bus on rv1126 SoCs.
> > > > =

> > > > Signed-off-by: Tim Lunn <tim@feathertop.org>
> > > > Acked-by: Heiko Stuebner <heiko@sntech.de>
> > > =

> > > Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
> > =

> > you're listed as the maintainer for the i2c busses,
> > are you going to pick this one patch yourself?
> > Or do you expect a different handling?
> > =

> > I.e. it doesn't really tie into the dts patches and everything will come
> > together nicely in linux-next and during the next merge-window.
> =

> Wolfram are you going to take this?

I was going by get_maintainer.pl showing
Andi Shyti <andi.shyti@kernel.org> (maintainer:I2C SUBSYSTEM HOST DRIVERS)

hence the question :-)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
