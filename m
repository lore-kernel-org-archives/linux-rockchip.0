Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1487DC48260
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 21:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9ayYKvyZPC/1xFXaNSkzA5mgln+zPF78clJkkLPpgI=; b=Z+4PrVWNDfDuhw
	8O4x7Gy5hqPl0E9OXxceop9tsAVp1apihstFi7Upn6HjKusi0ZFHrFWVVekmD0J3sjt5zXM096Fxf
	Tveoj1cxCvgf/tqkUlLL93bhuFRIExiQVj3kGDN22221HbhQ1oZy0qqRwkroomKMzmCoNaJ22uA6F
	JJiq2shPjTj5RrziQRu16cCZMW163aS38Q/cMoPgjOwaSptR5zZ57GBBbVwBmGLQVTkyQXcUVgQL/
	4E2CbT0AAkib1IqKtjV++TILVRWDRbvWvkcPkri0J6fv2GR+8D9jnToJaQCns+/dUwEZdcPZsQgS9
	p5ProIHpwT2ApiPpMnSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT78z-00000001x5k-1Ckf;
	Thu, 25 Jan 2024 21:20:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT78n-00000001wzV-3fvG;
	Thu, 25 Jan 2024 21:20:07 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71M-0002EX-Fe; Thu, 25 Jan 2024 22:12:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Stefan Nagy <stefan.nagy@ixypsilon.net>,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Increase maximum frequency of SPI flash for ROCK Pi 4A/B/C
Date: Thu, 25 Jan 2024 22:12:16 +0100
Message-Id: <170621707731.1872080.836694549079175950.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231217113208.64056-1-stefan.nagy@ixypsilon.net>
References: <20231217113208.64056-1-stefan.nagy@ixypsilon.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_132005_979940_FE51FA65 
X-CRM114-Status: GOOD (  10.93  )
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

On Sun, 17 Dec 2023 12:32:08 +0100, Stefan Nagy wrote:
> The ROCK Pi 4A/B/C boards come with a 32 Mbit SPI NOR flash chip (XTX
> Technology Limited XT25F32) with a maximum clock frequency of 108 MHz.
> Use this value for the device node's spi-max-frequency property.
> 
> This patch has been tested on ROCK Pi 4A.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Increase maximum frequency of SPI flash for ROCK Pi 4A/B/C
      commit: fa16d7a820e42946c511e331cdd81dde579066b7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
