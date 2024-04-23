Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B49E4C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 15:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g55jYY0V40aiJ6bbD7Gsn4MY2Xf9oX/Sa+kd7IwFv8w=; b=Vdw+wyTggEDxJr
	MNdkl/tGeC10sKpNZfKbq8VAz4DwX2eoBR8tW6YMAyepw/aaMqyxk6Vpj7Jo8ObOzysYFVj7+rwa+
	73zS+foveeLLX7MXbfbYvLWKXm7fPseWg+aE1Hltcd67J0vAIwq+e3Dhp0yAQ2xigZgB76oNZ0j7I
	fDRJib6NLL3wpbnP0M22Y/TOOcHyrPAqu8C8BTYQpSitHeBpMWDgco1kERnwmWuWv5Xq26GpNVXL4
	PAq1PXQwnditokLImwR1MCf6ScsBzkrhd66KAlG4r/5hAlrfBat5xChM0eqFY/nzZNbHqXqDM42r1
	H25XyuKk9AIzvh2ka+kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHsT-00000000TIJ-1XUK;
	Tue, 23 Apr 2024 15:16:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHrz-00000000T0K-2IY2
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Apr 2024 15:15:45 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzHry-0007PZ-5P; Tue, 23 Apr 2024 17:15:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add USB-C Support for rk3588s-indiedroid-nova
Date: Tue, 23 Apr 2024 17:15:37 +0200
Message-Id: <171388532520.2652222.10652963770163622642.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240418173627.1368494-1-macroalpha82@gmail.com>
References: <20240418173627.1368494-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_081544_230711_E5487641 
X-CRM114-Status: GOOD (  10.27  )
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

On Thu, 18 Apr 2024 12:36:27 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the USB-C port on the Indiedroid Nova board. This
> port supports USB-C DP Alt mode (not implemented yet in drivers),
> but works as a USB XHCI/EHCI/OHCI port.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add USB-C Support for rk3588s-indiedroid-nova
      commit: 595f06c32dcb0188bd24856984e0f1adf2a7d2eb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
