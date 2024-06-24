Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B76C4C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 16:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UdbMxwlIm1YABLVFGgmBooRFOwoGj67HLUPdrcBobTU=; b=MQhccfopcXh/KL
	wBHBzgQXCsN0m9xgRJO/8KdXYUfSV4rY61iCLaSb2W0AP9ESe7uNIzsvjuJ7BPqrOaKsA4IdczjqO
	F/vMsZDZkJFgWyzpad6s8m5oaT/Tqe1SofufFl0XQqICUYMGHQQzsaKJDezf6uYfKdXDRyUgyezB4
	iAzTbe8XylMK6vNR5AzsVaRhrHRySJF18ETS7xoiNo5zja0yrbPVsY69sN776yaUfKNSCBltZ/nvM
	UM2+Z/30XRfZTwdm/K8I4GcI2V71E9ZHqU89V6nCHkdqSlG6LHWBUHMtE+wUUp8FHqZpD4npNN/NK
	lyf7FXmnR0kHAF1PLN9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmRI-0000000HT1Z-0lXL;
	Mon, 24 Jun 2024 16:21:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmQn-0000000HSe8-2dAn;
	Mon, 24 Jun 2024 16:20:39 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQY-0001wn-VT; Mon, 24 Jun 2024 18:20:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Chen-Yu Tsai <wens@kernel.org>
Subject: Re: (subset) [PATCH v5 0/8] RK3588 and Rock 5B dts additions: thermal, OPP and fan
Date: Mon, 24 Jun 2024 18:20:12 +0200
Message-Id: <171924573799.612064.3075817964360702437.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
References: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_092037_922795_6397557B 
X-CRM114-Status: UNSURE (   9.57  )
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

On Mon, 17 Jun 2024 22:28:50 +0400, Alexey Charkov wrote:
> This enables thermal monitoring and CPU DVFS on RK3588(s), as well as
> active cooling on Radxa Rock 5B via the provided PWM fan.
> 
> Some RK3588 boards use separate regulators to supply CPUs and their
> respective memory interfaces, so this is handled by coupling those
> regulators in affected boards' device trees to ensure that their
> voltage is adjusted in step.
> 
> [...]

Applied, thanks!

[5/8] arm64: dts: rockchip: Add CPU/memory regulator coupling for RK3588
      commit: 0ba0560982bc8d0c3fb3ca209fd0ed29f81402ac
[6/8] arm64: dts: rockchip: Add OPP data for CPU cores on RK3588
      commit: 276856db91b46eaa7a4c19226c096a9dc899a3e9
[7/8] arm64: dts: rockchip: Add OPP data for CPU cores on RK3588j
      commit: 667885a6865832eb0678c7e02e47a3392f177ecb
[8/8] arm64: dts: rockchip: Split GPU OPPs of RK3588 and RK3588j
      commit: a7b2070505a2a09ea65fa0c8c480c97f62d1978d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
