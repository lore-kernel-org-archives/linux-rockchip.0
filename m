Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 707C3C55171
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Aug 2026 18:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjCpMyWGqN9lYc227Lb7v8aU7vuugb5H0bOVIG7TFGg=; b=KyxJdLPJQQX/HW
	SRYwIuUuag7ApONng/gwEO43QCNLH7nM57Bub9zw8mOyAEWzLSoqsJBTr1CJt/g8ghr+e4eSc6a8n
	B4t0ymiF9dEu8TZC5FFgKIzy4+64Hp1GDYwPh5VsjDJ2PUA5dRYsNpYL59KHant/RiKpioQohD02+
	OtVYD2EKkzsocObPlHOneT5nZf6EX8XIo8yOZ69Gb6+La0gZ4RyYMjj3N5VTnxcjKck0uv0JvpBRZ
	kMJIWGa/mxCPB3PrZdePItmFMG3I1pIUBKnzSDzRO1o0v6m1L9q44quykj8fUCLqE+wuxCWL78BuB
	IuRw9caYkMN4aVTNLomw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqbFv-0000000FxGS-48jV;
	Sun, 02 Aug 2026 18:49:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqbFt-0000000FxER-0UlB
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Aug 2026 18:49:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xhWt6jr8JZihiGThYig/NqKAx9byV7fmohEp1wFu2gs=; b=2sy5zr932l2o3B5VaZS1t+ti/4
	0bJvautk0gtFwt9sw38nmTVx+kzGhbmCpk288NXP8iT9IN7nZs24r4d7J02K+XWCU+HHQ2IIO/847
	Yek6iihPbUe3eTz3YXCmxGyDMX+aLeuXz9JH9z+xCH4Va04nEVaAP5MJV1r0vli+O4LlfpRRMVe2t
	LrEAQ8hceDNsSeLJR2+X7GFPCKV4ry9V4/xcPYfEl1Uoumwso6AlPVR3I6J0fSMGWVq/wbuw8Z5tt
	Ueli3C0QHlxpsWZK5qgRHF0jEU88VgEN3bT46c9Lri9Z/6CSgctL2SsMM4zcUpNlx9MUCFGwe3Utx
	wjMfGtgg==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-iio@vger.kernel.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH V21 0/9] Add Invensense ICM42607
Date: Sun,  2 Aug 2026 20:49:39 +0200
Message-ID: <178569657657.1403346.3269375069451049226.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260728225542.174825-1-macroalpha82@gmail.com>
References: <20260728225542.174825-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_114949_153190_15D3C050 
X-CRM114-Status: UNSURE (   9.07  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Tue, 28 Jul 2026 17:55:31 -0500, Chris Morgan wrote:
> Add support for the ICM42607 IMU. This sensor shares the same
> functionality but a different register layout with the existing
> ICM42600.
> 
> This driver should work with the ICM42607 and ICM42607P over both I2C
> and SPI, however only the ICM42607P over I2C could be tested.
> 
> [...]

Applied, thanks!

[9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
      commit: 264429dfe5294b76c7c3b4ed2c9e6cea1042255c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
