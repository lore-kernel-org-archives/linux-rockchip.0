Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45D11CD5BA3
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 10:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+Iw9o//gzpUxuP1S2dcCK2xbx8sdgEGym9mc7iva7Y=; b=1Q3XFSVDz6nCav
	zwCisXvuajzG4YzHYEpum0XztMFdeCPcxSK51FVjS/AQmsceNwXixV1sH42VJxSQz8AzYSKGVL2kK
	9byKJR6lzjfizo3pKlqFMUCtXGZyi8dqhTXcZ3XeWuxBEhpHSww7sWlpOqKnlur1P5IW9gsBYhlSq
	FJc2cxVeRm0LUIQM79rViU8EjOj9V4jL6jSO0ZuiV2KAICxhjAlR7Sqwtm8LF0n1bdbHTgfymogxf
	DVbdPcyTBDk6p/Ek2TPqA7cVSa187J3ICN4eMmr9oSawreQuDchP6QbX0fkA0kT0FdHQ5QKrRgJO5
	nYJfsjM9+n9qzQf7ETBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm9J3-00000007sWn-0YKF;
	Thu, 05 Sep 2024 10:01:37 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm9Iz-00000007sUl-256P;
	Thu, 05 Sep 2024 10:01:35 +0000
Received: from amadeus-Vostro-3710.lan (unknown [119.122.212.181])
	by smtp.qiye.163.com (Hmail) with ESMTPA id CD08A7E01C6;
	Thu,  5 Sep 2024 18:01:03 +0800 (CST)
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
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
Date: Thu,  5 Sep 2024 18:01:00 +0800
Message-Id: <20240905100100.348444-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <010a9c5e-205b-40b9-9655-9e168b2def97@classfun.cn>
References: <010a9c5e-205b-40b9-9655-9e168b2def97@classfun.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSExCVkNJGExPSk8dTU5IT1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSVVKQ0pZV1kWGg8SFR0UWUFZT0tIVUpLSEpMTElVSktLVU
	pCS0tZBg++
X-HM-Tid: 0a91c1a15f7303a2kunmcd08a7e01c6
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PEk6ASo5DDIxSjopQzQMFxVN
	GEwKCS9VSlVKTElOTkhLT01PTk5LVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpJVUpDSllXWQgBWUFJSU5DNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_030133_764758_72C397CF 
X-CRM114-Status: UNSURE (   8.29  )
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

>>> +	vcc5v0_usb_modem: regulator-5v0-vcc-usb-modem {
>> 
>> Are you sure this regulator is 5v?
>> 
>
> It should actually be 3.3V, I will fix it and rename
> to vcc3v3_usb_modem

I prefer vcc3v3_rf or vcc3v3_ngff,
this is closer to the schematics.

>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&pcie30x2m1_pins>;
>> 
>> These are actually pcie30x1m0_pins.
>
> pcie30x1m0_pins seems to conflict with sdmmc0,
> I changed it to pcie30x1m1_pins

This is obviously incorrect. I didn't notice that
your pinctrl for sdmmc0 is wrong.
(Because the cd pin are different)
The sdmmc0 node should be like this:

&sdmmc0 {
	bus-width = <4>;
	cap-sd-highspeed;
	cd-gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_LOW>;
	disable-wp;
	no-1-8-v;
	pinctrl-names = "default";
	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd>;
	vmmc-supply = <&vcc3v3_sd>;
	vqmmc-supply = <&vcc_3v3>;
	status = "okay";
};

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
