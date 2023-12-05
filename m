Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17C13C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 01:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ByppI7zZXFXzV8H1ZQ9t7g9Vx+lZzjAr4BQ7rsdfmsM=; b=C05ObsB9krHlQz
	28Cw1GcXoM0W6ibxO6mNKwPY7Gfh+4UQKn53wqJD0DnyikO30TDVZGr6nU5VL40rqhnvJf8Y93p53
	qPFp5FBfX/UDo5tvwsBuFmeR/WIcLGkSThY9zPVlJD9w5n4hQ2G7O7nwqCzrgTjabkn4973IwRjpY
	OTJAQD/u1ig50ckSMPYUpbBiQP9wQ+Rr9cg4EZm5fnj/sYAnV/q0/yYfCo+P4fCScwAU3+5VAghcR
	ifaLKwIFX4fpVq7aKKbSjlaYpWytLfjbmagjGsPk/8WSQmbpTNFewhPJPWupd73ayJSodsEvU1MXi
	RIHK40bSef41fabMS0aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAJvI-005vzq-1e;
	Tue, 05 Dec 2023 01:08:28 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAJvE-005vz6-26;
	Tue, 05 Dec 2023 01:08:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id D3A4DB811AF;
	Tue,  5 Dec 2023 01:08:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07912C433C8;
	Tue,  5 Dec 2023 01:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701738502;
	bh=ji6tLylEF6Fc27d4abamjU6StrnpLeztKO6gpP4JGIc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CYmtTJ4Efn43kisMcP71YoDOJ6Bxf1gQoIoVv44GHf7XI3FTQ58nyW5MuLDcRz1TX
	 OK2k7v8hfpq0rrtGUx8GL+g+vmoOT7ekCLY72JtwD26A0Vb7ckIXPmCAzTWlqc3dEC
	 Y+bQf6GJ358F6PzHKaKOrtjxieHlT0Mnt1uHVfek1h9DmW1ZEpFDk6COSg7vHMbjv5
	 h2YqTmHjNaOl0edFXV+CDea+X3hSH14R1ecjWCVtsT6Sw2qcSZE1oGHPLkLPxD8Nno
	 Y/H5zr3aBMjn/yhEHUji6cIJ0mTvgLWs/HBscRc+qG+A+6Y7Znc0MX3OW7zdBFotpZ
	 syeoXVek4H72g==
Date: Tue, 5 Dec 2023 02:08:16 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Wolfram Sang <wsa@kernel.org>, Tim Lunn <tim@feathertop.org>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>, Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-i2c@vger.kernel.org
Subject: Re: [PATCH v3 3/8] i2c: rk3x: Adjust mask/value offset for i2c2 on
 rv1126
Message-ID: <20231205010816.bza72xirj2xbufzu@zenone.zhora.eu>
References: <20231203124004.2676174-1-tim@feathertop.org>
 <4413905.22IY78Rhhi@diego>
 <20231203215530.mewjd7n7ltaeed3w@zenone.zhora.eu>
 <4850448.MsWZr2WtbB@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4850448.MsWZr2WtbB@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_170824_856327_A962619C 
X-CRM114-Status: GOOD (  17.86  )
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

Hi Heiko,

On Mon, Dec 04, 2023 at 12:36:43PM +0100, Heiko St=FCbner wrote:
> Am Sonntag, 3. Dezember 2023, 22:55:30 CET schrieb Andi Shyti:
> > On Sun, Dec 03, 2023 at 08:48:43PM +0100, Heiko St=FCbner wrote:
> > > Am Sonntag, 3. Dezember 2023, 20:06:20 CET schrieb Andi Shyti:
> > > > On Sun, Dec 03, 2023 at 11:39:59PM +1100, Tim Lunn wrote:
> > > > > Rockchip RV1126 is using old style i2c controller, the i2c2
> > > > > bus uses a non-sequential offset in the grf register for the
> > > > > mask/value bits for this bus.
> > > > > =

> > > > > This patch fixes i2c2 bus on rv1126 SoCs.
> > > > > =

> > > > > Signed-off-by: Tim Lunn <tim@feathertop.org>
> > > > > Acked-by: Heiko Stuebner <heiko@sntech.de>
> > > > =

> > > > Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
> > > =

> > > you're listed as the maintainer for the i2c busses,
> > > are you going to pick this one patch yourself?
> > > Or do you expect a different handling?
> > > =

> > > I.e. it doesn't really tie into the dts patches and everything will c=
ome
> > > together nicely in linux-next and during the next merge-window.
> > =

> > Wolfram are you going to take this?
> =

> I was going by get_maintainer.pl showing
> Andi Shyti <andi.shyti@kernel.org> (maintainer:I2C SUBSYSTEM HOST DRIVERS)
> =

> hence the question :-)

Ack, patch 3 we will take it through i2c.

Thanks,
Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
