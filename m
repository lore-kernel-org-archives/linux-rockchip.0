Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADA28CFD376
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Nov 2025 12:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01anxe7wqMMyo0kNci9KcZQff/85d1P1xe8wPef6W+c=; b=WvbSheck5W1ynT
	RIL9sElBHIRLO7XKLbSKtKCagt45bMmZdvAsEcPDxRCe9l1gYzUY7TbbH4/136sVjCJ02rIggFQJV
	9FZ6FB8esI2xf2NE+potxGuWS3urXZOwWgZBntpWqv3b5IoorIp2bAXTlXExXr4pdtB5x4VptPKCd
	Sj6HPh9Wo7sxZeJ5nqi4xJ37W9HEuUjr7uuWpMjOWcYL5cdQtE7oQvRQ5FE/qbmfEdGCAQP8WePbL
	ifth1KZ1ufJwNZ9CWjKDZAI8aYmyEDAkPrOI3Nmi5PDbAQWb76odx2f9lhKxQrwQGrovlbIYbqVc9
	feZXBepzmqAg71yr57Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOxJV-00000000Pib-2jgX;
	Fri, 28 Nov 2025 12:11:01 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOxJR-00000000PfZ-17NR
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Nov 2025 12:11:00 +0000
X-QQ-mid: zesmtpip2t1764331798t16b6af85
X-QQ-Originating-IP: cfnGSLqLqGTMnzWcT3j8p1pKNNvNYptMtg78vW/KmaU=
Received: from [IPV6:240f:10b:7440:1:9018:e26c ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 28 Nov 2025 20:09:55 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14202036780138722348
Message-ID: <20486653DCCA80ED+7f87a03c-519e-4d6a-a47c-7670e5ae502c@radxa.com>
Date: Fri, 28 Nov 2025 21:09:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: Quentin Schulz <quentin.schulz@cherry.de>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 knaerzche@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20251027005220.22298-1-naoki@radxa.com>
 <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
 <a93ace02-a952-4727-957b-0ed790b47676@cherry.de>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <a93ace02-a952-4727-957b-0ed790b47676@cherry.de>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: M4K5nIxZYv59u1FlJQcKLzFeregahmkPUk2Y8zv0tuOSF+ilKOhjrdbO
	7NkGKqOpv6ig9IPcpvzbp7VtjY+kqTOngZnHvlvlzKaN0pNDSGHZ1x/4Ve/EXzGPRhnqAFf
	X9w/1gwU6445tfjjr0ujjIXv9kUG8BWN8mQXd3CuCq1aMvQdnunFbO6nacRK6oyH9j3UXgR
	iWMosvHWysTokLYb1wiS3sfjw0QsEUIdEBL+pD53Ucvn3Pb6xTUTxF4TYRcntwWVggawPH6
	AqZZpQ3Nx6L9dCU8ppKOanEV0Yyxi4+qrGjFpO29JYJhE/E9EXGBVrscC3ts4zq1S6ENNkM
	z2FE4n4bMLIfZ7OmOMN/MJ+l5OuqrAWcQLDoUhNu9h8mCnylhNxfruJPRSlt2J4DkMsy3tP
	sDt9n6cJehOnfUxROkkkEllwBdV1N3qJjVlpjGuN+W4RJ5JqTWC50sVS4gIoz/Q50Gf+zl1
	K9SY641fMtRuTp1xd6Bm3y+tI/ZNAp8FneuGbtibxTbzt6VKO/Q4rdpuV4fvWxVHWpZt+Bx
	08MV2UydcjDyoToSoTlTulDXLawCXfSL8TQyXsZKaPi0/TLgN7l6ARWd2tR0xtAkTrDGzEe
	SCHFcsu3cTb0uOyQLBxWCUXZ/uJPBTwHhX4LuwDh1J36wTiSEeEuVtts/HGFIwGQ1JBVC8e
	UQAae3mR+CefOtYgq0H5JYoHf0HUjffgGaNjP5eTpzJalK583N6yWxjPbnIv8zQg3ZTKqkG
	Q/FVbM0/7ilGeW/I59hceZN4IJ8JapKQCi53/clkrseYTeb7MIIVkGmcDoMSSI6pPGNJ2Th
	SZILx/lzx5LBZ1Ey6qGZXHksgRBmoT1b48hrkY1nb2cbrtpmkcFOsHFnN72SNUGkqcNP7Nb
	CFccSAhxrQyEbOLO+oMf2c1ZFdypSshrOpPiV9Y1PXKQw98hy6zZkeKeKRYJy2JkOY5AX2R
	74uZsLicI8IKcOv0aaE3Q43B/j6+i0SR6tSJPoriB1Wuw+A==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_041059_417331_337148A0 
X-CRM114-Status: GOOD (  16.38  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Quentin,

On 11/28/25 19:24, Quentin Schulz wrote:
> Hi Naoki,
> 
> On 11/27/25 4:20 PM, Quentin Schulz wrote:
>> Hi Naoki,
>>
>> On 10/27/25 1:52 AM, FUKAUMI Naoki wrote:
>>> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
>>> audio-supply for Rock Pi 4").
>>>
>>> Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
>>> [3][4][5].
>>>
>>> This fixes the SPI-NOR flash probe failure when the blue LED is on[6],
>>> and the garbled serial console output on Linux.
>>>
>>> The ES8316 headphone and microphone are confirmed to work correctly
>>> after this fix.
>>>
> 
> Please test the ES8316 works when booting Linux from a U-Boot where 
> ROCKCHIP_IODOMAIN and SPL_ROCKCHIP_IODOMAIN is *disabled*.

I tried below, and confirmed that ES8316 is still working.

diff --git a/configs/rock-pi-4-rk3399_defconfig 
b/configs/rock-pi-4-rk3399_defconfig
index 219f42bc7d4..276ca961c10 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -53,6 +53,7 @@ CONFIG_ROCKCHIP_GPIO=y
  CONFIG_SYS_I2C_ROCKCHIP=y
  CONFIG_LED=y
  CONFIG_LED_GPIO=y
+# CONFIG_ROCKCHIP_IODOMAIN is not set
  CONFIG_MMC_DW=y
  CONFIG_MMC_DW_ROCKCHIP=y
  CONFIG_MMC_SDHCI=y
diff --git a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi 
b/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
index 046dbe32901..c734f7824c0 100644
--- a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
+++ b/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
@@ -51,7 +51,7 @@

         sound: sound {
                 compatible = "audio-graph-card";
-               label = "Analog";
+               label = "rk3588-es8316";
                 dais = <&i2s0_p0>;
         };

@@ -516,7 +516,7 @@
  };

  &io_domains {
-       audio-supply = <&vcca1v8_codec>;
+       audio-supply = <&vcc_3v0>;
         bt656-supply = <&vcc_3v0>;
         gpio1830-supply = <&vcc_3v0>;
         sdmmc-supply = <&vcc_sdio>;

Notes:
- SPL_ROCKCHIP_IODOMAIN is not set by default
- I don't understand alsa ucm2 ;) so I modified /sound/label

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Having the IO domain properly configured from U-Boot may make you think 
> that the ES8316 always work in the Linux kernel but that may not be the 
> case depending on probe order e.g. between the IO domain driver in Linux 
> and the ES8316 (if the original issue is indeed related to IO domain).
> 
> Cheers,
> Quentin
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
