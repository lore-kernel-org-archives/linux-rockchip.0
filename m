Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFE88CD128A
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 07:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUc5FU6g4yNizFczVAdccegSNY5okhMXnUBO9V6nLtg=; b=fEnbjqJhpcHup2
	Q9S0k9aNCfGBaGHS18w5/SaLWMMdU93RdEg0yPRViSmizagy35nklIQup3yJL7/sPVt2iK+htxC5d
	EDVs74f5BFPbRna9uQ4hBddgsJ2/R2Aaz1C8ZsVjh6VyqnRfTff8m0aAysYyPK5koJhjCL84hBZjo
	c3Z0u+I7vrDJL1M4B+qQ8xEREUYjnk6V4PeRrZmmhdZV9E1KdKFrblMbWq/xScDo/HmQzd2HZYla1
	PZ2s5fcloMHq/4wxaTs9bUzHqiFpzlkq5V91Ks0XSJCFmgwwpB6nC/esym4VOazgbXJnMYnjmz/VV
	MoaNTFBP/rk5ETfYOUaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrBe6-0000000767Y-2pHC;
	Mon, 01 Apr 2024 06:59:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrBe1-0000000766P-40md;
	Mon, 01 Apr 2024 06:59:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 20BB760ACE;
	Mon,  1 Apr 2024 06:59:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FA0BC433C7;
	Mon,  1 Apr 2024 06:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711954788;
	bh=BO4iEbJ+EDNgglvq3pj+mwN8DBXIKP7Kmy2BunCGATA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FGqRYffX7Mv/eeLxf0LkcvIAqyQu4gv1B05jBvXz2sa0pL9iIS6uqBuo49RptEPb7
	 JITpYYt8nKks+EsoVlU64PpRthDQjqJLltI0qoRChRbw2MWVtiX2Y6yT8JOP9pCb7z
	 6VF9FPmE09mv3SNaoOC2pRjC3sMpEsjH5WOI3ZZ8FGi4w6w0HOVh23t0QiFjlSx9en
	 XOqyyefruVdEVWBEN/UIJtj8xQoJLh6WygZFqK+lso95kYUXjcRozGGUhPfPPd0J/N
	 +WPdzlYmPXnlWvEW4/veweKx7VYNr6vG2V2TyAUvxOUOJylVmUab7F+o7WFM93ow2V
	 A6ff7Ehehg1JA==
Message-ID: <89eb3414-38ba-4397-9ed7-aebebbdadd07@kernel.org>
Date: Mon, 1 Apr 2024 15:59:45 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] PCI: rockchip-host: Fix rockchip_pcie_host_init_port()
 PERST# handling
To: Dragan Simic <dsimic@manjaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20240330035043.1546087-1-dlemoal@kernel.org>
 <d1ed4a0bf702d9927d4e9279f19bcf7b@manjaro.org>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <d1ed4a0bf702d9927d4e9279f19bcf7b@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240331_235950_221890_8A9B2688 
X-CRM114-Status: GOOD (  19.41  )
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

On 4/1/24 04:34, Dragan Simic wrote:
> Hello Damien,
> 
> Please see my comments below.
> 
> On 2024-03-30 04:50, Damien Le Moal wrote:
>> The PCIe specifications (PCI Express Electromechanical Specification 
>> rev
>> 2.0, section 2.6.2) mandate that the PERST# signal must remain asserted
>> for at least 100 usec (Tperst-clk) after the PCIe reference clock
>> becomes stable (if a reference clock is supplied), for at least 100 
>> msec
>> after the power is stable (Tpvperl).
>>
>> In addition, the PCI Express Base SPecification Rev 2.0, section 6.6.1
>> state that the host should wait for at least 100 msec from the end of a
>> conventional reset (PERST# is de-asserted) before accessing the
>> configuration space of the attached device.
>>
>> Modify rockchip_pcie_host_init_port() by adding two 100ms sleep, one
>> before and after bringing back PESRT signal to high using the ep_gpio
>> GPIO. Comments are also added to clarify this behavior.
>>
>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
>> ---
>>
>> Changes from v1:
>>  - Add more specification details to the commit message.
>>  - Add missing msleep(100) after PERST# is deasserted.
>>
>>  drivers/pci/controller/pcie-rockchip-host.c | 12 ++++++++++++
>>  1 file changed, 12 insertions(+)
>>
>> diff --git a/drivers/pci/controller/pcie-rockchip-host.c
>> b/drivers/pci/controller/pcie-rockchip-host.c
>> index 300b9dc85ecc..ff2fa27bd883 100644
>> --- a/drivers/pci/controller/pcie-rockchip-host.c
>> +++ b/drivers/pci/controller/pcie-rockchip-host.c
>> @@ -294,6 +294,7 @@ static int rockchip_pcie_host_init_port(struct
>> rockchip_pcie *rockchip)
>>  	int err, i = MAX_LANE_NUM;
>>  	u32 status;
>>
>> +	/* Assert PERST */
>>  	gpiod_set_value_cansleep(rockchip->ep_gpio, 0);
>>
>>  	err = rockchip_pcie_init_port(rockchip);
>> @@ -322,8 +323,19 @@ static int rockchip_pcie_host_init_port(struct
>> rockchip_pcie *rockchip)
>>  	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
>>  			    PCIE_CLIENT_CONFIG);
>>
>> +	/*
>> +	 * PCIe CME specifications mandate that PERST be asserted for at
>> +	 * least 100ms after power is stable.
>> +	 */
>> +	msleep(100);
> 
> Perhaps it would be slightly better to use usleep_range()
> instead of msleep().

I can do that, but I fail to see the advantage. Why do you say that it may be
better ?

> 
>>  	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
>>
>> +	/*
>> +	 * PCIe base specifications rev 2.0 mandate that the host wait for
>> +	 * 100ms after completion of a conventional reset.
>> +	 */
>> +	msleep(100);
> 
> Obviously, the same comment as above applies here.
> 
>> +
>>  	/* 500ms timeout value should be enough for Gen1/2 training */
>>  	err = readl_poll_timeout(rockchip->apb_base + 
>> PCIE_CLIENT_BASIC_STATUS1,
>>  				 status, PCIE_LINK_UP(status), 20,

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
