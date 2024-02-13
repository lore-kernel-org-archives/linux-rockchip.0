Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20107C48260
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 19:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7XYzyvN+2OmWKYLg2BTObU0nflJRznAFnttvTj4NDI=; b=bANPrBvQdsjvSe
	EEbPXxFT5TPpbtwGKAm4NHDmyxf5ZDukNZcyBVM3N4YFJ83vbEQTxYCGyNI9whpoBgF7/BuvGdtCO
	MGK9pJ6oSUW5UhjmwlbXJKqpJ+Gi0DiGPkNE/msaUP6/phciuHPBWJqo+DLobZkAHBA7KEs8ampNR
	Zi8XWC/MJxrRMNYVdSBgL8xmE7WA6BVNrcZOtJDPJL8I8xy6R10uMifIS5z7PGKtvj2J57OL21FdS
	CSwKZzCJ6zacjimk9ilKnaINneXxre38eSWha3BfND5FtAtfHZWLMjIRg6k4lshPk1aDCPkdmgqsm
	fJVLJqAR6B3iQXATCXCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZybU-0000000AUxo-1YYs;
	Tue, 13 Feb 2024 19:38:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZybR-0000000AUw0-1p32;
	Tue, 13 Feb 2024 19:38:02 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZybL-0008Re-Tk; Tue, 13 Feb 2024 20:37:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Trevor Woerner <twoerner@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: rock-pi-e: adjust phy-handle name
Date: Tue, 13 Feb 2024 20:37:53 +0100
Message-Id: <170785305473.3362031.7094478212374122329.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116204103.29318-1-twoerner@gmail.com>
References: <20240116204103.29318-1-twoerner@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_113801_495420_CD5364F4 
X-CRM114-Status: UNSURE (   9.62  )
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

On Tue, 16 Jan 2024 15:41:01 -0500, Trevor Woerner wrote:
> The rock-pi-e currently comes in 4 board spins, the latest one (v1.21)
> swaps out the Realtek 8211e PHY for an 8211f PHY. Therefore modify the
> phy-handle name to be more generic.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: rock-pi-e: adjust phy-handle name
      commit: abe3426c8176b2713713e8ba7cbc7cecc5dedd81

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
