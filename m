Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21F87C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 15:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWxbWIYTuqs8sFJdrexVZU7XSBy6ijiR44DLoaeeNJc=; b=f+uzG7jxIwtuLL
	W7ZPCdJ9eFoi/kUK7Nsz+u7ReAlpc+BWFBlIyclNme2MwdVYKAWJulgDwH3gMbzGGC1y5f2PKx+Jt
	mwWNbSjGmYMLReZF1RKyZQE3wsUwd93NDHiAoiCyaDo3VpbO8R9QTMUjhXjmP3OFWyKkK9mj6DuNJ
	Mt5FDio0HHR6kHmShmKhTKxA/iU9tXLq8siq9xhmAdpDdDymBagHgjgjkH46bopqb/aGBmTneGHiX
	ZRdsuGI7PAufDzENQlFML56GplNS+LEHIXDyFFcwpAwxeE1fSks8vXTEPLjad/SAwn77AQeJrpOgp
	Xvok2GFaHzQ7IsSSnkLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o02qA-00DWml-Jj; Sat, 11 Jun 2022 15:15:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o02q8-00DWls-Cn; Sat, 11 Jun 2022 15:15:53 +0000
Received: from p508fd9f0.dip0.t-ipconnect.de ([80.143.217.240] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o02q6-0004vU-Go; Sat, 11 Jun 2022 17:15:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <linux@fw-web.de>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-rtc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alessandro Zummo <a.zummo@towertech.it>,
	devicetree@vger.kernel.org,
	Frank Wunderlich <frank-w@public-files.de>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: (subset) [PATCH 0/2] Support RTC on BPI-R2 Pro
Date: Sat, 11 Jun 2022 17:15:46 +0200
Message-Id: <165496044123.1951281.5949478945237694774.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220608161150.58919-1-linux@fw-web.de>
References: <20220608161150.58919-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_081552_469575_91881191 
X-CRM114-Status: GOOD (  10.29  )
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

On Wed, 8 Jun 2022 18:11:47 +0200, Frank Wunderlich wrote:
> This series is updating hym8563 rtc driver and add devicetree nodes
> for Bananapi R2 Pro board.
> 
> Frank Wunderlich (1):
>   arm64: dts: rockchip: add RTC to BPI-R2 Pro
> 
> Peter Geis (1):
>   rtc: hym8563: try multiple times to init device
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: rockchip: add RTC to BPI-R2 Pro
      commit: efaa0c1378ed800abd1abe0aa51ffd30002efdb4

      I've changed the node name to hym8563: rtc@...

      The node name should be the class of device i.e. rtc in this case.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
