Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 256D5C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 15:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yoVJLohPQo/eSNtPTq0Hc8033nq6Qi6OMYLqSCpRKA=; b=MPD0hvqwQm0Vgt
	KaldCavPMNGa5tvzNGRjkd0YPNA+La7N4NwCso88JhwxY86T4JaSSHaITUepnqv465VTM2Kzrm9VV
	uF7dYWVATXDztQGt0Yb5q2qs/rgzQQCmQ1YcTZ3ZqPQU8O90j32u8CxCZKJ3y5hE2j3aOsoxfBA09
	MSQEkP8U573/BqLcEqgFxKSW/uodyWS39PZSy0pr9g/nKyd4yk175cwgBKkkbVOrnLI23XkSRyc4i
	1n1SR7xim+CBF2Rz0mqp+dtZc/C6O7jxSbC7VTJHcH5Sswyr+0Wauxu/SqdmB8t0nhmmFwqhcSdoB
	ZM6yLF+Xb7y6MCMUXuCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o02qk-00DWzV-PO; Sat, 11 Jun 2022 15:16:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o02qE-00DWne-Lm; Sat, 11 Jun 2022 15:15:59 +0000
Received: from p508fd9f0.dip0.t-ipconnect.de ([80.143.217.240] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o02q5-0004vU-GH; Sat, 11 Jun 2022 17:15:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>,
	Liang Chen <cl@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/2] HDMI Audio on RK356x/Quartz64 Model A
Date: Sat, 11 Jun 2022 17:15:44 +0200
Message-Id: <165496044123.1951281.17858284746435155251.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220611065300.885212-1-frattaroli.nicolas@gmail.com>
References: <20220611065300.885212-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_081558_755669_7EF6187F 
X-CRM114-Status: GOOD (  13.98  )
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

On Sat, 11 Jun 2022 08:52:58 +0200, Nicolas Frattaroli wrote:
> This enables HDMI audio on Quartz64 Model A, and the RK356x SoC in
> general.
> 
> i2s0 on the RK356x is connected to HDMI, and only has one DMA. I've
> confirmed this with the TRM.
> 
> To test this, one needs a video clock, i.e. there is no audio if your
> screen is off. The framebuffer console or something else needs to be
> running to get audio output.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: rk356x: Add HDMI audio nodes
      commit: 697ee8546e241bd5fc175c0cfd5d8b0c8ce39697
[2/2] arm64: dts: rockchip: Enable HDMI audio on Quartz64 A
      commit: 4188962d993ef3633a61f66ba5afe9e43088f3c5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
