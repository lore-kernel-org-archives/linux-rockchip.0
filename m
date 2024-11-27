Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB869D66BAA
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Nov 2024 02:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnKsa6dLsr18Fc9okicHzs44p/d9e2u/QlcH2FsRc74=; b=XStyyJAEismqyP
	nBnjQ+jXD8MZUrSbfmG0XBPhzoEMuRrolKuO7rDfLFPCbtPfzAKp76liOHOqGvpqOP7GkoRvMiRfq
	8HF1X0v8PkvHZbfMF6x0tjEdxSresVLuXsq7JuvnjzkSGzSqmICESJpPBqYZp6Btq1oEzWpT8MJvI
	9e3AT6lf1Ra4tTNA1lfgyiCF9r2e5Dl4lPjkxz3xHQpugU8Qf9KbkUmRkvGViOOO07ZXlC617+bY9
	XCF0E/0JmF81GV4Ct60F+82vn56PzS1VTL+uSOxqO5xsvIZZXu4Eglp2fpwhqgS8BytV0VBU4T9dz
	PkUuBrhsA9USV+EGo+wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tG7QA-0000000C3GH-0pfQ;
	Wed, 27 Nov 2024 02:04:50 +0000
Received: from [54.243.244.52] (helo=smtpbguseast3.qq.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tG7Q3-0000000C3FV-1rpy
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Nov 2024 02:04:49 +0000
X-QQ-mid: bizesmtpip2t1732673048tdk7o44
X-QQ-Originating-IP: ngFj6m0e9R39ADWeOgCOIr8SRw+JjL9oamyAdm9ADf4=
Received: from [IPV6:240f:10b:7440:1:6277:666f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 27 Nov 2024 10:04:03 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 654727848392696255
Message-ID: <4BFE61448C9B8611+e5f0211f-cb10-4819-8108-f721d4413a38@radxa.com>
Date: Wed, 27 Nov 2024 11:04:02 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/11] arm64: dts: rockchip: add properties for
 pcie2x1l2 for Radxa ROCK 5C
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241119095113.78151-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241119095113.78151-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OatzRg8pHEjpc512aVo4oOI1uNT7zbXiHVpseuThKx5VXEN1+w0s5Asn
	xPWJ4nbJBXHgUvOEQZmH4q87PoLGtc46rSg9bV/AI06IOCbXCdqFkZMQGpuFq99CnoHvGs0
	RZIG0kf5k9U391yqGbIo+CxWF2rZlUMBL3G5gMJuH1+RR5IMoyKFqInAJqFsq+oDfXxZO/7
	MNiRk98JfxVLgpx5z/SZgMCqCz9HTj8gHrnEZV3K95OK5QLRdai8aHFa4RO9uwWQGhMqzVT
	sJg+sifJwjFzwB1RBcCYcIsSnbB+iudeoqCSxOlHbIDyvmT19sZaBMC3YQmTp+n34zn1YrO
	t6FhMmu2Kdi+djY6wGZRqh0ZHlRFd7yILmPFAuCgfJrgqsw9mSFxjakKaEdIdpfC9AQp/Yd
	bCr4LYmaMcD1VuPpnRj81eIXZSrM+Uoc/bAQujI0ZVK0cfxmK6dEZUs9U6kq8ZhDZmLQkqi
	/p++UIqcz/NwPeQnBM3wlStootH7CYB8dJw8+ZpsWGPDoYDb9bIR4gFNTaRPXn9gfKuNHqg
	f4CD5whJJf2ZcKG6snoqWalxeb5FHkFxHIqMeCAijsTqsBVPkYaUQ6152kiRlqcPGUC1KFF
	XSeHFou9+9WByfrlQ6XlfMHUZjOZekhlJZxrhNF2+dTiAFwxgLR0a4wzEMbMP09I73en4o8
	QlelroNdVaDHjv96CboX8HtJqT3rB7TTaijAMO7fDTpLEgy0LbgdBCMtYfB2kPGNAJM7Lue
	4a0EpbKCs+0CZwJrAuYvLeGXM/e5h1/+P9CFp1t/bwJH7a1LuLuzg5P5ryU/KveeLfWgHnA
	nh7SegkRESGXmD8Jbq761A/iBfqHqhUW8Peemd8f/jXzckKvQ+2NQ6m3f2cmBnSkRigbW24
	aKuRPzxpJjwfquBtmRx3z/Wi0HdTeh9bhqjFxumKXcI=
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_180444_044055_4965D769 
X-CRM114-Status: GOOD (  11.12  )
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

Hi,

can anyone test/review this patch series?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/19/24 18:51, FUKAUMI Naoki wrote:
> by schematic[1], pcie2x1l2 CLKREQ and WAKE pins are connected.
> describe them in dts.
> 
> [1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf
> 
> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v3:
> - none
> Changes in v2:
> - reword commit message
> ---
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 9b14d5383cdc..997e95bb5b74 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -419,7 +419,9 @@ rgmii_phy1: ethernet-phy@1 {
>   
>   &pcie2x1l2 {
>   	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
> +	pinctrl-0 = <&pcie20x1_2_perstn_m0>,
> +		    <&pcie20x1m0_clkreqn>,
> +		    <&pcie20x1m0_waken>;
>   	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
>   	vpcie3v3-supply = <&pcie2x1l2_3v3>;
>   	status = "okay";


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
