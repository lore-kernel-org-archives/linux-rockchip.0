Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0161C369CB
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 22:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9dXp5LKKGdZbg6gD3dwbCbYraRLoPELLPwBmhAO+H8=; b=L0WDqe4d40Dy5J
	l8/3guCEOaTP8wVBPBJFg17CEHPP1c2AyUxfLc996DFTtTXDoRfI+yvRi+4iXM/l/YgHibxjbKUY0
	ZS75M7WeTG0MDcJku808e+AQT8anhbD8ZTv/1DATapcl5ahW5GFfOjoed/Nb+I8TgSQK9C7GIsXzo
	JhH3hziYVxATS3NABkFPu4+4d8/e7CyTxKsgRaUSLx4gpyyn9PFefKXIoXIs/rFAf6beYSWUF7a/Z
	WpYmQg06yK1hCBV19BgNTNtc2ycS/PciweiU3ux0Xjib8qp00musV7JhcvgFCWwSXR9WS0KTFpCKr
	d99RA/HhhOAFoKiNFuLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8naf-00000002Yto-0irq;
	Sat, 26 Apr 2025 22:01:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8nMA-00000002XND-2Ryw;
	Sat, 26 Apr 2025 21:46:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=dJODNHkVNzSlZjFD+IpMJkmTkkNIUPx/SKc2mpT8lXc=; b=Olke1UOAx4j9BXfRb/lB3z7DVe
	jRanRcKezAxfhM4Tl5EFSTmdSDSAeFPeO7FjAbzpfIQJB8/UMJCaMrMlDqOcPaXD6EOPGyv561XJ5
	YPccqN212uYZMl4B9w78Y+ASsRjvPMOboNG1vZqh3kPt8XQRekExUvU0mhOZYNu445YfxqyGfDbZt
	h0hvcY6lI+/z8r8oLYHEp6sAkrCAfz6FBB3xYIXqUvd8N0Kic5sQnWAIw3/HjRhwmQ5oid0vo8EWz
	AAuS/9sxM27mYt+iOwQ8GL3Z5pYN2YA4CS3khfl4+IQb6Nikf/DIBZbaP1BiENLhmAjGjUITXMGAM
	+KGTALkA==;
Received: from i53875aba.versanet.de ([83.135.90.186] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u8nLq-0001OR-5D; Sat, 26 Apr 2025 23:46:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH 0/4] Add vcc-supply to SPI flash on Pine64 devices + Rock 5B
Date: Sat, 26 Apr 2025 23:46:07 +0200
Message-ID: <174570395444.32969.7984320646555928039.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250425092601.56549-1-didi.debian@cknow.org>
References: <20250425092601.56549-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_144642_619815_D065158D 
X-CRM114-Status: UNSURE (   9.73  )
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
Cc: Detlev Casanova <detlev.casanova@collabora.com>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Dang Huynh <danct12@riseup.net>, Johan Jonker <jbx6244@gmail.com>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Fri, 25 Apr 2025 10:44:40 +0200, Diederik de Haas wrote:
> The vcc-supply property was added to "jedec,spi-nor" binding in commit:
> e7f4e924f46d ("dt-bindings: mtd: jedec,spi-nor: add optional vcc-supply")
> 
> which resulted in the following warning:
>   spi-nor spiN.0: supply vcc not found, using dummy regulator
> 
> Fix that by specifying the vcc-supply property.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3328-rock64
      commit: 4ed658ebd7b506d468c0e28b724390b31abe1875
[2/4] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3399-rockpro64
      commit: b630cf92dd49f6a4df06508969a2eeeba6fd946f
[3/4] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3566-pinetab2
      commit: 4754eea38f5df6ad03cd93a4fa800d017cc5be82
[4/4] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3588-rock-5b
      commit: 67beb6b123187eaddb954fa9b070932452246d29

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
