Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC494C25B5C
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 11:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8sIJWNqN5GNMpnGqxpupH4LPIdLmXAkbt4kB36R66U=; b=Rewu/Nw39t6+C8
	davYuh8VJA+/XHVOttMgjokM5kK3j0KyeiVBAJpKQNUNF2krUB5Ki+ENFU+cjFEghyl29DcVoVDJD
	GNdG8QkvAUQh2BekKJPSKQIf/GBeQmrST5RlypRVSXKPsErB/GR1cRh7rT/quCj94QVd8PD9OlVul
	TEmu7gY4xMf01CtN1fhAY6l0aqCxqA705qPYt9sTl+inoevLIqttA4VWmxd1WPM5zTq7xQcziKfyZ
	gnO3H4sLfmPPFI9XS5Q1h1s9RvKE/to8JaY0YDTmIxdK5DESa4e2HZhrm+S0j30kRQ/kYPm9oZQ3N
	/aAXVOsIc8VFH6GXJv6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2rFm-0000000GHcb-0311;
	Fri, 03 May 2024 11:39:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2rFV-0000000GHNX-2kmH;
	Fri, 03 May 2024 11:38:49 +0000
Received: from [213.70.33.226] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s2rFT-0000Tc-2s; Fri, 03 May 2024 13:38:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk3588s-orangepi-5: add USB-C support
Date: Fri,  3 May 2024 13:38:25 +0200
Message-Id: <171473602994.3469033.5363851274813286287.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240418035232.35344-2-honyuenkwun@gmail.com>
References: <20240418035232.35344-2-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_043845_712712_EB7B4286 
X-CRM114-Status: UNSURE (   8.67  )
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

On Wed, 17 Apr 2024 22:52:33 -0500, Jimmy Hon wrote:
> Add support for using the Orange Pi 5 USB-C port for USB in OHCI, EHCI
> or XHCI mode. Displayport AltMode is not yet supported.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588s-orangepi-5: add USB-C support
      commit: c57d1a970275aabfbfab4c56001394ada3456d8e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
