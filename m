Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43F4AC5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 10:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBPT0wgsIrAe/PdSJTAr/UphWMOdkgs/tVSpVeXHxXQ=; b=adnJDntnzsG22P
	s5KjZFWiU42qVZDeN6z4iBnNhBUcp7y5y4JVqg5oAlg6T9HvnleMAdfzREvO1hqpZS3wWnnXTmbvz
	OqbMdNK+BfcMDZ4TUhdsyXPtgQlc2jYgpmPwBxbYSRiinML3NAYxzMrdbjtHFO/TO4bsA/p00qcIV
	MbC/gr9LDaHl+sduoAQ9vN7S0iNMZsKcDTYqTvzcus3weg6ecSmI+uGhm6AxKTGH+iVfKJPa/Xr7/
	DaD625d6rM/kaV6kBBW5dNRew+9OH7p6vi6KCic4AKnV3HGkloe95Iw6WT7VTh8mpXwBHPQDABzph
	aUO8+lBuYX5RhmPsKBVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOZu7-00000003vXu-2WcM;
	Mon, 09 Jun 2025 10:38:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOZfI-00000003tWA-17Kk;
	Mon, 09 Jun 2025 10:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=mjZzOQzZWRh5mMcDH3uFDboy3B8BcepsHqYvGyZHYfc=; b=L/54NyHg4/S2CZeYLrvPzigM4A
	AskTWkXdc6S60+ZR2ivHXR4hj4khflxiVRHUcAmrsHswvGE0GOtYMGGYmx15l0DiCQ2OPKa2GP1gr
	HwHbG9HBfdQWgNlSInLdgVNHstwutdJ8tWB+0OxHiMZ4HcBKspXnsVaiYWsfQhKfZlvM6iTu7aaQz
	aR8Y6yoP7US++iQgygcdI5jsBlpUKIRnOAflOD6ehtv4msQdOndRTfOffhQITFUeU8eUjhY+9p1Vy
	4k173vpgvFAJF5ZpFr5CrpahjVV3YpLECaEnV85JVliuZL/bi7sJ6he/iLXfPdWZt2xh1JTsi6WDn
	0C6agjmg==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZfE-0006Av-Ai; Mon, 09 Jun 2025 12:23:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	John Clark <inindev@gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: Use standard PHY reset properties for RK3576 ArmSoM Sige5
Date: Mon,  9 Jun 2025 12:23:02 +0200
Message-ID: <174946455542.762051.1386623405149622238.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250520003332.163124-2-inindev@gmail.com>
References: <20250520003332.163124-1-inindev@gmail.com> <20250520003332.163124-2-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_032340_303509_19EC5A71 
X-CRM114-Status: UNSURE (   8.45  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, detlev.casanova@collabora.com, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 19 May 2025 20:33:32 -0400, John Clark wrote:
> Replace deprecated snps,reset-gpio, snps,reset-active-low, and
> snps,reset-delays-us in gmac0 and gmac1 nodes with standard reset-gpios,
> reset-assert-us, and reset-deassert-us in rgmii_phy0 and rgmii_phy1 nodes.
> Add pinctrl properties to PHY nodes and define gmac0_rst and gmac1_rst in
> pinctrl node. Reorder phy-handle for consistency.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Use standard PHY reset properties for RK3576 ArmSoM Sige5
      commit: 63136c6fecf44b4f2cb458b01cfdbc2cb0ddd29c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
