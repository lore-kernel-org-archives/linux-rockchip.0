Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6499CC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jan 2022 15:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rah5Z4Ivf+Bq3gmStyJDvuLnq+XN3VUULK9mCt2nEDg=; b=MLXre3Js7ic86T
	BBYxdsvrrBlw+A4Tmyi3fxSDSajl+KsRNvy1sx8VJ+lvHCkhDbXE9Q1hXBLVYH9wwOnTrKzJsScQh
	nGh149bPl6fYXv2xIafsw43+wIDG6MqvVPIoJ6eTvg/7YFzNQbPDRkyRxKtGxhMYow1TzIFoFxDNR
	TTS+SHtobErLIyajXkq8se6rOgQ71VkgSmmLpTqSqcOoFxgDjyI50/AtI+ADr2JB+CBGWStQY7DnM
	5wh/PqkR/+5ZATe6SvuEQRAffyzem+ceC1WAFXM0AKzT4CMiexGHCgiHTcxc4uyFUucc8Wfe+h729
	9gG3U8UTigbdj0ScQ4eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBf6f-001BDB-4Y; Sun, 23 Jan 2022 15:48:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBez4-0018dx-VH; Sun, 23 Jan 2022 15:40:52 +0000
Received: from p508fcdea.dip0.t-ipconnect.de ([80.143.205.234]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nBez1-0005OB-Ci; Sun, 23 Jan 2022 16:40:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: "quentin.schulz@theobroma-systems.com"
 <quentin.schulz@theobroma-systems.com>, robh+dt@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Quentin Schulz <foss+kernel@0leil.net>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3399-puma-haikou USB OTG mode
Date: Sun, 23 Jan 2022 16:40:46 +0100
Message-Id: <164295214821.418606.138757821449348671.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220120125156.16217-1-quentin.schulz@theobroma-systems.com>
References: <20220120125156.16217-1-quentin.schulz@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_074051_086451_6DA8C904 
X-CRM114-Status: GOOD (  11.70  )
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

On Thu, 20 Jan 2022 13:51:56 +0100, quentin.schulz@theobroma-systems.com wrote:
> The micro USB3.0 port available on the Haikou evaluation kit for Puma
> RK3399-Q7 SoM supports dual-role model (aka drd or OTG) but its support
> was broken until now because of missing logic around the ID pin.
> 
> This adds proper support for USB OTG on Puma Haikou by "connecting" the
> GPIO used for USB ID to the USB3 controller device.

Applied as fix for 5.17, thanks!

[1/1] arm64: dts: rockchip: fix rk3399-puma-haikou USB OTG mode
      commit: ed2c66a95c0c5669880aa93d0d34c6e9694b4cbd

I've done a bit of reordereing:
- extcon comes alphabetically after dr_mode
- extcon-usb3 before external-gmac...


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
