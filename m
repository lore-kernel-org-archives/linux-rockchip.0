Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A45BFA3738
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 10:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2T7d+DJ5ix4UDH5j+QAWDaZQoNEJGMsJnAzsG8igsM=; b=gUkFrt4A/xQDBD
	s4UHpVEords7U4yVB55ranKbPCIDDrh6w/kttsMNqPW/SRjaJRztlLTkulujU3oreUnqLlIY8IZCb
	iKN8eiD6jy59KyNHCAsvpR6bwiV0m6eBbhO8kICwxt0Qap7vhrK3VIQBIXZxFa/+jhbstjRFVAS66
	sSSRr56Ib3IHMjNNXt9Kz49KcjanQbU2CADDcls4XKogBknWovbU0VdPa4yrpw3k+IEPBRaIp1UMR
	bAdywMUc/4eFrQ69+7FOkrB0eymxELiusWSQnp+IzerHjk0F74qQmXokD1Ke653yVaPA2aEfah7kl
	wAQAHOD623KjgaoiTKPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp36e-0000000FXyW-2j4l;
	Fri, 13 Sep 2024 10:00:48 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp36b-0000000FXwf-0xdc
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 10:00:47 +0000
Received: from amadeus-Vostro-3710.lan (unknown [58.61.141.10])
	by smtp.qiye.163.com (Hmail) with ESMTPA id A6CEE7E01D9;
	Fri, 13 Sep 2024 18:00:38 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix PCIe regulators for Radxa ROCK 3A
Date: Fri, 13 Sep 2024 18:00:35 +0800
Message-Id: <20240913100035.109853-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <73DCFBBC05FFFF33+a1ef649f-3506-4009-82c8-611df6c07d86@radxa.com>
References: <73DCFBBC05FFFF33+a1ef649f-3506-4009-82c8-611df6c07d86@radxa.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZTR1CVk9NS00ZTxlJHR4eTlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0pVSktZV1kWGg8SFR0UWUFZT0tIVUpLSEpMTU1VSktLVUpCS0
	tZBg++
X-HM-Tid: 0a91ead3dc8103a2kunma6cee7e01d9
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MSo6Nio5CTI6Lx8IAgoLFAIP
	KQIaCRJVSlVKTElNSUlKTUhCSUNMVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWU5D
	VU1KVUpPSlVKS1lXWQgBWUFKSEtNNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_030045_474110_65331074 
X-CRM114-Status: UNSURE (   4.13  )
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

> sorry, "U-Boot need gpio pin"
> I didn't know how to overwrite it. thank you.

You can look at the two files:
 rk3568-rock-3b.dts
 rk3568-pinctrl.dtsi

> <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>
> <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>

So this is only needed by uboot?

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
