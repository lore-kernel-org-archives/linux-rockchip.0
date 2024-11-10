Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 714EBD12D5A
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Nov 2024 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gletDSCTiTUrpQwHsercb5SWEOfrpiA75ztQxrCry8=; b=N0s8NmPRgWbAVQ
	NYBT2H1cyV/6i+l8nNVdlrCWr8n014vD1i25M/MGtdcVhap5YcrdVsbhEqffKrGpyf6+wHArhPLsZ
	333KJhVeQ6cgnnKEPFay+r/mhOE0yYm+CbJsrhAj/rnqn5HhWKIaKW7OiDwaOvWDv7n8GR8YLesZu
	0qnjspu26/jAdUyQDayw/dm3W1HLjRG6BoV/jAyoU1jAfLly/qH8y1UM9g2K7lA36ULo+HaBuIL03
	mrE4UnrFf91f+3C4Pa27GF2LgPki70R6Ru95Kp0uiyO/mRwWSf1ukG0bK9gyuj9J5VsDBQx5wma89
	jOTqcZNUZz5+Ync7j6dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAHeN-0000000Fu4E-2GmL;
	Sun, 10 Nov 2024 23:47:23 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAHeI-0000000Fu3P-1Bi6
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Nov 2024 23:47:21 +0000
X-QQ-mid: bizesmtpip4t1731282420t66hxqo
X-QQ-Originating-IP: UkrhnqqxO+DlGzaaxkjTfdfQd+FeBXzRq2CUDdz8cLg=
Received: from [IPV6:240f:10b:7440:1:e6be:7b31 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 11 Nov 2024 07:46:58 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3004910687799241414
Message-ID: <C8F5ACD300CBAE77+cc81ffc1-cd1c-46dd-96b0-d9334a3a946b@radxa.com>
Date: Mon, 11 Nov 2024 08:46:57 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v2 1/2] arm64: dts: rockchip: change pinctrl-0
 name in pcie3x1 for Radxa E25
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, amadeus@jmu.edu.cn
References: <20240918073236.648-1-naoki@radxa.com>
 <173126942620.136493.12138212981184100161.b4-ty@sntech.de>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <173126942620.136493.12138212981184100161.b4-ty@sntech.de>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NEx2LjeIVIIIHanraDrGAfgkSAUV7mHsGeBXBqh1Ry7Fb0uLNaDCCMu2
	aZIljRvaYE/3eNneP1y/PIhdSZ4CDhJrvMbtjfUB8EBSM1EHIoKDRjHUukTLwhYA3uVh9ma
	U7rQxbfJ7wZpkd2FUvzHaGNiQldJlogvjYPnz0ytTmr9UwqCxPSzdFa9XikHoYEUi+OC5fF
	yhty1WahiqfxhW3pWceTdscjmMmaKBh0+B887yTJKrG+23tQuywql4ayXb7r485TkZsPRSN
	8G9LhfQVEmiW6bCN4vGm2JljtL0kcjKwTR3QrQ4KlH6U1ZDf1ak5z1WMLHmThY3MQITilXZ
	LeoHB/ZePvxJ6nEi/lqnpZ2FzsEJ+edx8hRKj3dZ36eWIUBtvYMBLR6PPSJXh8D9TQeuoiv
	MOonzuQyzBK1qE6BKFmhAuEpMXgtTExUQ3DgC7UxibK1MtRoNdcb9l4Ui3AhEFEipWIP/NP
	lO4s9wOInOM1FzTERsqhFqRTxLP6vtMDg4mF+CvvsM35s67RYHt5yYnZIvj+bYsSCvocwOr
	y8BMJERKMEDieNl9aDLKHowmcsomjXuIxLwWldInVDbMA0YHo+5qhNPMoNFyFfptREJaBnX
	zfs+iq7+cHUQqzEOgAWSP2+GS75WecP0ZJi2MUUzQtZP1mPXl2GdUx70VN2Y/H1jyGkyAmI
	bNVQYQj2KhoFc2WcqfYZBwF+dRyY1JrzTXBBCq07pSkuI4gJZSsPfZmtdysl3g/vUtbwOXC
	MxOfp/hjyB0dnDKYigyQGZQdAAclFXaiozwvv04MHlld2pQZoW6+Lfif/txkR0kpAHQO8nf
	wmPhhZiI3b+6KP2WgFx9MDnA3aBaNg43PdNFpJiGdBNE1ZQvLbYqcpP4/GbqJyYpcdTrwX7
	qw1MNScXQX7eezPQ4ZQhzJ0UiofJ8xXgp+QPNhOPZAfGUAeM+qC4cg==
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241110_154718_946995_08047C42 
X-CRM114-Status: UNSURE (   7.08  )
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

Hi,

On 11/11/24 05:13, Heiko Stuebner wrote:
> On Wed, 18 Sep 2024 16:32:35 +0900, FUKAUMI Naoki wrote:
>> to avoid conflict with sdmmc_det, change pci3x1 pinctrl-0 name.
>>
>>
> 
> Applied, thanks!
> 
> [1/2] arm64: dts: rockchip: change pinctrl-0 name in pcie3x1 for Radxa E25
>        commit: be41da78a9738514d3b6c1acfaf156bbf380ce57
> 
> Didn't take patch2. As you know from the sdmmc runtime-pm thread you were
> in too, that whole thing is still in flux, so using cd-gpios does provide
> us with the safest and power efficient way for card-detect.

I think that was only for RK3588 series.

on RK356x boards, CD is working without cd-gpios, but it may have power 
efficient issue as like as RK3588, right?

Best Regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> 
> 
> Best regards,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
