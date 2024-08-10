Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC02DC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Aug 2024 09:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZuDdbmPn4Mb48Bxngi55AFTHbP0soZXli5mNJGMFKU=; b=GVtNJ4BJU+ArEV
	lPL+zkcgAvA1M8fWcb38bzdCRoaKy6E/aLVofgjJuVISybQO4mA///5PmZG2JFiM+yYCmTA5EL5sF
	ozGg4jVa9egXnixnye51tfD9aC+lek8yJsJ0assVEdobBzzwcXgT5psRgq08y88YBailJ7Qmg40Qm
	t4S5cZmmJ1zrf+yR0pemRbCxPhkprqg/q7F8ZiRr4w9yz9I5zTWJAH5GYvZERWTPXfuIciFa0tfat
	E2LUqjwUG50AZU1nHEKPMjkGRA2gmTp+mhup6usthiPmx1Br+FisW9BzP9jcsktPEQ9nfhE92lQfa
	59lLmXiipUzOqoJHt86g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sciZW-0000000Dv2w-2PGl;
	Sat, 10 Aug 2024 09:39:38 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sciYv-0000000Duqj-1txF;
	Sat, 10 Aug 2024 09:39:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1D719CE1732;
	Sat, 10 Aug 2024 09:38:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7004C32781;
	Sat, 10 Aug 2024 09:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723282738;
	bh=yGihDf4UPvnVbeBFvypXekjA1yNeJQAtpvjbIlX4CqY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=JQ8QQzMgM0Uvlfnfy3IDHI0GO+THTPSoCUsfXfJucyG/0X/0em3nRX+L9KNsXXZ9y
	 8wnRm4nDZzapTf67U24uTTXgedsk8EzUl+EZ+ApduQDyICVmTBxto13YZqc0/Dt9gv
	 OsN+fut7B13hM9gxcL0Pa6UjZa8rzbeZF9EOM2hrBIkXoh8j22QINgZcdoFDoXdG6C
	 XiUDJ0m140PfV33fX6virJsn1k8b3xaz2qQcLgn+vJ8gCNSu3gtXPm/0OrGarAwuOJ
	 WNAXfnpNNH6FAcPRD5L0xI/CFHpCAKocMg0ejq3QGJQiDFxurtE4/RKddRjLUIDPhq
	 HsS3LhS/n23pA==
Date: Sat, 10 Aug 2024 10:38:42 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>, Lee Jones <lee@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, Daniel
 Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>,
 Chris Morgan <macromorgan@hotmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Tim Lunn <tim@feathertop.org>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Andy Yan <andyshrk@163.com>, Jagan Teki <jagan@edgeble.ai>, Dragan Simic
 <dsimic@manjaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shresth Prasad <shresthprasad7@gmail.com>, Ondrej Jirman <megi@xff.cz>,
 Weizhao Ouyang <weizhao.ouyang@arm.com>, Alexey Charkov
 <alchark@gmail.com>, Jimmy Hon <honyuenkwun@gmail.com>, Finley Xiao
 <finley.xiao@rock-chips.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-serial@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH 04/10] dt-bindings: iio: adc: Add rockchip,rk3576-saradc
 string
Message-ID: <20240810103842.19a60a22@jic23-huawei>
In-Reply-To: <66118cb8-595a-4149-84c9-0105a2949151@kernel.org>
References: <20240802214612.434179-1-detlev.casanova@collabora.com>
	<20240802214612.434179-5-detlev.casanova@collabora.com>
	<66118cb8-595a-4149-84c9-0105a2949151@kernel.org>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240810_023901_703796_4FCC0D10 
X-CRM114-Status: GOOD (  12.11  )
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

On Sun, 4 Aug 2024 11:47:44 +0200
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 02/08/2024 23:45, Detlev Casanova wrote:
> > Add rockchip,rk3576-saradc compatible string.
> > The saradc on RK3576 is compatible with the one on RK3588, so they are
> > used together in an arm of the oneOf.
> >   
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 
> 

Applied to the togreg branch of iio.git and pushed out as testing initially
because otherstuff on that branch needs some build test before I make
a mess of linux-next.

Thanks,

Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
