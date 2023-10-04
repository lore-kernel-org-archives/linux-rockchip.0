Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 622EEE936E8
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 21:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jlpDTRg82FF1wJbQqYET5Dwmt4KlYeFrrbEmuwPK+rc=; b=B1cFb40nFiUHWw
	ouPWZ1yq96yYJnczd/u8dSk3AW01AF70BqSFGxo4x3ZlM+9jMoNMgdfRThJCvZRdudJYlI/NUwmam
	UZFzuxd2FqWISstjhEprC1rsgx1au9r/43uN3bQ1KlSBGCw+Kz9Zflul9HIvkKiSxUdXRCjYv4dZg
	l/0IBoforZvxkRgm4EpsjB+o1Yw04YJKQ3gk73alPNQoFanDwi5qvockxL0TS8BQGojJzwlQW6KD+
	p9ozOzXX7Mf5hdVN+nJwwc/Rc/Sq369Su1Cu6/ZyK/nMVGnN9dqszdpSI1MPkPlGGf3Knh4arYB6l
	Da/4MMHa/8gX/dvdtrBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UM-000vtJ-05;
	Wed, 04 Oct 2023 21:33:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UH-000vqQ-2R;
	Wed, 04 Oct 2023 21:32:59 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UD-0005RF-08; Wed, 04 Oct 2023 23:32:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/2] RK3588 EVB1 PCIe support
Date: Wed,  4 Oct 2023 23:32:46 +0200
Message-Id: <169645508389.141514.5769106389673512468.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230918141327.131108-1-sebastian.reichel@collabora.com>
References: <20230918141327.131108-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_143257_789480_3DC5BDD7 
X-CRM114-Status: GOOD (  10.68  )
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

On Mon, 18 Sep 2023 16:13:25 +0200, Sebastian Reichel wrote:
> This enables PCIe network card and the PCIe slot for the RK3588 EVB1.
> There is one more PCIe lane being used for a WLAN card, but I did not
> yet get that working.
> 
> -- Sebastian
> 
> Sebastian Reichel (2):
>   arm64: dts: rockchip: rk3588-evb1: add PCIe2 network controller
>   arm64: dts: rockchip: rk3588-evb1: add PCIe3 bus
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: rk3588-evb1: add PCIe2 network controller
      commit: 86a2024d95e259c4309ced53242c0db6d993320b
[2/2] arm64: dts: rockchip: rk3588-evb1: add PCIe3 bus
      commit: 46bb398ea1d81302e3735087ceb4b5763d5afc29

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
