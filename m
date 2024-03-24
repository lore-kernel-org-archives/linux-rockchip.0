Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1B72CD11DD
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 22:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Es46nnOOFaAqabdCqH4cTAeagV7FDbzmbWCV9P0/9rQ=; b=p7fMQEerMdPy4V
	bbP3fGsQCGxgQj4DMb0gU5EKhr9tgMYxqvCo/beySQIMqQFl4i+1LYL7F3cu4oFnn++pLtpcUJugN
	f2xjnphx2/Jox/bF7E1D45t8PUv/MirZGVSsaF1iVvkRoabsDkUQPsiUx7c7fiogOQPTUMwPf+7yc
	2uChGUA8x+NYUHL6OCEUg4MRFSkTx9VRjGKuIR/hQz2+u+q39liI0c6vSxuYpSZhHyFDJuvwH1Nre
	jt4kwOvpvd693ANlCkMhhfaMs7djm3bo/sr0TFlBg2DyPmN5TeMxCPA5CvNiiV6l7tnZCdkogZW2N
	oQOOXSV7EibFQUXL5PMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWUr-0000000Dd3d-38dJ;
	Sun, 24 Mar 2024 22:39:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roWUn-0000000Dczh-18Z4;
	Sun, 24 Mar 2024 22:39:19 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1roWUX-0007sn-QW; Sun, 24 Mar 2024 23:39:01 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Iskander Amara <iskander.amara@theobroma-systems.com>,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	conor+dt@kernel.org,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	dsimic@manjaro.org,
	alexander.stein@ew.tq-group.com,
	vahe.grigoryan@theobroma-systems.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	quentin.schulz@theobroma-systems.com
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: enable internal pull-up for Q7_THRM# on RK3399 Puma
Date: Sun, 24 Mar 2024 23:38:56 +0100
Message-Id: <171131986743.918919.2940634887265030927.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240308085243.69903-1-iskander.amara@theobroma-systems.com>
References: <20240308085243.69903-1-iskander.amara@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_153917_360123_F1115789 
X-CRM114-Status: GOOD (  11.34  )
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

On Fri, 8 Mar 2024 09:52:42 +0100, Iskander Amara wrote:
> Q7_THRM# pin is connected to a diode on the module which is used
> as a level shifter, and the pin have a pull-down enabled by
> default. We need to configure it to internal pull-up, other-
> wise whenever the pin is configured as INPUT and we try to
> control it externally the value will always remain zero.
> 
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: enable internal pull-up for Q7_THRM# on RK3399 Puma
      commit: 0ac417b8f124427c90ec8c2ef4f632b821d924cc
[2/2] arm64: dts: rockchip: fix alphabetical ordering RK3399 puma
      commit: f0abb4b2c7acf3c3e4130dc3f54cd90cf2ae62bc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
