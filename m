Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26773CFD2F6
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 08:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQjReEMbWXCctSd7Fz5LDzZfCE5quVUfuuKhM/lmj5Q=; b=WEuhzUs/mc97qF
	x6eBeHvm0wp+R0RyUEmpWBfBL/E57wUuH8x3KUK6+TdtgSqlM7x52L6+iswgAaVNSYDrsjYJFLb0k
	XDwaSabXTGaZk0byTjCYJiR/xopQk81dgcqUbnAVZrJqWqrHacOTABVSv1b3XhspAzz+7kXUjdT4/
	3UhE1DXjml2zgkZh7BO8GaajbvB9qX525lFqfkcJZTWCvITSSN+rDKoOt/TTPCyBr+A6jDwr5Acv0
	GU1dTN9gSlIz4x9bbaI/7Owk9zBkRGCmf6F7+g1cIkTP1L8nYtxyxRV0nYsgAP54zLAaNchg9z31J
	VVJs8AdHLFxgIENFtfCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQLpc-000000053aC-0tU8;
	Tue, 02 Dec 2025 08:33:56 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQLpW-000000053ZZ-1Opo
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 08:33:55 +0000
X-QQ-mid: zesmtpip4t1764664388tb0ad7bb2
X-QQ-Originating-IP: bX7CFrTBWeD1lra39OSHXF3S+3mUNsNAtccb4Xx1N3Q=
Received: from [IPV6:240f:10b:7440:1:a68f:7233 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 16:33:04 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 3301675350501085391
Message-ID: <3EC71E685E4A7C06+f7e4f51b-e41e-4bcf-bd20-685e878b71d4@radxa.com>
Date: Tue, 2 Dec 2025 17:33:04 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v5 1/3] dt-bindings: arm: rockchip: Add Radxa CM5
 IO board
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
 inindev@gmail.com, michael.opdenacker@rootcommit.com, dsimic@manjaro.org,
 pbrobinson@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20251202052702.155523-1-naoki@radxa.com>
 <20251202052702.155523-2-naoki@radxa.com>
 <468640ef-58a4-415c-9785-8a902cbf4370@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <468640ef-58a4-415c-9785-8a902cbf4370@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NyPaQtJYQgeowdNL3mMDzSrltniwYe7MfGPuuK9/cuhSrrC/0B9CGJ47
	h0u55BRJNS2tAjBIXapJSD16Oo+n+9XkcC55+n6yhSIo8NYzoQfZyPEh2jWgBylldC7rCZA
	XNvkLv+LcYLOp1mX3cZVkg8JDJ44OfdnIfun684Mfy1uE0vCI6LqH7igfJx0MdKWmBELXLW
	6zyrCTMeki9L8tgECbGqgTRJ+ng+p3VW1QNhNk3n9lrcMoRzftVEU7TFFhAVgcjfp8Tm//b
	lcxcZSo/egXUmJ4g4c7QFRjWKU5itxlMy1ALK5qESmTRWUuhFafNsjIW3zndRxeZJqYWUWN
	jOeF4w4lsjlOh+Zv9apubkCcsuZ8uLRqTp6ZOcB+jkCVhNw9s0bXIkYz+UGdLahXKMzz55z
	iOilcmRYN5Ni9BsGrPEkoKapYqyEbU5RfHjbe1rFYFi0tzRtTgJj8/PqMlWr47FiN2xUiBI
	myElkg43uxlsZBmCMTog4mvlNO60Cys7tnoVYdarL6nYSEHDLEBysVu8+w6b8uDsYrIAHY9
	YXxt2/202RD5hI+P3WgwNxOMrBmjDbV50drAls2rESi+Ezyw653dAxpZ/IISsgW4XrkkrgB
	hSXfeaOq4mEmmn19X4KwnYLGIAUTV5HjcfRTbkmeF6nl89WTuratHHMvHp1XmcSoo0wW5Jb
	iCol5VKqmkJaUa7a60JpOT7tX9N/q2IzLkPLESRloQy7mP9HTwjdaK4OtVifcQCOnD1tGGR
	qEANPgITYcCdUk4Y1apdR9OGLngWjjnjTl4z2SiIRzgfyTUBpJp5kraOfDh6zSG5r3KuMso
	mt5vcYgLMyPsW3YWsS4aerW7KrZr8/l+HoQUBtEez/hHESVfUSRH/MCJVhT2QkTwqZll5Qj
	sSIlwjZglN3/sXy1qU4RxO2PuEmnaqcOOaXV2MZ4bzHStCfezNn05ARBG0LiX5x2ApUrenE
	t5wgayxTYew+T3UWyPWaTe9DnVzUCFe8sOqqV8dtHYvW9MKTDkm03T07bjRjI/tvq4rg=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_003350_869259_B5B89655 
X-CRM114-Status: UNSURE (   5.56  )
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

On 12/2/25 16:45, Krzysztof Kozlowski wrote:
> On 02/12/2025 06:27, FUKAUMI Naoki wrote:
>> From: Joseph Kogut <joseph.kogut@gmail.com>
>>
>> From: Joseph Kogut <joseph.kogut@gmail.com>
> 
> Your patch got corrupted. Look at your git, it should not have any
> "From" parts.

I just followed
  https://www.kernel.org/doc/html/latest/process/submitting-patches.html#from-line

I'm sure there is only one "From:" line in message body generated by 
`git format-patch`.

But, anyway, I'll resend patches without "From:" parts.

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
