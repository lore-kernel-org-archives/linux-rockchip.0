Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EB83CD98F7
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 23:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5rQ/iLRyY8L13ROGGV6Kv14HbBbol7GGO3EPKpXzbs=; b=mz8TwCycdJxq9Z
	mhjabOzLIW2nsVCDuqkWc4DdTNJ2/QSppBNznNUdWaASL4ws1BGVEYNiOkmoQrXH359MJq/Be6QNI
	390ZQEnv1am9ujXdDGoON/Lkq9/Vgs9wa932tucRzz267/ZVImK48oOPigcAArbjXFfjeQP6ZAk8B
	mA6tGO62pVVYxW+3TniRUPilAsBlia0akrZSQuVctpP6aTRyG1Z4u297Y7+kNxbpLa3QnNoN4BItQ
	eWJiqiJiPoETjAxJ50tCt1qboDxxrK9m/JGhuM9nY+EDGjN74Hm30rtJYxffIOBl/vGPwMHuG90/u
	xdM57oDooVT/N8FIepgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgdO-0000000BG9Y-2FcW;
	Thu, 13 Nov 2025 23:21:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgdL-0000000BG9B-2Pga
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 23:21:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=MUCMochQrd1DfpxoWgDSOw9hEbqaoIKOIax/Q5hH7zc=; b=HSIzbNu6WDSeZZs1nCUH8/kupF
	pWNShvr04SQpnuTi2V/8XmS9x74UV8cBytjaZtdZaoCLRnU/BqMAVFNDtcYsYucK/rV0XzQhNZ0o8
	G6ED+pofk+Oc2XH/DMdHJ4LaxU/v85DxjnG+PCOuOa5ZaCfxwxJbh49hotxpdRozJ0fF4JmnR0P+B
	iTjuQziQqRyIOQUTjFSummn4OjhqV/cBag+xOxudKUs9taiyNbZKuwUaqbWbwArTCQ2OaUO5gtD2S
	tiiKp4c5zXZH8egdtlT6MwwHY2FNAFuOqNtpN3FkBeguqYpTzoX9m0XIIB+WQaxa2gvJq68IeX0Mr
	3CHwgn1A==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgdB-0005o9-HN; Fri, 14 Nov 2025 00:21:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Adrian Hunter <adrian.hunter@intel.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: Re: (subset) [PATCH v2 0/2] mmc: sdhci-of-dwcmshc: Add command queue support for Rockchip SOCs
Date: Fri, 14 Nov 2025 00:21:31 +0100
Message-ID: <176307608061.496957.2197880320790247592.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251031-rockchip-emmc-cqe-support-v2-0-958171f5edad@collabora.com>
References: <20251031-rockchip-emmc-cqe-support-v2-0-958171f5edad@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_152143_617090_2BA59ACB 
X-CRM114-Status: GOOD (  15.57  )
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


On Fri, 31 Oct 2025 16:58:22 +0100, Sebastian Reichel wrote:
> Right now at least the recent Rockchip SoCs do not support system
> suspend with the mainline kernel. I'm currently looking into
> improving support for the RK3576 platform.
> 
> On the Sige5 one of the issues is the eMMC controller, which fails
> to suspend when trying to disable CQE support. While investigating
> I found a missing Rockchip quirk in the Rockchip kernel, which is
> needed for CQE. Since the RK3576 DT has been upstreamed with the
> 'supports-cqe' property (RK3588 does not yet have it), we run into
> this problem for that platform.
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: rockchip: add eMMC CQE support for rk3588
      commit: 9d856aa1c81930a5d8df0e29d6cb0faa3fa87206

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
