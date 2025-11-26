Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1A59D10F45
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Nov 2025 13:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M//PZHyGZBTAl9GjEUvcIvhrM5n/VVSmpBj6STJw+Z4=; b=LxmPiVXLAfRVW1
	36pbXKBUKN1i0lhPvvRyrj86PoV5gD4OSJLSuYWiMX6/vlU7ocU66MecPfrAL3HQTTpKW14B9ntxZ
	RNBY52pEhfDutO62IxV2KGIElPss1QyBRitfTI225ThEhdOE0YYdn9ZjUQpoG1kqO7m0DKOvPyEm9
	kaEJ8A+a01MheJjS0IvCyEN6CU8qJHYylUzQs/vKRt8/iqZ2KJSJ0XnKFTXevcxMo43uKoLwyBBiw
	cHsZPdbW3wSjhCxDfRP9E3eoQYRvlTDXiqB3HJD7ip3gaQJdcgJql/ZwFmYDO0MdJeHBEqhB6WSr/
	qyWTFjjRQCrL1HykZCMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOFc1-0000000F2vk-3ANm;
	Wed, 26 Nov 2025 13:31:13 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOFby-0000000F2t7-0fMN;
	Wed, 26 Nov 2025 13:31:11 +0000
X-QQ-mid: zesmtpip2t1764163812t7f9a4d6f
X-QQ-Originating-IP: QzsTEkFPDfqXuxj5d2hYwNbuoMtvYYg2/9uIfCzBt8w=
Received: from [IPV6:240f:10b:7440:1:db14:8483 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 26 Nov 2025 21:30:07 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12122122324758629906
Message-ID: <7667E818D7D31A4E+cf7c83d4-b99c-469d-8d46-588fc95b843f@radxa.com>
Date: Wed, 26 Nov 2025 22:30:06 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] PCI: dwc: Revert Link Up IRQ support
To: Niklas Cassel <cassel@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Krishna chaitanya chundru <quic_krichai@quicinc.com>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
References: <20251111105100.869997-8-cassel@kernel.org>
 <mt7miqkipr4dvxemftq6octxqzauueln252ncrcwy6i2t7wfhi@jtwokeilhwsi>
 <aSRli_Mb6qoQ9TZO@ryzen>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <aSRli_Mb6qoQ9TZO@ryzen>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OFmqBoMnUeCYoCYmT/PAeSnidH+myWQkEJuUbX68ZpA8kaAkRhdH54hD
	WVa4Qo55lES8tk/pBWd6D5ezuhDVasR1VpBh/2pN9j5WHfuFm3IuN3gPosiztJvnGDPEwZ5
	7TunZvT5XdNlE6iF9BwOqTRku5E6+ixg459JY0D1INsP7wOk6NT07jikmKUTcy568trr69h
	mxk+4gOrl0GaqIwdKddw8doLILueQTb8q/oLItsK2v81fZKbzpSgiGl6gUGzZioP/Asi3Q0
	Mz+cnuUtutIboqQwKbd/C2tiq218bb5/vEKWiG3mXZEW/OaBlSUlrsK0sor2QzoYEE8EeNL
	hRn2ZWOklkKqWABTN6qzD2SNqp5QfNUF+5hnwNPL/Gm9hadqZapbw9QOVKhM9lG3qpn7fUc
	N/2ptxoGFugVdr0b0ruIenJYVhT9Mzd0/cRAYcBTzn2DGLtXrnbNc58rVh3KmMI2ETYtvB8
	i6ndiwcaQPVaOKfA9+SNpBCxlClHOA7OdKDx7h7JtuXI6k/Frq+DvZx+/v7Yztk06I8lBlR
	1lnLC7Ru5U6kr3Oi7FpuKvC3Mx+SqAAX+VvhHYrgiKfJJQFTM480HUQ8a2os/8SPDKFM9fx
	KC3ZjyR5zhvHFrmFWmZuuAguISmZrOVE9erNTChLT4ereOWpi2qGb4UdrqyGZdbjgycIo+j
	zqUJzl5oZJ++TyGv1gke89zuVcREr9+IFsNFFSDPR3k1SBM6dsAZogMkHSCsZy4bXQOxCyh
	cmspOdj0dF9iIiloVTsQjBYsPlH7PCoAPKtWn6JYuFRmNt6eZMBi2xOWgaFBK4KlyT5TcXt
	C3dcQWqSftOQ6H9hyYxx1dUpmjsp6n7JR6h2jYV06xm0F7PP9Y06zNmcUOd4FP+fTfecQ79
	5x7C+OY7E3+uvxCBqXjqS+cKFqltp6f2iUmEIzy3+oKAx6GLnjXL6e6+CDG1lGcj9uW3+EB
	XfYDatYJzkBqjvt9tWRsGjG9/vNIjWf37VRj8AgSEbvRph7PPAhAU0jDsK/ShUB7WwpqU8S
	aP1MmEpj6SYVAzir1R4QQrS4ccJFs=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_053110_699864_726DF1A4 
X-CRM114-Status: GOOD (  18.14  )
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

Hi Niklas,

I apologize for the delayed response.

On 11/24/25 23:02, Niklas Cassel wrote:
> On Mon, Nov 24, 2025 at 06:07:44PM +0530, Manivannan Sadhasivam wrote:
>> While I suggested to revert the link up IRQ patch for rockchip earlier, I didn't
>> expect to drop the support for Qcom. The reason is, on Qcom SoCs, we have not
>> seen a case where people connect a random PCIe switch and saw failures. Most of
>> the Qcom usecases were around the M.2 and other proprietary connectors. There is
>> only one in-house PCIe switch that is being actively used in our products, but
>> so far, none of the bootloaders have turned them ON before kernel booting. So
>> kernel relies on the newly merged pwrctrl driver to do the job. Even though it
>> also suffers from the same resource allocation issue, this series won't help in
>> any way as pwrctrl core performs rescan after the switch power ON, and by that
>> time, it will be very late anyway.
>>
>> So I'm happy to take the rockhip patches from this series as they fix the real
>> issue that people have reported. But once the pwrctrl rework series gets merged,
>> and the rockchip drivers support them, we can bring back the reverted changes.
> 
> FUKAUMI Naoki, just to confirm:
> 
> Neither my suggested approach:
> https://lore.kernel.org/linux-pci/aRHdeVCY3rRmxe80@ryzen/
> 
> nor Shawn's suggested approach:
> https://lore.kernel.org/linux-pci/dc932773-af5b-4af7-a0d0-8cc72dfbd3c7@rock-chips.com/
> 
> worked for you?

Yes, I re-tested the two methods mentioned above, separately, on 
v6.18-rc7, but neither of them resolved the issue in my environment 
(ROCK 5C + ASM2806).

> If so, I don't see many alternative but for Mani to apply patch 1 and
> patch 2 from this series.

I believe applying patch 1 and patch 2 should be sufficient.

----

Incidentally, (probably) while applying patch 1 and patch 2, I have 
encountered the following issue several times:

[    1.709614] pcieport 0004:41:00.0: of_irq_parse_pci: failed with rc=134
[    1.710208] pcieport 0004:41:00.0: Unable to change power state from 
D3cold to D0, device inaccessible

I am still investigating this matter, and the conditions under which it 
occurs are currently unknown.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Kind regards,
> Niklas
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
