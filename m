Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBD39CCD1BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 20:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDKo0i8NYeZ0VWouYNtpLtActki22adLtveqyIIC9WM=; b=09/56VS1g5t74V
	nueVI+Hq8FqvEOsC3TWPYFnmaEI4mW+jzUn1CUNPsPgButNqnDrYDHUS/lR3xuVQ1T6t1J6Uaedo8
	QizsbHmXmmfqUeO31VhEqKQOW1p+fex+K7w9y1aGlox4w6HudeW6XTcqyF+y+zFkaMiF7Mm2LND8e
	XpjOHt/0cLPDmqXTepjI//NwDzFv/z4lYVXN7PpJ3MenwYSaB1BL2nlUdCE2cwTIIK+hXOcmMBV7A
	XYmHAby7Nyg35fJcurubDOYzkvkh5lJl40VD97lJ8tyEFyU5c8UBtKoEfsC0OVJfU6K0hLi24FcPw
	f3GJ2J5UXUGqr4otjdkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC1TU-00000007Tap-3i3I;
	Thu, 23 Oct 2025 19:59:52 +0000
Received: from out-178.mta0.migadu.com ([91.218.175.178])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC1TS-00000007TaQ-0NK8
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Oct 2025 19:59:51 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761249586;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NgxdqITMBs00FQyE9iN8057v5JaTnH//cBeV6brPCVM=;
	b=FAx83wLmSxmeeIh8xhbvx7NV8H8ME4sOm04wFh3yX8CqoDb+JR3rVgdw9ByzAc5dcW2uuw
	sWHbz82IkCTUIT6NDRiwI2ip6gppXSBenLAoXg47wiiB3GzrNEVbexknCYvbeKU1vuFAJ7
	QbA0Lnf8gVovdiudJUXytMghBck2gu+emD1Sxzpom7YRfJQ3F6Cn0SAyn0QHMc9TdvQfIW
	jSWzWYX3bwoMY+QUNW5XByBQTh7eu0rk/rhDkFPVRbC52T63eHoZFZWrLVWeef3SY0nDQn
	60A5YIkLV8furs5XZ9kZHtjzkaHURWLlMoppLrW0dQs+dP1bIsua4w/xJ9+0Xw==
Date: Thu, 23 Oct 2025 21:59:41 +0200
Message-Id: <DDPYVBSYR01V.1OSGKL2X8LT82@cknow-tech.com>
Cc: "Manivannan Sadhasivam" <manivannan.sadhasivam@oss.qualcomm.com>,
 "Christian Zigotzky" <chzigotzky@xenosoft.de>, "FUKAUMI Naoki"
 <naoki@radxa.com>, "Herve Codina" <herve.codina@bootlin.com>, "Diederik de
 Haas" <diederik@cknow-tech.com>, "Dragan Simic" <dsimic@manjaro.org>,
 <linuxppc-dev@lists.ozlabs.org>, <linux-rockchip@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>
Subject: Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree
 platforms
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Bjorn Helgaas" <helgaas@kernel.org>, <linux-pci@vger.kernel.org>
References: <20251023180645.1304701-1-helgaas@kernel.org>
 <20251023182525.GA1306699@bhelgaas>
In-Reply-To: <20251023182525.GA1306699@bhelgaas>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_125950_481299_DBCA0F88 
X-CRM114-Status: GOOD (  19.70  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Bjorn,

Thanks for the patch :-)

On Thu Oct 23, 2025 at 8:25 PM CEST, Bjorn Helgaas wrote:
> On Thu, Oct 23, 2025 at 01:06:26PM -0500, Bjorn Helgaas wrote:
>> From: Bjorn Helgaas <bhelgaas@google.com>
>> 
>> f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree
>> platforms") enabled Clock Power Management and L1 PM Substates, but those
>> features depend on CLKREQ# and possibly other device-specific
>> configuration.  We don't know whether CLKREQ# is supported, so we shouldn't
>> blindly enable Clock PM and L1 PM Substates.
>> 
>> Enable only ASPM L0s and L1, and only when both ends of the link advertise
>> support for them.
>> 
>> Fixes: f3ac2ff14834 ("PCI/ASPM: Enable all ClockPM and ASPM states for devicetree platforms")
>> Reported-by: Christian Zigotzky <chzigotzky@xenosoft.de>
>> Link: https://lore.kernel.org/r/db5c95a1-cf3e-46f9-8045-a1b04908051a@xenosoft.de/
>> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
>> Closes: https://lore.kernel.org/r/22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com/
>> Reported-by: Herve Codina <herve.codina@bootlin.com>
>> Link: https://lore.kernel.org/r/20251015101304.3ec03e6b@bootlin.com/
>> Reported-by: Diederik de Haas <diederik@cknow-tech.com>
>> Link: https://lore.kernel.org/r/DDJXHRIRGTW9.GYC2ULZ5WQAL@cknow-tech.com/
>> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
>> Tested-by: FUKAUMI Naoki <naoki@radxa.com>
>
> Provisionally applied to pci/for-linus, hoping to make v6.18-rc3.
>
> Happy to add any testing reports or amend as needed.

