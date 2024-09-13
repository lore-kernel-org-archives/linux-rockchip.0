Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27943FA3744
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 11:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFEth5KbPbyhp8eFicQW3K18ZYMH9f7jPjNDc7fsqXo=; b=jMlLnuCTVUOf+/
	lStfhsj+i8nE4SS7ZMTDqo5kxc2dF9KucMCGfRl3LLKkXb01cHbPZpQdD/aIUAJ/5vp+ZGAPGxBmo
	OTSNlpD9/jl0jz2ttSOLA3l23BYorLhNSnByaebf7FAstujF7RmUhTTYD0WHCmYYDAHufOHFVC+cj
	u1SClmCmfxPvWEvGqroMxbnnrnBT/g5mjALU12SvyEK4Q0Y6jyTHIju3vjP0MjGMSzmUgBlVqE4FS
	g0KcePwnfi88u0TRECbDsoLMOAXJrrVOYalehixTvGv/h4ASRJl6OVQgzKsgCd4zLDcl8QmyQ2jPi
	2PqvfsTYwBWETv9EOowg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp4Af-0000000FhmA-0qFP;
	Fri, 13 Sep 2024 11:09:01 +0000
Received: from smtpbgeu2.qq.com ([18.194.254.142])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp4AZ-0000000Fhko-1KKU
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 11:09:00 +0000
X-QQ-mid: bizesmtp78t1726225719t5v355cc
X-QQ-Originating-IP: IDlEb0ycE/pywWzzCdbybb2W1L1UH49VVAUXAnKCQY0=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 13 Sep 2024 19:08:37 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1388570646766868255
Message-ID: <B89055F5BFF2A869+2229c131-01b7-4e96-8b81-9533b995da5d@radxa.com>
Date: Fri, 13 Sep 2024 20:08:36 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix PCIe regulators for Radxa ROCK
 3A
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org
References: <73DCFBBC05FFFF33+a1ef649f-3506-4009-82c8-611df6c07d86@radxa.com>
 <20240913100035.109853-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240913100035.109853-1-amadeus@jmu.edu.cn>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_040855_849607_208C770E 
X-CRM114-Status: UNSURE (   8.09  )
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

btw, how do you think about pcie30_avdd0v9 and pcie30_avdd1v8?
as far as I can see, it's unused.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 9/13/24 19:00, Chukun Pan wrote:
>> sorry, "U-Boot need gpio pin"
>> I didn't know how to overwrite it. thank you.
> 
> You can look at the two files:
>   rk3568-rock-3b.dts
>   rk3568-pinctrl.dtsi
> 
>> <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>
>> <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>
> 
> So this is only needed by uboot?
> 
> Thanks,
> Chukun
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
