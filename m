Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B491C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7p65KGdL2dndBEJVwfwYaHCZgXUplEDJflAUGmqg/0=; b=Y2LHFDlTlvB4Ir
	Wyul/LK7HvlRR1fZ2UyknwitGnlYeHb7qXSms1KVs5ZhzXqCwxgsUcw/2wTE5S56z63qaKcY29LpK
	OPdpoQZotRd3e3RxNALYD2WO40iiaqcJizAbXy419rkFnehXyEqWeqPjIkmtrsheTx1WA1vaKOOTx
	i+QcwaY9924oH+OUUQKetA71h5BQ/63QFdLpYvOB/EYjaKhYce/PK4P+c6bVF1G8vpAzrr0Fq26g/
	U6UCZiN2jFMgfaFLmgnxWnt9qFcfKrkgB8oDdQKKy0fdgkoGq9iCKm0OtHWSrZdyS1SR1nXENkjBq
	b0kpi/vud6XcBpHdlFkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvSXX-000000020W8-2KkG;
	Sat, 13 Apr 2024 01:50:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvSXU-000000020VJ-1aoi;
	Sat, 13 Apr 2024 01:50:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D7E96601FE;
	Sat, 13 Apr 2024 01:50:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22DBCC113CC;
	Sat, 13 Apr 2024 01:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712973043;
	bh=JfDhAkZ7NqPI1BHC5+qlpIyO3RdLjwXqyssIHUY7iME=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UFAE1hq5am1I2pRPOK2srF287pPcWBqQGoUHEe0/PsrFbAGnXex3mk60YYqfA2rIZ
	 iuyOrtD4uQ1lcvDe4clvy4JTTUXjnofYk6TmdoTJhno4K7V/QGG8d/O+MOZa1kNOKM
	 DEm35qrYgo6tFN1WF0d5h06kFSzNrYhTeJ3fj9d8mYqegEJknMU74ct0kIkq6o3I2A
	 u3cVvYPcu/It9gUJp1tFEAoIqu9ter9ac+Fz/fBC2y9Wt1xBJko7fq8skx2vSQ/J2v
	 nT/S2xU73pH5sDd2lDtTC4UqMgwpCm8CKFKBSCjdJ2PzdgqFxEogNWPV4TKezx98/0
	 Vuo3n1K4nEEhA==
Message-ID: <89bbe0a0-55d3-4f25-b50a-9b3737697807@kernel.org>
Date: Sat, 13 Apr 2024 10:50:40 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] PCI: rockchip-host: Wait 100ms after reset before
 starting configuration
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20240412212916.GA18789@bhelgaas>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240412212916.GA18789@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_185044_549954_AE056BEB 
X-CRM114-Status: GOOD (  18.18  )
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

On 4/13/24 06:29, Bjorn Helgaas wrote:
> On Fri, Apr 12, 2024 at 11:37:21AM +0900, Damien Le Moal wrote:
>> The PCI Express Base Specification r6.0, section 6.6.1, states that the
>> host should wait for at least 100 msec from the end of a conventional
>> reset (PERST# is de-asserted) before sending a configuration request to
>> ensure that the device is able to respond with a "Request Retry Status"
>> completion.
>>
>> Add the PCIE_T_RRS_READY_MS macro to define this wait time and modify
>> rockchip_pcie_host_init_port() to add this 100ms sleep after bringing
>> back PESRT# signal to high using the ep_gpio GPIO.
> 
> s/PESRT#/PERST#/
> s/bringing back PERST# signal to high/deasserting PERST#/
> 
>> Suggested-by: Bjorn Helgaas <helgaas@kernel.org>
>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
>> ---
>>  drivers/pci/controller/pcie-rockchip-host.c | 2 ++
>>  drivers/pci/pci.h                           | 7 +++++++
>>  2 files changed, 9 insertions(+)
>>
>> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
>> index fc868251e570..cbec71114825 100644
>> --- a/drivers/pci/controller/pcie-rockchip-host.c
>> +++ b/drivers/pci/controller/pcie-rockchip-host.c
>> @@ -325,6 +325,8 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
>>  	msleep(PCIE_T_PVPERL_MS);
>>  	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
>>  
>> +	msleep(PCIE_T_RRS_READY_MS);
>> +
>>  	/* 500ms timeout value should be enough for Gen1/2 training */
>>  	err = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
>>  				 status, PCIE_LINK_UP(status), 20,
>> diff --git a/drivers/pci/pci.h b/drivers/pci/pci.h
>> index 17fed1846847..c93ffc5e6e1f 100644
>> --- a/drivers/pci/pci.h
>> +++ b/drivers/pci/pci.h
>> @@ -16,6 +16,13 @@
>>  /* Power stable to PERST# inactive from PCIe card Electromechanical Spec */
>>  #define PCIE_T_PVPERL_MS		100
>>  
>> +/*
>> + * End of conventional reset (PERST# de-asserted) to first configuration
>> + * request (device able to respond with a "Request Retry Status" completion),
>> + * from PCI Express Base Specification r6.0, section 6.6.1.
> 
> "PCIe r6.0, sec 6.6.1" to match typical style, e.g., the reference
> just below.
> 
> Whoever applies this can take care of this.

To make it easier to apply, I sent v4 with the corrections. Thanks.

> 
>> +#define PCIE_T_RRS_READY_MS	100
> 
> Thanks a lot for doing this; there are many similar places we can
> update to use this #define.
> 
>>  /*
>>   * PCIe r6.0, sec 5.3.3.2.1 <PME Synchronization>
>>   * Recommends 1ms to 10ms timeout to check L2 ready.
>> -- 
>> 2.44.0
>>

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
