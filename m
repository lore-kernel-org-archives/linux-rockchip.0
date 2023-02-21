Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 385A1C636D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Feb 2023 21:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0whq3G3ptV+Mso1ov/rMaz2o93esKG8zzZqqhnlHrI=; b=CxP2xPSaZ4TLcP
	hHsJ09zOikQx9mb8Xygrxc8DlfXri7o0xCg6ayKLsnUr20QUKTBaBeOU/2lntU4UrKhqENdnZbiR1
	qhl9p6pwuu/2nypyh9ar7NYYTVOajCMYLZVoXq6Iu4yiXT/asWC+Ra/QFpxUmUiUaFt+3999xAwB0
	S69q/DmSWy2rrPp443HsBEUSLeJQq7/oyNQc3KUocwtz4h8f5d6jP93gff1kmZO71BeW3847XhHQ1
	acXNtx/fo159s2l4MxTat53quUXURyspCswcJ/gp8Z+mOVSDIYOtFbz9/0FjnmYDDaLjv/09JoErI
	u0cXXNt3bFzdCZ4T2DcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUaeX-009toH-QS; Tue, 21 Feb 2023 21:58:25 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUaeO-009tlF-Ds
	for linux-rockchip@lists.infradead.org; Tue, 21 Feb 2023 21:58:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1677016696; x=1708552696;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=g9TnFRqAZqcDsGZcV1iYV9pTjzWi1/1bs6SxLfEGNWA=;
  b=Rj1YeJAkC89NjGnnwWx6SJTu82VuRKtkrMbT27UtVYRxSzNJE/0yT8BL
   JiBoSeebfpTXVV9eZSDyjZ4SaCCxuVmsEvkTXtlf3azD6/ccNCnyAThde
   g0EvcK1grhZ0cqD6SUKB3mG2uzHchCYZ8lgcAD5Y3BLaPOg12SNwLfFKG
   f1M8dLP3k2yvpI1nBgqhwXnYpFOyG9JWlQldfZxUSTV4cHbd8ureha5vD
   O8kfJioKXf3CdlRVXBDTHqKMChyHGdsM0FfjOj8jQ5o2FXQSTGlOEymvO
   lDByWhYcrkfCK2zfzhZQHjKYYmnH9iig+O3liICufI1+FqSJSnLocszqG
   A==;
X-IronPort-AV: E=Sophos;i="5.97,317,1669046400"; 
   d="scan'208";a="222134150"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 22 Feb 2023 05:58:05 +0800
IronPort-SDR: +9t8kFeqhrpFqLDKmPj6kbZPr/glTv4Muml/ml5AMnS4PC4Ntkj7x6no6pXKSJ7M4GDC3Ia7y5
 8bnNZ1uwx+xFVArRqOqYP2UspOFCeGLOEDVqYNiaFtW/y/yyJiStp9gSdqKUtQdZmsgS+BqpZi
 HHq4gdhspzBySvelY+1IVRn2OXJc6b0QD3jseSFLdI05d7BynxUG5QXmPcdZX+Rl/iNJQHfuWl
 Pyt9bO2LM4TfhnZRelVxvptGDelC7MxIlvbZmqsRHFu/k/wbH/YqsAZrONZyzENrJCUIiifNdx
 RtA=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 21 Feb 2023 13:15:04 -0800
