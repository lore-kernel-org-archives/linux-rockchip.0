Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4158FA373D
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 10:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cE4VbqGSc+dgdnMHFYbbjFzo0AgW4jS2pDpoc6uDnjI=; b=j4EMeyKdUQrTxd
	xgs2nAAS5T6gFNq5kKoo8bhxnmncmqCUuXjXCxLcOV7FjQRKegzLGS0BocUydWvdU06dA5MQ8QTIt
	NJreWYLoA7wIEfFrbMsRvvh47Z0KqCJXpY9RIPVOUUutBJ4VtwXFzFDkSOxnjMU1CojQlFhS4j/d4
	tIAsB7Ds5Q3mCirarzEknOHyP0m113GK/Ws9fIr7avrFRPS6+UK7qnSDm22Lu9Qe33jqStpRDcDW8
	8IPClKLhjBOyBNxRUuwXTmc0jWLj61o+Q0KB7U7mD7MOlSE0Yqkj0XJUYGYHLvc2nTZNvpgazKPML
	a/8JhlVv8wQv3b1UoQYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp3Qc-0000000Fayc-2the;
	Fri, 13 Sep 2024 10:21:26 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp3QV-0000000Fauf-321I
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 10:21:25 +0000
X-QQ-mid: bizesmtp82t1726222863tbf5jg5j
X-QQ-Originating-IP: 01x1vQKkDhzTiqZWYKC4KDc8BsuScDbVBPdGMaWMpXs=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 13 Sep 2024 18:21:01 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8468952993807206411
Message-ID: <ED65CD0975EC7BEF+1679a5c8-418d-4187-87c5-c2407c7e5fea@radxa.com>
Date: Fri, 13 Sep 2024 19:21:00 +0900
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
X-CRM114-CacheID: sfid-20240913_032120_277524_44D378D2 
X-CRM114-Status: UNSURE (   7.20  )
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

On 9/13/24 19:00, Chukun Pan wrote:
>> sorry, "U-Boot need gpio pin"
>> I didn't know how to overwrite it. thank you.
> 
> You can look at the two files:
>   rk3568-rock-3b.dts
>   rk3568-pinctrl.dtsi

thanks. now you know what I want to do :)

>> <3 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>
>> <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>
> 
> So this is only needed by uboot?

hmm. sorry, anything which resets PCIe via GPIO.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> Chukun
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
