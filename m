Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E802EEEC39
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 07:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooy2lE+WublEL2mc6EToAZ5G6QZ+O1k1oKUeEoJe/9c=; b=eqFZpKqF3hHQG+
	SPNarlw+7oV8F1hZOnDh40nw1lP8gx5EUWit9Y4xkE1+IUE9pxi5SNU6ksCRGQTyoakKx2E5aBz4w
	SgHBRjCNB0mZUpulQCnBNg9VcEAvMk2JzYztBC7M/EPdneT5UygauK9ncesqKL0hpp+xasqWhXzTJ
	UiYnaT2iz1lJzXirngMckxG0zonZd0qJlH7zyNLyP/j1QlIv1hkJ7oa0QgwfLA3CFqHql941oLBCf
	Ck4ZfsbcNp16kkNxPyqMyFCE9yK5yFCUdbQ+MRY7vpsjuDl8wovrCI+CpT9sfblpeoVfFMRA7Jw5v
	S7Xr7fTaZv4LM8KSLxAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp0K7-0000000F6re-2VrE;
	Fri, 13 Sep 2024 07:02:31 +0000
Received: from mail-m17244.xmail.ntesmail.com ([45.195.17.244])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp0K2-0000000F6n8-3r3Y
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 07:02:29 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b0:2c20:c1a2:70cb:9846:e2cf:32fb])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 700D07E01F2;
	Fri, 13 Sep 2024 15:02:17 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix PCIe regulators for Radxa ROCK 3A
Date: Fri, 13 Sep 2024 15:02:04 +0800
Message-Id: <20240913070204.57661-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <DBE2633C9C284F67+3d59ded2-665f-4640-826d-4e2ec88b5d51@radxa.com>
References: <DBE2633C9C284F67+3d59ded2-665f-4640-826d-4e2ec88b5d51@radxa.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSx0ZVk9DSh4ZT0kaSB1LT1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZS0FJGElLQRhKGklBTEsYGUFCQ09NQR5JGB1BSEkdGVlXWRYaDx
	IVHRRZQVlPS0hVSktISkxNTVVKS0tVSkJLS1kG
X-HM-Tid: 0a91ea3092d503a2kunm700d07e01f2
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mi46HAw6DTI9ARgBKTxLQhoQ
	Dx8KFBBVSlVKTElNSUpLQkhDSklLVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlLQUkYSUtBGEoaSUFMSxgZQUJDT01BHkkYHUFISR0ZWVdZCAFZQUpOQkw3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_000227_183276_64182369 
X-CRM114-Status: UNSURE (   4.71  )
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

> arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts:656.32-664.5: ERROR 
> (duplicate_label): /pinctrl/pcie/pcie20m1-pins: Duplicate label 
> 'pcie20m1_pins' on /pinctrl/pcie/pcie20m1-pins and 
> /pinctrl/pcie20/pcie20m1-pins
> 
> we need gpio pin for reset.

Can't it work just written like this?

&pcie2x1 {
	pinctrl-names = "default";
	pinctrl-0 = <&pcie20m1_pins>;
	reset-gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_HIGH>;
	vpcie3v3-supply = <&vcc3v3_pcie>;
	status = "okay";
};

If not, please overwrite the pinctrl:

	pcie20 {
		pcie20m1_pins: pcie20m1-pins {

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
