Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B3E8CD37B1
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 22:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOSFiJXH+YslhLwPYfoKx4uaQGZh6cBK71jKw2dit5c=; b=xNt64+S6KlzSx5
	HjyKRjE5gxUyQR+AJeAtJxEMGCRHH3mgEso5FK+bpe8sSKlQNVSW8U2n+O3rBquBuYY9ni0afMX0i
	roTluvmchRUXUy8xcaDnQ7GVjkArr68LcM/Wey9FiZt8znBAkAqdiKoybvQppa/N6ln8iUjSfGE2c
	ZLXl5nnnPl2Nq8gbM52B0Bacr1U0d52GIBVfXIzCZm75pRaORM1i1BzTjzSoIBLi0teU40VpNIMkz
	Dsp6Ni/h61tetpoAhxK9rc8Y9WQal/23LmACovQP+qg+c5IYBIkJswnaoOKEs1sV7OyIiHvOAjklQ
	9LeRruLG/3x47qTQm/kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbwU-00000002AJW-3oI0;
	Tue, 03 Sep 2024 22:24:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbjp-000000027CR-2m0G;
	Tue, 03 Sep 2024 22:11:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PmAan6NPVAhVozSYoq921sKeDS6etdaKRx0WGKUNzPg=; b=w+y9IjSJDl3NsTLiQuOYJKEffo
	RLLqIhTKjPF80cWIwGyfcjQX1yDaAPqgMUrXE5fzV7afKReFLBeWf7XhpEyshPQPH6XqWqbpcHLGo
	iynY4oFTmd2qzmsovTZ1CnbYmB0GR8Y8l5QrU70dkuyhYQy2iLlKm9VIKPnXVpPmDood1YGkp8lz3
	JZh6j0lfWw5LZhQy/8BqQLLKUNovMNsyQPzvSwVI93Kse7gj8yKeMTpAHPfmbY5KXjWGSMxqNZK0P
	WEq2rtZTZTgydAJ2HE/vYW4BE02Ynl2aNUkopQSyYydfcfHHdvU1xF0F5UaJ4a9BNaoOsSqR0JQ2Z
	zx+2+0dg==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slbjR-0003Ah-7l; Wed, 04 Sep 2024 00:10:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	linux-i2c@vger.kernel.org,
	Thomas Zimmermann <tzimmermann@suse.de>,
	kernel@collabora.com,
	Jamie Iles <jamie@jamieiles.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Liang Chen <cl@rock-chips.com>,
	linux-spi@vger.kernel.org,
	Andy Yan <andyshrk@163.com>,
	linux-watchdog@vger.kernel.org,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	devicetree@vger.kernel.org,
	Maxime Ripard <mripard@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Guenter Roeck <linux@roeck-us.net>,
	Dragan Simic <dsimic@manjaro.org>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-serial@vger.kernel.org,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Tim Lunn <tim@feathertop.org>,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Andi Shyti <andi.shyti@kernel.org>,
	Elon Zhang <zhangzj@rock-chips.com>,
	Alexey Charkov <alchark@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jiri Slaby <jirislaby@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: (subset) [PATCH v4 0/9] Add device tree for ArmSoM Sige 5 board
Date: Wed,  4 Sep 2024 00:10:33 +0200
Message-ID: <172540141128.2569462.10719274439402034002.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240903152308.13565-1-detlev.casanova@collabora.com>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_151101_749386_B1D688F6 
X-CRM114-Status: GOOD (  13.06  )
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

On Tue, 3 Sep 2024 11:22:30 -0400, Detlev Casanova wrote:
> Add the rk3576-armsom-sige5 device tree as well as its rk3576.dtsi base
> and pinctrl information in rk3576-pinctrl.dtsi.
> 
> The other commits add DT bindings documentation for the devices that
> already work with the current corresponding drivers.
> 
> Note that as is, the rockchip gpio driver needs the gpio nodes
> to be children of the pinctrl node, even though this is deprecated.
> 
> [...]

Applied, thanks!

[5/9] dt-bindings: gpu: Add rockchip,rk3576-mali compatible
      commit: 053d157840870fc56aad8c4d3122690a65b2d462
      drm-misc-next

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