IronPort-SDR: hQEOv1kwiEuiG8/MZxijQR0oM/O0O/JkiXVeXjk1Hy3tvlMAkmUNfHtYyqfQggby6v+HSJ0YGY
 pjgE3ezSw+Urz0qUFk7MDEAe0JbxpKZM2G7GZ3zUBaCPUxlAlKVFLUNByq3q29Zg5JaY6W2dx3
 XNkkoO0pAfXD1lqedC5OHXuoE8dr1BmBFEnXYRt/AvaServ25jKihE4j3WoQ/5niyQOzsYM965
 jJ/Ym7YvXvfoXfrzA+AE4/jT4yBkzDJrY0MKlhZ1HrtuwKnvfNLqvwJlYMefzs5gMkxdjzBHoB
 h9o=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 21 Feb 2023 13:58:05 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PLtSr5h7Fz1RwvT
	for <linux-rockchip@lists.infradead.org>; Tue, 21 Feb 2023 13:58:04 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:content-language:references:to
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1677016682; x=1679608683; bh=g9TnFRqAZqcDsGZcV1iYV9pTjzWi1/1bs6S
	xLfEGNWA=; b=Rb9/RTEigoXlpl3/WTaPyfgRujxS0dNLPQlHHKqTpzdykTvexkm
	mK+7rSBYPQchCE4X3iRubIdTVA1kuy2s3/s3FL3IymSUduI/0C8ClvciOyDM8gqy
	nThhdHRXBkRNWw68JXTvoGQluphxoEZ+yvmpAAIMCjrncML4W8JH3FV3E3nQyyDG
	j/xPAI2U+cEZqSkvYKF1xEXUxe0bhttNRB1cf4Vb6tlHY++EsL3TP/kw1vlBMCnB
	emJm1kL5Pd/hvTIfCk01L9mRDeWcf9IBkZLlW/d4hgwTSMDu8fM8TVnrkkUyQ2zL
	cfzPhfLndTkVUweNAu5WFR+P0WGYENfno1g==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id dz4RidE22Kne for <linux-rockchip@lists.infradead.org>;
	Tue, 21 Feb 2023 13:58:02 -0800 (PST)
Received: from [10.225.163.21] (unknown [10.225.163.21])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PLtSk5wLTz1RvLy;
	Tue, 21 Feb 2023 13:57:58 -0800 (PST)
Message-ID: <a524ec1c-68ee-e20e-683a-40822b2235fd@opensource.wdc.com>
Date: Wed, 22 Feb 2023 06:57:57 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 9/9] PCI: rockchip: Add parameter check for RK3399 PCIe
 endpoint core set_msi()
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
 <38ae72c9-0f0b-1a94-d2e0-f4ea80e94705@opensource.wdc.com>
 <CAAEEuhoQV1A8o_2jb1Qfq5d7dj9HpHL+mkDs8K4vs8v=-81zng@mail.gmail.com>
Content-Language: en-US
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <CAAEEuhoQV1A8o_2jb1Qfq5d7dj9HpHL+mkDs8K4vs8v=-81zng@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_135816_569084_5DE83DFE 
X-CRM114-Status: GOOD (  49.72  )
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

