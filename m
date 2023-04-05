Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31610C7619A
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 17:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mESrgKW67rt0bmO/3++RpiemzYEdwhH1hLTGaDyJUQo=; b=2G4ahkqwad4jq5
	YUpOBuQThur3ua9lioRVq0cVMiGPdWuK2sypcQOykogTRdAo/4DgITbimI4rho9jdhKj074rofyyc
	F1hfgot2CyRCnvn4o0LHnOCLBLuTfNkwdUTYabk8jrznZNvt+efY0Y2r35MGomL8XkT24Cvw5ATYl
	eD85h7c5rYSmV07YATp1Ux9s3YRbx1+7Pkz9ta9OL2NBPySGOUl8urIcDgS+v/jzUxKyqW5RT0y7O
	7tQZjXzXLHU2qoG2QIjK7S7sealAlm2tVf/S516PAB57Sc2W800bL+0iFVzN4u4PMmN35F5PH33o8
	Co6WAw7PqYf73PFVDbtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk7DA-005IE6-3A;
	Wed, 05 Apr 2023 17:46:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk7D1-005I7r-2h;
	Wed, 05 Apr 2023 17:46:14 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pk7Ct-0000Me-Pz; Wed, 05 Apr 2023 19:46:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 0/5] Enable I2S support for RK3588/RK3588S SoCs
Date: Wed,  5 Apr 2023 19:45:58 +0200
Message-Id: <168071663560.3186456.4135827917323406842.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230402095054.384739-1-cristian.ciocaltea@collabora.com>
References: <20230402095054.384739-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_104611_875452_B190C392 
X-CRM114-Status: GOOD (  13.61  )
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

On Sun, 2 Apr 2023 12:50:49 +0300, Cristian Ciocaltea wrote:
> There are five I2S/PCM/TDM controllers and two I2S/PCM controllers embedded in
> the RK3588 and RK3588S SoCs. Furthermore, RK3588 provides four additional
> I2S/PCM/TDM controllers.
> 
> This patch series adds the required device tree nodes to support all the above.
> 
> Additionally, it enables analog audio support for the Rock 5B SBC, which has
> been used to test both audio playback and recording.
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: rk3588s: Fix SCMI assigned clocks
      commit: 87810bda8a8472a9a106c6de34a032fb6a4b425b
[2/5] arm64: dts: rockchip: rk3588s: Assign PLL_PPLL clock rate to 1.1 GHz
      commit: b46a22dea7530cf530a45c6b84c03300083b813d
[3/5] arm64: dts: rockchip: rk3588s: Add I2S nodes
      commit: 8ae112a5554fb1580fc5564f8610cef85f2e3f7b
[4/5] arm64: dts: rockchip: rk3588: Add I2S nodes
      commit: 6f48c6f5859296eaf54a55f436db3a248f772e4d
[5/5] arm64: dts: rockchip: rk3588-rock-5b: Add analog audio
      commit: 55529fe3f32d8c2fdb70981f2e151735e090a1e0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
