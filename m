Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2165DC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 14:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykP8S8CFhRU2+z4XpFSbsgbsiHOUfOhiHHaGrHAD16I=; b=n6tNoiKXul4E/N
	DVg39OmyE0l6SzkQGTLlufHVFBNrrQKNT9Age6tcrxKDcJR6G5eZhrIhBh5K1prFrMzqyMf5+DrSS
	R8Qd7I1g8wVqKpTshrtClr35ZCe+Ef97zP5yd7sqgULSKdFdX4cW1f5z2+JUY78sabzBs7IXOqvt0
	76YIBOh8Rglb6Hr42sPDMaI3Gn3OPNE1x8DsiuV4iiDBpXHHaXBbVAL1TXFzWpRig+eWWdqlRvBL/
	tYixA4LR+Q0SOAxsMw1HS6NOu8JaR8sC2zCETP7cxhzXa3U4tN5UCGc7WNctdugxvTMKPNkIzHKuz
	n4PmU9vo/srrbA/1FlTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nknjY-00EQZS-BY; Sat, 30 Apr 2022 14:06:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nknjU-00EQVe-EB; Sat, 30 Apr 2022 14:06:01 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nknjT-0001Wl-A7; Sat, 30 Apr 2022 16:05:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/7] Add support for several new rk3566 SBCs
Date: Sat, 30 Apr 2022 16:05:54 +0200
Message-Id: <165132754299.647302.14938632708434795993.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220429115252.2360496-1-pgwipeout@gmail.com>
References: <20220429115252.2360496-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_070600_528697_80D16D28 
X-CRM114-Status: GOOD (  10.76  )
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

On Fri, 29 Apr 2022 07:52:45 -0400, Peter Geis wrote:
> The following series adds support for the following single board
> computers:
> - Pine64 Quartz64 Model B
> - Pine64 SoQuartz SoM with RPi CM4IO carrier board
> - Firefly Station M2
> 
> Patches 1, 2, and 3 add the requisite dt-bindings.
> Patch 4 adds support for the SFC to the rk356x device tree.
> Patch 5 adds the Quartz64 Model B device tree.
> Patch 6 adds the SoQuartz CM4IO device tree.
> Patch 7 adds the Firefly Station M2 device tree.
> 
> [...]

Applied, thanks!

[4/7] arm64: dts: rockchip: add rk356x sfc support
      commit: 13e0ee34f39c01948a7bbaab0b3c225d9b00a5bb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
