Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DCABFD88D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 01:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=naaJY4aYNzREXoWm+angxhEimYN/XxZYz6F+lL0cKaI=; b=EoUwp0wK+dmTVT
	sLZYQT/zfX/nbBsrNIw66OZ8mON2D0AOzyiYyYAKNHog0P9h3R9VOPRvp1Ks8opL0oPwn8lR1Aevv
	ETxBQUiadnjUQZGhK+ppSye15EjWbNJH2iobeidxPDLrcTOYvsTAYfNTCaHwbklFArvaLYYV4hgUx
	nslqHam/N7EfTzG36UsEuTOnguL5BR3w3jQ6XVVHwDAX1p2HRPj/UfCaoqLzGuEf6tWrzqPIw9bp/
	sQYD1KZQm+rukgex3zvCD0WMI2oxHEjJd3xIM5gAMNFahreVz5XzbIdtxdTlMEsDyrTsEXlC94yqW
	c9S8q5kYyGQsPIJ5GOmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w08Ys-0000000AVdn-1txO;
	Wed, 11 Mar 2026 01:40:34 +0000
Received: from mail-m10243.netease.com ([154.81.10.243])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w08Yp-0000000AVdR-3qjY
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 01:40:34 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 367a6a38c;
	Wed, 11 Mar 2026 09:40:27 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 0/2] Add mphy reset signal to Rockchip ufshc node
Date: Wed, 11 Mar 2026 09:40:16 +0800
Message-Id: <1773193218-215988-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9cda8d691c09cckunm2316bf2d158493
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGktOQ1YYQ05KTR8ZH09OGRhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Cwrsp6M5504KHzH4SH6cZeNGq768UzFNhvH7wEptvLZ2fNdkD9T7fVtO/NczCW+dhRMCSDlqN9ivpZasxViVzXpEnZ9UIxO/zNdBytNp+Wd53mklpnvWjOlZpm1kTFFM8b4B0nWemuzcWfM37UcsHcQrP0v6VOoS2mmomhnr4mg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=daEjB+39kEWOuY3U2gYjDvWs5SyNz/PoHWsss2wFk68=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_184032_669372_B88F5EAC 
X-CRM114-Status: UNSURE (   6.89  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


This series adds mphy reset signal to ufshc node of RK3576.dtsi
and update the dt-bingding file.


Shawn Lin (2):
  scsi: ufs: drockchip,rk3576-ufshc: dt-bindings: Add new mphy reset
    item
  arm64: dts: rockchip: Add mphy reset to ufshc node

 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml | 7 ++++---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi                         | 5 +++--
 2 files changed, 7 insertions(+), 5 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
