Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 152A6CFD2F6
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 08:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCxfpNjJMcS5Fucrf7whTyEQ+cntyqGWHM7JfOD7ACg=; b=jn/jL/h7LuWa2j
	qYPpb0qFENxnxhFDHXRnbjd9rDajCYz9Tb2HPBOMyu07W6zc8Mx165txISlpNVIi5GApEAP/7mTPG
	hdTKQT5XPW1IH+ofq0XCfSN67kNolEe+ZHU1lM4Vm/i+phMDAQWGrT66xOSLF2Kfz/JsGqdwgImxs
	vilofeWJZBroOXwomhwcwVCqvQwH1Nu043beKx8J7m4AhnNXbwcV3OnlIBtFzdzo3IOxBBVpcMUi7
	FI4t5R+01J4vrYpJtMj2g1xk1s/z3AOxAy0Q79Yp/p997Mc3uUFN/+0ceAx8WK5OzmAiqWhermhVq
	RjbKXKRqQy/FFpBac/eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQLyz-000000054DE-11kb;
	Tue, 02 Dec 2025 08:43:37 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQLyw-000000054C9-0kZU
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 08:43:35 +0000
X-QQ-mid: zesmtpip4t1764664984t2821ea97
X-QQ-Originating-IP: bA8avrg2BgTlf96PWGFoDh0XtgrsD04r7MYpHfpqoDg=
Received: from [IPV6:240f:10b:7440:1:a68f:7233 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 16:43:00 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11120342221054237314
EX-QQ-RecipientCnt: 16
Message-ID: <41ADE80702019100+4cf0f6ba-c861-483a-8a89-1e47dd6f3137@radxa.com>
Date: Tue, 2 Dec 2025 17:43:00 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: eeprom: at24: Add compatible for Belling
 BL24C16F
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: brgl@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, dsimic@manjaro.org, didi.debian@cknow.org,
 wens@kernel.org, nicolas.frattaroli@collabora.com,
 detlev.casanova@collabora.com, stephen@radxa.com,
 sebastian.reichel@collabora.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251202045655.154543-1-naoki@radxa.com>
 <20251202045655.154543-3-naoki@radxa.com>
 <cbf9b0db-d1e4-4934-9961-0deb5e4fd001@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <cbf9b0db-d1e4-4934-9961-0deb5e4fd001@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OAj1qrjhA85A4Jdb7PajpTR0lKKHw4sJOb6fcvZSBCNITiGcXez1ASyp
	JE3IvjI6oig6g7Jk55xh1SEBM0/fMNtMJWJ/aZzTPOXcS+uY+VUcTh8Ya/jtyLf7PmyrvKm
	NOBjQnujRx2+8Pw6sSAjn5MWTXca0XuZDojReYcb0DJ5k7Q0aEBvs9lVJsescV3AS02b+t5
	kD6pKGDiGYTJzibDvVleCOXe5lh3TX88/dENYFgux0cvUQSftYuArQUN3uGmvC+bJ/oeoea
	0tFp+cOjJ21WB5vC8ciYoB0u2MiOkekufQRIHqe8zGzrWmzU81kTAzoBShaOomu/xsqALP0
	VKYvn5fblUBtCA1cH4hQK9aQ2oGq5BoHxwptGrgBKgZoRjhkpUURtdYS6s4oi09z+IJEXur
	/ZXuGferUw6onvmn3awXREeVoj1CGPA7nkjy4K5Ss9knOULd9L6p7UGeLv4vIS/RDv/jQTe
	hWDjGUHm2slxmxOchX7+OFHw2HM84/m2UrDyPb3lvJFWbgI83i4tCg/p2m1l2v2t4c7Jgv/
	Ixc20M32aCClj9EVeFHyPvZlyutVxoSMVImHt4VNG4VuFfLQongmeSfQ5Bd4/YNJpsknJsl
	tOI++fxc0WBjwEw/p31kLZeJP1it44ahiXZQ/V5YMnAaR0SM0C1XjrIkVmh8j3NUxHG50bd
	gKabZnwYT3tuiywlCR4i/PNptOBdEVnxMi5j7RtIdVBvL/wUxkiGpZq121wtEd1YFQxfKoJ
	RWG/1Hj9phBJzNVRrJydtdYqtgHojxfy3dwsxP94dE7We6p4+RmNq4P0jLJUVggz/6Q6jWC
	v5Tnw4up/NeMo+0FpWw9wJOj2k1cgS4DvdOB0dyYDVe+BxD+b6whPTja1EFeumd5Z7SwN+N
	n6xhhhuD5/SJe7mdH4n7Tt6pigAREvvBwFpdQ6UTlbCWfovCCS0BA8r6ctlCVnHsYWnzXBB
	874sxwitHzwK2EGbqvLUXPUUu7rYr9KIhjHA6f7KoQRpL5g==
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_004334_777871_C357895F 
X-CRM114-Status: UNSURE (   7.14  )
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

Hi Krzysztof,

On 12/2/25 16:44, Krzysztof Kozlowski wrote:
> On 02/12/2025 05:56, FUKAUMI Naoki wrote:
>> Add the compatible for Belling BL24C16F 16Kb EEPROM.
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
> 
> That's just one patch. No need for two one liners, just unneeded effort
> in acking.

I apologize for the inconvenience. I will combine the two patches and 
resend them as one.

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
