Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5E5DE7719A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 17:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8r+Lctd8wAaczHHb6WyjrbI4WtLJI7dCufYCKtwqcho=; b=l90FnoYtkqW0n5
	squJcc69e2VQ8vUXqndwURh08rWB+ZXPSAsIPsfFmUL3AOtfMKCWKolwOm9TKExgTOtGnah1Epy/u
	+n6anKU7In2cQuX2H0tJMLhLmGTyi4KoLzyoQHFwTYxmKXVhNG9sF/jbq6gmK0F9iN7rfgmytGs9G
	ClVvh0iGxtKFTKATJVlHbEWhutD6vvFrOs7YxaCs3iX8vYgA8SUlqoq5WJg/g8JWv/8/u467ipMSx
	zBoMVyLSKr7LXwtyAPJbihCs9g1vD4jICRKCxGGUerkq0Bc6TCOSGwOQsKdwM/dxEI9K1+25CeZYZ
	mQmb+8nfV2bPsB64B+5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVvtc-0000000ClrJ-0Twy;
	Thu, 09 Jan 2025 17:00:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVvoo-0000000Cl2A-2C7A;
	Thu, 09 Jan 2025 16:55:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dYYn2ZoAryPtkBNugm6MsBpPD4hnKv21592PMgEbOWQ=; b=HOmVK8rgEgDpn8qRVh9kLMZnaM
	eUeC8Gs3VFTkMtvfYdcom32TbnDmz7+3k4CllqXrAxUhLXNd91rFDTsY+c4OHSPPCfKk1QmGKXuCI
	cBQUY5FEnIrlPphA9h2RtrHKLTV19ldMEqP2nmWWwr6XuxZcChMaM04j8yB1nnXsG01/7G+0JpuUz
	mClh6QYY4MSMI0rPWtOb+nOqsKD94FBzYwO9iseSwNoAj5uWmJ0n7JM9Ug0f5qpXI3RDkeCO4FWlH
	0n9CVDMZ+OtcSZIFe4feJIAJHhRT3NEf1HJzNcfCTFcITLX87zRd/Zn3Ld6Hp3DfG3367OvvTAHtn
	eksUCxUw==;
Received: from i5e860d05.versanet.de ([94.134.13.5] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVvok-0003hx-9w; Thu, 09 Jan 2025 17:55:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v2 1/1] arm64: dts: rockchip: rk3588-evb1: add WLAN controller
Date: Thu,  9 Jan 2025 17:55:21 +0100
Message-ID: <173644170632.2899934.6782599288073727936.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210162452.116767-1-sebastian.reichel@collabora.com>
References: <20241210162452.116767-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_085538_557410_66264B54 
X-CRM114-Status: GOOD (  10.77  )
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


On Tue, 10 Dec 2024 17:24:04 +0100, Sebastian Reichel wrote:
> The RK3588 EVB1 has an onboard AP6275P WLAN/BT module. This adds
> support for the WLAN side, which is connected to the second
> PCIe bus. The Bluetooth side is connected to UART and handled
> separately.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588-evb1: add WLAN controller
      commit: 3948b4a9bbbb7366b277d9adfcee77b270482749

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
