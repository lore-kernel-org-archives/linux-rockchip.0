Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61C3BE77183
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 00:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fma0JLD9dfMiPyAB5A5zIx0NkXL61M5vHXNFbmGGv0=; b=iO62O5f7pD8kNJ
	W3j/QYpjuOcLBq1jZQ9rF+n/P/02ZDzPTU3kwjgkiOIhaTiZlqDadWncyEoIjWhoYcSvjKBM87C7i
	rtH0KZ07J1bjpr4jahTJPaKSaaksqS+GLKOMGzUOlTfJkoNiXEeJpHHzaLHxnkkb1k1gbd8517A0f
	Pke00tre0yutjCSPME8o9XgkA9f6tM+CjFomw5KQNsAEcr3PUuVtT4JMAbI5hulaoDX00E2JQKU4W
	0Og0F/MLH0tps8AxnChgJot/wXvL21FsLoXB4yDBW4+fK8rLqSGfSw5E76hSDlDgFTrwXk1geAVZl
	3TZj9bYZfZLQs3Ou6tQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNLqM-0000000BoPF-1HvE;
	Tue, 17 Dec 2024 00:53:46 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNLgq-0000000Ble4-0BNx
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 00:43:59 +0000
X-QQ-mid: bizesmtpip4t1734396214tsggdj1
X-QQ-Originating-IP: INMcRpIc5a8V+vRyd8Ss1M4Ww7lcyJLRJ2m7Q7r9odg=
Received: from [IPV6:240f:10b:7440:1:1e5c:5a5f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 17 Dec 2024 08:43:31 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17451533811309740664
Message-ID: <DC42478EC0DFB00A+6e374774-07d8-493c-9f2f-e7106d1f2d61@radxa.com>
Date: Tue, 17 Dec 2024 09:43:31 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 11/12] arm64: dts: rockchip: Fix proparties for pmic
 regulators for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-12-naoki@radxa.com>
 <0b6a7a7a-ff5a-4897-a283-6bf582dd1d79@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <0b6a7a7a-ff5a-4897-a283-6bf582dd1d79@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MSyoPQEuxKCuAmPYPUDcehBrtcOHYp2i7wpCiPukyp/4x4QHnLLDkVPH
	+Rl4un1OwDXqGjLc9tVLRd1mMLa4TxYza5rQkam7UDweDDtVLXlVeE/xRkdzt88NoIqMCgR
	Xrf6pBVOo+bLCGCoxEr09o/lSFdCnxDJK2Ea0NC2ove9/0kwuxUvgy0RlBA67QM4vTAPANp
	mfjbJFsQ+EFAq9ZQY9aMEEEhqAlUpVWPzGq/hWjHvSP6/QLmQYpQ3MaMiWpuGL5qEso80NG
	S3TgebYgS9H/01+Xwj5wQ9vISOGWOmURYDHc35DMD3VRgpM0VgaR5ePcTOgdejwsxDy4zxr
	Bu/R+NJ10VIE2F45MOSZZqixnoGWrDdxVXtXOgj0lgnWKXCfi8PFvLJjX4XNyVvXINb8Yp+
	IRyZczP6eH1QwOP8lDx5dSLN4ZEAVmWmhPiiZDrkpyB7onTY7JAOXGqXOOolx2cBUbrMism
	ok2FgCVluQbHrz5ANVXihuJ/TOLiSjOaIX6svam4vYjc+hRWAmNTt1Kws29/Lv1NHtBsniH
	EYP16HFf+aqvbHZgBwqZjERhUreD+cPinrplq5HT7d9go9d9sxmPhuPIv+A+kxJg8U/cbp6
	yhIJYZIrRHzIxWqq7LkK9p0FGW6umRfNI71EONXPeO+H8p3T91jtF0uFUI/F1gGImCvTrnL
	drexes7e2RnekiH3doIWbRhpAMW/fHSJxHTNv0Eeiucb26TuhKBbkCH8roE8CRBoxlGujeE
	6dIoTMW/v9xNtqQLsDL6JZgUQByDr4xSZOcWIrJj+zmB/E0NbrUR8JG6gnHw0DX04A9BmFM
	xhy1eGkh4MGJARPCs3dCOkF7aTCz6VhWgGGQzwSc+2XeYhkaqX1oRzF2HzkVqYLjY5xdMG1
	Ya3JeJmwwcwxbmB++adlJofLISFLJAoiUUZMTKdYFy9FPLxKoLNB5g==
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_164356_489663_80A515C7 
X-CRM114-Status: UNSURE (   9.27  )
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

On 12/16/24 22:41, Krzysztof Kozlowski wrote:
> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>> Fix proparties for dcdc-reg7 and nldo-reg3 regulators to match with
> 
> 
> 
> You have so many typos in almost each commit msg. Here both in subject
> and commit msg.
> 
> Run spell check before you send to the lists. Don't expect the reviewers
> to be your computer tools.

Sorry for my poor English. I'll check it next time.

> Explain what is being fixed here. Why would you prefer to match with
> vendor kernel?

Not my preference, but the only reference.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>> vendor kernel[1].
>>
>> [1] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>>
>> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
> 
> 
> 
> 
> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
