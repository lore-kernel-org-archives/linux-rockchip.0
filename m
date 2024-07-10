Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F557C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 14:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1HKbHtfj/ohBSSdZ39X50eOtYHkTzksKoLzK/F31JB0=; b=aJ31AniD+GukTE
	YVJ/n/wheQ8yx/i723vLBHHTxKDeSEDqxIcZiCv8yqicu1Xf3jL5gEXlf7kd/U9H2of1hv7ZUGZWl
	GWIZSQkQUijkyL7qXgX4SMkCfRGEXEy5Bm7BWXKR+4wVhGmI11TgZCVIZEmVl4vKc/F+oqcOWx01s
	Ti1XRLahxRWTTrzvo5kPmtKPOvvS2I+InIoA+SCVxOaxUzWx5IuUl4FV+N+b3Wy2xTfInlYofi0vz
	v8JkUxlqeZTetgEa0ce2PlbuNJLhbuwbkf8E1v8WJSbGBwRI25AGAzEoScrW5FXvyhl56/Ciz4/fj
	mPATJiVrpEoXk6fdib/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYLP-0000000Ap4P-0omT;
	Wed, 10 Jul 2024 14:30:55 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYLM-0000000Ap38-0K3w;
	Wed, 10 Jul 2024 14:30:54 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:fb60:82c0:6879:f4d2:caf4])
	by smtp.qiye.163.com (Hmail) with ESMTPA id EF9DC7E0116;
	Wed, 10 Jul 2024 22:30:34 +0800 (CST)
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
Subject: [PATCH v3 0/3] arm64: dts: rockchip: fixes support for Lunzn Fastrhino R6xS
Date: Wed, 10 Jul 2024 22:30:14 +0800
Message-Id: <20240710143017.685905-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGUtCVklMHU1OHR9PSRpLQ1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtLQR0ZTUtBQ0kYS0FNQ0xCQR1PH0lBGBodT1lXWRYaDx
	IVHRRZQVlPS0hVSktJT09PS1VKS0tVS1kG
X-HM-Tid: 0a909d0da3bb03a2kunmef9dc7e0116
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PzY6Kyo5SjI#FDAzPFY#PRdD
	EkpPCytVSlVKTElLTUlKQ0hOTUhOVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBHRlNS0FDSRhLQU1DTEJBHU8fSUEYGh1PWVdZCAFZQUpNTks3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_073052_333970_5102E2BA 
X-CRM114-Status: UNSURE (   3.77  )
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

Changes in v3:
  Remove merged patches
  Further explanation of the PHY reset time changes

Changes in v2:
  Separate commits for regulator and supply changes
  Separate commits for R68S Ethernet PHY changes

Chukun Pan (3):
  arm64: dts: rockchip: use generic Ethernet PHY reset bindings for
    Lunzn Fastrhino R68S
  arm64: dts: rockchip: remove useless tx/rx_delay for Lunzn Fastrhino
    R68S
  arm64: dts: rockchip: Enable UHS-I SDR-50 for Lunzn FastRhino R66S

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
