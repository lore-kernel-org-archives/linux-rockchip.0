Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 021BCD2F7EA
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Dec 2025 12:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwIArRD8yACI9JKFCbiH4Z0MhhvWRrjVdKWnn32nPu4=; b=UXd4nQegHpi6+1
	r/dC/0D9u9kGx6X2zelgOZhqmUxiDKWKGVqb+qv3gJGiV9IdeNFVRTlcVWDjPyad2gGawPR8myR9R
	ruTG0s0MLZSSi/kITannpfjvR4+/6+gpqlYrBh0sY8i6cfml+suq0q1KmHabEp/mC//7CrzrrhYov
	h+1QRufDQ9LFqeKFchhoAwsx5YUSzTomPBuzY2fuLJPnLeDGSs+DktZEFd0Xsp/Vfv3KvOVkWjr0P
	NzvGG8IkFo5nqWdH2A93dv/VhP1FeyNjCm5Ki29/vs6eUenfTYrgi/eEOcG+hA2m9lMg+BV6XcTPU
	1lgXp0TSNjwjiYHG3RfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRUeo-00000009SVV-0UcC;
	Fri, 05 Dec 2025 12:11:30 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRUek-00000009SUI-2aJB
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Dec 2025 12:11:28 +0000
X-QQ-mid: zesmtpip3t1764936631td6d3ad0f
X-QQ-Originating-IP: IuPkPR/GVZYSZMUt/AhHb+HEMP3OnTaGUzX2t+S9HLk=
Received: from [IPV6:240f:10b:7440:1:17ae:8f83 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 05 Dec 2025 20:10:28 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2528925561383847697
Message-ID: <2CE13C2293B6BD8E+94a46e0f-f6ad-4c41-a14f-880476f0744b@radxa.com>
Date: Fri, 5 Dec 2025 21:10:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: rockchip: Make eeprom read-only for Radxa
 ROCK 3C/5A/5C
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de, Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dsimic@manjaro.org,
 krzk+dt@kernel.org, linux-rockchip@lists.infradead.org
References: <20251201144629.135570-1-naoki@radxa.com>
 <20251202135008.513685-1-amadeus@jmu.edu.cn>
 <A665FF5170FE9550+0e1d2609-454b-4a82-9e52-2d167e351187@radxa.com>
Content-Language: en-US
In-Reply-To: <A665FF5170FE9550+0e1d2609-454b-4a82-9e52-2d167e351187@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Nwz8Cs33/LprQ8POHVw2TfB018lSRJKn3f37Lg4LOymXb0wQH1mSiwpT
	KxWrHUA4DMqOB4NqhcsjbqUjPqI1P4tMtylL7OBgIoe7LKPXYv66T29TeMf86LRuwbGluf+
	lLIM2JROng1jVUVKZcuJUuj9QIVCXquqYXQJcYTkOyneA3SOeszlFs/WgyVElxlW5ERvg11
	DjO5IruZuawr4QVifEcCRaPa6WwLv3KSfSRyhil1EeW+A+ZSsMQOCMO1+7bnCKDXvrxKys3
	qfkgDUbIaQYiuEQhnS9YkjT3uObWqNXKVGFXjo1LEdRO8eyry+LysQ3LHv14mwDkPYSwkUF
	ssaGgyCIdNre1p4oHaL8k3eAICI6Fj18l/eCadFdK842fSqlnlD+88POEHVSqsFx5qIPzz5
	psvHI33tEvSlfNT/FMYR1zIyOI02WliDlfOFR2IXU9ZRVXlm5BM34XtM9z2ba1iRDHlx2Vy
	s37U4hCkkaCdbW3AlGUqnwerOc9gAA9x/1p9ViZXviWSPaoIwkhhci8gWT1+e+9Q/BHVkxc
	iPSFSbhvTsTbSGSFHMwA35yb538Vi+LdTPb4AZDpvSMWg2atHLMskCRBzo6Jk0Q0ScF57Y/
	MjYWfFNK1+p3SldavDk33fL6xppV+juRwi8d8imqvtnhFmHqrBROsb3tVzOj57FV/Z/z+lr
	yWsnpFvAHl+X7ONefrWA7hjhYxUZqOt23cHpMwQ2ExweA2eVdq9sxeGFofjjUxwJhVkeFVZ
	DKcFrp7YHVQrkKHpe7QAuXR7eGiD2CMx+1MJgQAx/p7PNIQeFhXhGLVW1P+JVsRIPq1Weke
	V+CX+gn/ET/TnA6rDivgK0YQZIHzpRcTys6J9oMlk10IxsJktlGaasDnJ+LwqyfEcVf/QbJ
	vRJKP/ef/XkT6y7jWWSL3rFlDNjDyjXPMQmCyaM7a0sXbwgzc1iTWxbRYIoR6gof09Rq1Tz
	Oi2pCRXN0YRsWdEqYUQ1PihyyK8YBsUjwqWc=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_041127_743215_91103DC2 
X-CRM114-Status: UNSURE (   8.80  )
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

Hi Heiko,

Should I send v4 just for removing Fixes tags?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 12/2/25 22:53, FUKAUMI Naoki wrote:
> Hi Chukun,
> 
> On 12/2/25 22:50, Chukun Pan wrote:
>> Hi,
>>
>>> Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
>>> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
>>> Fixes: 3ddf5cdb77e6e ("arm64: dts: rockchip: add Radxa ROCK 5C")
>>
>> Since the EEPROM on these boards are empty, this patch doesn't
>> fix anything, so the Fixes tag is not needed here. If you want
>> it to be backported, you can add "Cc: stable@vger.kernel.org"
> 
> Ah, sure, Fixes tags are not needed. Thank you for pointing that out.
> 
> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>> Thanks,
>> Chukun
>>
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
