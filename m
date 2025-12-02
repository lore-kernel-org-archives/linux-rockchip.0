Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82253CFD2F6
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 11:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yERVegy7jaG/ZhJzA9p91tLC1BvscdsB2DSPlyTTa8=; b=OvLPeylOK/uSzX
	pPlQ0wPPsMKSzYZWlAFXmWZsECAkvryx7sBvlOjY6cxLpSKTv5lRn8NvP/ufOSQOGnIawqUN5/B+/
	5WnbjUVZg88RiEpZt8XmdsaCj44wtj2TscqEiyDJb0ds8YvHUVzOvgjCIW/N3vA7hrTm5TsM4TatS
	29WQ2yqGYnv2ul1H7AmT3E/QzNNKqrXEPUK8wrXFgjAPqXp5ptD2RYDdv2dQ4+1hYkBV6Uhb+2VGB
	NBBv8wJer7PB/mxrReRiBDpGixdhEwueSRlr3qIQaZHa5eoIJvOZlkLaphCEgB74rmwAKUe5xsiNT
	asKoEIZlO+0+NKaF6bkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQOB0-00000005IGd-2dkv;
	Tue, 02 Dec 2025 11:04:10 +0000
Received: from smtpbgbr2.qq.com ([54.207.22.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQOAx-00000005IF4-04SG
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 11:04:09 +0000
X-QQ-mid: zesmtpip3t1764673406t16e4ee98
X-QQ-Originating-IP: Ngyxa6UAW8SoAAS7TsRC2ZYylTuGDWDYh1bgqmdRliI=
Received: from [IPV6:240f:10b:7440:1:a68f:7233 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 19:03:23 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10009758531052449015
Message-ID: <CFA12324BBCED0A8+9e6c7d5e-85ce-4f26-b062-ccfaf17783fe@radxa.com>
Date: Tue, 2 Dec 2025 20:03:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v5 1/3] dt-bindings: arm: rockchip: Add Radxa CM5
 IO board
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, honyuenkwun@gmail.com, inindev@gmail.com,
 michael.opdenacker@rootcommit.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20251202052702.155523-1-naoki@radxa.com>
 <20251202052702.155523-2-naoki@radxa.com>
 <468640ef-58a4-415c-9785-8a902cbf4370@kernel.org>
 <3EC71E685E4A7C06+f7e4f51b-e41e-4bcf-bd20-685e878b71d4@radxa.com>
 <4d7979dc-d2f3-4bf9-b2f1-6ce4f61d1ef3@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <4d7979dc-d2f3-4bf9-b2f1-6ce4f61d1ef3@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NkLA2q2LD229OLR7bumwercyJb2sJQe8URzw1AY8Ue/C+eTbJY8djL0t
	52pAvuF+/NeDKwo0gWfkX7G4P2IHYhaHerYxeywN3Y8m9qcrx3nw27OK0QeMN0AKLvDnVXH
	xMLlLKNsCEI0wq9u+A2tips7qqEO57P2bZkcBWkifR/IRA0KwkpRqO6i1UARPlcZutHHxLI
	be+BtJqtKUMtoKYz+DjpPUp5zjV/wbi2bA/njtF+EXVMhDU0NR3m7/9btWCyeWnV51E4U8r
	MQpemUt3WEBE9Yc+/111mtgPhNU0OfeO9TihFAKkl9TvNWuqVLv7rgLBDq9PBy6TtNifFgx
	BLs430rUPTinxeCbKVLQ5RK8tBihzCv93+d6Ws3Si+tjx9QBul6xW1tBK0Wa6QbyKNXUeK6
	GtEHf57cqMaXqMn9TGW/aUp9WHcK1JWz/RxFq6ao2v+mkMfvqSTKzwZLWtoCaa6hqCD2SU4
	4St6zJrm/XQC4r7MrS3+Y3fGy/Odt0OI1GpsV/rvKHXbrWU9+rdIoT1GP4XBSjbiQSNwOPo
	68bitYdsK7444+PKotc7VPHn+xXiHiE8FmrFCgw3N5poYL9PcY6DbP+NL6gt6fPDmuk5CM6
	vfclkvEKqyEgzYSO8WFPLf2kckuXUw5pVzilM9DtSegZpN4h8L/93eUJnHyfqBPEsgD3AR8
	Q9jKit4/V3umaBGD5lBDYeIbMbeY8ZDdBHy+EW0mLJ/g1n0e7lAAmDfJIGhEufpIO3LW8RL
	eqIBMSKozRD+oGkTdWdGJnV0Iv03Ngse8GQa0lONgJsE9BmhVsXGVw3eoxtRT6d9Y/4cUIl
	A0ZqpYWKZqsU2z7WkOJp7eK6o259xu2IslEo3SYZy0xuNuJfWejFJVd0CtwZKkVH2MfgzXJ
	m7+wDmr6N2Mk7UxGFL8fgjPq2nFtBFnDlRNNAAMKXeTeRqZE2wA3gnGtZoNp0K4DgnBb4P5
	imi4wlUuzoQwGETYXXnKGvTiU9+rWPMNNO7ipNg6XVigUC0p+5OqahLHYkzeHrNJF9gyv15
	e8p6mH5A==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_030407_915277_88E412B4 
X-CRM114-Status: GOOD (  12.86  )
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

Hi Krzysztof,

On 12/2/25 19:54, Krzysztof Kozlowski wrote:
> On 02/12/2025 09:33, FUKAUMI Naoki wrote:
>> Hi Krzysztof,
>>
>> On 12/2/25 16:45, Krzysztof Kozlowski wrote:
>>> On 02/12/2025 06:27, FUKAUMI Naoki wrote:
>>>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>>>
>>>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>>
>>> Your patch got corrupted. Look at your git, it should not have any
>>> "From" parts.
>>
>> I just followed
>>    https://www.kernel.org/doc/html/latest/process/submitting-patches.html#from-line
>>
>> I'm sure there is only one "From:" line in message body generated by
> 
> There are two, check yourself. You would not have two From's in the
> email patch if you did not have two From's in the patch itself.

Thank you for your valuable feedback. The patch had one From: line, and 
`git send-email` added another one. I will be careful not to include a 
From: line in the patch itself going forward.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> The doc above explains the patch for sending, not the git commit. They
> have differences, because From in the first case is actually Author in
> the second case.
> 
> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
