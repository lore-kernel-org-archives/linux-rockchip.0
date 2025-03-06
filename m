Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47513C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 13:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrO8ZSV3uWihRnwPJak3/Gl1SC1i/DazoKbrg2r1cQI=; b=1eWIItg09hVq7H
	9HXgsbji/2EXFYfKGxR+LCh+P6FtqR1G8fp0L7Kksrdya4QUln6NjUvLj4xWpK1Sh+vx7qRRr2VzL
	TQdorbvhLFZujHB1CoMkV/MPG2uOoMjUSiY3bwhUDFzL3BNcGOyRQu7ZpuHbVXpCjFqg7xpnRsdfM
	HEpRnONw7yf0ZMrMquC1VDd9O1SkBk3lQhAcrLErAvgZhuN+Mzu36OwtOu6npMsMCrBR4EsSrwsTO
	BeyqcHGiVYxFarL7R8SbQVNKvtbYXL2tiXrxPPdhujQ0SdTgygmcxY+sNkSmJ4MG0GzfL4lw/m9My
	hx+PI8hRCRcsdtMUC9Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBSq-0000000B5B3-4Amv;
	Thu, 06 Mar 2025 13:40:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBIY-0000000B3n8-04m4;
	Thu, 06 Mar 2025 13:30:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=76KntK0S1avFr7Y1xMgBNLkI3Y2O83dixYzWDKbrRPc=; b=aB++wLy5byBOeCcOq/ZpIx04GU
	0JnxiElmhSRgg2FIhoFEiyR2h9L92nQFGm0T4mP/f3YBYF/f1RGyUEEWh3zbbsXDIK7hCX8/gjos9
	ffk79EqzquMIGtLcBs86tH0GoiFLE17kmcFMfO/AiMQQ4aPFOYSV2uAAIeuCO4AFfFPyoh/o+fZL9
	ftRygpWwQk1sbY4o9AlG01RE/oxNfxgoc5MWNw150X/P0eg+ai42S3N4d8/x/h6lf5dtoRCVO1hTo
	3//SObfCga9lUNMOoJKggGYoWIg8CJIwnelDlajNV3d4fj8JdS2P3gRGigXx0B+vcw6Ct8AfIBwNK
	qUVuQCCA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBIV-0000000163X-1UJH;
	Thu, 06 Mar 2025 13:30:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=76KntK0S1avFr7Y1xMgBNLkI3Y2O83dixYzWDKbrRPc=; b=VWdHhDkFdBQnQCDfMza1IkYDpr
	wFVTwv+CKOgNj6HjPIOeeIbDncfQakCxZ0HmyjA7lftpUz9BEN0dfgFfxUmo9fDUe/EycXbXDebDP
	P507N1zeHDJbikGWBSvULmvY4DvSldDN7sPkYejnFqYv/WgAOkBpZU/WAWbAhCUBL++Kzh9FfR6A3
	oTZTOrxKTevui+u+C+njJktVIWZW3uh1GZQua/C3H7rCsrhYt7lE+XOPWYzyQ3HyxM/xeoFatFP4+
	mp66XNvZ2IpWpPi8XoI4gJp9OrrjhEmBRISkYJ0a6Q8c+QzRE6FuAjyBl5tF0R+0OYvpmoaAxxVGx
	OtN7/4hA==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqAyf-0003Cs-8D; Thu, 06 Mar 2025 14:09:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2] arm64: defconfig: Enable Rockchip UFS host driver
Date: Thu,  6 Mar 2025 14:09:25 +0100
Message-ID: <174126656182.656541.13105092745592307525.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1741161252-138526-1-git-send-email-shawn.lin@rock-chips.com>
References: <1741161252-138526-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_132959_463590_17036B25 
X-CRM114-Status: UNSURE (   9.97  )
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


On Wed, 05 Mar 2025 15:54:12 +0800, Shawn Lin wrote:
> Enable Rockchip UFS host driver.
> 
> This driver is first introduced on Rockchip RK3576 SoC, and will
> be used for more SoCs in near future, so add it to defconfig
> will make these platforms work better.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: defconfig: Enable Rockchip UFS host driver
      commit: 769c2b450b89b6a71ed614b7c507d17a84f52a4e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
