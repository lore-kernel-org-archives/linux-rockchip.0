Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8FF9E95A97
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 23:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Raa1Y9nnB+e2fMxDbazk5y1SD1fzrcAL6jeIqMBd1OA=; b=SOH+CgCjmfWTxn
	MbasKGMjSqK3CY3DlTi+Bqrp2pcgOWRlZ/zgYDNyRTRySdfbicXGmenVQK15mU96he2icAMvsdx5C
	Xgvs6dpPUVI0/Cu4pjVPdfuH6WC3zr1po8n16dOL0Y4E2V/rqYONwjUjcP6cql7UIt6s9gOnB7qQE
	KTVedd7z97NusbANZOrGxxhof964QSO4f8O/zOq0aJeSjzp37RiReAKlZw5AJw34rHPEJKQ0G24Rs
	k7qCr7xgHHaOT0JcsM291ZDwQAT46HC09LR/hhlPMgMDoq4QT3txajn3/Wi0Lv1wG19Raoc/XHB33
	KA4XfVXwV5bxW3anw5yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpzzA-00BpYn-2u;
	Mon, 09 Oct 2023 23:48:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpzz8-00BpYH-0f;
	Mon, 09 Oct 2023 23:48:28 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qpzz1-0006TR-1E; Tue, 10 Oct 2023 01:48:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Muhammed Efe Cetin <efectn@6tel.net>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	conor+dt@kernel.org,
	d-gole@ti.com,
	megi@xff.cz,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	jonas@kwiboo.se,
	robh+dt@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH v4 0/3] Add Support for Orange Pi 5
Date: Tue, 10 Oct 2023 01:48:17 +0200
Message-Id: <169689524286.203772.4910357852010517555.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1696878787.git.efectn@6tel.net>
References: <cover.1696878787.git.efectn@6tel.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_164826_249574_1E544425 
X-CRM114-Status: GOOD (  12.22  )
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

On Mon, 9 Oct 2023 22:27:24 +0300, Muhammed Efe Cetin wrote:
> These series add initial support for Orange Pi 5 and SFC node for RK3588S.
> 
> Changes in v4:
> * Update SFC patch commit description.
> * Add Reviewed-by tags from Dhruva Gole <d-gole@ti.com>.
> 
> Changes in v3:
> * Remove cap-mmc-highspeed property from sdmmc.
> * Make vcc_1v1_nldo_s3 an alias of dcdc-reg6 and add regulator-max-microvolt, regulator-min-microvolt properties.
> * Make press-threshold-microvolt 1800 for recovery button.
> * Remove assigned-clocks from sfc node.
> * Drop some properties from sfc node in orangepi5 devicetree.
> * Move snps reset properties to rgmii_phy1.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 board
      commit: ce9d927720d642e20296988b6c1c0f877209be8d
[2/3] arm64: dts: rockchip: Add sfc node to rk3588s
      commit: 3eaf2abd11aa7f3b2fb04d60c64b2c756fe030eb
[3/3] arm64: dts: rockchip: Add Orange Pi 5
      commit: f20a420e21644a0f79e0f8108a50b9836306cf23

I've dropped the vendor mem-supply stuff and resorted some properties
and nodes.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
