Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66D18CCF9FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 22:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAEKBA2fCBHJxmh84pXMScj3Js2BN1IVGptZIR3s87o=; b=y3T4iJgCICeLOs
	YaTzE0LcfZcfEZbP3pBZptlfXnlJGZFaOfYQPN9TpWcmrpEqUy4aBxit/QaE7SFFpViNgUEDkAF0e
	I1U8EQNRYit0uGJ90Y2c755sfQ0EazHMlDqtP8Dbb3D78weaqkygR56DnWM+2C6/AJY5RP/WKOxoy
	bWTaIdydP3/MP2PmTDcrysSJaP5UP/uYiVDpXKfwkbNmMskMHaBjWzguOh5DWb0gE5gGBlkYGO+mh
	Q5FQfS5AqBvw3yrIXkJLkTMcs27/ZgVnxCsOZwCmQGydQNfEFkFG4V0Y2X18jrAlR3dq96ZgWKElI
	eZfv9sa8WaeS/FQXSwJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEy0P-00000006t3a-163Y;
	Fri, 31 Oct 2025 22:54:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEy01-00000006sqW-1LvE;
	Fri, 31 Oct 2025 22:53:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=LGBstjIM281caVG9Z8ocydbe7tTH0iKKYoIgQmU9WDU=; b=Jd9gO7t//aDutiqNxMCy5TNTnw
	POsexLObduMMmCI60KIHom/r3TjiUJE3YP/U8Tvjyj2PnrlL2m9CkrOzvRvEuPFpSBfH21B4OUf31
	1SJ7by5B74ZRSwSMtMsg0iqtZXhcYyG3W+tHO0M1+JdH05hqbLmO4dyrNRH9hBNYYcuDZeeRUcCWX
	X9Daz2MeA8XrTzF46JqX1CeP9LXz33EhXjuQHaQUnLcqua+y5WOvxkyb0B3zFk6DqFNdOOamRurPw
	a6RwFblrmti9wzFr0d/Pvc9ZYaM3y8t9zC8HkkdFXrOywk+2+Yi+AT1WLWbt27Gu3wnUPQnMyreQw
	LDSUtU+w==;
Received: from i53875bca.versanet.de ([83.135.91.202] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vExzq-0004vM-LN; Fri, 31 Oct 2025 23:53:26 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diederik de Haas <diederik@cknow-tech.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix vccio4-supply on rk3566-pinetab2
Date: Fri, 31 Oct 2025 23:53:19 +0100
Message-ID: <176195118799.233084.13663178557562820227.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251027155724.138096-1-diederik@cknow-tech.com>
References: <20251027155724.138096-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_155337_390592_23A47885 
X-CRM114-Status: GOOD (  10.03  )
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


On Mon, 27 Oct 2025 16:54:28 +0100, Diederik de Haas wrote:
> Page 13 of the PineTab2 v2 schematic dd 20230417 shows VCCIO4's power
> source is VCCIO_WL. Page 19 shows that VCCIO_WL is connected to
> VCCA1V8_PMU, so fix the PineTab2 dtsi to reflect that.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix vccio4-supply on rk3566-pinetab2
      commit: 03c7e964a02e388ee168c804add7404eda23908c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
