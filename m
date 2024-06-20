Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16D5EC2BBCA
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 20:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzC+F1WXMzzeWXvdE3p3UCJFuiZNe9NrfWH58m1DMCo=; b=bwLSZF/z4GqFgZ
	g0xrtmyJ2SbRiMS0LpFWV/6NCxXWXLMlLaUA5Pmfh944HtObCnZamU0DkhDi++Ju8JYwrf0kDltc9
	vD5wuvvt9pcn2yqCZU3X4XqG4dkSkv+hLdaCKk+3cnOgoWS02PbPRi/uT516cIc3kvCf/dbZcU+3A
	cCShxhE+Hu2X6qzqqmyyLovKrwzueL+LVp4ScD2mYgrmoq88bI3DFrE+CIDZPbsIH264TtyER2U/v
	LVD8QENVUv81hR/lpxNazCg3/I89660ZbGaqxvJQMHl173esjdfXQ31YHKXoLBqq/gqE4SV4azn5/
	LTXYpZ8ZM2g0Y4yVnLTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKOZr-00000006dp1-1TDm;
	Thu, 20 Jun 2024 20:40:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKOZl-00000006dlK-0pu2;
	Thu, 20 Jun 2024 20:40:11 +0000
Received: from i5e860cc8.versanet.de ([94.134.12.200] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sKOZb-0001mc-Cv; Thu, 20 Jun 2024 22:39:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <didi.debian@cknow.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	devicetree@vger.kernel.org,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v5 0/8] RK3588 and Rock 5B dts additions: thermal, OPP and fan
Date: Thu, 20 Jun 2024 22:39:55 +0200
Message-Id: <171891591945.88443.14666251613914983261.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
References: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_134009_260103_F156CAE1 
X-CRM114-Status: GOOD (  10.28  )
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

[1/8] arm64: dts: rockchip: add thermal zones information on RK3588
      commit: 97d61227d6bb0023a325ab2f87e4438a858207a2
[2/8] arm64: dts: rockchip: enable thermal management on all RK3588 boards
      commit: 4afa9056ed9e3d9ff036f3576cb137a011448295
[3/8] arm64: dts: rockchip: add passive GPU cooling on RK3588
      commit: d64d337f1856bd0e5cbfc60b6f0458ad4951d05e
[4/8] arm64: dts: rockchip: enable automatic fan control on Rock 5B
      commit: 2aab8905a843aef624565c014a34d155f8702135


Don't worry, I'll look at the other patches too.
Was just easier on my mind to this in blocks ;-) .


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
