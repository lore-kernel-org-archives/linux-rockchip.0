Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43261C3ABB6
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Sep 2024 23:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZGkAvkMADbiatRBaxA2XXq4PxGQnjoH6Z2VAO7/fqc=; b=gQ9orO2ar152Db
	Ma2Ebn3cVKouFcdnInRmEXn68yAbXLc+yedrXvt5zudVm7F/1ZVJBrw2u7cqMS/TV5tNcUAyEI4kI
	0DvvuZf7th0LBiEOglBhrt+qd+DeUIv6a/BetdjwFk9FssQu3BuoCQa7N7c6nUSbiXAXZNi0yz/jk
	NpkrB0hS9R7pjjPB975ac17XAN90ovqEg+f/UwM5hPnCCfU8CkLXnriLTNTat6d03Rkao5XVhOP/E
	P/JDg9C9EGsm3LbnQNHWPgGMfpBGpWGr/Au5uCp60L8uvi6f/8O+UKVYFlOibjXESPIyyGD1jOnTv
	E6Fo/SQMzGzF6+fFP4eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spz7n-00000002qRf-4BFv;
	Sun, 15 Sep 2024 23:57:52 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spz7g-00000002qR2-3UZc
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Sep 2024 23:57:49 +0000
X-QQ-mid: bizesmtpip4t1726444648t4drumr
X-QQ-Originating-IP: S5KOpuFNHr+kiQGRhHKnjP5DSqszPqCqXiuIjVfRxdc=
Received: from [IPV6:240f:10b:7440:1:da66:5f05 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 16 Sep 2024 07:57:26 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16594544492214367141
Message-ID: <AC9279A68EEE724E+253b27d6-e954-44ba-ab42-e8257ae9a2bb@radxa.com>
Date: Mon, 16 Sep 2024 08:57:25 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: remove cd-gpios property in sdmmc0
 for Radxa E25
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org
References: <20240903080938.913-1-naoki@radxa.com>
 <20240913072028.61391-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240913072028.61391-1-amadeus@jmu.edu.cn>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240915_165745_366847_E04D833F 
X-CRM114-Status: UNSURE (   6.44  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

hi

On 9/13/24 16:20, Chukun Pan wrote:
>> -	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>> -	/* Also used in pcie30x1_clkreqnm0 */
>>   	disable-wp;
>>   	pinctrl-names = "default";
>> -	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd>;
>> +	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> 
> The sdmmc0_det pin conflicts with pcie30x1_clkreqnm0.
> The pcie30x1m0_pins contains pcie30x1_clkreqnm0.
> That's why I wrote it this way.

pcie30x1_clkreqnm0 is unused[1], so it can be used for sdmmc0.

[1] 
https://lore.kernel.org/linux-rockchip/4985f0c5-3772-4e8e-82e9-35c8ac8ae20c@rock-chips.com/

Best regards,

FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> &pcie3x1 {
> 	num-lanes = <1>;
> 	pinctrl-names = "default";
> 	pinctrl-0 = <&pcie30x1m0_pins>;
> 
> Thanks,
> Chukun
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
