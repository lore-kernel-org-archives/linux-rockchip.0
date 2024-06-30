Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F24F6C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 15:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ht+99Pnm31FTROdcts7rqtS5EZUmw20XtQ1uif2txkg=; b=iZdc0flmAq7bvx
	8wndi2+3uzEG4Mkec7xnqqLm0inStW1tox15q9PuyR5MMxxx98vJ3w3P3nqF8rTkU2I0y9AyvxxzV
	43Q7LxpznAsZE5lOQZympMjkIQ/Kh5LSZfVi5NebiVK8BY2p2U7SgFAy9S/0/00yxdG5LsMgsheSi
	AM4Uq7QGKjPmtNqAsiHkjhbmvPXm3A9zBdTOngWGd+yjFpAmeUcjx0SsPwFCDY+1sITnJBWjwioaM
	Of1KmUyu7It2Km0dr+nMqIubM6avYlj86oQwWOG/FE8RsNIFbyk4o8LY6/vnrGvLTK9/Xo12RSSU4
	woYfh8pntyShuWfiK72Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNw2t-00000000YZV-1wHp;
	Sun, 30 Jun 2024 15:00:51 +0000
Received: from mail-m2420.xmail.ntesmail.com ([45.195.24.20])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNw2g-00000000YT6-26gK;
	Sun, 30 Jun 2024 15:00:41 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:1720:3110:52ea:d52a:84f0])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 606D67E0129;
	Sun, 30 Jun 2024 23:00:14 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH v2 0/9]  arm64: dts: rockchip: fixes support for Lunzn Fastrhino R6xS
Date: Sun, 30 Jun 2024 23:00:01 +0800
Message-Id: <20240630150010.55729-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSh8eVkwdQktCQ0tCHxlOSFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtKQUpMSUtBSEpKS0FOSR4aQR9OSRpBQ08dS1lXWRYaDx
	IVHRRZQVlPS0hVSktJSEJLQ1VKS0tVSkJZBg++
X-HM-Tid: 0a9069a9329b03a2kunm606d67e0129
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OUk6MAw5GjNNIxwZLTBPSCsD
	TEMaFBFVSlVKTEpCTE5CTUpPQklCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBSkxJS0FISkpLQU5JHhpBH05JGkFDTx1LWVdZCAFZQUlJSEw3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_080038_828131_D2E7707A 
X-CRM114-Status: UNSURE (   4.28  )
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

Changes in v2:
  Separate commits for regulator and supply changes
  Separate commits for R68S Ethernet PHY changes

Chukun Pan (9):
  arm64: dts: rockchip: fix regulator name for Lunzn Fastrhino R6xS
  arm64: dts: rockchip: fix usb regulator for Lunzn Fastrhino R6xS
  arm64: dts: rockchip: fix pmu_io supply for Lunzn Fastrhino R6xS
  arm64: dts: rockchip: remove unused usb2 nodes for Lunzn Fastrhino
    R6xS
  arm64: dts: rockchip: disable display subsystem for Lunzn Fastrhino
    R6xS
  arm64: dts: rockchip: fixes PHY reset for Lunzn Fastrhino R68S
  arm64: dts: rockchip: use generic Ethernet PHY reset bindings for
    Lunzn Fastrhino R68S
  arm64: dts: rockchip: remove useless tx/rx_delay for Lunzn Fastrhino
    R68S
  arm64: dts: rockchip: Enable UHS-I SDR-50 for Lunzn FastRhino R66S

 .../dts/rockchip/rk3568-fastrhino-r66s.dts    |  6 ++-
 .../dts/rockchip/rk3568-fastrhino-r66s.dtsi   | 48 ++++++-------------
 .../dts/rockchip/rk3568-fastrhino-r68s.dts    | 30 ++++++------
 3 files changed, 33 insertions(+), 51 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
