Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4558CD11700
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 10:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwb4kymQbDzCE6LQ6Uta4InQF4Sty/p1fQCWUjeBpjc=; b=OFAt4PYuIUp+Ys
	PLro31KKkQjJX7RkvEfB0gYgdZzoZw9al9L6SuUeNGfKAFQ5zdbvugENSGXziSs6BAXgQGLHgC2Xw
	dnvtZTy347qrr3Mcd4gxgPLz5ZP8HH8Omftaf+9BVcgYFXM0xp145ZpQ+9zB1DOB4/natgsp+R9L9
	x3Hvs7ISiIOx1XWAucNpf17V1pxGHBKQn/Y3MbHz0xUV++TJF1emsUSqeMX/nUzjTO0ZdlMgxrQlk
	iiPv8u/uATtrcnfqszuZWoe9ISGZo7LJ/h5tKEdR0xgD29WtRzPtSEkkabpW1o/swHVav6zFOYOqv
	P1ndiab8JaaktASfTCTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQNRk-00000005EfO-2slH;
	Tue, 02 Dec 2025 10:17:24 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQNRi-00000005EdQ-0Lk0
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 10:17:23 +0000
X-QQ-mid: zesmtpip3t1764670596tb5c8027c
X-QQ-Originating-IP: 45aTlnqbD37PSHSG5JK3F5q4dRBD3dp3ujSAhjyqz/0=
Received: from [IPV6:240f:10b:7440:1:a68f:7233 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 18:16:33 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10838209078401624065
Message-ID: <185BFDE915D4629C+83d852ac-617c-48a0-aeba-a881e3542e78@radxa.com>
Date: Tue, 2 Dec 2025 19:16:33 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND2 PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, honyuenkwun@gmail.com, inindev@gmail.com,
 michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251202084052.1517-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251202084052.1517-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Mc/7Da/97eYX2ZL9MKjPfVjLV/TgZ3KB/eIV8mloUSpPUH2mE6rqBJcN
	TeOPl0VmuRByXZb6KKwNqzkGmWvstXbNqbq5vYJ56Nx49zeJ0Qf/89l21geJv4OvQxmP0eh
	2JkpXyy9ytFrH+KexngybEvXWL0IBu2aYmL3fSx58t8ZgvaE2RrXYE+ZpiyCqKxKlNq1mr4
	3yw2BNnwVI5iLXvTxizGHU/PsVFdHiW7v0n+9mm8ztAN7rClAFw2/xeMgVgen5gKzLSndDt
	Pu4JWvIADKwbZFXtDp7s2x8voomVf22VIXV7CL8nwsq+jgPFW9nnCHaIj5f1CNVH9Nk8r4l
	QWQfPkTyst3rTXG9BMRKOHFYubeMUPAgZQ4UV43Nrn9l8eUZN4rDW+EuFVg6nT82y6X/F76
	Tc4fitCLdI8oHN8TGlV15YEjZu9t6QjyPytXQrmzRBCo6gm/3YFnJxwT3oCAD4IL0sTwJHF
	DaRkimOvlSP5XUkEi83TClZLvGrXmlaacy1PqXVZMV6fxm3FnOZZkItskByVznJSi/e6RmS
	IYIbKQWQVvAXYDi4GW8aNCL0dXN2zchkucnhLDmOzNf423PilVBVC5FJmymRZVJ5rKp190k
	zSYwKOF1hDqVLmes68deS1hXW5zpK9c0rjNgU8WBNt9cC7czVr6ybkxSI9kITN7doDiBenq
	s5w7iW0VXCDtYR6ZKcii6i3vo+aHcY1N6kHKkYJ4JJUuUDWkcW8sk1v+gMhAN8ZCyKw5x8H
	fV6GFkHAxQK08No2boV2lZeZ4ki18NfTntYRT+YhukMBI0gJMlpOiszT/arxbENWdsbt9bV
	E2Q85RQtrxIz9p54d95o+bagDGSw2KyVbAlkXN+Amthog3R3oA4YVJgWriQR4Ka5C6Tfme8
	fE7P0e9gnQnnPSMxGrbwSCQWPYOYV1dInqoNAStn/QXyX/RfVP1/mhisvbU1dAgotD3qgBH
	wlfuCPE+EbSQf1bhrMnDudFv8y9fO4Tl3UzYuk+epi8S/8itP2AUF2l2B
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_021722_536190_ADB0EB18 
X-CRM114-Status: GOOD (  12.63  )
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

Hi all,

I sincerely hope the following will be helpful in your review.
  https://github.com/RadxaNaoki/linux/blob/cm5-io-v999-20251201/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
  https://github.com/RadxaNaoki/linux/blob/cm5-io-v999-20251201/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts

Also, if you have a CM5 IO Board and require U-Boot, here you go:
  https://github.com/RadxaNaoki/u-boot/tree/cm5-io-v2025.10

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/2/25 17:40, FUKAUMI Naoki wrote:
> This patch series adds initial device tree support for the Radxa CM5 SoM
> and accompanying IO board.
> 
> V4 -> V5:
>    Patch (2/3), per Jimmy:
>    - Alias eMMC to mmc0
>    - Remove unused sdio alias
>    - Move gmac, hdmi0 nodes to carrier board dts
> 
>    Patch (3/3), per Jimmy:
>    - Enable hdmi0_sound and i2s5_8ch
>    - Remove redundant enablement of sdhci
>    - Enable usb_host2_xhci
> 
>    - Tested HDMI audio
> 
> V3 -> V4:
>    - Fixed XHCI initialization bug by changing try-power-role from source
>      to sink
> 
> V2 -> V3:
>    - Addressed YAML syntax error in dt binding (per Rob)
>    - Fixed whitespace issue in dts reported by checkpatch.pl
>    - Split base SoM and carrier board into separate patches
>    - Added further details about the SoM and carrier to the commit
>      messages
> 
> V1 -> V2:
>    - Added copyright header and data sheet links
>    - Removed non-existent property
>    - Sorted alphabetically
>    - Removed errant whitespace
>    - Moved status to the end of each node
>    - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
>    - Removed delays from gmac with internal delay
> 
> - Link to v4: https://lore.kernel.org/r/20250605-rk3588s-cm5-io-dts-upstream-v4-0-8445db5ca6b0@gmail.com
> 
> Joseph Kogut (3):
>    dt-bindings: arm: rockchip: Add Radxa CM5 IO board
>    arm64: dts: rockchip: Add rk3588 based Radxa CM5
>    arm64: dts: rockchip: Add support for CM5 IO carrier
> 
>   .../devicetree/bindings/arm/rockchip.yaml     |   7 +
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 ++++++++++++++++++
>   .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 135 +++++
>   4 files changed, 629 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
