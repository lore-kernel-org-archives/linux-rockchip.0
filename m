Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C3FECDB482
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 14:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MU5BlZoOj81pWFEzy+jsA5zzrxOnF5EhJAT0rx75go=; b=0+So9htdEUAEA6
	jpp5gC4Vv38ixf/KBttwqzUrGuz3cEAI4foPcFAQj5Gln/hS5FLnqZyGJVoK28471a0CjoSAU15f2
	KNjkDIjG/0vcvzslXMWkPbF8z7Cf/0slz2b04rsOgjeJ5J6L6nIWwRJuNd3oXjsXHll11DIw9UXq4
	Ro0q7Yncwk//UAELvKxqw/mb8y1oHUcskClIDVlA5e1EInb8C7UuDsVQ894RRQ6H1YADtkKRAZGmT
	V2hDWwhYMzCb5BvTIyUdulbzegbP+qv1VPNa3eQScert0QnK0Dsv7bV6AQZ8yxPXF/5ZIxBMI9V9X
	y1YF5wmm1bd4HEfIHXhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtTf2-0001Gv-1h;
	Thu, 19 Oct 2023 14:06:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtTez-0001EB-2X;
	Thu, 19 Oct 2023 14:06:02 +0000
Received: from i5e861907.versanet.de ([94.134.25.7] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtTef-0004bU-GJ; Thu, 19 Oct 2023 16:05:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Mark Rutland <mark.rutland@arm.com>,
	linux-pm@vger.kernel.org,
	kernel@pengutronix.de,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Chanwoo Choi <chanwoo@kernel.org>,
	devicetree@vger.kernel.org,
	Robin Murphy <robin.murphy@arm.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Will Deacon <will@kernel.org>,
	MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: Re: (subset) [PATCH v8 00/26] Add perf support to the rockchip-dfi driver
Date: Thu, 19 Oct 2023 16:05:39 +0200
Message-Id: <169772432936.1425163.10520107144640249546.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231018061714.3553817-1-s.hauer@pengutronix.de>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_070601_824948_96FE788F 
X-CRM114-Status: GOOD (  12.46  )
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

On Wed, 18 Oct 2023 08:16:48 +0200, Sascha Hauer wrote:
> This series integrates the recent review feedback from Chanwoo Choi to
> v7.
> 
> Chanwoo, I am sending the full patchset again for people to try this
> series. You said that you applied 1-5 already, so please start picking
> from 6/26.
> 
> [...]

Applied, thanks!

[24/26] arm64: dts: rockchip: rk3399: Enable DFI
        commit: f57ef11ec63c17201b27569fbfb58801c227137d
[25/26] arm64: dts: rockchip: rk356x: Add DFI
        commit: 085be8875ca8a087e3cc102893f384894962c87e
[26/26] arm64: dts: rockchip: rk3588s: Add DFI
        commit: 5a6976b1040a2f99ab84eddbfa7cd072ac5d10fc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
