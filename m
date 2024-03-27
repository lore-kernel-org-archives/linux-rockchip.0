Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 285E7C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 10:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqQCs9SZgGF2FIZoA1F8X3jWbKkHfwL52bcYN2uNngc=; b=tDb1CI8/JJMlNi
	l7T27xm0QI+8MFxkVjRY0YCjYquGACOlPny7dePKNFaobiWrON34SoPGiO+NkCdNxLzofqdmlzn0b
	0xRjNPYwYhiwMkSy95OhQZQ7uw++KbNd2GAT5C0NMqg73yAFPgdNDgcUdqmIsKkBdJ3Dgz3vY/y3T
	ItbU9zBGOPVr1mKoF7ZMKfFwPhWLvgD089YkVl3v7de6lH0SxCTugMZWF3dKmA0tu82Px6uTR4Krz
	jiiSSXpkuUPpclRK5n6E2GIx4faBD0Uhf8qtRUJ3/5zPLYpwy2hjTxAiSGSXAZDTjk4uP9hO+/4Sp
	QhcttXB+jiSPjibkIr/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpQWK-00000008Pm5-3CLG;
	Wed, 27 Mar 2024 10:28:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpQWH-00000008PlY-1Y1E
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Mar 2024 10:28:34 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rpQWC-0005wd-RD; Wed, 27 Mar 2024 11:28:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 0/4] RK3588 GPU support
Date: Wed, 27 Mar 2024 11:28:26 +0100
Message-Id: <171153529297.1177019.4688944301157400463.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326165232.73585-1-sebastian.reichel@collabora.com>
References: <20240326165232.73585-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_032833_508580_E23C78FC 
X-CRM114-Status: GOOD (  11.37  )
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

On Tue, 26 Mar 2024 17:52:04 +0100, Sebastian Reichel wrote:
> Panthor has landed in linux-next including the DT bindings, so it is
> time to add the necessary DT changes to support the GPU on RK3588.
> This adds support at SoC level and support for the EVB1 as well as
> the Rock 5B, which covers both variants found in RK3588 boards:
> 
> 1. Having dedicated regulators for GPU core and GPU memory. This
>    is handled by coupling both regulators.
> 2. Having a shared regulator for GPU core and GPU memory.
> 
> [...]

Applied, thanks!

[1/4] arm64: defconfig: support Mali CSF-based GPUs
      commit: e6968faa33ce754bbe36dd6d9fe6951ec10616b1
[2/4] arm64: dts: rockchip: rk3588: Add GPU nodes
      commit: 6fca4edb93d335f29f81e484936f38a5eed6a9b1
[3/4] arm64: dts: rockchip: rk3588-rock5b: Enable GPU
      commit: 038347286941148b6fd0cc2c40afcd540315aa6f
[4/4] arm64: dts: rockchip: rk3588-evb1: Enable GPU
      commit: 75a287219a782951e671026ed4fbe611e4629c83

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
