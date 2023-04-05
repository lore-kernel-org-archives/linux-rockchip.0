Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B075C77B6C
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 21:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0yrSJuGnBRAzrkeuRFqUKwEX5ZMYXaJjeHPdH7IF/8=; b=LfBdVKr9/Nd2k2
	utlhvcUicJoGavJFJ4QBrvK90jsBtfgvzzjC6j9zYqvU4VLJf7EuvCXgCsSnFXkRY8nxIfFxxhEGH
	MJ+FOScXfqg43dDS3RrHnwdbyxg4M6IeOHwhSX5xOdnWrAd9AQJyY+BTq+wXq/jmlyXBlCLczzWr7
	b0Czh3zFooRUYjBVqEUWaDA5QIu3NIO59IqClXxK50I6n6kw24BM/HJ1swFzdw4C+josVC87Y+MI6
	cPuA0KeNMBkoI1KdX2ZyXs29x1pVKFjZfd/BNso1a+rkx9zYO+zxpYPHUJXYZ8X83Z5QaL8B7LDTP
	qxNcCvGIA6BvsEmflY+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkAmq-005k7F-16;
	Wed, 05 Apr 2023 21:35:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkAmm-005k5O-02;
	Wed, 05 Apr 2023 21:35:21 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pkAmX-0001hG-Ps; Wed, 05 Apr 2023 23:35:05 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/2] Add PWM fan support to Rock 5B board
Date: Wed, 05 Apr 2023 23:35:04 +0200
Message-ID: <840877554.0ifERbkFSE@diego>
In-Reply-To: <1a914522-8780-febd-7224-121b1f1fc2ba@roeck-us.net>
References:  <20230404173807.490520-1-cristian.ciocaltea@collabora.com>
 <168071663557.3186456.17606522894011578076.b4-ty@sntech.de>
 <1a914522-8780-febd-7224-121b1f1fc2ba@roeck-us.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_143520_048982_43E581D1 
X-CRM114-Status: GOOD (  19.06  )
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

Am Mittwoch, 5. April 2023, 21:04:04 CEST schrieb Guenter Roeck:
> On 4/5/23 10:45, Heiko Stuebner wrote:
> > On Tue, 4 Apr 2023 20:38:05 +0300, Cristian Ciocaltea wrote:
> >> This patch series enables support for the PWM controlled heat sink fan
> >> on the Rock 5B SBC and, additionally, converts the hwmon PWM fan bindings
> >> to DT schema format.
> >>
> >> Changes in v2:
> >>   - Updated PATCH 1/2 according to Rob's review
> >>   - Added Reviewed-by from Christopher to PATCH 2/2
> >>   - v1: https://lore.kernel.org/lkml/20230403105052.426135-1-cristian.ciocaltea@collabora.com/
> >>
> >> [...]
> > 
> > Applied, thanks!
> > 
> 
> Both patches or only the second one ?

only the second one of course. According to earlier talks the dts patch
does already follow the text binding, so the yaml conversion is actually
not a requirement for it.

So I picked the dts patch let the binding sort itself when people have
time for it :-) .


Looking at the mail b4 created, I guessed this would also be visible
with the subject saying (subset) and the listed commits only showing

[2/2] arm64: dts: rockchip: rk3588-rock-5b: Add pwm-fan
      commit: f36bb17653e4b9e26bbdb1224027d20614e77636


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
