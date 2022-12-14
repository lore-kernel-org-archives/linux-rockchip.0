Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42874C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Dec 2022 14:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3c+N/r/k3BGto03hz1IdL906+j6an2wLuAE8OwckkT8=; b=j0LPLuimbd39B+
	ef/GKKdmVp6pTCsEpdrTSSZso9MwobPK2IMNRGPE7FO2v9FtX7IAx5sXCQu6kVD9Q9zVLCdRrgE2/
	JYOO8Y8VOe5Yip76IKTPYO3I8E2YlwELbgdY10rcKeaRcyjkiYGxPtPU4GAK9f5oEvMpgM9oJKY2S
	vHcIJSeCQUcMWUoEnJU5JMp2OAZtLFukVzbaCgzhKZfvYpQqPR+IaqShSbz7aZMDSHkuilPbJzbtg
	j/hDN1gGtRERNJ2E4x3uk6ptt53H/oow7ZkroKyBRH7fiMaOqn8qZ/s5exhsIIEUZWsdZAEC6hris
	B0uk0g4lD5abwXPhFp6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Siz-00HFNU-TG; Wed, 14 Dec 2022 14:27:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Six-00HFL9-R2; Wed, 14 Dec 2022 14:27:08 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1p5Sir-00050J-Ny; Wed, 14 Dec 2022 15:27:01 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Corentin Labbe <clabbe@baylibre.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3399: use correct reset names
Date: Wed, 14 Dec 2022 15:26:57 +0100
Message-Id: <167102796002.2796496.14016944673146684477.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221212124423.1239748-1-clabbe@baylibre.com>
References: <20221212124423.1239748-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_062707_888754_BC6B2555 
X-CRM114-Status: UNSURE (   9.34  )
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

On Mon, 12 Dec 2022 12:44:23 +0000, Corentin Labbe wrote:
> The reset names does not follow the binding, use the correct ones.
> 
> 

Applied as fix for 6.2, thanks!

[1/1] arm64: dts: rockchip: rk3399: use correct reset names
      commit: 53e8e1e6e9c1653095211a8edf17912f2374bb03

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
