Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A91B4CCD193
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 04:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8sD+a7aSS2sHV3jlPgEZODegxJGmePldRc3mRCjooQ=; b=vRBAskapf+zx8p
	BwOYjf21B+QVWKkIU5Z866ECw78VEDTGTHXRA1OHIOnMpY+9mPGWiQh3gDQclzKzV1e5LcqUNqkga
	CO2rtG5l8G4uRF+JVnuIg424D61Qt/eW7SRvQsysgFXsR1cFiB1I1Mnozuc1ror7mpFqjrOc7cEDz
	R0o1mzCsb5ua8RFPESE3wDo0sfVILZSoVZA40ziLp7MZkkfe3ETxP4h4n8INpcc+jOhjHm9esl32e
	9MV1TGjBiNUNquRgJL9MCtB+jQUPaJU+nXk6F3EEIvCxEnFnfIIRirCqZQ0dmXNZhVgVoPJsflYeO
	s5qbZJB6GlSvJAPmdMxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBmts-0000000523K-1WCn;
	Thu, 23 Oct 2025 04:26:08 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBmtp-0000000520a-03vA
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Oct 2025 04:26:06 +0000
X-QQ-mid: zesmtpip3t1761193522tef428f52
X-QQ-Originating-IP: JPrRRTlHCfYPmJA50Mc6e8C2H74+nUxiiGHXdILT6fM=
Received: from [IPV6:240f:10b:7440:1:e4c5:315f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 23 Oct 2025 12:25:18 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 993648041000243258
Message-ID: <340D76D438E6105B+58e7f834-75f7-40c5-a46a-677cb279a02d@radxa.com>
Date: Thu, 23 Oct 2025 13:25:17 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: FUKAUMI Naoki <naoki@radxa.com>
Subject: [RESEND] Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree
 platforms
To: Bjorn Helgaas <helgaas@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: Christian Zigotzky <chzigotzky@xenosoft.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-rockchip@lists.infradead.org
References: <20251022191313.GA1265088@bhelgaas>
Content-Language: en-US
In-Reply-To: <20251022191313.GA1265088@bhelgaas>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NjShqG0OhPJBxRrvSuwcy0uYO8Kz7VbxbJRPk3bnzqPq7l9zo3dydnMn
	t2XVAP79x/FtNsTFMHlw/c05WNOo1wIGshSWnadGd03jVj+DkrAC9rbwV+KWmwFOdrlh5UR
	fzuJOlVE68DkXM+UJyxAtFVX03z2UBAy4w8sl4H5rSK/PGJ4GYVmMjC48Kv2FUKbSGHnKPo
	Wj4QePlUfPAYIgDwxEGsa571b/Yq0dAZh2SPndm/8mXhfYPprmxwxjkYtNiaFbMk/fx04QW
	N60iOtXUom2H96PsEa85SsaUmTRk+y3OuyVztbdOFx6s77PhpNVDNaOBDbjruXWzlJwZhxg
	EhD9SKy/lYg9dHS3S+S0bbZxb3zxhOZT5u2cWGkUdtctEYB+IOkmFYSAPj3IRnr3ELofgEU
	w0uIqx412zhAZgCYA0l8i36BsFZCa5X1VXpCf+OdObS61aRd5M4HLRDINB/J9NxCZiLz0+9
	dzRiFP0f0Mvn9iPrgerOhvY4g/iNJGgNFZWr7Nf/XqYFQg2Ep/lyu7bHnntR2/T1Aip2OF5
	jdUBecMTCO1W6rFrQKjIhr7IcFXdUrH1XbkHbn5oOvAOEsTasT+b3qU8xm6udbNl5NgDmkS
	vpDcM9aP2RGRm6Z7HRlVbbK3gt3HuWhvB1jyi8c9VC8GU8EidJpIvq3XKKcrm9c+3kdSsiA
	+EpeBjY/toIvr8l+IyYeRsMQUWRjmSRAr8kDTMYUTEOPIz8BaXkaKR7KIWsODvyPUMxdvi0
	1JOP82avUD6dRl/iC+t4UTaFhU4dTAwKCAaRAkNSdGCM6cotLKMSmU/NwQGz35FR6cnh3lF
	h47yjeObTpF/7DmIJ2UesWqdHSP/mqCc4fCik/REi8Ug2ShGhoR291PqAoHsVTn4SAst74Y
	fUCzucAl7izi29g6xVN3XlbJZsdly6LwrdAkNlJO7zA4Q/jQl1eobnxsk1eBkkRR7tRpyjj
	aD9IFljHOzmWPW8w8cvBa8J8mqRMLJ06eNWfOUDcdvvQIrAle8ZFkZFqjlUe+nPhBiMciTG
	mTFYByB9n81umQrRMPbNq55xDfYRsLJb6n8kQuhg==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_212605_587471_0A5FA8BB 
X-CRM114-Status: GOOD (  18.43  )
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

# Fixes the ML address for linux-rockchip
# Please resend the original patch to linux-rockchip@lists.infradead.org

Hi Bjorn,

On 10/23/25 04:13, Bjorn Helgaas wrote:
> Christian, Naoki, any chance you could test this patch on top of
> v6.18-rc1 to see whether it resolves the problem you reported?
> 
> I'd like to verify that it works before merging it.

I'll be testing now. May I test on v6.18-rc2 without the following patch?

  "PCI: dw-rockchip: Prevent advertising L1 Substates support"

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> On Mon, Oct 20, 2025 at 05:12:07PM -0500, Bjorn Helgaas wrote:
>> From: Bjorn Helgaas <bhelgaas@google.com>
>>
>> f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree
>> platforms") enabled Clock Power Management and L1 Substates, but that
>> caused regressions because these features depend on CLKREQ#, and not all
>> devices and form factors support it.
>>
>> Enable only ASPM L0s and L1, and only when both ends of the link advertise
>> support for them.
>>
>> Fixes: f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree platforms")
>> Reported-by: Christian Zigotzky <chzigotzky@xenosoft.de>
>> Link: https://lore.kernel.org/r/db5c95a1-cf3e-46f9-8045-a1b04908051a@xenosoft.de/
>> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
>> Link: https://lore.kernel.org/r/22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com/
>> ---
>>
>> Mani, not sure what you think we should do here.  Here's a stab at it as a
>> strawman and in case anybody can test it.
>>
>> Not sure about the message log message.  Maybe OK for testing, but might be
>> overly verbose ultimately.
>>
>> ---
>>   drivers/pci/pcie/aspm.c | 34 +++++++++-------------------------
>>   1 file changed, 9 insertions(+), 25 deletions(-)
>>
>> diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
>> index 7cc8281e7011..dbc74cc85bcb 100644
>> --- a/drivers/pci/pcie/aspm.c
>> +++ b/drivers/pci/pcie/aspm.c
>> @@ -243,8 +243,7 @@ struct pcie_link_state {
>>   	/* Clock PM state */
>>   	u32 clkpm_capable:1;		/* Clock PM capable? */
>>   	u32 clkpm_enabled:1;		/* Current Clock PM state */
>> -	u32 clkpm_default:1;		/* Default Clock PM state by BIOS or
>> -					   override */
>> +	u32 clkpm_default:1;		/* Default Clock PM state by BIOS */
>>   	u32 clkpm_disable:1;		/* Clock PM disabled */
>>   };
>>   
>> @@ -376,18 +375,6 @@ static void pcie_set_clkpm(struct pcie_link_state *link, int enable)
>>   	pcie_set_clkpm_nocheck(link, enable);
>>   }
>>   
>> -static void pcie_clkpm_override_default_link_state(struct pcie_link_state *link,
>> -						   int enabled)
>> -{
>> -	struct pci_dev *pdev = link->downstream;
>> -
>> -	/* For devicetree platforms, enable ClockPM by default */
>> -	if (of_have_populated_dt() && !enabled) {
>> -		link->clkpm_default = 1;
>> -		pci_info(pdev, "ASPM: DT platform, enabling ClockPM\n");
>> -	}
>> -}
>> -
>>   static void pcie_clkpm_cap_init(struct pcie_link_state *link, int blacklist)
>>   {
>>   	int capable = 1, enabled = 1;
>> @@ -410,7 +397,6 @@ static void pcie_clkpm_cap_init(struct pcie_link_state *link, int blacklist)
>>   	}
>>   	link->clkpm_enabled = enabled;
>>   	link->clkpm_default = enabled;
>> -	pcie_clkpm_override_default_link_state(link, enabled);
>>   	link->clkpm_capable = capable;
>>   	link->clkpm_disable = blacklist ? 1 : 0;
>>   }
>> @@ -811,19 +797,17 @@ static void pcie_aspm_override_default_link_state(struct pcie_link_state *link)
>>   	struct pci_dev *pdev = link->downstream;
>>   	u32 override;
>>   
>> -	/* For devicetree platforms, enable all ASPM states by default */
>> +	/* For devicetree platforms, enable L0s and L1 by default */
>>   	if (of_have_populated_dt()) {
>> -		link->aspm_default = PCIE_LINK_STATE_ASPM_ALL;
>> +		if (link->aspm_support & PCIE_LINK_STATE_L0S)
>> +			link->aspm_default |= PCIE_LINK_STATE_L0S;
>> +		if (link->aspm_support & PCIE_LINK_STATE_L1)
>> +			link->aspm_default |= PCIE_LINK_STATE_L1;
>>   		override = link->aspm_default & ~link->aspm_enabled;
>>   		if (override)
>> -			pci_info(pdev, "ASPM: DT platform, enabling%s%s%s%s%s%s%s\n",
>> -				 FLAG(override, L0S_UP, " L0s-up"),
>> -				 FLAG(override, L0S_DW, " L0s-dw"),
>> -				 FLAG(override, L1, " L1"),
>> -				 FLAG(override, L1_1, " ASPM-L1.1"),
>> -				 FLAG(override, L1_2, " ASPM-L1.2"),
>> -				 FLAG(override, L1_1_PCIPM, " PCI-PM-L1.1"),
>> -				 FLAG(override, L1_2_PCIPM, " PCI-PM-L1.2"));
>> +			pci_info(pdev, "ASPM: DT platform, enabling%s%s\n",
>> +				 FLAG(override, L0S, " L0s"),
>> +				 FLAG(override, L1, " L1"));
>>   	}
>>   }
>>   
>> -- 
>> 2.43.0
>>
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
