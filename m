Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BA1DC5472C
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Aug 2024 07:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GKAwolSZzrFh2nvP5JGeJO/vWFeqw3e5wz4R2ay+HlU=; b=tia+NEuWLwB6N2
	dLuCvWpjuRHfytRZ3meTPqtG5nezq2Bc8swPyGJcrieEEKknS0JPqZyvjeh+v2KO3rl4NUHqB/KLr
	QrcBImEj/KEea9p4KS21g60q1m3pt4NJRoX77FXaFvnZsqVMwJrgLmyTYUPtPEhU92pKnfCVtm3Id
	WP1hXLEgQ7tf50YvUsYAhAKZ2LnhiOQ57ELKnirNdywr3yWtzm9/Y87HUBr9h6SjX98YHLb+D+X4u
	LCvhnBGIfg9bv28/LAUJWGQh28nZpxR31YvZahGP7JAbYsDa+27vnPaeIKm4bUwUXF0zBBHcZSY1R
	JU0LfHFLORTD+BABY/xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shlYb-00000001lIq-2tuQ;
	Sat, 24 Aug 2024 07:51:33 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shlYZ-00000001lI7-1ySH;
	Sat, 24 Aug 2024 07:51:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D447EA41DF6;
	Sat, 24 Aug 2024 07:51:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 146CBC32781;
	Sat, 24 Aug 2024 07:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724485890;
	bh=K+Iyolpoe01eXcw+Ed1bQ1LMT52uPuNW77oqpgcVIEc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=blS2xJTSqpJ4riwJO+9+hBqZJaHOVdlFxCsVdPECFsXx814y0vmxZg+bQcCEcJJpH
	 9J5r6PucoIYiTVCJv6jHQcxt14cR47Wd3f7DluNSu5Pm5rxofW9FsVw5QdvTN/QaGs
	 /3gZ6KEJQ60N3THpT6LAJU0U55Yh32NPmG93VIT6IFKGY7FWsUeplgK8u/F3/y04AK
	 EVSWZAMHSxcCZxolzhbV6czZGJkVjPZCdsaYNstNtjS8yoa5FiHTOBER1a429qfRgP
	 OtfyFMBkq8Y9nXWXy2RAx2acUq3+VK6zOqyYoYJWHsoCHmZHJpENBlVHlIVtBGOb4h
	 4G4PNHdKBLz0w==
Date: Sat, 24 Aug 2024 09:51:08 +0200
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
Subject: Re: [PATCH v2 08/12] dt-bindings: gpu: Add rockchip,rk3576-mali
 compatible
Message-ID: <tnj5oxrnv2r2d6ztlqd3gdsxkjislqgwpj7f2x7b2uj4qp5kmg@cuc4tda7pzpr>
References: <20240823150057.56141-1-detlev.casanova@collabora.com>
 <20240823150057.56141-9-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823150057.56141-9-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_005131_594911_C8566121 
X-CRM114-Status: GOOD (  10.18  )
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

On Fri, Aug 23, 2024 at 10:52:35AM -0400, Detlev Casanova wrote:
> Add the rockchip,rk3576-mali in arm,mali-bifrost.yaml

This we see from the diff. And from commit subject. You have here plenty
of space to explain shortly the hardware, e.g. it's new and not
compatible with existing.

> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