On 2/21/23 22:19, Rick Wertenbroek wrote:
> On Tue, Feb 21, 2023 at 11:55 AM Damien Le Moal
> <damien.lemoal@opensource.wdc.com> wrote:
>>
>> On 2/21/23 19:47, Rick Wertenbroek wrote:
>>> On Wed, Feb 15, 2023 at 2:39 AM Damien Le Moal
>>> <damien.lemoal@opensource.wdc.com> wrote:
>>>>
>>>> On 2/14/23 23:08, Rick Wertenbroek wrote:
>>>>> The RK3399 PCIe endpoint core supports only a single PCIe physcial
>>>>> function (function number 0), therefore return -EINVAL if set_msi() is
>>>>> called with a function number greater than 0.
>>>>> The PCIe standard only allows the multi message capability (MMC) value
>>>>> to be up to 0x5 (32 messages), therefore return -EINVAL if set_msi() is
>>>>> called with a MMC value of over 0x5.
>>>>>
>>>>> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
>>>>> ---
>>>>>  drivers/pci/controller/pcie-rockchip-ep.c | 10 ++++++++++
>>>>>  1 file changed, 10 insertions(+)
>>>>>
>>>>> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
>>>>> index b7865a94e..80634b690 100644
>>>>> --- a/drivers/pci/controller/pcie-rockchip-ep.c
>>>>> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
>>>>> @@ -294,6 +294,16 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
>>>>>       struct rockchip_pcie *rockchip = &ep->rockchip;
>>>>>       u32 flags;
>>>>>
>>>>> +     if (fn) {
>>>>> +             dev_err(&epc->dev, "This endpoint controller only supports a single physical function\n");
>>>>> +             return -EINVAL;
>>>>> +     }
>>>>
>>>> Checking this here is late... Given that at most only one physical
>>>> function is supported, the check should be in rockchip_pcie_parse_ep_dt().
>>>> Something like:
>>>>
>>>>         err = of_property_read_u8(dev->of_node, "max-functions",
>>>>                                   &ep->epc->max_functions);
>>>>
>>>>         if (err < 0 || ep->epc->max_functions > 1)
>>>>
>>>>                 ep->epc->max_functions = 1;
>>>>
>>>
>>> Yes, this could be moved to the probe, thanks.
>>>
>>>> And all the macros with the (fn) argument could also be simplified
>>>> (argument fn removed) since fn will always be 0.
>>>
>>> These functions cannot be simplified because they have to follow the signature
>>> given by "pci_epc_ops" (include/linux/pci-epc.h). And this signature has the
>>> function number as a parameter. If we change the function signature we won't
>>> be able to assign these functions to the pc_epc_ops structure
>>
>> I was not suggesting to change the functions signature. I was suggesting
>> dropping the fn argument for the *macros*, e.g.
>>
>> ROCKCHIP_PCIE_EP_FUNC_BASE(fn) -> ROCKCHIP_PCIE_EP_FUNC_BASE
>>
>> since fn is always 0.
>>
>> That said, I am not entirely sure if the limit really is 1 function at most. The
>> TRM seems to be suggesting that up to 4 functions can be supported...
>>
>> [...]
>>
>>>> Another nice cleanup: define ROCKCHIP_PCIE_EP_MSI_CTRL_REG to include the
>>>> ROCKCHIP_PCIE_EP_FUNC_BASE(fn) addition so that we do not have to do it
>>>> here all the time.
>>>
>>> Yes, this could be an improvement but this is the way it is written
>>> everywhere in this
>>> driver, I chose to keep it so as to remain coherent with the rest of the driver.
>>> Cleaning this is not so important since this code will not be
>>> rewritten / changed so
>>> often. But I agree that it might be nicer. But, on the other side if
>>> at some point
>>> support for virtual functions would be added, the offsets would need
>>> to be computed
>>> based on the virtual function number and the code would be written
>>> like it is now,
>>> so I suggest keeping this the way it is for now.
>>
>> Yes, sure, this can be cleaned later.
>>
>> A more pressing problem is the lack of support for MSIX despite the fact that
>> the controller supports that *and* advertize it as a capability. That is what
>> was causing my problem with the Linux nvme driver and my prototype nvme epf
>> function driver: the host driver was seeing MSIX support (1 vector supported by
>> default), and so was allocating one MSIX for the device probe. But on the EP
>> end, it is MSI or INTX only... Working on adding that to solve this issue.
>>
> 
> I have seen this too, the controller advertises the capability. However, the TRM
> (section 17.5.9) says that MSI-X is not supported (MSI / INTx only as you said).
> So the solution should be to modify the probe function of the endpoint
> controller
> so that the MSI-X capability would not be advertised, this should fix
> your problem.

Yep, that is what I did for now: write 0 in the capability ID of the MSIX
capability list entry. A cleaner solution would be to change the next entry
pointer of the entry preceding the MSIX entry. Will send a patch for that.

> 
> I wonder if one could still implement MSI-X because from the endpoint we would
> just need to implement it as a message (TLP) over PCIe (because the space for
> the vectors is allocated and written, so that part should be ok). I am
> not an expert
> on MSI-X, but the reason the endpoint cannot send them could be because MSI-X
> requires some fields in the PCIe header descriptor to be filled with values that
> cannot be set through the "desc0-3" registers of the RK3399 PCIe endpoint core.
> 
> Anyways, the endpoint should not advertise the MSI-X capabilities when it cannot
> send such interrupts. Once this is fixed you should be able to have your NVMe
> function running.
> 
> Regards.
> Rick
> 
> 
>> --
>> Damien Le Moal
>> Western Digital Research
>>

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
