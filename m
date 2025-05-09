Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 488F9C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 09:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fRFXabltX4oSFu6/almXokW32nMfgQ1K7q4d47tsEfo=; b=n0HRrxdnyqjufD
	GeoTVQHU6tsmrxPb8JKhWxnCqircT3qFAmG8BbEa+C7H+1k95zs5P9inYU58AWpvsnV6Z3ep24sVT
	2OKSoihbAQB+ZDFksthg4PjGzI/MwAldEm46p8IP3RgAC20jDxQJECdmymUAFavjANhZIvQwjJ4zo
	iAZSAjtKWsSgEVCtZXyRyGdTxVRsVHOKPyHNPw+Am0a4VnxfXOF0f/Mrtjap578kiA/xuIA2fpMV6
	0A1oHOSIKac/qPHIWw4Zd/5HHIacjQj4kFbqVYHHWXdVrza3gd7FRSPewcB+j4hsrsheQDE1TLYg4
	Fv/HfO6IbzT0Vsr3F07A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDJyG-000000036Ao-0tDc;
	Fri, 09 May 2025 09:24:44 +0000
Received: from out28-53.mail.aliyun.com ([115.124.28.53])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDJXe-000000030QP-1cPY;
	Fri, 09 May 2025 08:57:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=coolkit.cn; s=default;
	t=1746781027; h=From:To:Subject:Date:Message-Id:MIME-Version;
	bh=fRMaFKajs8FT8Uo1U+GjWMJn+xnPPEQN51BpCVmEi2s=;
	b=UAcrXYpy+siHP/sOM+lWHdujLM5X6dLEx9SmbNkwDYwnEYN2NoJZWerXuY/VID6ApG/WdWr2sywV5Yj4f2Lu0kz3zqA7GLygMORAb+686+7UllZJIKKcHi/Q3vVKH+Qh/JP9KlXhm9YrxOCWhUz9C79QePaYF75SG/XCWhXlx7Y=
Received: from ubuntu-z.lan(mailfrom:hao.zhang@coolkit.cn fp:SMTPD_---.cjnlkfS_1746781022 cluster:ay29)
          by smtp.aliyun-inc.com;
          Fri, 09 May 2025 16:57:02 +0800
From: Hao Zhang <hao.zhang@coolkit.cn>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tim@feathertop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	"hao.zhang" <hao.zhang@coolkit.cn>
Subject: [PATCH 0/2] arm: dts: rockchip: Adapt to IO domain and SDIO for Sonoff iHost
Date: Fri,  9 May 2025 16:56:55 +0800
Message-Id: <20250509085657.309934-1-hao.zhang@coolkit.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_015714_774059_4F403032 
X-CRM114-Status: UNSURE (   7.66  )
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

From: "hao.zhang" <hao.zhang@coolkit.cn>

This patch series makes two corrections for the RV1126-based 
Sonoff iHost board:

- Patch 1 adjusts the SDIO max-frequency to improve WiFi stability.
- Patch 2 updates the IO domain voltages to match the board schematics.

The voltage fix is based on verified schematics and helps avoid potential
hardware instability due to mismatched IO levels. 

Tested on multiple units with improved long-term WiFi operation.

Tim Lunn is Cc'd as the original board support contributor.

*** BLURB HERE ***

hao.zhang (2):
  ARM: dts: rockchip: Sonoff-iHost: adjust SDIO for stability
  ARM: dts: rockchip: Sonoff-iHost: correct IO domain voltages

 .../arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
