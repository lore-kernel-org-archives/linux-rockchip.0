Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4FB5C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 12:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zni04M9Oh01Vg7nsNCerpnfMxi2wpLdIoIkzBfWwCpc=; b=yGMafDZpaRh0qj
	15jQ+m/jcYy2kASNxqIJRB2HovMjvo6gSImddM3Ja5p757xZj6TpRHMTTNO8XyYwrbMADIn7d/Hhc
	eiBmg3I49ICn/6gfczOgef4KQHUCFCe9iEGelelYB67D3gNcel31QeuQGV9rcd3FsBHh1Umx7krUY
	ZrZb3A0uPnKKs0nLcpSFNyVm+LZoT5g/kYESwpbOW9Be35wtFIr5v1bc9wUn/X/l5YRRwDPEKE+kR
	/PmOaVgfG9jSMuvkVrlqCecwLN6HaV+8J1QC36ZOWOqdQKx6wIewTis+1kopkgGiXmHTSOo97uzZP
	aHuMuhYa82CbYao4qtYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPLc-00BZvu-Gu; Mon, 17 Oct 2022 12:36:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKU-00BZKB-Gm; Mon, 17 Oct 2022 12:34:53 +0000
Received: from p508fc122.dip0.t-ipconnect.de ([80.143.193.34] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1okPKM-00087p-Ks; Mon, 17 Oct 2022 14:34:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: enable pcie3 support for rock-3a
Date: Mon, 17 Oct 2022 14:34:33 +0200
Message-Id: <166601006783.173248.8896110075615281181.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221006152524.502445-1-amadeus@jmu.edu.cn>
References: <20221006152524.502445-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_053450_567364_641075E2 
X-CRM114-Status: UNSURE (   9.93  )
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

On Thu, 6 Oct 2022 23:25:22 +0800, Chukun Pan wrote:
> Changes from v2:
> * Removed changes to pcie2x1 node.
> * Collected acked-by and tested-by.
> 
> Chukun Pan (2):
>   arm64: dts: rockchip: Add regulator suffix to rock-3a
>   arm64: dts: rockchip: Add PCIe v3 nodes to rock-3a
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add regulator suffix to rock-3a
      commit: 49665ab0ed5eed4fa7b8a6b236ff2df681c89673
[2/2] arm64: dts: rockchip: Add PCIe v3 nodes to rock-3a
      commit: 0522cd8112204d124d714eee7e9f0cac6de999d9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
