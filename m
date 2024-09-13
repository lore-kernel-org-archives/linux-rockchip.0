Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7622FA3722
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 07:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QeAvNlKEe6SLOT0z2HqLndtKIx+iE03MUjlNm0O4/PE=; b=F9RFatgq6n8Kry
	v88MjpPT+O0b/Wg1XEFSi8ejrIJJxJJ0GJUVxQlQB2Xe45aFQhbr1ciuebNQ2ywB/tz97Pj4KfGM5
	pmFqzB2eatSonO4Mjyohe1xfUHxjl/nb007mbKfDwcbswV4RioxYBtteKRbMkioEXLjlKaSZJdDlT
	DLwsRiFUsPvF0PK7Et3xs760jT96KVDBj6Gk0Tso2j2mB/ENzorFrnrP6Z2D8xToTUX3m0UYdD8Xz
	YxKpC2PBrNc75OLhICobpxBQNP8N4j765nfGnQ9oF8Cj1dFPvyEH1X8dNsZyvD1xa3EBHUsVgF49M
	L0Y0aTRm49CWs8l18B3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp0bf-0000000F8Z8-2M4E;
	Fri, 13 Sep 2024 07:20:39 +0000
Received: from mail-m609.netease.com ([210.79.60.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp0bc-0000000F8Yf-31La
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 07:20:38 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b0:2c20:c1a2:70cb:9846:e2cf:32fb])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 215DF7E01F2;
	Fri, 13 Sep 2024 15:20:31 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH] arm64: dts: rockchip: remove cd-gpios property in sdmmc0 for Radxa E25
Date: Fri, 13 Sep 2024 15:20:28 +0800
Message-Id: <20240913072028.61391-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240903080938.913-1-naoki@radxa.com>
References: <20240903080938.913-1-naoki@radxa.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZTU0fVkNCSUxMTRhDHRpIHVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZS0FJGElLQRhKGklBTEsYGUFCQ09NQR5JGB1BSEkdGVlXWRYaDx
	IVHRRZQVlPS0hVSktISk5MSVVKS0tVSkJLS1kG
X-HM-Tid: 0a91ea41431203a2kunm215df7e01f2
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OTo6PDo*DzIwHRgVEThJDjox
	NSxPFENVSlVKTElNSUpJS0hKTE9MVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlLQUkYSUtBGEoaSUFMSxgZQUJDT01BHkkYHUFISR0ZWVdZCAFZQUpPTU83Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_002036_981030_565D7BCD 
X-CRM114-Status: UNSURE (   3.87  )
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

> -	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> -	/* Also used in pcie30x1_clkreqnm0 */
>  	disable-wp;
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd>;
> +	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;

The sdmmc0_det pin conflicts with pcie30x1_clkreqnm0.
The pcie30x1m0_pins contains pcie30x1_clkreqnm0.
That's why I wrote it this way.

&pcie3x1 {
	num-lanes = <1>;
	pinctrl-names = "default";
	pinctrl-0 = <&pcie30x1m0_pins>;

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
