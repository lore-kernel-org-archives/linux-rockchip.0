Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2C14C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 09:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvLdn8UzNqex0bB/W+76SsfFzh6pbm5or8KE1xacWS4=; b=yGOgBixwn9Clc1
	CxQNbgmXcHtGxgFLwI5cOn51GXAKAbC6oOHHDgf6MfYl5Co68RlHItZYDnAHq5hQWB7p24QTkBOnv
	3FPQHY527/hrza3lNQR/rcCnOWXNquhbwEJ8MCFs07A1b3X/eQvlGBZbC4CQqlm6fWmwERoEhUQ8S
	rw2pIywM4/GwNePGQIoKoLgQhhcFXp97Dt0If4behlYLnXRqeXLPBKajFHYWX6mf63W+zxSKHMQgf
	U/rmB+DXVc3L9OQ/PR7uW8T5BcLEoUgokPqwMFpJHMNnBmHsgblSgLtAGbeZEiGHYr/ypP2KFjbI5
	rXDOyKyPNUhh2B6lvYfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAoQ2-009ad4-2p;
	Wed, 06 Dec 2023 09:42:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAoPy-009abu-2y;
	Wed, 06 Dec 2023 09:42:12 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAoPv-000077-Ju; Wed, 06 Dec 2023 10:42:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sam Edwards <cfsworks@gmail.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Joshua Riek <jjriek@verizon.net>,
	linux-rockchip@lists.infradead.org,
	Sam Edwards <CFSworks@gmail.com>,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH] arm64: dts: rockchip: Fix eMMC Data Strobe PD
Date: Wed,  6 Dec 2023 10:42:04 +0100
Message-Id: <170185570321.596796.2043963859516585499.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205202900.4617-2-CFSworks@gmail.com>
References: <20231205202900.4617-2-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_014210_957958_8BE79C2C 
X-CRM114-Status: GOOD (  10.73  )
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

On Tue, 5 Dec 2023 12:29:00 -0800, Sam Edwards wrote:
> JEDEC standard JESD84-B51 defines the eMMC Data Strobe line, which is
> currently used only in HS400 mode, as a device->host clock signal that
> "is used only in read operation. The Data Strobe is always High-Z (not
> driven by the device and pulled down by RDS) or Driven Low in write
> operation, except during CRC status response." RDS is a pull-down
> resistor specified in the 10K-100K ohm range. Thus per the standard, the
> Data Strobe is always pulled to ground (by the eMMC and/or RDS) during
> write operations.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix eMMC Data Strobe PD
      commit: 37f3d6108730713c411827ab4af764909f4dfc78

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
