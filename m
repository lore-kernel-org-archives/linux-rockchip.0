Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 260A3C5472C
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Aug 2024 07:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CyXCUy542NNdI64U81NplSdbEaMTfhi1OcrTXauNylE=; b=A/GQhuF5+G1XcL
	ZNFArUdvea7M6Vb5wXN6YuYYdmIcVkDwB1rS20Ri0t4Ekp1w7Mw/d/2IZagI9ynN3cf0t4b0WoCeK
	IYiibsz4K1f1INX0RABt0wHVu2fSmQ2T/NIQ+vw2k0E4hjv+IRIGX2Ra+kK/RPWDGCBVkcB3JUe8T
	26BrQ4q0ej1fr5o5QbdHxv326M4WinErfvhw7m16IVnm/ZY6sD1jKtxI+ut28dxsyf/wFk+7Bys8P
	AW/8z6VViHKnLiay9wzhXDe0Vzd5H/CDra7bxM2rLkJjnFuYQtFHOr+J3cl5YSxLpwHYDp7K9jl7G
	u0eRGONycKRy6qhYnvsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shlag-00000001lbU-2KTz;
	Sat, 24 Aug 2024 07:53:42 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shlad-00000001lae-1efC;
	Sat, 24 Aug 2024 07:53:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CF875A408DD;
	Sat, 24 Aug 2024 07:53:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40974C32781;
	Sat, 24 Aug 2024 07:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724486018;
	bh=yRF+b26qzZbAF/lj54mqxmxSAmsnvppo3aM396oz6Qs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GC9kHJnz+ylQDLPiCSV9p1V2P5SYmpcIHXMeumKkTQpWR3I4djBw5t6awd8n+lh43
	 BQsxl4+R/IDmczuyWAn5JLsKKK+TxOHyRg359W4wkQFsCV49emeVklAqQBDgfTyUjB
	 /TpsruLYtzV/F0YzMiqKiqkrvciC/tdruR/ISte5xtus0gncKbOPoIh0zUsXnvJwwk
	 yFUa3sBs5H0PZmsMLcN6/IFMrnfYWbL45EIurmvwJZ0iXssWNXototDoBG70bZX38e
	 22Q8zhFWt6s71D5uBzZ34ujfrusS9hXLtwif6chlSGgRQJf/z/oejJqoOrTwvoFQse
	 aVO5Iuslho1Lg==
Date: Sat, 24 Aug 2024 09:53:16 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Andi Shyti <andi.shyti@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Lee Jones <lee@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Guenter Roeck <linux@roeck-us.net>, Chris Morgan <macromorgan@hotmail.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, Chukun Pan <amadeus@jmu.edu.cn>, 
	Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>, 
	Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>, Ondrej Jirman <megi@xff.cz>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Alexey Charkov <alchark@gmail.com>, Elon Zhang <zhangzj@rock-chips.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, Liang Chen <cl@rock-chips.com>, 
	Jisheng Zhang <jszhang@kernel.org>, Jamie Iles <jamie@jamieiles.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org, linux-iio@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 10/12] dt-bindings: spi: Add rockchip,rk3576-spi
 compatible
Message-ID: <r474bbm3nnqwvgb6dumes5opxzw2sb7ck4ehqdhig7ejdabnxw@vgmafb7dayry>
References: <20240823150057.56141-1-detlev.casanova@collabora.com>
 <1995660.usQuhbGJ8B@trenzalore>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1995660.usQuhbGJ8B@trenzalore>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_005339_522096_20DF2E2F 
X-CRM114-Status: UNSURE (   8.90  )
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

On Fri, Aug 23, 2024 at 12:07:10PM -0400, Detlev Casanova wrote:
> It is compatible with the rockchip,rk3066-spi SPI core.

Same comments...

subject: spi: dt-bindings:

Please use subject prefixes matching the subsystem. You can get them for
example with  on the directory
your patch is touching. For bindings, the preferred subjects are
explained here:
https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
