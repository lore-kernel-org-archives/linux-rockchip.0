Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 441F2C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Aug 2024 19:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57w7S4SoQygOmgKxbV7kb4DhqLDfSEpdYjS1fs6vhpU=; b=3158/rC1as7LWX
	kY+y7FjSGVk4olHA9wDZImzrrco4mRZglq+ThhzGkfKEqypaa9V/WzPyEkFO30Vnfh9t9dWDcN6X1
	/omCa1skchL1a/xFFnUbkCxrBPKNf2yze25IcFBmm0gT0mqT5PhBVHNrDqozYwUAzZxUZj+OLZLp4
	HQD/v7aIRFILf//4R+oWZmaLjxY31agq52+ANyFq7Hns4Yfw0BBcYyqPCn8aYZaopDw2Vahu4JZXg
	6Zv6RHGkEajblhR5a41DDxYILUxOGnCGG8HU/RXUMP3aIor3bdV8lSJGFBzC7/xDBfoijoeEATJ+V
	0qXsH6MCfJIB4OWP7BzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scraC-0000000EVGc-19XA;
	Sat, 10 Aug 2024 19:16:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scrZ2-0000000EUzs-2lmo;
	Sat, 10 Aug 2024 19:15:45 +0000
Received: from i53875b02.versanet.de ([83.135.91.2] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1scrYw-0006Wd-Cf; Sat, 10 Aug 2024 21:15:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dsimic@manjaro.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] Add support for Cool Pi GenBook
Date: Sat, 10 Aug 2024 21:15:35 +0200
Message-Id: <172331732518.282332.16608016053255555622.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240730102433.540260-1-andyshrk@163.com>
References: <20240730102433.540260-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240810_121544_718452_9CCB2188 
X-CRM114-Status: GOOD (  12.12  )
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

On Tue, 30 Jul 2024 18:24:31 +0800, Andy Yan wrote:
> Cool Pi GenBook is a rk3588 based laptop, it is designed to consist of a
> carrier board conntected with a CM5 SoM.
> 
> This series add support of eMMC/USB HOST/WiFi/Battery/TouchPad/Keyboard,
> with a mainline based u-boot[0], it can boot a third-party distribution
> such as Armbian on u-disk.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Cool Pi CM5 GenBook
      commit: db0d831c58ce5bc7f37433f5eef65405610cb322
[2/2] arm64: dts: rockchip: Add support for rk3588 based Cool Pi CM5 GenBook
      commit: 4a8c1161b843c366776fc872a6fe45b743b2983e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
