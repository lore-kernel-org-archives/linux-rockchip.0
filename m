Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11366C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jan 2022 15:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNDJEyLp0/hgxgpt0C9BB6uT4VhReShEIDfNONMC7Ac=; b=T13Qx9Y33C5peR
	5mCDF2aV0m9vcymBC1jpyWkO79ibyFu3zuwKhOfEo6PE8EMJPHOQjU5T1GpLbDF9tBfFFe/VPG3tg
	zi2w0OA2wT5Upra5QlpIALlLa0Xd39njjmgdPF3j+fra03rjh+XOKivDW1mHJjzM082n1YmonGOl5
	KgBBx3tqC3VkNvl/XKRaDGdy7gnnl6EvgwJw1Ox9Wwx7VTga5G4dN3nHzx7dt/cxyNofZpT1BOKd5
	MB9pwv5wedZ5qjCLebdRHgSgcJL5Lr1D41kruSTmEURnyOaJbl+1QHGMkGOyP0FvX6B/be4FuDbcY
	ZqfYt3OETEgxMuoVTqog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBf5s-001Au6-2y; Sun, 23 Jan 2022 15:47:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBez3-0018cp-0o; Sun, 23 Jan 2022 15:40:51 +0000
Received: from p508fcdea.dip0.t-ipconnect.de ([80.143.205.234]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nBez1-0005OB-3z; Sun, 23 Jan 2022 16:40:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <linux@fw-web.de>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v2] arm64: dts: rk3568: drop pclk_xpcs from gmac0
Date: Sun, 23 Jan 2022 16:40:45 +0100
Message-Id: <164295214820.418606.1356481887548959776.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220123133510.135651-1-linux@fw-web.de>
References: <20220123133510.135651-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_074049_151101_7A16C1C3 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sun, 23 Jan 2022 14:35:10 +0100, Frank Wunderlich wrote:
> pclk_xpcs is not supported by mainline driver and breaks dtbs_check
> 
> following warnings occour, and many more
> 
> rk3568-evb1-v10.dt.yaml: ethernet@fe2a0000: clocks:
>     [[15, 386], [15, 389], [15, 389], [15, 184], [15, 180], [15, 181],
>     [15, 389], [15, 185], [15, 172]] is too long
> 	From schema: Documentation/devicetree/bindings/net/snps,dwmac.yaml
> rk3568-evb1-v10.dt.yaml: ethernet@fe2a0000: clock-names:
>     ['stmmaceth', 'mac_clk_rx', 'mac_clk_tx', 'clk_mac_refout', 'aclk_mac',
>     'pclk_mac', 'clk_mac_speed', 'ptp_ref', 'pclk_xpcs'] is too long
> 	From schema: Documentation/devicetree/bindings/net/snps,dwmac.yaml
> 
> [...]

Applied as fix for 5.17, thanks!

[1/1] arm64: dts: rk3568: drop pclk_xpcs from gmac0
      commit: 85a8bccfa945680dc561f06b65ea01341d2033fc

I've adapted the subject to
    arm64: dts: rockchip: drop pclk_xpcs from gmac0 on rk3568
though. Please use prefixes matching the subsystem
(i.e. arm64: dts: rockchip: ... in this case)


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
