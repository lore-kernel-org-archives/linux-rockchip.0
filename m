Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2CB4CFA446
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 22:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jhqwl7QVn9Wt8ks0go8vows/Fl14p9usciaCzaWzKck=; b=pAuJSBgLbAt5GW
	EpIk54glOTDf+fxYCpzhwo4jmTOTomuCTPMaMsrVXTCrm7h32l3EzNawgYHujFHTDMHtHn3jNFzLi
	ey4uGXzWK/OZoE+UAuDNPsPVPS6xU3ToBXi84BjKJDCGagesefmUe2LKjEqnkHh94ZzNj4JddZDGF
	6AMhL2gXww26JK9eEO6EufVeIHQqj9Cigz6yW8wCI8FzNbcc1eOz3NKOBnw1hWsENKgX9jjGE/KxV
	HvU1j+/NPBT29vUjsULpHOM6veqvz0cl3p79rGgKSD5ZAW5O/xBnz+FLZoCH7fp50YpJH8UwtHml+
	3bwGeOZaCOutx7lzGceA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMD3g-00000007W9i-3NEa;
	Thu, 20 Nov 2025 22:23:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMD3b-00000007W7w-1t8T
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Nov 2025 22:23:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pe31F1NvLbc9IzAVxnRu2XrUbqzFQQoGyzsv0kkd0z0=; b=sJzR3fZJPqIeKj6vvFKyXHrvI5
	n2GWpSnrXwRHm5rH+SvNEjFqhw6NfyRQBsb0dBB/kJRVGGRgOwUUC96Ly1wUIXpKejUf7ITYSQUlq
	WLH8NoblMHJWlbQSfhzkFY0ySS1CqhAVraRfFeqpKg1puFhCa8tfSjRx8grRut1PdFYrfYl7MNCXm
	bhVOc3fwEpYRyvrKMvnow49CYSK2g4qJ1ZvzRi1zwV83gKOsys9WLCRaOjSuDb4FoRhJEmHnP4Ikt
	x6nU2/g4WIPF8TcN3RU+bZQdDbrSBHufp7r32ib3wsY2EEEgivcY2lPLyCK3a0spKcosBR/2kqUbJ
	37rOZJNw==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMD3Y-0007Je-Be; Thu, 20 Nov 2025 23:23:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 0/4] Indiedroid Nova Devicetree Updates
Date: Thu, 20 Nov 2025 23:23:01 +0100
Message-ID: <176367711166.9778.8294237491641265903.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251118223048.4531-1-macroalpha82@gmail.com>
References: <20251118223048.4531-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_142315_503623_C33AFD5B 
X-CRM114-Status: GOOD (  14.61  )
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


On Tue, 18 Nov 2025 16:30:44 -0600, Chris Morgan wrote:
> This series fixes up a few remaining issues with the devicetree for the
> Indiedroid Nova. Namely it adds or updates a few pinctrl definitions,
> it removes a few workarounds that no longer appear to be necessary for
> eMMC and bluetooth, it adds support for the NPU, and it sets the device
> type as embedded.
> 
> Changes since V1:
>  - The device type addition, NPU enablement, HS400 enablement, and DMA
>    fixes for bluetooth were accepted as a subset and have been removed
>    from this series.
>  - The individual changes from the pinctrl fixes have been broken out
>    into a series of separate patches.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Add clk32k_in for Indiedroid Nova
      commit: e28f44013dc4ec820bdb7182d5a2188550bc07fd
[2/4] arm64: dts: rockchip: Define regulator for pcie2x1l2
      commit: 835c909e8576919437227f6ac1d4e4769016137f
[3/4] arm64: dts: rockchip: Correct pinctrl for pcie for Indiedroid Nova
      commit: 6f563ebf0b21e661f6a663ea55ae00544192a213
[4/4] arm64: dts: rockchip: Add host wake pin for wifi on Indiedroid Nova
      commit: 932feac9d8c591a6c5d3824765f71e2cd87f33e8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
