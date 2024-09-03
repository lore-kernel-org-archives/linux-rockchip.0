Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9587DCD37B1
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 22:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MsyHGDi1oROU9g8HWGuA1k0mrYVybC5jgqyayntImJQ=; b=QvPvYW/1mQ7wEE
	QJXrVa3Mql1G3/dAnWIPbnWnPRHkb3zVGCPmRvLiun5JNSPxgq+ygvV117GIz9EEeuqHqXzuEWoPH
	dDFpri93cmfq6DowLVTVUvG+12JDN0WpiPFGtzutXfeobFiDX4f5/U6vXi9wsJNDedWwKu/7D/LX5
	tw8i3VnH99XDc8sTIjoTK07bY9389SOahLqUqQN5VHv4oe6rkfp4SIpfWN7x9564BskmCiejj6pqq
	V6EbJt8jrMzJ3qNhxYfe5NgCzvnnLF/kT0519DHTU9hZATnAcnDf0+ghtiZBycV0PZwCuBWz51zXc
	7lEILPpiX00bMXtYpGYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbag-000000024jp-3zL5;
	Tue, 03 Sep 2024 22:01:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slbaf-000000024jO-0byE;
	Tue, 03 Sep 2024 22:01:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=cP5gkG4poHNhOgTPHW8pS6NlcCd5HhlJQScKycx9I04=; b=ynWZOEXXuI/cTZMXQbpQBTxQS1
	N+U2v78bHi+x6+pUM7YSUO+M0UxJxsIw4lNo8gB8cJABkeFbIbSRa5AYxYjEcOXoQ0qApY+NqZHw1
	yczKvbt612cG2P0OfsvSB9ZGB9XyVoqmqhXtLCuhwF9ygTL7gCPKV7sUggXrDyW6gDNbCTX9IUptC
	GJmRlAoBMs700glxYHix/bxX9oajQKXyPfNOU4QZWIrHmPuuMZwiAcqgvrU+7Xqm+aZaoCEOD390u
	ZPY8jIDdfL71mpS+HkhKUha2uCqVNtgqEQe3w5D3pEgLA7i41hRMn4WmXAifuyUV3F9b5Ww7wt5fs
	UH/Wwpzg==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slbZz-000365-3r; Wed, 04 Sep 2024 00:00:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Tim Lunn <tim@feathertop.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Airlie <airlied@gmail.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Guenter Roeck <linux@roeck-us.net>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux-serial@vger.kernel.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-spi@vger.kernel.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-rockchip@lists.infradead.org,
	Alexey Charkov <alchark@gmail.com>,
	Liang Chen <cl@rock-chips.com>,
	Ondrej Jirman <megi@xff.cz>,
	Jamie Iles <jamie@jamieiles.com>,
	kernel@collabora.com,
	Elon Zhang <zhangzj@rock-chips.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jiri Slaby <jirislaby@kernel.org>,
	Andy Yan <andyshrk@163.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v4 0/9] Add device tree for ArmSoM Sige 5 board
Date: Wed,  4 Sep 2024 00:00:46 +0200
Message-ID: <172540084163.2565171.11096510350978641735.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240903152308.13565-1-detlev.casanova@collabora.com>
References: <20240903152308.13565-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_150133_189687_8D2F2036 
X-CRM114-Status: GOOD (  13.50  )
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

[2/9] dt-bindings: arm: rockchip: Add rk3576 compatible string to pmu.yaml
      commit: 59420d8ad7809827524824a3891d6a081e735449

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
