Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD22BE6FE51
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 08:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EjTy3plvkDrp4OicUz3mlkKxMpuWM3ltZiG3ZlqSzlU=; b=q8tXfUNShi/uNy
	UhHxMbn+t/F7xss+/aQ4qzUebO96wfLp+qFYPRzrkpB2eXhmutHhmLNr93CU8RMu70Dk4IrYzsb6A
	nwWnuou83TAdA6hDgKBx1zoINbz7d9HsKdGKeg2atmyQqSJp8IYAGCpehSrOUFkexqyUAHBK8qWkA
	bbUT56zlUVRnA3j1cPJ4Xf4bGSYdqCY4Pw0iNncw0ONwi/FQQE9JuOInifc/uXcYey9YUqazp6wa9
	AaCfndMidp58JrF77feFSoHHiqglf3RROhx/zKPN4fNiFX5bL7t/FKsary7gMxXNzylYiGUXIFyIf
	1EiF6/41H4uw/bMBva1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smqN4-0000000EboM-3Qxr;
	Sat, 07 Sep 2024 08:00:38 +0000
Received: from mail-m17248.xmail.ntesmail.com ([45.195.17.248])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smqN0-0000000EbnM-3aD9;
	Sat, 07 Sep 2024 08:00:37 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:9f80::1])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 50E737E01EB;
	Sat,  7 Sep 2024 16:00:05 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: bigfoot@classfun.cn
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
Date: Sat,  7 Sep 2024 16:00:02 +0800
Message-Id: <20240907080002.16427-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <53784a02-087b-4912-94a9-aead49d7abea@classfun.cn>
References: <53784a02-087b-4912-94a9-aead49d7abea@classfun.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDTk1MVkpOQx9LQxhLGhgaSFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtKQUIdQ0tBQUpZV1kWGg8SFR0UWUFZT0tIVUpLSUJDQ0
	xVSktLVUtZBg++
X-HM-Tid: 0a91cb7f55ea03a2kunm50e737e01eb
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Njo6ASo4SDIwTjM5OUM4FgsW
	PiwwCRxVSlVKTElOTUJNS0tNS05KVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBQh1DS0FBSllXWQgBWUFKT0NDNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_010035_123688_2CBA17FD 
X-CRM114-Status: UNSURE (   3.96  )
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

Hi Junhao,

> Is vccin_5v a new regulator or is it actually vcc_sysin?

VCCIN_5V (type-c power or battery) -> VCC_SYSIN

VCC_SYSIN -> MCU -> VCC_SYSON

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
