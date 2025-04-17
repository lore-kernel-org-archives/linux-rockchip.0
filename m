Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DA3EC369B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xh6kR4QBiSIxTYbeSFLa98koSQZwAKUY4orp+iypo/c=; b=0boWfkE314nsi8
	djITbQ19MrITyHNuCzy+NcA0gyVrba9zHzOd0QJCEV448L4zWxRkSsvIzWhM9PHso0lq8sKJgWxsT
	K88vIt0oi9aGcdoeeY6PYB7YC384s+4glpkJTDpFwLtiiYMDw0BQJjXSEba37osiY8LiWwW1B5pUd
	ApRVL6tja8nm9bRis9JECtiYJhPcypyk1k3/5l4VsF9nJnjQT2JG952ff/bjLRsUs5EVJzhtbchkT
	LeLw+2KVjY2JOj+kZLHhOquyRW6cH+4gJpBLi1W1eTD7DuPyjdTRDX2pxhw23r/e1zf6Ld6+GgT/t
	i1AwL4TVG8VuMJF7jV2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5RNa-0000000DYJ6-1Egb;
	Thu, 17 Apr 2025 15:42:18 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5QVy-0000000DNAJ-1qtY;
	Thu, 17 Apr 2025 14:46:55 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 260612053D;
	Thu, 17 Apr 2025 16:46:53 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yks9lixajrJd; Thu, 17 Apr 2025 16:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1744901210; bh=H70yVHYWvJ5Z8+txqrRrnuk6aHTbOYbR3Ii5eVeOgvM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=luH7tDRQhPOJIbn/CeP7p11nW39ynuzSqQO3wQqRbdFcN6g6xV8Y1tEEfAE2qxG5x
	 aV0WQflcd7f4fnhm84pQSUW4Ls4kUBc/lq20rjm7Aoy4Jh7/UmjzwoPbGCC43bGrbC
	 R/cyqUNjfzlTUR5zlVoPkB/l+QGtImggJMOxiP/uxozzBFo3pT6Or+p/aIY9hE5YKQ
	 yT4FrLlKTyZrYkxU3Eo3Fs4kF0G9b/mmdDMHS+Yh+1YVA484zRXjwsJ4HDrwsxzFyr
	 KpvCz8k8xX+yjihoTtR/uOF5mBvpNG+2yGOQxMgFGBVRhCdUdiLA87D6+XMltkRaIO
	 LtMEmPytLFcGg==
Date: Thu, 17 Apr 2025 14:46:35 +0000
From: Yao Zi <ziyao@disroot.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add I2C controllers for
 RK3528
Message-ID: <aAEUS7QQbXSvrcEs@pie.lan>
References: <20250417120118.17610-3-ziyao@disroot.org>
 <20250417120118.17610-5-ziyao@disroot.org>
 <ff583eb3-d01d-4850-9f9b-f6b15ddaf137@kernel.org>
 <c6d3e343-7005-48a9-a133-bf39cb6790ee@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c6d3e343-7005-48a9-a133-bf39cb6790ee@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_074654_609639_AA6710E0 
X-CRM114-Status: GOOD (  15.56  )
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

On Thu, Apr 17, 2025 at 04:36:57PM +0200, Krzysztof Kozlowski wrote:
> On 17/04/2025 16:36, Krzysztof Kozlowski wrote:
> > On 17/04/2025 14:01, Yao Zi wrote:
> >> Describe I2C controllers shipped by RK3528 in devicetree. For I2C-2,
> >> I2C-4 and I2C-7 which come with only a set of possible pins, a default
> >> pin configuration is included.
> >>
> >> Signed-off-by: Yao Zi <ziyao@disroot.org>
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 110 +++++++++++++++++++++++
> >>  1 file changed, 110 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> >> index 826f9be0be19..2c9780069af9 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> >> @@ -24,6 +24,14 @@ aliases {
> >>  		gpio2 = &gpio2;
> >>  		gpio3 = &gpio3;
> >>  		gpio4 = &gpio4;
> >> +		i2c0 = &i2c0;
> >> +		i2c1 = &i2c1;
> >> +		i2c2 = &i2c2;
> >> +		i2c3 = &i2c3;
> >> +		i2c4 = &i2c4;
> >> +		i2c5 = &i2c5;
> >> +		i2c6 = &i2c6;
> >> +		i2c7 = &i2c7;
> > Aliases are not properties of the SoC but boards.
> 
> Of course this should be: Bus/interface aliases are not...

Thanks for the explanation. Will move them to the board DT.

> Best regards,
> Krzysztof

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