My build with your patch (on top of 6.18-rc2) just finished, so I
installed it and rebooted into it.
Happy to report that everything seems to be working fine and I can't
find any errors, warnings or other messages with 'nvme' in dmesg that
indicate sth could be wrong. IOW: it does indeed fix the issue I
reported earlier. So feel free to add my:

Tested-by: Diederik de Haas <diederik@cknow-tech.com>

Cheers,
  Diederik

>> ---
>> I intend this for v6.18-rc3.
>> 
>> I think it will fix the issues reported by Diederik and FUKAUMI Naoki (both
>> on Rockchip).  I hope it will fix Christian's report on powerpc, but don't
>> have confirmation.  I think the performance regression Herve reported is
>> related, but this patch doesn't seem to fix it.
>> 
>> FUKAUMI Naoki's successful testing report:
>> https://lore.kernel.org/r/4B275FBD7B747BE6+a3e5b367-9710-4b67-9d66-3ea34fc30866@radxa.com/
>> ---
>>  drivers/pci/pcie/aspm.c | 34 +++++++++-------------------------
>>  1 file changed, 9 insertions(+), 25 deletions(-)
>> 
>> diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
>> index 7cc8281e7011..79b965158473 100644
>> --- a/drivers/pci/pcie/aspm.c
>> +++ b/drivers/pci/pcie/aspm.c
>> @@ -243,8 +243,7 @@ struct pcie_link_state {
>>  	/* Clock PM state */
>>  	u32 clkpm_capable:1;		/* Clock PM capable? */
>>  	u32 clkpm_enabled:1;		/* Current Clock PM state */
>> -	u32 clkpm_default:1;		/* Default Clock PM state by BIOS or
>> -					   override */
>> +	u32 clkpm_default:1;		/* Default Clock PM state by BIOS */
>>  	u32 clkpm_disable:1;		/* Clock PM disabled */
>>  };
>>  
>> @@ -376,18 +375,6 @@ static void pcie_set_clkpm(struct pcie_link_state *link, int enable)
>>  	pcie_set_clkpm_nocheck(link, enable);
>>  }
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
>>  static void pcie_clkpm_cap_init(struct pcie_link_state *link, int blacklist)
>>  {
>>  	int capable = 1, enabled = 1;
>> @@ -410,7 +397,6 @@ static void pcie_clkpm_cap_init(struct pcie_link_state *link, int blacklist)
>>  	}
>>  	link->clkpm_enabled = enabled;
>>  	link->clkpm_default = enabled;
>> -	pcie_clkpm_override_default_link_state(link, enabled);
>>  	link->clkpm_capable = capable;
>>  	link->clkpm_disable = blacklist ? 1 : 0;
>>  }
>> @@ -811,19 +797,17 @@ static void pcie_aspm_override_default_link_state(struct pcie_link_state *link)
>>  	struct pci_dev *pdev = link->downstream;
>>  	u32 override;
>>  
>> -	/* For devicetree platforms, enable all ASPM states by default */
>> +	/* For devicetree platforms, enable L0s and L1 by default */
>>  	if (of_have_populated_dt()) {
>> -		link->aspm_default = PCIE_LINK_STATE_ASPM_ALL;
>> +		if (link->aspm_support & PCIE_LINK_STATE_L0S)
>> +			link->aspm_default |= PCIE_LINK_STATE_L0S;
>> +		if (link->aspm_support & PCIE_LINK_STATE_L1)
>> +			link->aspm_default |= PCIE_LINK_STATE_L1;
>>  		override = link->aspm_default & ~link->aspm_enabled;
>>  		if (override)
>> -			pci_info(pdev, "ASPM: DT platform, enabling%s%s%s%s%s%s%s\n",
>> -				 FLAG(override, L0S_UP, " L0s-up"),
>> -				 FLAG(override, L0S_DW, " L0s-dw"),
>> -				 FLAG(override, L1, " L1"),
>> -				 FLAG(override, L1_1, " ASPM-L1.1"),
>> -				 FLAG(override, L1_2, " ASPM-L1.2"),
>> -				 FLAG(override, L1_1_PCIPM, " PCI-PM-L1.1"),
>> -				 FLAG(override, L1_2_PCIPM, " PCI-PM-L1.2"));
>> +			pci_info(pdev, "ASPM: default states%s%s\n",
>> +				 FLAG(override, L0S, " L0s"),
>> +				 FLAG(override, L1, " L1"));
>>  	}
>>  }
>>  
>> -- 
>> 2.43.0
>> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
