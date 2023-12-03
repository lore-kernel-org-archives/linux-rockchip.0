Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D24B0C07E97
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 21:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8HkyKAD3nvUsdvPKr1AdZYfT9QzCJYVCCErAadZnHXE=; b=OydXLq+nJkruEz
	aypGDWJfPpBjMz2nYxZaIbDzhWlUv0zE3tlGa7/LtTwKuYVl7Omk3fFk0OsH3F9HERRwBqHFdX9Co
	tmGv9whtgINeNGwLcPs8C9ugf885K286sTsy1UH0Tz2t2f+aU14Ldt/Q8Qkz+G7ieP5/doUkRSxZF
	GaT1WUNiNHhu2DGe7xCmuXp119nA3EkOUzP96G1nubGRFRUdTTHjdo6l2Ukbdr1QgkTR5lxx8v76p
	ao3JtUnz3KlSwxWgdyn72gm5yoSGgbicHatr9X0hXPdw+A2CScPRTUA7hcWn5cwMfKXiKcErAk5bT
	eLLxGKmOcWbMLWXL4kjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9uRD-002dYu-19;
	Sun, 03 Dec 2023 21:55:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9uR9-002dY1-1I;
	Sun, 03 Dec 2023 21:55:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9F9E160E71;
	Sun,  3 Dec 2023 21:55:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 611FFC433C8;
	Sun,  3 Dec 2023 21:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701640535;
	bh=WchhBTvlEN2N1e/fVEDF7SdSvjX3scpDE/VS91fwTgs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JsZ33xixb4mkyWa9csySkAA/NN1VxUrOpF9w8bJ63th5o0H6fmdEOHlxQ+xVw0sV8
	 LKkQjTrtzjbRtoRsafW8p9xyR09+q7+sqShX5rEaR2ukz1NKWol3uVWM3JWtRxGnea
	 nwvCbKzGNEH70eL1Bz4gyRYnyUEZOjhAyrWApha5dfKcKAgl9TCFaa5oZ2wd68fDDk
	 Y9wrG6Q4h1GeRdleyMulasERR7jn7tF5u8TmTJ+dOp1LfzrqN+Vm285GMlSP3Uoo7D
	 YSBwEx9rpJF8Y/pvzVo6O5NVE2B3RRiAORvE+CENiwVpadNYIQdUUcqAoftST/WwE8
	 TLWIPbNxJV3hg==
Date: Sun, 3 Dec 2023 22:55:30 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	Wolfram Sang <wsa@kernel.org>
Cc: Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-i2c@vger.kernel.org
Subject: Re: [PATCH v3 3/8] i2c: rk3x: Adjust mask/value offset for i2c2 on
 rv1126
Message-ID: <20231203215530.mewjd7n7ltaeed3w@zenone.zhora.eu>
References: <20231203124004.2676174-1-tim@feathertop.org>
 <20231203124004.2676174-4-tim@feathertop.org>
 <20231203190620.26of3xrcoosnpicb@zenone.zhora.eu>
 <4413905.22IY78Rhhi@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4413905.22IY78Rhhi@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_135539_505382_96019E4A 
X-CRM114-Status: GOOD (  14.83  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Sun, Dec 03, 2023 at 08:48:43PM +0100, Heiko St=FCbner wrote:
> Hi Andi,
> =

> Am Sonntag, 3. Dezember 2023, 20:06:20 CET schrieb Andi Shyti:
> > Hi Tim,
> > =

> > On Sun, Dec 03, 2023 at 11:39:59PM +1100, Tim Lunn wrote:
> > > Rockchip RV1126 is using old style i2c controller, the i2c2
> > > bus uses a non-sequential offset in the grf register for the
> > > mask/value bits for this bus.
> > > =

> > > This patch fixes i2c2 bus on rv1126 SoCs.
> > > =

> > > Signed-off-by: Tim Lunn <tim@feathertop.org>
> > > Acked-by: Heiko Stuebner <heiko@sntech.de>
> > =

> > Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
> =

> you're listed as the maintainer for the i2c busses,
> are you going to pick this one patch yourself?
> Or do you expect a different handling?
> =

> I.e. it doesn't really tie into the dts patches and everything will come
> together nicely in linux-next and during the next merge-window.

Wolfram are you going to take this?

Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
