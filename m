Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14749CFD2F6
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 13:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xYyDC89w7Ah2nONl/IaZ9bVsP/o2cabpzj9MKQ2cvFs=; b=UuzJAibjhtv8lL
	YHZxxZLJ41N+S8L3wPi3tnk/Y/JLTCbbkDRTtQdiF9rat5U8qkTYwJD223FoyyI2oOD4vBY0vqdLt
	ojp2S+TyABCaGGfDmKqQ6yA1gEU0NaojSlMFhqNbCYKb63s9whDqDhyhVY59t9YKuYFJqInJqnM4s
	l0uyO7XsSPS2EDkcVvRtYV5Z1or3JnKO226XWRCSariS/U2hyuVBqBnGhc6jKvcW8UXy5kKMXAinj
	U0n1sigH7b+wLrU0aocFzuvDPdy5LKz17/cJf6bBf1KDPMJu9WQhddemld9Q6DUJL60Gh+XO60Okp
	si5cjYqSuN6BrhyWI0Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQQm4-00000005T8I-3tBj;
	Tue, 02 Dec 2025 13:50:36 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQQm1-00000005T6L-1XhB
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 13:50:36 +0000
Received: from localhost.localdomain (unknown [119.122.215.79])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2bb30d74b;
	Tue, 2 Dec 2025 21:50:16 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
Date: Tue,  2 Dec 2025 21:50:08 +0800
Message-Id: <20251202135008.513685-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251201144629.135570-1-naoki@radxa.com>
References: <20251201144629.135570-1-naoki@radxa.com>
MIME-Version: 1.0
X-HM-Tid: 0a9adf54053303a2kunm3401432dd8698
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCH05IVklPSUpPTkJNTU1OHVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVMQllXWRYaDxIVHRRZQVlPS0hVSktJQk1LSlVKS0tVS1
	kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_055033_562547_FF831B14 
X-CRM114-Status: UNSURE (   3.99  )
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

Hi,

> Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
> Fixes: 3ddf5cdb77e6e ("arm64: dts: rockchip: add Radxa ROCK 5C")

Since the EEPROM on these boards are empty, this patch doesn't
fix anything, so the Fixes tag is not needed here. If you want
it to be backported, you can add "Cc: stable@vger.kernel.org"

Thanks,
Chukun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
