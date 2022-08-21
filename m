Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1617C00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Aug 2022 09:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNgneIcD5yx/Nw0TAbM1NVLDdx6XCZjwQy0AvkL01i8=; b=Kmk9K2C62p0+6+
	A3M30RiqunScUU4xhwMoVP7DWqbpXyvU/FazMJwqKLpIkEEvwvYsc56eaDN/bsmjkcup1H/3X6qG4
	vGS5mV/ou5bw9ExAs8B+9GDQgM5yGqf6h0dVtg80tV4vzSr0HxirC2rcFVDWlMMeQK9X/e53rI8OO
	BYZYfJVso/ZKEVexzKS5vgj/vBT1orgTe9RfqyD2feMf/Rx3XqI3GVjSajZGBx2w49KEVoL7d5xgs
	RcNEL7MGUFcMQnvcUfvH7WklC+aQQm6hRv/GG0dVOw8bJndQ0AU2bBKHDySuYstb4NZ3KjTwCf2kf
	NSuoilHzIiAhT23dOmlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPgsm-008WJz-Cw; Sun, 21 Aug 2022 09:04:36 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPgsO-008W7V-1m; Sun, 21 Aug 2022 09:04:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1661072650; bh=F4+DSHz7sIes0DO8tesxAnJzd37J/sIyGntlnQLZnwo=;
	h=Date:From:To:Subject:X-My-GPG-KeyId:References:From;
	b=Rk91ccGGF2tF4FCz7XHFy6D0qAEDJAx1YcGKYrCJr9z9TqkaKsoIkEzBfILXfTVFh
	 E8AZQ4cVjcjs1Ew68sAlv2gZ2wa6uuAYubRIs3SV0I+B3wr1yeRONa28HAkPi2A6Ug
	 sxGC8Arl2ndXSjpXKhdEaj0M86T5vseUQ4Cgg/54=
Date: Sun, 21 Aug 2022 11:04:10 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <n@nfraprado.net>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
	martijn@brixit.nl, ayufan@ayufan.eu, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Message-ID: <20220821090410.tj3jgyzjseaqpx3h@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	=?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <n@nfraprado.net>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
	martijn@brixit.nl, ayufan@ayufan.eu, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
 <20220815123004.252014-3-tom@tom-fitzhenry.me.uk>
 <20220818030547.eblbmchutmnn6jih@notapiano>
 <20220821090005.tshf7z2kklaet7ll@core>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220821090005.tshf7z2kklaet7ll@core>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220821_020412_957031_BABECD22 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
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

On Sun, Aug 21, 2022 at 11:00:05AM +0200, megi xff wrote:

[...]

> The actual min/max limits that are enforced by the kernel for the board are set
> on the CPU regulator, which are actually wrongly set in this DT. See:
> 
> https://dl.radxa.com/rockpi4/docs/hw/datasheets/Rockchip%20RK3399-T%20Datasheet%20V1.0-20210818.pdf

The minimums on the regulators also seem out of range in the datasheet, for that matter.

regards,
	o.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
