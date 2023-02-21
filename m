Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BE63C6379F
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Feb 2023 10:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQZ0+o/zULhDa63l51V1b2XNwaeZYf4MTn43wkIm1P0=; b=woERh2Lqdy6Wla
	FPqsVQvXH8bNCfxAie89bscjI+J1o/NmBO5sJjDMMFah8hxOiMzfmJwucyWmN/ReYnj5i3Gd3Nj97
	NS7TqhESbXbNCmga4okXr2oiBTjM+3modlPSDL0jLuPDpQLGHFy8NoeZfkGYsb7J5si7X2O8/CiqT
	Vep1WxoS9dr33iGm6YM2irugC34hQkl8v41zmrY8wC2DGBnTjB5f1g1Bb4mavmTQZ8I+zQW2rulsq
	cW4JlRuHaN51IZjRKZRGVkOqXh07kHpbScVKsXylSR6RGsFd6TOLOwvF5bxTh/PCaRy1J7LxtdRAI
	HNHTgoaV29Dwb7ke34Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUQJD-007TNw-Mf; Tue, 21 Feb 2023 10:55:43 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUQJ9-007TKp-Ud
	for linux-rockchip@lists.infradead.org; Tue, 21 Feb 2023 10:55:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676976939; x=1708512939;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=dottw58DX6NpLcrIxoBfsO6WcV5uJQI3WvU4f4U5ZFg=;
  b=qfG1B91mFznmghf1VZLAki4kL0GzvM2ijM79VeFBro4X0vGHZJ83qbl9
   B7QCDJXu4iJNDpaNr+OhIJZtGEMyjfq1o6t3HqnvrwPZabR8LDyVj+BXt
   Z9VrP9BfSLvLuNrZuddQIDisBp8Fphq2R9bFk1DBkBC4B3IWJK3Pyutbr
   TqKb/2zt1F2gHbIdGCWcpKFULdUTUJGwxabZtTJkAwJukPhppOoAhVl+z
   Efsn/bJJsqTOp8AqUfc8WAv8lBpeS33OUf8TZ+2/R1cTxaQYa8MfvQioF
   rwdTdHNApVHvqxC/j2CjAt9gzmrdmU6bdSmw9QKJZUY1BSN05+FAKPgQk
   A==;
X-IronPort-AV: E=Sophos;i="5.97,315,1669046400"; 
   d="scan'208";a="328106627"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 21 Feb 2023 18:55:33 +0800
IronPort-SDR: 4Qy+QD5NxizSut92j3Ur/Tbphc0y9CZyDk5MUeoXO++YjqIZb5Zlxt1HV0v9ZcDCQqUlFqJmo4
 GMsYMQlIQ0Z5geGdmP5CJt9GGiBJGFJDQLr377q6Gr7Ect8og27w/yoOuHQjWSdBEKlkn5QQm9
 /Q21FNYvIIp2v1IZK7/hGSLmkzZtti7CGUTMoIrnYwJy7i8pXIWwLxj0qQ7pGv2QuKG/8AaYdM
 m45itBqu8wa0pLmQnofWzIHyLx8Usn3vLmg5njeIBeyu4dzkEl2frpKqOUmJAH3fghA61IiPHR
 +tk=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 21 Feb 2023 02:06:48 -0800
IronPort-SDR: KZ1z3OrYBxp+aL8+klLSZMZFhi8qFzHN6nxqaX7bJ1EuYKDBemAYHjg+uFtWLQEGNLaNCyB7yY
 D48DkrRMPYYEifcuQ1hu6KDvLoXayLeVkBk5LMS0/SkeH/k/BtiSYdAr53+wSiuPgFn5lNKPDT
 B9gtvDtUMF6TQa02vVucgRzOCenS2iQKYqxrXwPHFDr/LZdS5GYx7wr36kXNJdpwKIQYU5dkyD
 VAaAeJ6WXWlsougT1/EQroVwHvEnfLuN1FtCYvWwRt0n1Q7ofFAoNmFBW7HBqTaCImk1JJ2eyg
 h9w=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 21 Feb 2023 02:55:35 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PLbmP3wyNz1RwvL
	for <linux-rockchip@lists.infradead.org>; Tue, 21 Feb 2023 02:55:33 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676976931; x=1679568932; bh=dottw58DX6NpLcrIxoBfsO6WcV5uJQI3WvU
	4f4U5ZFg=; b=RqStWAGmwTKsaOFcjGMNiMQAycpsAdG0h/DujjZpLQIKf7RN8AR
	hlck4UC7t3C4HPOTq6dLYjS83znf9raxBpss1R2Imt+mIRvlo37r/LQaFFafom5m
	fo1dC3WtrmO8LIVKFXaK8WrSvCKPTEsrWfq30tZ2bZVawdtnF2tH6XJ5zzWCDyX3
	FyGgmFhMi+FcqWn0qU+cpNQ5JO6xC5eKzPQvEmLDA5i/SsuzQ71rt1xFWu4jTwU6
	n5xK/cgsCi+LGWrEf+BFxlmMWE3QUntug+ym4lBV+Wg0DoLwkxOTdwavBF3ruDie
	jvTKml0nhnsb97bbB1ki8MpDlF0E85A0Gpw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Lt65_qWU68IE for <linux-rockchip@lists.infradead.org>;
	Tue, 21 Feb 2023 02:55:31 -0800 (PST)
