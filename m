Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73E97CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Nov 2025 08:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUjwrCEGAfdIS1/4rYr3INqXJpqcrJCAB+xFbUWavSQ=; b=gAl2XKzNUY5XCx
	G5Tv6cigHxY17mt3USHMpUAYpsHjrsO/KUDnG4Akoh8AWKA83qszwtYJ7jPqvuRSKeBYawx9MEw4v
	73FmpBaDLGerT6Jvns5LD8aq12Pd7rix8m3YzG3ETIC5ekM+afEsVkmFT7dYVFT5RvWOO3+X1wT+z
	W0znpN2SfjhpOwChRaA6hNNFZsK5bN6rjewv8oPBjSw6818vG7x0MpOMkJ6VnTqZYqHSbqO6oHPAQ
	zsHMa3g8LftGoJuH+4NWZUcysJnpmReMWTYtfO0XGs4LQ1MoYyj8t0FdnoM5C538SJTnGY5WMpenr
	mUXw1VJ6i8R76xYeTTaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFTSS-00000008P6Z-35vS;
	Sun, 02 Nov 2025 08:29:05 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFTSQ-00000008P5c-23HO
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Nov 2025 08:29:03 +0000
X-QQ-mid: zesmtpip3t1762072098t29d25fd9
X-QQ-Originating-IP: F3nUd10RVTVpzZzYzC7rcdSDgxfgei8hzpDP6AiJ6ro=
Received: from [IPV6:240f:10b:7440:1:cc75:a886 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 02 Nov 2025 16:28:14 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2998007456399229446
Message-ID: <DAF1CC9361853E89+ce2c6a94-2aba-45c6-b0ca-ad2c3b7208a1@radxa.com>
Date: Sun, 2 Nov 2025 17:28:13 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Fix USB Type-C host mode for
 Radxa ROCK 5 ITX
To: heiko@sntech.de
Cc: dmitry.baryshkov@oss.qualcomm.com, robh@kernel.org, conor+dt@kernel.org,
 liujianfeng1994@gmail.com, detlev.casanova@collabora.com,
 linux-rockchip@lists.infradead.org, sebastian.reichel@collabora.com,
 damon.ding@rock-chips.com, dmitry.osipenko@collabora.com, jbx6244@gmail.com,
 andy.yan@rock-chips.com, krzk+dt@kernel.org, didi.debian@cknow.org,
 shreeya.patel@collabora.com, nicolas.frattaroli@collabora.com,
 devicetree@vger.kernel.org
References: <20251029130200.987580-1-naoki@radxa.com>
 <20251029130200.987580-2-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251029130200.987580-2-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MjQ00mYXMHtuiaHRtmsnbZ71p27SbPYJAnkPxF+fspNwr9rKTmCwqZX0
	IyisjlyuQLcb1Qdscz/J6RNYu7Tp/NfLGJQl24+adOjEdhZhXCYyznzbjpgWtsReZlTiKst
	WE8bI1aZjxQzqmlW1SaPZ1FJHHDXGMTEA/LqetpaPmjwtxkuIh8NAQBxE2MlqZG56RyOuE5
	jGCfQQr+HhrDT2vGXnA2PT9FFuQtk3fp+nYuTWoNyNkJ2W16jyQaUZH6BEqAtNMvD5mJl/N
	ujPNmrvuqH9opLVQl4vQvFXJXQiGYsdCNk0w3A1AZRmCv3gw9H9HTAnXIBpVwt8kAPHW1gE
	WfmxmZtssCf2i+2oQ7BUUnr0Roh8iIpa+EiAQq6933G4pY26lUvdh2+VGzIwSWV6162xp2Q
	dKWsWv2FbwJYe9qjxRh6kIsSm6w5yXVlUjIQE9uHCKodZTJibkML91CDCnoPc7cVUpgBaKK
	/QOUMK9Kb9EP7HNYlENmoJdR4J9+peyVbFpmOlpwv72Q54NccaqdnDrHayJilbrsnqx/kX5
	AsoV+HPtuay/tDq8fdTxuHGLmz4g1Is4osOGlYOp85MbxNC9kmyzMX+MzaVztxOVF9vyRqK
	91FF2Kk/eA2NMV1XPx9OeyhStsRt2+GVs+iirv2TMDeiyIeGy/FG9dkZWaCHNW8xeSqDKyu
	Cv6cacP71QMHXGQV+th2GsnE5LsWZS40Dbac2vIv0cMk2WaFy/t7H7D6v/tkZwRN/y5m+uQ
	LPUYWfjp8y+wmGEF0Q0oMCfiMeben7lxAbpHvlT34caR/KQO7Ko7Y71buCBu3nH+r+CyeIW
	xUCsDc6Ax0zjV/8BxNYf//nD/vhTNVW1hizBjOpheZiD13QAs8o7gOd+SccwrFI2O3MQ0XF
	3UEzSM7USlzhMnLz2vZiagTxiu3QPEPCJ7S7s4KkI98WeB7ZhNSh/Pm5liMdHxbyMPDFMwS
	YicVt6/gaavMtAAldCogwf75Yehl2X79Kw9U=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_012902_885918_2CC334E9 
X-CRM114-Status: GOOD (  18.00  )
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

Please ignore this patch.

By the way, could someone try a bus-powered USB Type-C device with the 
ROCK 5 ITX(+) and let me know the result?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 10/29/25 22:02, FUKAUMI Naoki wrote:
> The Radxa ROCK 5 ITX USB Type-C port supports Dual Role Data and
> should also act as a host. However, currently, when acting as a host,
> only self-powered devices work.
> 
> As a workaround, set the power-role property to "dual" and the
> try-power-role property to "sink". (along with related properties)
> 
> This allows the port to act as a host, supply power to the port, and
> allow bus-powered devices to work.
> 
> Note that there is a separate known issue where USB 3.0 SuperSpeed
> devices do not work when oriented in reverse. This issue should be
> addressed separately. (USB 2.0/1.1 devices work in both orientations)
> 
> Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - Refine commit message
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> index bc8140883de47..1664f85db4aaa 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
> @@ -484,9 +484,14 @@ usb_con: connector {
>   			compatible = "usb-c-connector";
>   			data-role = "dual";
>   			label = "USB-C";
> -			power-role = "source";
> +			op-sink-microwatt = <50000>;
> +			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
> +			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
> +			power-role = "dual";
> +			sink-pdos = <PDO_FIXED(5000, 10, PDO_FIXED_USB_COMM)>;
>   			source-pdos =
>   				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> +			try-power-role = "sink";
>   
>   			ports {
>   				#address-cells = <1>;



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
