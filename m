Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66773CA0EFA
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 02:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWlXvXbTN8WRGmRFdRW8RFRT7NWnsuQuAYcRv6MmzSo=; b=RDwky2mJiMcPZN
	s1TkE3V1A0TJM5alOUgRUw2JgsVEg8wFnG9WMytVnK4Bma/2R4kBj7ljwu6HPKm8HHdLPm2MD26ax
	xLvcEu8cvbRMNfS+EEPRDrp94vJOZad/e8FEbI9Cycob4Zgd57/S5DEkZJ46LYcWr/GLutC6ksswn
	o5Y7CNKE/LjIjY5ZPPqf79ExjDWi1TOlgdCJARGBjpqE3oAsR8EIsUo5ADospj3wsu46l9YdUZ2Kb
	llo6JiQVapn187rEY4acm9qQpOzJnUMwVh71G74n4rdUB5D5kTBNulKkJxXAfQs2NCH2NdEs3+39m
	Nt66eBOGJy4PCwDUTYGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoYL9-0000000C9Xn-0Oce;
	Wed, 20 Aug 2025 02:14:15 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoYIW-0000000C9L8-0qKa;
	Wed, 20 Aug 2025 02:11:33 +0000
X-QQ-mid: zesmtpip4t1755655827t927a0bd5
X-QQ-Originating-IP: ZT11A4xCrpS+Sor2dkaS5pC77IPe/BP9zy8H4U6AHgI=
Received: from [IPV6:240f:10b:7440:1:74a0:7bf7 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 20 Aug 2025 10:10:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11893107500383784646
Message-ID: <0318E801E3D6726D+65c4f189-4e22-4a9b-83d7-cbb0816df373@radxa.com>
Date: Wed, 20 Aug 2025 11:10:24 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: remove vcc_3v3_pmu regulator
 for Radxa E52C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <BCD8E43E564BC334+1e45d36f-edc7-4c3c-90c9-7b0f2a52360f@radxa.com>
 <20250819134028.634780-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20250819134028.634780-1-amadeus@jmu.edu.cn>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MmpliBmRb3iCLdw8c0spTNXU6TGj4Xmfp1WZIYGew9nEtKY/wIFp5pn9
	TNXMWzB2m0kjG9wVZOKqHfCk0SPETLP87/VchZ3ehWPz15kjsrniYdmgnRyMMXjb/ycANw5
	W5ORlKAPkVdMc3ZPaY04V3guJ6sizPXcU0eD5lx/j3jzhfLn3SDjUtE6dMslx50Kv54FrW5
	+Q+AUaiY4Cd5mL0nBVy+UnaVd0JNwkbKCoakyi5WPHS8yT4HAoTZOHY1HHY0wdX7ghJzjjW
	MQ52JzF+lqyDfWFI/1SRRXJzeAAigElGP17zjCsnvX0KjXeEDH554lwOycoMbn95n04/pv3
	2dZ0IM5nq3uWme7XRKCCMIm2NGOCrJnn7bHPnT3i6fFgKoh9llivxcJWp/qCjWpigM7QZ9P
	KpeXu81J3Adw0Nu9OCEQ/R7m46QQcyEMF6Fi7ygLawhN+BmMNjn26J3jZEiCe++G1xbgkbr
	EIJ4RI8YNRobWC89+/p5PMi3bNk2kupLDQwv9Uad8L6rtMMWtsRmA8ZpNlONLzR/oyoOFGU
	BFU3kdxFMmQTaLCt8sO1XIWHvXZjFUGjlKudR+MbFIz/DgPCAJ1857hE2ikGcqS0kKPm6MQ
	RhDmrYLgR1qWvV78y3p5UITewahjjH4tAGVmwTL7c+VG28cOJDM+YO9D5LjI0Xmydj42DDU
	wkeztLdh1Wftm7Yw6dEUR29eyNZUbEHanoQnfJFkh7pYU2Bqq06GUYQTqpS3DonavKtinHi
	6MjQx+D/F/9HKl6r3IK2ozeTqfAnnqttdEeac9nysfIh7q/iPD8rAiv6RVeN3+3X2iPj0Pr
	gCBd9xqvXcKi+Z2FhFYBr+TDYcFOETV6qRlVeBefTh+HGv+z93+zcZh9rIu9x6xEol1hLuP
	UFCPS7sYAnsrN+UZpNsD4t2DhikRnNq9F/I0EM6F3xJA6XQt0FOuL6TJ0aL9fcQIwG2nz8k
	R6fV4Q3ZKgsHMYA2v826UivwbkAkoIwAzDVt7iK5w9N/wiqvGj7RiO7KLr4/hR/7LqBdq+S
	CPz0WtYVc7h61uCVGm
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_191132_700069_A282A58F 
X-CRM114-Status: GOOD (  10.65  )
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

Hi Chukun,

On 8/19/25 22:40, Chukun Pan wrote:
> Hi,
> 
>> How about the following instead?
>>
>> @@ -538,7 +538,7 @@ regulator-state-mem {
>> 				};
>> 			};
>>
>> -			vcc_3v3_s3: dcdc-reg8 {
>> +			vcc_3v3_pmu: vcc_3v3_s3: dcdc-reg8 {
>> 				regulator-name = "vcc_3v3_s3";
>> 				regulator-always-on;
>> 				regulator-boot-on;
> 
> On rk356x, the Flash chip is usually powered by VCCIO_FLASH, which
> is also connected through a 0 ohm resistor, so I didn't write like
> this. e.g. https://github.com/torvalds/linux/commit/a706a593cb19

I think it should match the schematic, i.e. it should be "vcc-supply = 
<&vccio_flash>;".

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> Chukun
> 
> --
> 2.25.1
> 
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
