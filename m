Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD2DACA0FE7
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Aug 2025 07:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNUmBwDJP4eLuEvyzeiTjvaUDLNLaiZxGUK3jSS9QIM=; b=0bBv8GUZ/AtOds
	ISoKe+S2JhTXd+ub4KaxdCrTZX+VwseFwM6va7Xeb+u0ClFS3GM8bRpQT+PTpKrE5alCLPerK+ykT
	YZ/lQbm3CtaPHwWJghVfXdug90Lacq6QKNUwXbLHXeUEVbEsY06hPn73RoNJCKZqaiHlSVJij79Fz
	ghdKn7K47FrAlUdSzREZofRaP02Qovr+BZ569AzIEabQxY8fwaxCyV4DyqXfrwcJwCPYwup9JbvNY
	px8dzvChzceydOt7uJH92plYKCMZ7IA4Q6x6RpvMT19/xpGakSnI4NdVAO1PGZ8H4/ttwS23MbU/u
	7f58YCarYlJWN1P/FBaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq505-00000005p2f-0VXA;
	Sun, 24 Aug 2025 07:18:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq4pg-00000005oIQ-1H0y;
	Sun, 24 Aug 2025 07:08:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=fhs3hXc2N1i8i+aeYyxkNxdwP44WZuEKF8sSvnZTP4Q=; b=wOMk7j5gS72n5mZDY1q9JceRRy
	ASZKPH10REBLyM0d5rrAOStr5P7Fn2eVONJGBIMFSWpv5qXgik3kt4IWCyuSuKfE0uzqbWrtaresQ
	H0Nhs6g66YNIaqe40B9tNpZU8usMhlUoO+3Pjw2NHCyKwHaYJfZS3qBEFWDM0X7wQKlpe0oJH7EXv
	7t8uUPGf4U1T0N2AxNcEM1cXk5pAiZqLxyi99CK/9MimGFhCQftpR/NxJGXdcDe+E7kCfRUuyZKPe
	CVFh822XgaZhmGPr1tSm1hOfLN+SWJkTnnxxFdcZUlG0pFWOt2hET68oCHMU4jSbEjL2508JPNpJv
	EIJl4nMQ==;
Received: from [212.111.254.164] (helo=phil.aerolan.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uq4pa-0002Oo-Fc; Sun, 24 Aug 2025 09:07:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/1] rockchip: Add power controller support for RK3528
Date: Sun, 24 Aug 2025 09:07:49 +0200
Message-ID: <175601920179.3425909.10553643582177045898.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250821211843.3051349-1-jonas@kwiboo.se>
References: <20250821211843.3051349-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250824_000804_342131_A0A12FAB 
X-CRM114-Status: GOOD (  10.64  )
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


On Thu, 21 Aug 2025 21:18:40 +0000, Jonas Karlman wrote:
> The Rockchip RK3528 support multiple power domains, one PD_GPU that can
> fully be powered down, and other that can be idle requested.
> 
> Vendor kernel flag all power domains on RK3528 as always-on, this takes
> a different route and instead tries to describe all devices power-domain
> in the device tree, even for controllers with unsupported runtime status.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable more power domains for RK3528
      commit: 178879625f0f10ff708728087d91a5fe79990ce2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
