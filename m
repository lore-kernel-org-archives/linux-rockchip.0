Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27AD3CD128A
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 17:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HCJaYpAHARBaNuh8SB7P6syZ6A5sF+KKILu9H3grLfE=; b=JLVTB5dgYlh9NIb98nNujzrm3y
	Df2fiSKPBXm+wz5WuBh78ZE2ktusl2HSdVQ4eXTafz0BGhCZ7oKdEVp+OrdlQgFjy7KjpV56IPf08
	DGgzXnpJQSMz9B/yUFHLE6hrSN7f6GZT/ZwSUj+KAJLmsuBHWVb++bq7aINdtRkXmoAN0eXrDW/kX
	3yb8uyM3rPgLZ5wbE8E2cRgtmpau4yPvuPSs+Sr13YCNg3eD5Q/ZndWW/aiAji4YYNgz4L0+Od7ya
	XoU6R1OFMJIk/NNXKN/yew/jQf8ElZ7dOCWuX8kWIKGJKoPKX8CdI20lw8eGxA3ZPEjxJsFxjJSOJ
	Uj8/1+wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrLSN-00000008Sia-0UcG;
	Mon, 01 Apr 2024 17:28:27 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrLSI-00000008Shm-1yR7;
	Mon, 01 Apr 2024 17:28:24 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711992495;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GcyQB2SpBRzc7F7Fs2OGW1YzrGJMJNel6cPq11Q+YyE=;
	b=mlxW8XicAIS9SwXJRhdu9Dv6QzWSW5GARhQYWa6kbRXGk/Pm87W2h9tXDlKP5e8IKiyaor
	LCobLS1JM7HOG+vHchRqBrraG5hYexy+RUVq6+HO7aiXp8wC/3+rG5vRXipR1AK3j/brYX
	qdq7UwyFBP38BOlSIXR7IxGmEN3ZjwZCGmJYWl3y8Wvc/THEvMsJUOQyg6mlYBFdKRuiA7
	5RG+/T0/q8n5RvQZdaqDvey56wI/nvUDcrnUF5HUxGp06TCkbibHZJn7QBlmmdP9Pwh9RU
	LZSrOjq3MGMJUw33m09BW96YVOur/gD5qN9GqgSlEptgZIiZqP2gV17KoC9Fuw==
Date: Mon, 01 Apr 2024 19:28:15 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] PCI: rockchip-host: Fix rockchip_pcie_host_init_port()
 PERST# handling
In-Reply-To: <89eb3414-38ba-4397-9ed7-aebebbdadd07@kernel.org>
References: <20240330035043.1546087-1-dlemoal@kernel.org>
 <d1ed4a0bf702d9927d4e9279f19bcf7b@manjaro.org>
 <89eb3414-38ba-4397-9ed7-aebebbdadd07@kernel.org>
Message-ID: <19d7def23f537b0a5a0aa09dd0638ac5@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_102823_177395_02F76828 
X-CRM114-Status: GOOD (  15.77  )
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

On 2024-04-01 08:59, Damien Le Moal wrote:
> On 4/1/24 04:34, Dragan Simic wrote:
>> Please see my comments below.
>> 
>> On 2024-03-30 04:50, Damien Le Moal wrote:
>>> The PCIe specifications (PCI Express Electromechanical Specification
>>> rev
>>> 2.0, section 2.6.2) mandate that the PERST# signal must remain 
>>> asserted
>>> for at least 100 usec (Tperst-clk) after the PCIe reference clock
>>> becomes stable (if a reference clock is supplied), for at least 100
>>> msec
>>> after the power is stable (Tpvperl).
>>> 
>>> In addition, the PCI Express Base SPecification Rev 2.0, section 
>>> 6.6.1
>>> state that the host should wait for at least 100 msec from the end of 
>>> a
>>> conventional reset (PERST# is de-asserted) before accessing the
>>> configuration space of the attached device.
>>> 
>>> Modify rockchip_pcie_host_init_port() by adding two 100ms sleep, one
>>> before and after bringing back PESRT signal to high using the ep_gpio
>>> GPIO. Comments are also added to clarify this behavior.
>>> 
>>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
>>> ---
>>> 
>>> Changes from v1:
>>>  - Add more specification details to the commit message.
>>>  - Add missing msleep(100) after PERST# is deasserted.
>>> 
>>>  drivers/pci/controller/pcie-rockchip-host.c | 12 ++++++++++++
>>>  1 file changed, 12 insertions(+)
>>> 
>>> diff --git a/drivers/pci/controller/pcie-rockchip-host.c
>>> b/drivers/pci/controller/pcie-rockchip-host.c
>>> index 300b9dc85ecc..ff2fa27bd883 100644
>>> --- a/drivers/pci/controller/pcie-rockchip-host.c
>>> +++ b/drivers/pci/controller/pcie-rockchip-host.c
>>> @@ -294,6 +294,7 @@ static int rockchip_pcie_host_init_port(struct
>>> rockchip_pcie *rockchip)
>>>  	int err, i = MAX_LANE_NUM;
>>>  	u32 status;
>>> 
>>> +	/* Assert PERST */
>>>  	gpiod_set_value_cansleep(rockchip->ep_gpio, 0);
>>> 
>>>  	err = rockchip_pcie_init_port(rockchip);
>>> @@ -322,8 +323,19 @@ static int rockchip_pcie_host_init_port(struct
>>> rockchip_pcie *rockchip)
>>>  	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
>>>  			    PCIE_CLIENT_CONFIG);
>>> 
>>> +	/*
>>> +	 * PCIe CME specifications mandate that PERST be asserted for at
>>> +	 * least 100ms after power is stable.
>>> +	 */
>>> +	msleep(100);
>> 
>> Perhaps it would be slightly better to use usleep_range()
>> instead of msleep().
> 
> I can do that, but I fail to see the advantage. Why do you say that
> it may be better ?

Actually, I was wrong.  When sleeping for 100 msec, msleep()
is actually the preferred variant. [1]

[1] https://www.kernel.org/doc/Documentation/timers/timers-howto.txt

>>>  	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
>>> 
>>> +	/*
>>> +	 * PCIe base specifications rev 2.0 mandate that the host wait for
>>> +	 * 100ms after completion of a conventional reset.
>>> +	 */
>>> +	msleep(100);
>> 
>> Obviously, the same comment as above applies here.
>> 
>>> +
>>>  	/* 500ms timeout value should be enough for Gen1/2 training */
>>>  	err = readl_poll_timeout(rockchip->apb_base +
>>> PCIE_CLIENT_BASIC_STATUS1,
>>>  				 status, PCIE_LINK_UP(status), 20,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
