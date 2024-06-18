Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D014C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 07:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30aUda+BHJ5zLkiEpxYmGbzUZC9neTZi5SNLCydtm80=; b=THTMl97VSSJ9hT
	S3nJ7yYtz2aETKG7RGqFGVxyObtxtdVUpJHsPdf4nq0o4fAhj6t+5crREjVsJetDP86m6LiLUvPEX
	cuRXTPeGv1E7r3gGWCL/DxzDkIRTH6zM9ltxYleUpNlRSPtk4RvwCFlNqAzA74uFSqZohYVDcl7k+
	hKxTHMzO+gWbmn0ELv+Ms2qgLwPurvpuxvsDUlgsgdx26APyDCiHvxXeGOOZNVZdq2uKGMRSzejOm
	ldeVapK3D7lBsiLc6g+pJmBEQpwmJIG/o91jyzS7zRgC1slR8uw6tYrjuV6pQs2W0KinZJgeHgemj
	CeWQj5Yf/fNcQtG+L3SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJTcz-0000000E17O-2nTY;
	Tue, 18 Jun 2024 07:51:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJTcw-0000000E15g-2sup;
	Tue, 18 Jun 2024 07:51:39 +0000
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJTco-0006Ly-DP; Tue, 18 Jun 2024 09:51:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Algea Cao <algea.cao@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] phy: phy-rockchip-samsung-hdptx: Enable runtime PM at PHY
 core level
Date: Tue, 18 Jun 2024 09:51:28 +0200
Message-ID: <19099161.fAMKPKieAE@diego>
In-Reply-To: <20240618-rk3588-hdmiphy-clkprov-v1-2-80e4aa12177e@collabora.com>
References: <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
 <20240618-rk3588-hdmiphy-clkprov-v1-2-80e4aa12177e@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_005138_762166_29A556BB 
X-CRM114-Status: GOOD (  12.05  )
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

Am Montag, 17. Juni 2024, 23:48:10 CEST schrieb Cristian Ciocaltea:
> When a new PHY is created via [devm_]phy_create(), the runtime PM for it
> is not enabled unless the parent device (which creates the PHY) has its
> own runtime PM already enabled.
> 
> Move the call to devm_pm_runtime_enable() before devm_phy_create() to
> enable runtime PM at PHY core level.
> 
> With this change the ->power_on() and ->power_off() callbacks do not
> require explicit runtime PM management anymore, since the PHY core
> handles that via phy_pm_runtime_{get,put}_sync() when phy_power_on() and
> phy_power_off() are invoked.
> 
> Hence drop the now unnecessary calls to pm_runtime_resume_and_get() and
> pm_runtime_put() helpers.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

checked against phy_create()

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
