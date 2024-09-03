Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63E1DCD37B5
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 22:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKKp+yllly3b1SOGn0CoG1hjcJRLnXdpVAxna7BrKo8=; b=0mA2BUjLbZKJ/D
	6HWXs4eNxdU3mN32PCxjbYYcAqufNS66nv7cxWsk0oxamENKUcqta0gwhbLpnUwlTtOScxTt6zz5f
	AVvzX+S4GlTQCEI/sCsR0ddJs+iCtObADzyqFNQvMlB3H7LtZ2idh2WgADew79XOVZHNjR3uXso5+
	CnuOOlXxuQ9x8hMpbeLyFeR/AhHTTO1wJLpGEffk8oBIT9OKBssmxCrBqM+F0+HxhRgycAn1rgH3S
	RLxySWPtMn+T2ZklHwLqTAB+eM9X3QsmOGJBmWuzMFfT7bNdGK9SdYCvTJrusb2h1tzm0Ls7dRW3+
	FcN7TG720EYRNpAMlf7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbzC-00000002Art-1x0j;
	Tue, 03 Sep 2024 22:26:54 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbt9-000000029Sm-1N5I;
	Tue, 03 Sep 2024 22:20:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CEE79A4400D;
	Tue,  3 Sep 2024 22:20:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEE64C4CEC4;
	Tue,  3 Sep 2024 22:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725402037;
	bh=8CrIzbvXoLHq+nV32EseS4c9azbPQK5+QG+wtMsi3Vo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h77gm+0s4Z3/Mhiqmggr4tkyfwkyV0tx4Z0V8LJFBvkyKyd76nUqxVwD3e/ocZvo0
	 QoeXOFNgYjKrLSYiDUpm0HENEsaInAijd6qIHmi1MLpopuORbnhAOw052RWjQ+0VTh
	 eFlvrkutQMPc2eA/WE8NZATT1yqHEhTbMHreoRdIEE3b61l4ch+42lZEfmEF7J4KEe
	 5xUrTxtdsk7S8W4FBaJ9boRAn/8WmbSD96myiDHlNdVx9O+10hDauIVP2Jgp+V6orx
	 lxtzBT/rJRjmrutSDv9HxbNXs5tUf1g9pg5h6rFIEzvs7mhsgEQxWRjYJSvTbwElyB
	 AXfidFvfQOjrA==
Date: Wed, 4 Sep 2024 00:20:33 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Guenter Roeck <linux@roeck-us.net>, Chris Morgan <macromorgan@hotmail.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, Andy Yan <andyshrk@163.com>, 
	Muhammed Efe Cetin <efectn@protonmail.com>, Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>, 
	Ondrej Jirman <megi@xff.cz>, Michael Riesch <michael.riesch@wolfvision.net>, 
	Jimmy Hon <honyuenkwun@gmail.com>, Elon Zhang <zhangzj@rock-chips.com>, 
	Alexey Charkov <alchark@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Liang Chen <cl@rock-chips.com>, Jamie Iles <jamie@jamieiles.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-watchdog@vger.kernel.org, kernel@collabora.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 3/9] dt-bindings: i2c: i2c-rk3x: Add rk3576 compatible
Message-ID: <3crgu77c6mgwqqeuiy6m4pupypjwqpwo56z4ydl3emm35m54vu@y354e3jckogf>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
 <20240903152308.13565-4-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903152308.13565-4-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_152039_478742_45B9639B 
X-CRM114-Status: UNSURE (   9.68  )
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

Hi,

On Tue, Sep 03, 2024 at 11:22:33AM GMT, Detlev Casanova wrote:
> Just like RK356x and RK3588, RK3576 is compatible to the existing
> rk3399 binding.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Heiko Stuebner <heiko@sntech.de>

merged to i2c/i2c-host.

Thanks,
Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
