Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7B5BC5B54A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BN92rFhWRkGlFNFr/TWx30Cco2qEGnbvpmCXVMzFohs=; b=LjR2092UT8n4xu
	AAVPr0Nol2p5WY2HnvHmqv1HiGtrh/LNGP1NRiiE3FCP0SK7sPs7gVrYI11X4xdfMDt1NHAkvy7rF
	cqtIBJfp0DywuX6zdmyxKbmO0Y+UEMJyWvIdDCz0nKBwHcuYK//iDVFi74zZBT8H1BbjZm/g3GB7h
	Ys/hL5e3k3lAgf8nhL6YloE2RvNs+HfpczCNnJ20a3i1lVakY6Nlm3ya/gEb0LO0SUDl90kHAKuLX
	m95f07CGMShY61AdBLvKsy8sDyW/MhtMhmrJdwENo0n610NqRamwCYBWx9KqVm7fkdAsXV/xrjaFh
	YrAwyTxv6Z0HBT9cN7vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKp1-0000000G1eq-12tS;
	Wed, 28 Aug 2024 15:42:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKNi-0000000Fv5j-1SME;
	Wed, 28 Aug 2024 15:14:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fmPhsEB6ZpuNYb7DYotRMghZKcme6b8yJFJs6bD4xMA=; b=PvkpVozlfJxWCFiUvr3fCFIDqn
	yl5GRP0kxn+TX4rBKF+ofKGaaWqZMiZ7EMkS51dWdQZ9Qku81c8ymhPUp6vSvQ4SaOPJ4S6FNCfY6
	5iBRjVCV2DHEDymXt7/is1/lXHx0jOvisMsOjciKR3HGGvbECe/2Irhl5A9jGSaNEmPGNxYXUtEoS
	VCuB5hw0N0UfNdH9A61bkX5FaCuOROnk5J7f/WSFm0uKHW4faBkvLGSgO0906B5mdnhUFzW+7fy4m
	aypaWQ4oJSMFlw1qBg+LUQW1CZ0WrKsmC2M7USyTcj/LIxO813NSmlcV6T2bPTe4W1SkqVYxJ1Zee
	QfOxrLCA==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjKNG-00065f-EY; Wed, 28 Aug 2024 17:14:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Junhao Xie <bigfoot@classfun.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [v2,3/3] arm64: dts: rockchip: add dts for LCKFB Taishan Pi RK3566
Date: Wed, 28 Aug 2024 17:14:11 +0200
Message-ID: <172485421376.1511809.16668781813371034474.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240826110300.735350-1-bigfoot@classfun.cn>
References: <20240826110300.735350-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_081446_404586_E80580AA 
X-CRM114-Status: GOOD (  10.74  )
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

On Mon, 26 Aug 2024 19:02:26 +0800, Junhao Xie wrote:
> Add dts for LCKFB Taishan Pi.
> Working IO:
> * UART
> * RGB LED
> * AP6212 WiFi
> * AP6212 Bluetooth
> * SD Card
> * eMMC
> * HDMI
> * USB Type-C
> * USB Type-A
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add dts for LCKFB Taishan Pi RK3566
      commit: 251e5ade9ba43f44f60713310f89e0f4495a2088


It is customary to re-send the whole series when doing a v2.
Replacing only single patches confuses both people and tooling.

But no worries for this time, I found and picked the correct version
I hope ;-) .

I did sort some more properties and nodes [0], so maybe take a look to
make sure I did not break anything.


[0] There are sorting guidelines in
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dts-coding-style.rst


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
