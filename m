Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77C43CCD1BF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 07:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVQrhmGrFdMui/9VMeh8gQ/A57mkHkwAF6AABg8wZc0=; b=iFTx168/hxAu9o
	SIfZBKvtO3NXajeNIX+u6KEfUnJPafZbyLRTlG61k2Ljo4uHBC3KuxTAQONb2UuGepKhnHtSJ2acT
	oKO7I6/bakmAQ6EeVlqVbv8wCxFEzZCy7A9n8KN34jO9tt4PMfdXfwie7kvMrOAx4sQRjB6BQdUdR
	HriGx6CJv8uCuSlnCx5+wkfI6AR71T2x+VnlFMnVYefi3bM35O1UAq1DZleM8vWJs0SG+NPEzXmt0
	UoPiG6S9MAfTTdGtjE/aA0lGPJTWrLILDNY9gKPG6hKpQbVxoeoe8BUBbIzIj79xc3LxQUxB9n+gS
	6/aEcQ9rW+x2AwfMb9SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDeA4-0000000FPfy-0Yrg;
	Tue, 28 Oct 2025 07:30:32 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDeA0-0000000FPeq-3X4N
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 07:30:30 +0000
X-QQ-mid: zesmtpip3t1761636589t561f20e6
X-QQ-Originating-IP: Z9ofJTy/4V9GYiUUEoWjwp0mZmyXtvCFrkn4y1tSXKM=
Received: from [IPV6:240f:10b:7440:1:27fe:5767 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 28 Oct 2025 15:29:42 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3051709390252911974
Message-ID: <A39F9BCC6572BA03+67736ed4-86a0-4a78-98af-b2f39aeb785e@radxa.com>
Date: Tue, 28 Oct 2025 16:29:41 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Reorder the Radxa board
 entries
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, dsimic@manjaro.org, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251027122641.39396-1-naoki@radxa.com>
 <20251027122641.39396-5-naoki@radxa.com>
 <67e7badd-4b38-4f93-872b-e51a43281d3b@kernel.org>
 <6B986FE9E161F74F+f2826946-a3e9-4618-b5c8-6e29f9f6b83c@radxa.com>
 <1fc497ee-3363-49c9-93eb-20acd4373df9@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <1fc497ee-3363-49c9-93eb-20acd4373df9@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NNCgUTg3ctKTko4szyorCihpTWEu0D1DKx9TQRyvuQg8T49GejY1m67D
	xCV2FYw+BZCo2BXeurGNMug0Tvj9/aFHodFX7a+LH/GAe4FJ9oJuT3xsgUJgDG0Zso0jI03
	ZzihXAT9pus84LPBBnYRXgvDE3JZNV/9DRpPcC0dLTroWfizVED41z1txTmQSuGLSKDK0PG
	nmA6bzc5ldq3mJDfuQK4/0CO8yqTiP4AIwRQhPulgONn3ZPv4CZLgHWUG77dWqzIM9xUHKK
	+5SXMgZt70CC/FmW5X9DixUUhh77Tn2L8chkpNuc34Tdm6t8GBOoQDNQvQ2JfT3PGeWCaJ4
	OZXZFdDUkTp05oLjyBXYutVL3tIXsZ/tT0HCBYvtE+/2MI5A9WsSEPM9PKkogIl7Wnym9gV
	XhgPOreWslEK1FoxghC1w/LU1L6gAQL8TOHWiWeBAuuv808EzPHhvsJl1X0Vb5mjVYt1nQm
	l1etu+AdhapbwjMMVDNDs50MhSBQr2VJhad2iMIx9JjfxvJY7ce+cFTPP6UqqOj5VANYCYu
	wN18C4zaQjMmIL/MnLckJM7nUgK/TTPoEkQNL4CkoupZHlNnNn+Ua8JOKXCEvF6Yx8c/ZuP
	eLxSzqw4etgN7hxV3tDSSh8DoAY45aNbuGCBTp8Y/fWJCjeM17YqPh5mgiaiN2M6al6FiQ1
	4PEoGYpPBH/LNcfEuUSF+8XlQblUd+d2TXIabgSY6Q4QLcxQAQBTNFJISfPJRJGjMYcKNx3
	Mo0VRBl3dmtn8jlerXV9WBJVZWoj9J6L5wHLCc/KX45GnDK0xujJ4OqPCtP5T7V/7LeQzpl
	u+2Hcp/tplZV0wX6e4yJyfR/NMYdn82YSoK2j0FdXJ4kGAUDDG3890fNKDtY0zHJtOeMD3C
	ZwM0qDQrZBWynABGoKoiac9SBeqixR1Xjh3Dz+2pRE4RJXyjhY4w07CUxr7Ur2K9tqZOPb5
	1UQmxp2LbAn3JNZnTaGF6UJcF
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_003029_276458_BA15106E 
X-CRM114-Status: UNSURE (   8.50  )
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

On 10/28/25 16:26, Krzysztof Kozlowski wrote:
> On 27/10/2025 23:30, FUKAUMI Naoki wrote:
>> Hi Krzysztof,
>>
>> On 10/28/25 04:08, Krzysztof Kozlowski wrote:
>>> On 27/10/2025 13:26, FUKAUMI Naoki wrote:
>>>> Reorder the Radxa board entries alphanumerically, with the following
>>>> exceptions:
>>>
>>>
>>> Why? You must explain that in the commit. What sorting is being used by
>>> this file? Why do you think your re-order matches that sorting rule?
>>
>> I understand there is no rule, only your preference. Thanks.
> 
> 
> Really there is no? Are you sure?

Could you please tell me what sort of sorting is being used for this file?

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