Received: from [10.225.163.9] (unknown [10.225.163.9])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PLbmJ0q4rz1RvLy;
	Tue, 21 Feb 2023 02:55:27 -0800 (PST)
Message-ID: <38ae72c9-0f0b-1a94-d2e0-f4ea80e94705@opensource.wdc.com>
Date: Tue, 21 Feb 2023 19:55:26 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH v2 9/9] PCI: rockchip: Add parameter check for RK3399 PCIe
 endpoint core set_msi()
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com,
 rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-10-rick.wertenbroek@gmail.com>
 <ebbddcfa-99e5-efda-0eab-fbd61a33e2c3@opensource.wdc.com>
 <CAAEEuhpDTmAvBZhC9RCueOvqbLb=AttV1KxJrOUBcjHQrpVXmA@mail.gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <CAAEEuhpDTmAvBZhC9RCueOvqbLb=AttV1KxJrOUBcjHQrpVXmA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_025540_103063_BE543DFD 
X-CRM114-Status: GOOD (  41.21  )
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

On 2/21/23 19:47, Rick Wertenbroek wrote:
> On Wed, Feb 15, 2023 at 2:39 AM Damien Le Moal
> <damien.lemoal@opensource.wdc.com> wrote:
>>
>> On 2/14/23 23:08, Rick Wertenbroek wrote:
>>> The RK3399 PCIe endpoint core supports only a single PCIe physcial
>>> function (function number 0), therefore return -EINVAL if set_msi() is
>>> called with a function number greater than 0.
>>> The PCIe standard only allows the multi message capability (MMC) value
>>> to be up to 0x5 (32 messages), therefore return -EINVAL if set_msi() is
>>> called with a MMC value of over 0x5.
>>>
>>> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
>>> ---
>>>  drivers/pci/controller/pcie-rockchip-ep.c | 10 ++++++++++
>>>  1 file changed, 10 insertions(+)
>>>
>>> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
>>> index b7865a94e..80634b690 100644
>>> --- a/drivers/pci/controller/pcie-rockchip-ep.c
>>> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
>>> @@ -294,6 +294,16 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
>>>       struct rockchip_pcie *rockchip = &ep->rockchip;
>>>       u32 flags;
>>>
>>> +     if (fn) {
>>> +             dev_err(&epc->dev, "This endpoint controller only supports a single physical function\n");
>>> +             return -EINVAL;
>>> +     }
>>
>> Checking this here is late... Given that at most only one physical
>> function is supported, the check should be in rockchip_pcie_parse_ep_dt().
>> Something like:
>>
>>         err = of_property_read_u8(dev->of_node, "max-functions",
>>                                   &ep->epc->max_functions);
>>
>>         if (err < 0 || ep->epc->max_functions > 1)
>>
>>                 ep->epc->max_functions = 1;
>>
> 
> Yes, this could be moved to the probe, thanks.
> 
>> And all the macros with the (fn) argument could also be simplified
>> (argument fn removed) since fn will always be 0.
> 
> These functions cannot be simplified because they have to follow the signature
> given by "pci_epc_ops" (include/linux/pci-epc.h). And this signature has the
> function number as a parameter. If we change the function signature we won't
> be able to assign these functions to the pc_epc_ops structure

I was not suggesting to change the functions signature. I was suggesting
dropping the fn argument for the *macros*, e.g.

ROCKCHIP_PCIE_EP_FUNC_BASE(fn) -> ROCKCHIP_PCIE_EP_FUNC_BASE

since fn is always 0.

That said, I am not entirely sure if the limit really is 1 function at most. The
TRM seems to be suggesting that up to 4 functions can be supported...

[...]

>> Another nice cleanup: define ROCKCHIP_PCIE_EP_MSI_CTRL_REG to include the
>> ROCKCHIP_PCIE_EP_FUNC_BASE(fn) addition so that we do not have to do it
>> here all the time.
> 
> Yes, this could be an improvement but this is the way it is written
> everywhere in this
> driver, I chose to keep it so as to remain coherent with the rest of the driver.
> Cleaning this is not so important since this code will not be
> rewritten / changed so
> often. But I agree that it might be nicer. But, on the other side if
> at some point
> support for virtual functions would be added, the offsets would need
> to be computed
> based on the virtual function number and the code would be written
> like it is now,
> so I suggest keeping this the way it is for now.

Yes, sure, this can be cleaned later.

A more pressing problem is the lack of support for MSIX despite the fact that
the controller supports that *and* advertize it as a capability. That is what
was causing my problem with the Linux nvme driver and my prototype nvme epf
function driver: the host driver was seeing MSIX support (1 vector supported by
default), and so was allocating one MSIX for the device probe. But on the EP
end, it is MSI or INTX only... Working on adding that to solve this issue.

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
