Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D70D6CF649D
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 10:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJZX3FtKvRrYRalgcKM5QZHUcRXDLXRGJSKWg1NUcEo=; b=FMZc8ED2KEEvpD
	NWm9qZEI/Buqv9AYgyZaYHkGS60bf6jmTQQqcpXtS8o4pMlnIF/RKbccJ4HwgahZcrLiqvtnsHOVv
	TcCLWaR/X9a7Nc2GZ0v+9Gv1vdhcAW3V0GigGMjtftJs63iY1oJ2ihgVHrJ7sh2/vinmf4R4eUT92
	OLuonEnf9qMTLrn8G1T5lQMLb/hKo/nhsMshBFxWJL3aSPaJ65A1VcHaMTNmDrRsktbE+PosGDX+Y
	50nIzCCd+WiXkE98LqzUDs87AYopYodkssIV0LmKP3Q74yE6IDFiDI1ZO4JYizm2ErcZRXrXohcQL
	1UwRvUxNSdMq0ZjbrHEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svE5V-0000000GlhW-0Vx5;
	Mon, 30 Sep 2024 10:57:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svE4G-0000000GlNg-18sL;
	Mon, 30 Sep 2024 10:55:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=R58EIZy9Q7mtj/nwBuEMemc28InlPv9SX0k3QdzV+dc=; b=1jAN3QakZTkdrhr5aGb/NNXHoD
	DF3qhBZg8p9KY8Mesc7cXCBe1rgMuQ0Jlf2Oji6uHbXwcqQFvBpltSYn8unnu8eoUO+OBNAtqD18i
	D5Ii90wpv5zX4qfNJ472JXSGbPV/N8Mi2g5x1U8a7gffdcLRHb2/Bjf1B3Dx3wwH4O4UXktpEP8I3
	jZOVxuD59qAuH2poNEuu0loiby0rvT3Gn0afLk56oIRNwNVvwdG5Savh/ZInptog3Mk7IfjrFO0GZ
	eSKDzT7ylKnncfYCAsJpBK9v6pMWoJulN7toW/74oiluKLeUaUDzOorQI6uDH7pPVQAurgoLUVD1D
	C1Q9DKwA==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4D-0004Xd-SR; Mon, 30 Sep 2024 12:55:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Move L3 cache outside CPUs in RK3588(S) SoC dtsi
Date: Mon, 30 Sep 2024 12:55:35 +0200
Message-ID: <172769365130.1880381.14526267729451326976.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <84264d0713fb51ae2b9b731e28fc14681beea853.1727345965.git.dsimic@manjaro.org>
References: <84264d0713fb51ae2b9b731e28fc14681beea853.1727345965.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_035552_355581_5593718B 
X-CRM114-Status: GOOD (  10.76  )
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

On Thu, 26 Sep 2024 12:29:13 +0200, Dragan Simic wrote:
> Move the "l3_cache" node outside the "cpus" node in the base dtsi file for
> Rockchip RK3588(S) SoCs.  The A55 and A76 CPU cores in these SoCs belong to
> the ARM DynamIQ IP core lineup, which places the L3 cache outside the CPUs
> and into the DynamIQ Shared Unit (DSU). [1]  Thus, moving the L3 cache DT
> node one level higher in the DT improves the way the physical topology of
> the RK3588(S) SoCs is represented in the SoC dtsi files.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Move L3 cache outside CPUs in RK3588(S) SoC dtsi
      commit: df5f6f2f62b9b50cef78f32909485b00fc7cf7f2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
