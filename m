Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E84A4C5B54A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsofN8oUXb4FL0FTC0MJgSsNHjy2S0JgHSFx82pZ91w=; b=Jj5AaGCgLW86pd
	9NWNeMpoNueNiQ313cHpO45hF/jzyd+5RTU3VvBeTg1uq6oU/5d4fLW4nDpdKT9cQi/SC7VDLgyQ0
	dbAWDeV1uYkzQVANz2XfF43m9ghNcB9JA4s/VDz449Tq3c5CfNJau2sEH51tO1pYdU1vkHoHMWQXm
	fpWS6Pvy5VFGO5fXfJfaqVyo3H4nrl+0O3EYLKHK3xBJYJnXbbGQWtCnFgsQR8L3JX855+vcl3vzH
	oOn0xQyo6j8X0CQMzfHMVk84ADacsTajoyhAFcROB0oFWTj10C6890Fu+XLqIZRIY/tusw5pHCDo5
	HF1nF9v27khobeAsXohg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKov-0000000G1ZE-0dKW;
	Wed, 28 Aug 2024 15:42:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKNP-0000000Fuyh-3cct;
	Wed, 28 Aug 2024 15:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=LevMEsCzUj4G8ENrhUfHsg8ts9orTIQ9E7AP5yZ+FK8=; b=aEWdhDDYw5+twZWDzXVsUja0ha
	NoQdtwH5CDlssSpTFXB+SaXQzO3iSLy6LHX/06slAv7INfcUsSJ8R8tMcoEPV16o9QU1JJJY7S5Mo
	f4NWFUaehr30EaJOCkhfVjkCK2qIf2m5WhdNDhlpERjKmK2ofvkCdVLXfQ07fwrzu0l221+cYNgA6
	u0T0ITOSF4WotwDeCeXpuPc0gNMYWXROXE6LdmcVSj/tc/KgRxU2uQs2r933DFpP9oms7YKWFYlQr
	NgUhw5wBcKRUfV3dlkeHLe4uezYNiwOkGnLMvl/T20/nC9njX2S1lD0Qgt0zOMXaqlXCOJPqJ3iRH
	XkX6pDpQ==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjKNG-00065f-TW; Wed, 28 Aug 2024 17:14:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Aurelien Jarno <aurelien@aurel32.net>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/4] arm64: dts: rockchip: Add Hardkernel ODROID-M1S
Date: Wed, 28 Aug 2024 17:14:12 +0200
Message-ID: <172485421375.1511809.9810674722852460291.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240827211825.1419820-1-jonas@kwiboo.se>
References: <20240827211825.1419820-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_081427_957391_536DC015 
X-CRM114-Status: GOOD (  10.85  )
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

On Tue, 27 Aug 2024 21:18:14 +0000, Jonas Karlman wrote:
> This series fixes wrong vendor prefix on the Hardkernel ODROID-M1 board
> and adds initial support for the Hardkernel ODROID-M1S board.
> 
> The Hardkernel ODROID-M1S is a single-board computer based on Rockchip
> RK3566 SoC. It features e.g. 4/8 GB LPDDR4 RAM, 64 GB eMMC, SD-card,
> GbE LAN, HDMI 2.0, M.2 NVMe and USB 2.0/3.0.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: arm: rockchip: Correct vendor for Hardkernel ODROID-M1
      commit: fa63d087bbf67ca907a8ee6ab54f9932cd02f919
[2/4] arm64: dts: rockchip: Correct vendor prefix for Hardkernel ODROID-M1
      commit: 735065e774dcfc62e38df01a535862138b6c92ed
[3/4] dt-bindings: arm: rockchip: Add Hardkernel ODROID-M1S
      commit: 611a434a7d3387fc0eee50cfcc318cc237c1d489
[4/4] arm64: dts: rockchip: Add Hardkernel ODROID-M1S
      commit: 10dc64fe0f980c47c7e747885ddf7a8c12780337

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
