Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0793CC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 20:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/PvyLgL6vwlaYPNSEErRvG/dy1oG3G0NerdoXZZyiY=; b=CCz9DB7eof8IpS
	axNfPJFeC4Y7XKdNFUtqE+xSfVAKjVnM6O7NK54uYJoUYWZYyY1JCRs1yO8GhYvr2SsSu2w7+EHyK
	rdeSmTTVTQPCR5eSs69Ow5Svadc0jGF2zfpGyBsr0ti5As7ZNRx0IaHkwTzmkrjfvRyR3Eim65MKR
	IIwJz70iAY7g1J2gp+1eXuIyz42spuBu5COeNEyySSbbzS/LGWk6bY8242vyEWaWsGiLTHxt9n/US
	l0yzru0BJTso8L+dsoqF3TRCasqDiwXIvc2p/ReeIjhI+8uiMIKGHf0vPw+47yyP2bweg9hCiDnuO
	aQifRzKxDc0aRKQn4i2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBL1Y-00DqYM-1q;
	Thu, 07 Dec 2023 20:31:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBL1U-00DqWR-2v;
	Thu, 07 Dec 2023 20:31:06 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBL1Q-0005tY-Hw; Thu, 07 Dec 2023 21:31:00 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Lukasz Luba <lukasz.luba@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	daniel.lezcano@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to rk3399 GPU
Date: Thu,  7 Dec 2023 21:30:59 +0100
Message-Id: <170198105573.18516.6264175947902125145.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127081511.1911706-1-lukasz.luba@arm.com>
References: <20231127081511.1911706-1-lukasz.luba@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_123104_948935_E88607A7 
X-CRM114-Status: GOOD (  11.77  )
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

On Mon, 27 Nov 2023 08:15:11 +0000, Lukasz Luba wrote:
> Add dynamic-power-coefficient to the GPU node. That will create Energy
> Model for the GPU based on the coefficient and OPP table information.
> It will enable mechanism such as DTMP or IPA to work with the GPU DVFS.
> In similar way the Energy Model for CPUs in rk3399 is created, so both
> are aligned in power scale. The maximum power used from this coefficient
> is 1.5W at 600MHz.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add dynamic-power-coefficient to rk3399 GPU
      commit: 381d48fbada9b5b39f5a811bb8fe76365d6bdd5c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
