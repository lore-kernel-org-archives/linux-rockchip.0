Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B80FC27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 20:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVV1nOtNCW2+UAZOy4GJ3nhog+F4BF09ZvD9klxpCA0=; b=tCk6s3e+f0SFl/
	HFLCyC+M02qmTAd84BW9FafJxxeTE53Yf67bfNu9ADi9HxZHrcAGMvhpmopG8ydzy2EFEIAPVIVd7
	RuqGDD4ZWoNJlsC3U4++HlwkSSvXWEkCjuWKoZIUqR+U5j25+UKDW5ldvRe4hTnXSTw5ONvFh2VXW
	AbcxpGdN/PUPzJEACb6hwRneo9He2VkGGsXfWf5ddUggdTHq4eTko2PzPs1PuUd+kjRpZfATXkuDy
	lNFoTA9Sfj5l6/QonhlXAbfeinDe6GkvOqVUNcodATFMEIwBjxgungYI1ptr4P4UGcLZCno3FtH3m
	iOl3AFjtCSVMtesSt5iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKOZn-00000006dmY-2clt;
	Thu, 20 Jun 2024 20:40:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKOZk-00000006dkj-1CIq;
	Thu, 20 Jun 2024 20:40:09 +0000
Received: from i5e860cc8.versanet.de ([94.134.12.200] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sKOZc-0001mc-Ep; Thu, 20 Jun 2024 22:40:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Kropatsch <seb-dev@mail.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-rockchip@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/2] RK3588: FriendlyElec CM3588 NAS board support
Date: Thu, 20 Jun 2024 22:39:57 +0200
Message-Id: <171891591942.88443.13598735189140666462.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240616215354.40999-1-seb-dev@mail.de>
References: <20240616215354.40999-1-seb-dev@mail.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_134008_360111_F615A982 
X-CRM114-Status: GOOD (  11.37  )
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

On Sun, 16 Jun 2024 23:48:28 +0200, Sebastian Kropatsch wrote:
> This adds support for the FriendlyElec CM3588 NAS board.
> The board's device tree makes use of the latest upstream advances on the
> RK3588 like USB3 DRD and GPU support as well as the latest Rockchip PCIe
> driver bifurcation fixes, but some features such as thermal management
> and HDMI will have to be added later when SoC support for these features
> is merged.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add FriendlyElec CM3588 NAS
      commit: 85d8475ccff75bfff3fce0d4f027f22f75823fb1
[2/2] arm64: dts: rockchip: Add FriendlyElec CM3588 NAS board
      commit: 053799ea21fac16555484661c2690dd5139773b8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
