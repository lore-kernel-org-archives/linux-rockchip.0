Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E8B1C7115C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 21:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYgmm/QOKWymgDj6SxiVr0dZ2gvJvKp6RqAfCmCAZpM=; b=V3Wpn+ZSsme4MY
	GXDEtbruRDAVJv1W9Ya40fu98q7YN/oI+dhyU68p/IxrJje4gj8o2da0A5NprFWJQngU22fJXtePo
	MnbZhcC83bsRLu2wKUZ+PxW4lK3ViTcTjBmoDrVjrVnUEHKyIVewvy5XEtM4UIDZpQL5ZDdlhkV8h
	az54ccgf9z+Ws+d0To23IIOcUdFxyM4winL3u8x0LhAJvge+8ibYpu3MgR1KbE+M3bOG6TC22rYi/
	dUBAeIu3+bxqnRVpvIJwhtmK/hRtPSVveC45JT9amsVdUVgeJdp3fJzjr4nFiB0b+6GyGuPblABsv
	0j9FXb8P1aXoZD+7ysUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSir3-0000000GaHR-0SWq;
	Fri, 20 Jun 2025 21:00:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSion-0000000Ga9y-0rc3;
	Fri, 20 Jun 2025 20:58:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=RmxX3GcEAqirVX2xL3JmZWN/yrXriImaULmWLhDXmS8=; b=ISdXrzz2QewK1kgmY3GyFg++AM
	/6qLB8uUlYUyKOF6vEmVu4PkYV1YU9zFWU6/5+u3ruI2VhbjQ/vvKep6buGqhREZwFnUwn8rHkWNr
	pOEMuAdZXTOe7kwoLzLgXcrDUxvdojBE5aH0cuyjcY/ZWPFELOafQQhBlhaXpBM65ogxfw4VyYVMq
	Q9ADmHPsdKuLYUz0rgw6+BFnP7AAm+HP8QxiVXjiA4ARcUToS5kmBFrsQoJS7tfbikZM1VNQuNcW1
	UkOyJxRLekQrw3O850Ik4Tp8M1UvubhqAbKvS1mC7wHJoA2kP3JFB3gukvY0D4uV827oJy1r8dYnG
	3fumYUYw==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSioS-0005nr-Ra; Fri, 20 Jun 2025 22:58:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Hsun Lai <i@chainsx.cn>
Subject: Re: [RESEND PATCH v5 0/2] Add support for Firefly Station-M3/ROC-RK3588S-PC
Date: Fri, 20 Jun 2025 22:58:06 +0200
Message-ID: <175045307845.1579770.12394851384194838033.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250609113044.8846-1-i@chainsx.cn>
References: <20250609113044.8846-1-i@chainsx.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_135837_240587_BBFA076B 
X-CRM114-Status: GOOD (  12.83  )
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
Cc: andrew@lunn.ch, inindev@gmail.com, Heiko Stuebner <heiko@sntech.de>, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 09 Jun 2025 19:30:42 +0800, Hsun Lai wrote:
> This series add support for Firefly Station-M3/ROC-RK3588S-PC.
> 
> Info of device can be found at:
> https://wiki.t-firefly.com/en/Station-M3/index.html
> 
> Changes in v5:
> - Make led-1 off by default (Chukun Pan, v4)
> - Add color settings for led (Chukun Pan, v4)
> - Remove vcc5v0_usbdcin
> - Put enable/gpio before regulator (Chukun Pan, v4)
> - Remove always-on and boot-on from vcc5v0_host (Chukun Pan, v4)
> - Update the name of vbus_typec (Chukun Pan, v4)
> - Remove always-on and boot-on from vbus5v0_typec (Chukun Pan, v4)
> - Put pinctrl-names before pinctrl-0 (Chukun Pan, v4)
> - Remove usb_con node
> - Remove extra blank lines (Chukun Pan, v4)
> - Add phy-supply for u2phy3_host (Chukun Pan, v4)
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Firefly ROC-RK3588S-PC
      commit: 4734c93b5032a3a28ab2313fd9e2a792204de2fe
[2/2] arm64: dts: rockchip: add DTs for Firefly ROC-RK3588S-PC
      commit: 471f0718c815767c2c7f6ce66880f1acb9515581

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
