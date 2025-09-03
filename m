Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFB8DCA1009
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Sep 2025 09:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xU1WqJc11CU7n2/hHkeJtxhTLuMZxzFpEdPflwi+AA=; b=05oQIZfO+b1g3P
	fnoRl1DhoAlrgjrf7dYSkxKpGKlrs+R1tSyJOBDpgS3NdPzp6RyjAL7WEF7m0NTwgkuUO337+H3DB
	qIKUpwiRE/0awG5WQ6ytc8ZfMd5xeCCiqUoSsVu3sJVx5bH9MCKcYf+jk6uUyp2uQKyw43svK57Ny
	Ba9Sv98sl66vnbFchH97Auexfu5BAmhxOK1qekqdCDi7Dv8deNSfRI/96LrH3M6yQ5c9harsivBul
	rMqxHVFX326JOWLzm5vYJl7pmpVstWPKEJ01Vcd/kvLf8eO8OV6iWBVK/ddEKQizfElv/jM7GAgsX
	418QCu8zPRi6vxJ/9TXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utk4F-00000005yMt-2BtW;
	Wed, 03 Sep 2025 09:46:15 +0000
Received: from bg4.exmail.qq.com ([43.155.67.158])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utirg-00000005Zhb-2Ap9
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Sep 2025 08:29:15 +0000
X-QQ-mid: zesmtpip3t1756888125t2bf0b974
X-QQ-Originating-IP: hNMMUBWBZAMjlucA+xBTHqWVycX+g2+pxJSCJlsVS4I=
Received: from [IPV6:240f:10b:7440:1:81b2:3bee ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 03 Sep 2025 16:28:40 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13612785056484846069
Message-ID: <57969F385B5AF318+653dac83-8227-4987-84c6-f3e08b10085c@radxa.com>
Date: Wed, 3 Sep 2025 17:28:39 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/3] Add Radxa CM5 module and IO board dts
To: Joseph Kogut <joseph.kogut@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jimmy Hon <honyuenkwun@gmail.com>
Cc: Steve deRosier <derosier@cal-sierra.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OSf9GMjVgk1FA5RtHdGYUb7MCjBdmMO+pQAtQLTr1sfyTpwGKoKr8jsF
	+EXcjURPAA9kAAgejrTybPwiqCfA5iCvT99nPT8BRuX6sPYtQGnuX7KcWIQutfPAIwWQzp7
	TeG5UlcxyRTJAykdxg1OMabUMdphTwtS8pblkin2r2Sr2CMPthebaQc/Ez/dAdmGGzDDz/R
	S7//jrz4TgqGFwLb/DdEiSk6/0VGwQPbBtVYRemnr3xqqlx6du5dQEDvSFgYp1cBTEmE4XD
	ZyHdY79E46x8gcbzY+GxdNDALozoWDAMi8cVl9pah2B1DQPd3mWcCqOXDgexkBvzCbuSLQr
	bUDvmLL/YQkJQs+YGyGR5vLOEMu8ozltdHwyEH4fhHJAtqeO6VvRuvHhEEofzIs3RPZ8JAR
	NuEaWINnsuYeLyyh3B4r7fUQoXgSk7F1TuRWNXz1tAEHQ9njL+a9fPZK7VLJg4MEdnzOOHR
	8h8SRdmnoCrV+gcMEf4tORuHI6YyVPNY9nfby3GARrYZ+GcVdJ0SP3I1AMmNU64XrRrf39I
	1HCC3NSDVRFmklNzu/TDLt8t87Wxo+uB5T92fOAmD0owiNJln6C1zSGgwmqfASfNLxBJLnx
	0Fs5dpZp/W9+jkp0cd73gs9bsXNnWToyxDOAyD/q6xL1AqQ5eeAqwRVk1765v/kTVW5AJ8r
	BW+YPC8yhnxR1BOe//xmJmDoAyJtP5zMnSDJvCcr7YmCMnxsmKv4BcQE2T7UMkmaNXfwoUQ
	ImCmUE0uD7/yYMW0tjTzV4HPNxlpnsApt4Esx7uUCHKbOFB4XO2/9Q6Hm56RQiBXTGnhREh
	9sB4pPd6YgCPjR4Xi4HDw0z6SACg3anWzQ1ABq0Z7N6yCtB/qK2SON1CHf570hoUDwZB4OD
	bkN0mTYQ+oEG9CdC9HoWf+j+NzkqPk6SXZD3Q/3vqbiMWFA9gTkxAT/T34o5KpBjM00gUmH
	AikN1d6hYhXkyy9jNSByU4lUdzM1kZZo6Ft1dK1iYoXc46WCJc8e3G1fjAtIEwDALzrr27D
	7P6ZawnoOl7EKqQvrYCcgPurV01ALDiv3AoQW0wHaZfn68jsBKvFKlrcGbQKg8j3FL2At6c
	pjDTTAdww/j+8EWbiuo9Hw2nByypChStA==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-SPAM: true
X-QQ-RECHKSPAM: 3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_012912_875631_C4E6C2B8 
X-CRM114-Status: GOOD (  14.41  )
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

Hi Joseph,

I'm thinking of continuing your work, so if you've already done 
something, please let me know.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 6/18/25 07:11, Joseph Kogut wrote:
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
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> ---
> Joseph Kogut (3):
>        dt-bindings: arm: rockchip: Add Radxa CM5 IO board
>        arm64: dts: rockchip: Add rk3588 based Radxa CM5
>        arm64: dts: rockchip: Add support for CM5 IO carrier
> 
>   .../devicetree/bindings/arm/rockchip.yaml          |   7 +
>   arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>   .../boot/dts/rockchip/rk3588s-radxa-cm5-io.dts     | 486 +++++++++++++++++++++
>   .../arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi | 135 ++++++
>   4 files changed, 629 insertions(+)
> ---
> base-commit: 0af2f6be1b4281385b618cb86ad946eded089ac8
> change-id: 20250605-rk3588s-cm5-io-dts-upstream-f4d1e853977e
> 
> Best regards,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
