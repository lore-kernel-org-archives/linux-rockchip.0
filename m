Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B866BC4829F
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 19:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ej65Hec2rWg8p1qrVkZx4LDN9iGAffKGPX9Q3MSrtug=; b=LoW835hPp19xug
	ZtgWLxG9l9QxYGZz+NLrRWo/0c+3h1h+2AZIv3snEqs0hRAY8dbwiXhSMiybH2EFlNPYUG4pcv0wn
	glVHwLOm/eVBFhFWEa18ufGm9NjX/NiKfFjq25B8Va9qklvAmn3JX1erhJfWpv0LAGEHHC7Qiv0cv
	LQOl2SbdvXZgWucl/zVxrFmjNXphM6UM6LSDdiYlXFXMgw1r8EwjVIv4Q4rR+jU27lshkmuLT6ISJ
	BbBKv5jMPHGciCqXYBlNPiDwdTkPSiupA04hfi8DeBVsUz6j+/BzKqTjk+b01FLsA7EFUz8i6NsKE
	z2/e2hLKRCf+o2wIuLxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGo-0000000AQeb-2Xhv;
	Tue, 13 Feb 2024 19:16:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGb-0000000AQUp-2vpB;
	Tue, 13 Feb 2024 19:16:31 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZyGV-0008FY-D6; Tue, 13 Feb 2024 20:16:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1] arm64: dts: rockchip: rk3328: Drop interrupts property from pwm-rockchip nodes
Date: Tue, 13 Feb 2024 20:16:17 +0100
Message-Id: <170785172859.3347621.16554815233925268437.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <5551846d-62cd-4b72-94f4-07541e726c37@gmail.com>
References: <5551846d-62cd-4b72-94f4-07541e726c37@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_111629_869917_20D78974 
X-CRM114-Status: GOOD (  10.38  )
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

On Mon, 5 Feb 2024 00:16:43 +0100, Johan Jonker wrote:
> The binding doesn't define interrupts and adding such a definition was
> refused because it's unclear how they should ever be used and the
> relevant registers are outside the PWM range. So drop them fixing
> several dtbs_check warnings.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3328: Drop interrupts property from pwm-rockchip nodes
      commit: 1bbd894e2ae67faf52632bc9290ff926d9b741ea

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
