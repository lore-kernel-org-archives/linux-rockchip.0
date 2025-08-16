Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AB6BCA0EE6
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Aug 2025 08:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J6tuaghebxct/Azr8Un96ALdRXGl0zPqvUP1U4p6MAs=; b=TLAeIB+6gEzqE3
	IwlW5Te8DF2UM8Y7A2+b0gmZ6uUaul5cIRGaaIlIK61DqekQ7hIjTS1PzrCeK3Q6XtK9gD26Bwzp+
	VDMXoZGM5DEGTnsXR/aPZpp/YXWvRTbN0u+H+Esu2Aizq0BAfCNCK8vDdjqX8pG/AQlq9CK7ulXZN
	ahP0DO6NKrySRtJVOZXmxezTpK3a9kpSrYcX1VWhAxS6joqx48K05YOdugnkOJ7et1Ze3Tf7ogX2E
	YnNqT8GW3MVvc7jIvWczdd6GWbn2sm+qp6AKh7DCBtpO7CTARRqY3wYuLLA0+49je2aBPp5QoFS+p
	NDkCurtBrONOVRAi81rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unBqJ-00000004GfY-1flP;
	Sat, 16 Aug 2025 08:00:47 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unBqG-00000004Gep-2MCe;
	Sat, 16 Aug 2025 08:00:46 +0000
Received: from localhost.localdomain (unknown [119.122.212.9])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1f93a30c3;
	Sat, 16 Aug 2025 16:00:38 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/3] arm64: dts: rockchip: update Radxa E52C support
Date: Sat, 16 Aug 2025 16:00:27 +0800
Message-Id: <20250816080030.183931-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Tid: 0a98b1e51b5303a2kunm56d2169525b6f6
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSkhCVklCHRofGEpITUMaGFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSVVCWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250816_010044_790876_39CA3A96 
X-CRM114-Status: UNSURE (   4.95  )
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

Changed from v2:
  Remove merged patches
  Remove VCC_3V3_PMU for Radxa E52C (new)
  Update pinctrl names for Radxa E52C (new)
  Update commit message for disabling display subsystem

Chukun Pan (3):
  arm64: dts: rockchip: disable display subsystem for Radxa E52C
  arm64: dts: rockchip: remove vcc_3v3_pmu regulator for Radxa E52C
  arm64: dts: rockchip: update pinctrl names for Radxa E52C

 .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 30 ++++++++-----------
 1 file changed, 12 insertions(+), 18 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
