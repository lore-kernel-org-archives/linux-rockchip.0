Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B353C4829F
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 19:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QgUSGcTS6OxOH0wYH96k1YSv61HqytQ57etG9VZI9bA=; b=4F0wh2/yS1SXH1
	eF6jHYuHe/WtzDB9qPV+fJTML/0yh7RL99+9+lcQWmsWvbWUx9MwanNzCLR4BiYU5vbbNc1zfiqFi
	51Y20uZmdHwgvZwSJMiRgy1oJmeo0MqxI82TfkhIQ+loVfYXHhwwWDWLtxn1PaM2y/F5zRvRgNyut
	7wRh9F82Bhh+wXNctHr0SyDVHSoFh6x8U5NZCx05uxJNxLtq3a9iYHRKMG6sy4GEYXSg5FeMq6xAA
	3w6+LRAa7W4uOkrl+FjT8y1NE2nTL/+EP5muMKyX4MXYmYppfs7u/tQXirV2k5EOnOxp9rC7RF5Op
	n28PlL/3k04svaL0fPjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGa-0000000AQUS-1SES;
	Tue, 13 Feb 2024 19:16:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGX-0000000AQSX-2Msx;
	Tue, 13 Feb 2024 19:16:26 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZyGV-0008FY-2W; Tue, 13 Feb 2024 20:16:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	quentin.schulz@theobroma-systems.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: set num-cs property for spi on px30
Date: Tue, 13 Feb 2024 20:16:16 +0100
Message-Id: <170785172859.3347621.5058867416491288233.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119101656.965744-1-heiko@sntech.de>
References: <20240119101656.965744-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_111625_655413_0D42BF0E 
X-CRM114-Status: GOOD (  11.14  )
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

On Fri, 19 Jan 2024 11:16:56 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The px30 has two spi controllers with two chip-selects each.
> The num-cs property is specified as the total number of chip
> selects a controllers has and is used since 2020 to find uses
> of chipselects outside that range in the Rockchip spi driver.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: set num-cs property for spi on px30
      commit: 334bf0710c98d391f4067b72f535d6c4c84dfb6f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
