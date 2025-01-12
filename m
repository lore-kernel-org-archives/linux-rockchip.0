Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B219E77188
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jan 2025 08:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgUXZUWubwMUcrjVdQYuE/MGtc7mOKVposoJb17zWN8=; b=BE812SyTn37ggX
	ASfhS+hDkg8b/cUDPnyvevnqH/HrI8NPSslD7gdcmBnTZ3qVSMtk5qHgsVU2bZyDmGuVPpFeW3L+F
	qwJzKNShYidp8fHBQ0+0aswIDuTY6K2KEtHAAJejEfBYn7FEBqtoDYdMS3+gekoQWh4X/v+sBgOha
	LJWHk5NwWT91yZRq65kptgjBEGONaCX02FAXCkVpFAbJDAWWVCDgidbs9CPsfG5UB3SIvabnuYm6z
	bhSsEwXxcvMXGqbN5Tjb0lhNwqllFpfTAHnFTgQtHGsHVTOwTXIyu56Hl5D299vTS9BPy+MMYswqR
	lk8CWGRYjfnGC5tTDySA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtDO-00000002JI1-3ub9;
	Sun, 12 Jan 2025 08:20:59 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtDL-00000002JH4-2Ney;
	Sun, 12 Jan 2025 08:20:57 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:1f0::1])
	by smtp.qiye.163.com (Hmail) with ESMTP id 86f867dc;
	Sun, 12 Jan 2025 16:20:39 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: bigfoot@classfun.cn
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
Date: Sun, 12 Jan 2025 16:20:36 +0800
Message-Id: <20250112082036.19922-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250112073344.1976411-4-bigfoot@classfun.cn>
References: <20250112073344.1976411-4-bigfoot@classfun.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZQ05CVh1IQkIeHhpOGh5DGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQUodS0FBSllXWRYaDxIVHRRZQVlPS0hVSktJSEJLQ1
	VKS0tVSkJZBg++
X-HM-Tid: 0a945999cd0703a2kunm86f867dc
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pj46Qjo*CzIVHwMoUR9PCBw1
	GQJPFBpVSlVKTEhNTUxLS0hCQ0JLVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBSh1LQUFKWVdZCAFZQUNNSjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_002055_775234_ECF2CC1F 
X-CRM114-Status: UNSURE (   7.16  )
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

Hi,
> +	/* pi6c pcie clock generator */
> +	vcc3v3_pi6c: regulator-vcc3v3-pi6c {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;

Although both gpio and gpios can be used here, I tend 
to use gpio to keep it consistent with other parts.
(vcc3v3_sd, vcc3v4_rf, vcc5v0_usb30_otg0 ...)

> +&mdio1 {
> +	rgmii_phy1: ethernet-phy@0 {

Only one rgmii phy I think '1' is not needed?
Or `phy@address: ethernet-phy@address {`

> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x0>;

The phy address should be 3. Can you try it?

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&eth1_phy_rst>;

Is pinctrl necessary here?

> +&sdmmc1 {
> +   ...
> +	wifi: wifi@1 {
> +   ...
> +&uart1 {
> +   ...
> +	bluetooth: bluetooth {

No aliases needed.

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
