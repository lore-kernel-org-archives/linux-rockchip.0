Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D94B8C47258
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 21:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hh8mSeT2iWP4c7YITQNjhGCPunZUidt4lrUy2u6/C2o=; b=RA1hQcqmxWcbRx
	oms8s0koRBAhT72f6hTLo7OZAFFPaB/n889K6reJSLsjWeVfXzQ6cVWueOhGiIh/lCXBT7KB2j+yo
	Mx0Va27WfPTThzWFW8QoABnuQL1DZ29Dr4lMvGM1EBV9hU53UY5N2L0cHFfwm7N1K8OuVCO7mw7pJ
	j4HRz+c9tpmXFR5Au+ecg0H6yS3sUDrglQ2ZJo/+E3f44dXH4UC33hyZsIbQU51cinafhLGFqZsYx
	f7LYRGNvRNY0D9EVXo01goJ7Q0C1cEXemDeFhOEL1TCNiDtnK2w19GMuyEVBITWqMLk67Tod0koR0
	+w5h/h1gjbdsXUb4yzxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT727-00000001vf4-145b;
	Thu, 25 Jan 2024 21:13:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71Q-00000001vEs-2oVD;
	Thu, 25 Jan 2024 21:12:30 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71I-0002EX-8a; Thu, 25 Jan 2024 22:12:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	efectn@6tel.net
Cc: Heiko Stuebner <heiko@sntech.de>,
	jonas@kwiboo.se,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	sebastian.reichel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	krzysztof.kozlowski+dt@linaro.org,
	inindev@gmail.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Add Support for NanoPi R6S and R6C boards
Date: Thu, 25 Jan 2024 22:12:07 +0100
Message-Id: <170621707732.1872080.11289354696658306428.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1703934548.git.efectn@protonmail.com>
References: <cover.1703934548.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_131228_729565_F9391AE4 
X-CRM114-Status: GOOD (  11.73  )
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

On Sat, 30 Dec 2023 14:17:58 +0300, efectn@6tel.net wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 
> Hi, this series add support for RK3588S based NanoPi R6S and R6C boards.
> 
> Changes on v2:
> * Add commit message to dt-bindings patch.
> * Fix dtbs_check warnings.
> * Rename vcc_3v3_s0 -> avcc_3v3_s0 and create new fixed vcc_3v3_s0 regulator.
> * Rename vdd_ddr_pll_s0 -> avdd_ddr_pll_s0.
> * Rename vdd_0v85_s0 -> avdd_0v85_s0.
> * Fix rk806_dvs1_null and rk806_dvs2_null on pmic node.
> * Add system-power-controller property to pmic node.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add NanoPi R6 series boards
      commit: 2eaa5e73f51ff5abce18d58f6d0635880df1b8d0
[2/3] arm64: dts: rockchip: Add support for NanoPi R6S
      commit: f1b11f43b3e983b26d8010fc43ba6c2b979826f2
[3/3] arm64: dts: rockchip: Add support for NanoPi R6C
      commit: d5f1d7437451dbd86a91747793ecd7842e0ce88f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
