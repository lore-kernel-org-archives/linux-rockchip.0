Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BA5FCCF9EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 09:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0e6eE9wOsbSyJ2yzFpnBJYTEOYtWkl/0wEscD6sH64s=; b=cMuzZMMATrsFWW
	mry3pdKy6SwjgJApYR6eHksJjqWMBr9VaKyAplhLoFJ/gOl4cFUxpmBquyZJz3nSOYe1kbelI2vpz
	sTDp/lI3kyBj7blHqJoE6QrHkMXSEe/dpD+tmqhTH+sOVjLyMhYXcG9x1yDY7eV1M31eiehhGFT9w
	WxYgFyzCojDVZFHdq29/OSdToAAl/gmHa6cD+BilGcuuLGln9bRK/tRP/meCPziDD6A4UCRvYOZYq
	M9kqeX4p40+UoRDOBtHxGVStPSUjyabLzgDXskvbdvHke3EIUtc3Ocno2CxTrU4ClN6PYGwAPhdt3
	OfOg6FX6GGrjweylWUeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDgGy-0000000FfFh-2cll;
	Tue, 28 Oct 2025 09:45:48 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDgGv-0000000FfEK-3hpm
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 09:45:47 +0000
X-QQ-mid: zesmtpip2t1761644696t6badc7b6
X-QQ-Originating-IP: OiWb3yCwJkW93ilCz0aFHt4DXFMWxYcD3+vm7HIDNLc=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 17:44:50 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5025758860806143264
Message-ID: <870075785A1ED2B9+6fb5238e-dc57-406b-acf9-b88b237d8e5b@radxa.com>
Date: Tue, 28 Oct 2025 18:44:49 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Joseph Kogut <joseph.kogut@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Steve deRosier <derosier@cal-sierra.com>
References: <174735136138.1544989.11909422896170025756.robh@kernel.org>
 <20250528221823.2974653-1-joseph.kogut@gmail.com>
 <20250528221823.2974653-2-joseph.kogut@gmail.com>
 <20250529-impressive-real-monkey-a7818b@kuoka>
 <6443BD03B4C4F1FE+d20c3903-e2dc-4c2b-8f6e-fac38f242898@radxa.com>
 <2f4e7f94-2921-493c-94fa-45749a060bc0@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <2f4e7f94-2921-493c-94fa-45749a060bc0@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NRkWGnbnkwTmU/WK0mSt5e9UCz0f7jbg1RWFgtKdB72zlIwDHGbo2JsE
	dYtTSWn10sSp1/i1eKhF16i+Nzb4lT1ZsszT0A719dDTphzwDX/aL0G2Lyx374s4xQrZbHQ
	+nAh/WcPyyfu7/3XcgjUv8xiONH7Uwf8HiDasd6/rauAziJ0lBUzu49mvJQ1g6ZWGCj9MFz
	NB09cteOHv4ykZiuje+xXGao+Qu7EJv/g9UrePH1un1un5JMO3qn/PqnZZxRPUa+WKtyuj7
	5DnRazsV4cDuoiazRNpHNWEqPKVU1Fq8FG9a3bfR17IwAUyKqwHLYAkzyHtlaydSPAQnc6p
	MnMgxY7Ju7HBTgDS5VvZmMBbq0jKAiE/j0R7NyjS8hM8bn+jASMzSxnVNlWuhUBL8FjkYA6
	F3K3l0sh6SFa100T8YfkPZkxF6y6wQmpy/hjkvLXe7taEJS+trETC16W9pitkElcpIz4uXA
	CDmgfrgZd5+8WF4c/2fTsCJg9VLUXiWK1ZuJigwkiKpUEBejHMcMy1e18UUOgz8s25aE1o2
	5QeLYK6bpSxlDPOA15k3hzABkHgz0F5IuItfBLH8CwXy2nguj9yPO7GkdCId61Ir4/OziQh
	nmHtUdkWNt74FOPIL+qhkM5SG1bO6ncE/bI9fx1OCebcAO/qtR5KEPH1J+imPYdOIiNsiQD
	ULLYypuMmhImsfVAkbdZQiJ1x61EmVcwi8rS3Tl5cGv359ZezSqrcsj3f6y77A6jfuWXI9u
	O3UcU4YZ+V9Q2/j/Q2hTMcNj5xs7o1/dO4QpkZH3Rswhk4VP5bhKnLINeGU+DV6g4FQ5E2b
	Z37N097oJJAFeR6t4LqS9uC5uJm4kXPjUWNRKRQqXbwkCRIw3rbGxAqnXNy9wskz8mfU3nx
	OWlEKHsHX+mUJwD+oiqTP0JplAv2iyCYF1leibGTVPLbmE2OjYFao7uamDeKQoe29y3m3DT
	YKCmAb6MSI1RiBE2wVM1yUSsJEF2qTFXSMY8EziD+eKsHpbcDbyy0TX45V8YVnJLK4xPIEm
	7qRjQ4lywoCeff5Lddn5G8aRmkeD0uUqbzAPxn9A==
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_024546_447672_CFFC2C5A 
X-CRM114-Status: GOOD (  11.99  )
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

Hi Joseph

Your patch seems to be NAKed.
I will submit new patch soon.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 10/28/25 18:37, Krzysztof Kozlowski wrote:
> On 28/10/2025 10:33, FUKAUMI Naoki wrote:
>> Hi Krzysztof,
>>
>> https://patchwork.kernel.org/project/linux-rockchip/patch/20250528221823.2974653-2-joseph.kogut@gmail.com/
>>
>> On 5/29/25 18:19, Krzysztof Kozlowski wrote:
>>> On Wed, May 28, 2025 at 03:18:21PM GMT, Joseph Kogut wrote:
>>>> Add device tree binding for the Radxa CM5 IO board.
>>>>
>>>> This board is based on the rk3588s.
>>>
>>> Do not attach (thread) your patchsets to some other threads (unrelated
>>> or older versions). This buries them deep in the mailbox and might
>>> interfere with applying entire sets.
>>>
>>>
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Please explain the sorting rule used for this file. You must have known
>> the sorting rule; otherwise, how can you be sure this patch is correct?
> 
> Huh? I don't have a clue about sorting rule but if you mock my review
> let's make it different:
> 
> NAK
> 
> Best regards,
> Krzysztof
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
