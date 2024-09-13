Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA456FA3748
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 12:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSPxI40YwnPDDsMpX1NRwlPSNevbsjLZLRktHdCEeKs=; b=BCHSho9KgFmhPN
	KcR8peocImMMBRzOrSlmqDnZB1XI0MvikdkBHLZ9IhMoEXbKyjhiWmrMeDcPFszNJ9vBHklHTnZrc
	9JydMdun+qnta8cg3IQGwQgON+wmCDG3NZh7oenO1aM2bzfnQhHVotNqqcitHPW2RkIPIKuJxi6xE
	Z0OZbTLk8GnhHZ1J9ugaM7gXTuF1VI25ynGvM8wRtXEF7pf7xwdyRIfCHBjEQM22rslLS0oIJJ4A5
	G5wOaIVMenX/H5y3Jzbx9oIKriVyY6hhYbtxW2ir9h/0Ekw9kY2tu18YvkUK/PMm1UO2NKBv1/7PQ
	0s/ExnHFovKhShc4ZyZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp56W-0000000FpvV-2GYY;
	Fri, 13 Sep 2024 12:08:48 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp546-0000000FpXt-3E6k
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 12:06:20 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b0:2c20:c1a2:70cb:9846:e2cf:32fb])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 3C93F7E0213;
	Fri, 13 Sep 2024 20:06:11 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix PCIe regulators for Radxa ROCK 3A
Date: Fri, 13 Sep 2024 20:06:09 +0800
Message-Id: <20240913120609.126289-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <B89055F5BFF2A869+2229c131-01b7-4e96-8b81-9533b995da5d@radxa.com>
References: <B89055F5BFF2A869+2229c131-01b7-4e96-8b81-9533b995da5d@radxa.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCHkpJVhgZQklMHxhLTUMZSFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZS0FJGElLQRhKGklBTEsYGUFCQ09NQR5JGB1BSEkdGVlXWRYaDx
	IVHRRZQVlPS0hVSktISkxNTVVKS0tVSkJLS1kG
X-HM-Tid: 0a91eb46cc8503a2kunm3c93f7e0213
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PlE6Kjo5ODI8ER86CighOS9D
	URoaCyhVSlVKTElNSUlCSkxKQ09CVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlLQUkYSUtBGEoaSUFMSxgZQUJDT01BHkkYHUFISR0ZWVdZCAFZQUpJSkk3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_050618_994597_BF79BBD5 
X-CRM114-Status: UNSURE (   4.86  )
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

> btw, how do you think about pcie30_avdd0v9 and pcie30_avdd1v8?
> as far as I can see, it's unused.

The schematic notes that PCIe uses VDDA_0V9 and VCCA_1V8,
so they can be removed.

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
