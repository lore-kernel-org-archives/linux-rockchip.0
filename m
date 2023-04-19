Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FBE7C77B78
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Apr 2023 15:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bWwAYpFqaKfki6aQGY+E44hMsua8u/z2mM4TEV/VLc=; b=sE/JgfiLFbWlzi
	gYE+WhUk974zsWZB2CkF1PD0rMpeUpdZJoIn08KxMoU5gccdEjSVcmTkvhdiGL4urI1ahp4CQeKlp
	4PZKEoFFo8VIxAQ4YOSt1XhpYoHYcuqgud8a8PHEWwKCWNzqOMmc2s2Zxtp6qBQhKBa3e6ua0s1Ck
	7ehuUHZQKj1GjazSaf1Hlsi2u1Djq3gC/oYL2FxYJ/gqkhSSH/PfbCgEOwlNkA2ZVSu2JnIv3rNim
	PgDHuDLFLqcYh6LSJu07yb4A0Xoohe9wC4a13aChi9hDWN4Fhqsrh1tf+HLfIn4fw1JJFwacEKEsD
	ZmHKX1GA0iHtZ9/b0HtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppAAt-005pCI-1g;
	Wed, 19 Apr 2023 15:56:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppAAr-005pBC-1E
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Apr 2023 15:56:50 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ppAAc-0003JF-Ra; Wed, 19 Apr 2023 17:56:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Marc Zyngier <maz@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	XiaoDong Huang <derrick.huang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Peng Fan <peng.fan@nxp.com>,
	kernel@collabora.com,
	Rob Herring <robh+dt@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Peter Geis <pgwipeout@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: Re: (subset) [PATCH v4 0/2] Add Rockchip RK3588 GIC ITS support
Date: Wed, 19 Apr 2023 17:56:33 +0200
Message-Id: <168191977930.4131912.6423526852468293382.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230418142109.49762-1-sebastian.reichel@collabora.com>
References: <20230418142109.49762-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_085649_416171_E6EE1B15 
X-CRM114-Status: GOOD (  10.90  )
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

On Tue, 18 Apr 2023 16:21:07 +0200, Sebastian Reichel wrote:
> This adds GIC ITS support to Rockchip RK3588, which is affected
> by an integration issue effectively breaking shareability support.
> PCIe2 support will follow in its own series.
> 
> Changelog:
>  * Changes since PATCHv3
>   - https://lore.kernel.org/lkml/20230417214035.101190-1-sebastian.reichel@collabora.com/
>   - Add RB from AngeloGioacchino Del Regno
>   - Update patch description
>   - Update Kconfig description
>   - rename flags from BROKEN_SHAREABILITY to FORCE_NON_SHAREABLE
>  * Changes since PATCHv2
>   - https://lore.kernel.org/lkml/20230417150038.51698-1-sebastian.reichel@collabora.com/
>   - apply changes requested by Marc Zyngier
>  * PATCHv1
>   - https://lore.kernel.org/lkml/20230227151847.207922-1-lucas.tanure@collabora.com/
>   - uses of_dma_is_coherent() instead of providing errata info from kernel
>  * RFCv1
>   - https://lore.kernel.org/lkml/20230310080518.78054-1-lucas.tanure@collabora.com/
>   - uses 0x0201743b IIDR for quirk detection and misses errata #
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: rockchip: rk3588: add GIC ITS support
      commit: 9325c119312ce7e228216c1070fbaaeb96f7afcf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
