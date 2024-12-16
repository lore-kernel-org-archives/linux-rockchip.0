Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8366CE77180
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 15:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8DPBB13giSGpsmKH94WVhRsf5bVF4h5fqoIjn2PukY=; b=VTaZGKJD2uv4L7
	Yq2VDEJrxF3H4PFS8Ifh0IYpZ1xbhLjAsze9Ci1pkIa7XiSh511wAYQ4g7nhyL8q+agvSJMSg+6sJ
	yzTuzhVghmOFD+BWBzGnYZLaQwzb/lrDWBM/X43cZ/6PiIpNbWQ5cX/5J7gSJ3ddGMkYZOWFBGZZC
	Dby5C3g0pDZOMVwNIBZu9W8wHBFH57+wuMB0dAV5p4c92+2vK5qarfg34LN3eKkIE9cign169SfD4
	yaQIrNfeA7dx7KcJgymorVt/KHj5Osx1dK8ToyOJ3S7RTTvdAPxghxYQKqvNqRtyx5dYeeKwcKrOp
	UReheALVjpQziNGmuGLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNDCN-0000000AR17-2Fiw;
	Mon, 16 Dec 2024 15:39:55 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNBx9-0000000AE2m-0WnS
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 14:20:09 +0000
X-QQ-mid: bizesmtpip4t1734358767tdjlx80
X-QQ-Originating-IP: /fCC4MATP0ZL2/mLhQ0HfNl5JloUob4VMJkL66r4qvA=
Received: from [IPV6:240f:10b:7440:1:f7da:fd82 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 16 Dec 2024 22:19:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17924903418608735060
Message-ID: <C6FD94DDF2E16CAE+22e3003e-0d66-4092-a9a2-def5daa6c202@radxa.com>
Date: Mon, 16 Dec 2024 23:19:23 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
 <0b0efc1d-2340-4ec5-a46e-62a6cebbc2b6@kernel.org>
 <5707EE9715A7E332+f33721f1-8b50-4262-bdaa-468ad2c79ecc@radxa.com>
 <281bce4e-cec5-4ad8-940a-c9ef16202a43@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <281bce4e-cec5-4ad8-940a-c9ef16202a43@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OdKM2jcE40T2Mxw+WUBBPV5nS8cnquqG52eihEBmAC4USk9ssITrAMuO
	UCvHeJmPCauCLtECpa6TDQtSZYbJInZHmm5bjxGU4RQM87/5ZIVmbntZuQMl0IweQ6pJNad
	MS00y/P4GqZ8BGsU/QThb4mzlNbZ4VIS5f7YWRY4nrSzFcOcCLPSu6jVSmQ/61J568Kur0d
	r9V9G7aeSdQ2ozq6CsE90jqvcZ9ry6g1JiWs98/OalXxsp1nZBqC1mAG597a0PyRPrRoC/A
	LK8PEvGcaiSV9xJKOTP7N61T2x2a4UkV6ijcyHcjdlpHEWKD0YvXqcj4uS8gP7Q6usiUGwb
	zT0SFDz3VnFnO0fd0WAcC8n1qYEh4FLLQhjmbNooI3x6hmpUoKfuxGkRlWlTKcwfoWNVhSC
	dsO7sHG3fXJMYsNWHeSQokVYCRGtyeFBJ4NalZssRCdfYrqkpxhT1wlWqs48KFbkBVVjnTM
	BHhYZt07tHK3FRjHbcM7mNVDC3Kx2JQDbAMleK5OT+O4lDQgwmKkj7zksNa/anA/L3A7TcZ
	p/lUkruIgfxEFecqVRoGoTH7JD1LhRUijFMxR6BYfIdd+thfjdbKchhoJ8TXPk6jEyn28W0
	H/botQDAopUQ8yroOayZJcPX1Qix9h7UtenZeX2ks1gAZ3PCt15qN2ppLh2TkTQBxQidRxT
	JKiHBt0mhTfyvFFxMH52XH8boi2weKkBMnjCAzZLvgUiXb67a/jcyCoAc5ohEUjlQ9tiwhF
	AHb7m4QBUh4filzuz6Vhji4Bt2o6XjvEEWxcpvuZXmRzL0PuarBStkS8hQzxoln006heqe1
	YPlj8kncDZDWwdhjSp4dhCx77OYtqg3m13erwhpStPyTzMNOMSn11ws8IGQBRfl5ZjDb2F1
	40A0f9hoAKfezCoUdhX8m0DILGjIRCL3UHsYGn7QA6DAxCt58m/Ew6rMwbvfv76khQIIRr0
	If5f39DMc0l2O5XwzQnxrG9q4CZ2weMesGH/TumPrhEeu7/y4ijS/I/WH1zFbad0tU10CMg
	zOYohkHcCDC8CAt6Wq8T/yv0SKFr0=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_062007_674355_0D07DA80 
X-CRM114-Status: UNSURE (   7.01  )
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

On 12/16/24 22:56, Krzysztof Kozlowski wrote:
> On 16/12/2024 14:48, FUKAUMI Naoki wrote:
>> On 12/16/24 22:37, Krzysztof Kozlowski wrote:
>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>>>> Use more common name "pwm-fan" for pwm-fan node. No functinal change.
>>>
>>> No, generic name is fan.
>>
>>    https://lore.kernel.org/all/71aa84af7a030e66487076e0976c8cad@manjaro.org/
>>
> And? That's incorrect advice.  There is no such device as "pwm-fan".
> There is a "fan" and whether it is pwm or gpio it does not matter.
> 
> See DT spec and generic names recommendation.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml#n67

Is it wrong?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
