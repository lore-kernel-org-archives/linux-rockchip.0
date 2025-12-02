Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 780DBCFD376
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 05:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCHa6AdqSHj+YOeL3f2y6mixUbObFntKvTFwQNUYDbA=; b=bwhTh52uwpNwN1
	CWJXE7jRPsb3Xj0RM7fdMOqLUbs0YdO/nNiSbVtgwhBd40OT9sGmxtTDkkI7TWuwz09+AKLq3FiM6
	HZo0EtXuIihXgSTt8G+YqQlNyxUp6BKb/szM83HkwXkXBaD20KVHj63cvPtX8URhf0qZjVbyDAduC
	cblC99Z2iljKKAe8I6XHDMd0EwaYmtuY5WjWyfUxZfenbKwH94b5rLVUleumqKl7BAxXeM3K6wQ0h
	kKrvzohbMvxER79qltKyLPYW6O6YG8jzhsn8Q4j89NdafnECC3iv9atZ5kKcavf2COVazrSixdUkH
	lMuu3vYFGkfG1w7QLJNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQJ2L-00000004qaa-0arF;
	Tue, 02 Dec 2025 05:34:53 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQJ2H-00000004qXq-3AKX
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 05:34:52 +0000
X-QQ-mid: zesmtpip2t1764653631t5ccae0e7
X-QQ-Originating-IP: naTnx6ci3Ef6pXnpG8dnVHxLFIrtxNygixU8TzGW2dU=
Received: from [IPV6:240f:10b:7440:1:46e0:47f6 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 13:33:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8448205919639548247
Message-ID: <C0E469D599446F67+f9ca6d56-1c6f-4c9e-bda5-ce023f2c2cb0@radxa.com>
Date: Tue, 2 Dec 2025 14:33:46 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
 inindev@gmail.com, michael.opdenacker@rootcommit.com, dsimic@manjaro.org,
 pbrobinson@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251202052702.155523-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251202052702.155523-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MCphk/HbFC58bvq9Ngp4reADdxjSuOY+jA/g4+gA9XLzsbqV7clOy9QG
	ezrxXU/LWbNo80nLsVnPvhbymjji6155wFPRBV1kT237iULauEPOdSaflK187SHXWJU6RYW
	axfGSiiFL7NXiUzTjE7XlA9ymu8+Wag9CjBR0hq+BVQq1d5aHZvo5a7ecYBuvo6attTibmN
	jrmdr4KtdtRaCj5j4NZAb7tyrO/+AIMblnVl1RE55BJw3W0fGXoJvY7lgKIvkgKH/Zz7/X4
	Dx2vixViHhMWNa176PSp1ZQAoNiVEh4GkGT+QRfO61teJKadWlTo3m2VeWMsHE+rZQ0Qy6T
	SuPVWFMEjjMJBnAMhE5PQSJtkeFyjUtvlAvpp2kqiw1z1GVOOgkarP26r5w5ibXjUGjfP2a
	Y0jbECT8EY00M3bKwsluoONg73Ns0Ma2y8BjmKWWsS+Fqa/ER/nL/dsCGqR8Fh9KE31ZFrO
	+QYAErLAKO9zbnnzGw2GIJ9htf5lBoluYDtxPiEbRd2TjG9RBfuIDQ+FGC+FGtwZqLLj648
	2yVAehSWid3CYghjpCIwg5Qq8nuTmyK+H7q9+zzGnU5vlOLVogNt6/4qHXAVlBCqE/zemH4
	jLnOhHL7JFfO7feFok0s+O55vMGISJK/CA/3bR6Lg8ElXAuUL0M6TefpEkeMTkL8NAxPo16
	faw5amrbqFqsUTwS1qWTMecVE5jlSrjZJ5RHwIRPjypQNi1kiLr+mt3WaSn+dYlH6uxQDo0
	4+Smy+qf1E3Hus9pB95E1sM5w1/+AGkwHiLtYDogxX8W6cUT68L6v/mFFML6CXeNYGhqYKB
	otDgXzdEbRU3sHabe6zFo6EorhE+Sfl5NpXqvgnd0y1X+DqWlsjRoR3TDCplKU9YYqh2PAK
	5p6hQK4P7GK7gKf5NibDihpqAKlC12j+vmrWwxWAeVw9K9TxzcHaGIv+bqmtDrkzRpR0oxG
	kinEc/KFtrfpaOJ0hh4EV80/TrsC+oeNvYytt4zXh56cE+H+qn3IBgs/w5QriCtUG6Z1Bwt
	exNrz9cRXy0+j9h1VfSeslJ6k/3kI=
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_213450_886311_B2E780D7 
X-CRM114-Status: GOOD (  15.67  )
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

I got the following email,

On 12/2/25 14:27, (Exiting) Krzysztof Kozlowski wrote:
 > Thank you for your email.
 >
 > Krzysztof Kozlowski no longer works for Linaro.
(snip)

I'll resend this patch series with the correct email address. I 
apologize for the inconvenience.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/2/25 14:26, FUKAUMI Naoki wrote:
> From: Joseph Kogut <joseph.kogut@gmail.com>
> 
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
