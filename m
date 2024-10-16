Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10219D1AD2A
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 08:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hfYDZi/zvtF1VwNQkut5uXDkHn9o/3NozrfFz1dmxc=; b=ggLZvm0ATpSWDb
	0sZx/a4uDiPucYwYO+WUZJXEugGPLTiNXAUVGtY4Pm0IF/2th7Ix6nU10fTSI48IU3bup1JqIsaE/
	BY+AHh24i//VnKtrBdZeLwL+KId4hMOPEWkC1rN+0Cv1SUheZDXxZMJfM2AIoOvxJmzDSr4B9gGD7
	x0+HXcui6HRGZyXfKvmbMzDjUYqESxIT7X3lrWZNuOXTkibOtv1V8wn/Zvzo9m8Qg+xHYny3iWroU
	HxxlOIE+ShrY5Zar4wsoiZJGnrD91A9hdro8Hr9TDWxEht/+6meCurktP7SGqnN4QYXEgOygKEV9T
	SD6bHDs+GQjHAmHOeMlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zPP-0000000B1uU-3JJp;
	Wed, 16 Oct 2024 08:29:31 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0z4l-0000000AxIc-2lrq
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 08:08:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D3E65A439CF;
	Wed, 16 Oct 2024 08:08:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31986C4CEC5;
	Wed, 16 Oct 2024 08:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729066090;
	bh=FrbqntNk8ygK1+SOiz5igmldSyPodiaS/1oL3ol2S1A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PdZeJ1jtW5PIZ2Op7/a8aQi5gFTJqlfC86FEyIboGjBYZKN6e7cn239KIEFlNXr+/
	 jc8tcG/Ahsph+GygoLXX6Do8RyZ3FgHnB754ogj3u4WDFy7KKW7uApPLEC2kUulSza
	 djb0vtgCvqe80a7VkSE5ifD6AC5a7OpAdzX9x1n2ekYls/LRcQUEkfFbbeDJnP/hGB
	 z/hwNU9p9UEffa2CN8ynpqbokOjVsCkYcoqwIpkQVxdoNy2watb0EW+W6a9v5FfsKi
	 BcaxJZJQkSfZxfhbD6W1seTsQr1D4E82xrmzFe77WxeR18HHQsVXbGMhIdRY7j9u/2
	 wg8c31R5csdxw==
Message-ID: <0f2cf12b-3f27-403c-802e-bb8b539766b0@kernel.org>
Date: Wed, 16 Oct 2024 17:08:06 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/12] Fix and improve the Rockchip endpoint driver
To: Anand Moon <linux.amoon@gmail.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Niklas Cassel <cassel@kernel.org>
References: <20241011121408.89890-1-dlemoal@kernel.org>
 <CANAwSgQ+YmSTqJs3-53nmpmCRKuqfRysT37uHQNGibw5FZhRvg@mail.gmail.com>
 <f13618a6-0922-4fc8-af01-10be1ef95f0d@kernel.org>
 <CANAwSgRDbCCridYMciq=xSDPV0qGhs-OhCJ_uniXFbp-yM5CcQ@mail.gmail.com>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <CANAwSgRDbCCridYMciq=xSDPV0qGhs-OhCJ_uniXFbp-yM5CcQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_010811_868622_40C5ADE5 
X-CRM114-Status: GOOD (  19.19  )
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

On 10/16/24 4:22 PM, Anand Moon wrote:
> Hi Damien,
> 
> On Wed, 16 Oct 2024 at 11:45, Damien Le Moal <dlemoal@kernel.org> wrote:
>>
>> On 10/16/24 2:32 PM, Anand Moon wrote:
>>> Hi Damien,
>>>
>>> On Fri, 11 Oct 2024 at 17:55, Damien Le Moal <dlemoal@kernel.org> wrote:
>>>>
>>>> This patch series fix the PCI address mapping handling of the Rockchip
>>>> endpoint driver, refactor some of its code, improves link training and
>>>> adds handling of the #PERST signal.
>>>>
>>>> This series is organized as follows:
>>>>  - Patch 1 fixes the rockchip ATU programming
>>>>  - Patch 2, 3 and 4 introduce small code improvments
>>>>  - Patch 5 implements the .get_mem_map() operation to make the RK3399
>>>>    endpoint controller driver fully functional with the new
>>>>    pci_epc_mem_map() function
>>>>  - Patch 6, 7, 8 and 9 refactor the driver code to make it more readable
>>>>  - Patch 10 introduces the .stop() endpoint controller operation to
>>>>    correctly disable the endpopint controller after use
>>>>  - Patch 11 improves link training
>>>>  - Patch 12 implements handling of the #PERST signal
>>>>
>>>> This patch series depends on the PCI endpoint core patches from the
>>>> V5 series "Improve PCI memory mapping API". The patches were tested
>>>> using a Pine Rockpro64 board used as an endpoint with the test endpoint
>>>> function driver and a prototype nvme endpoint function driver.
>>>
>>> Can we test this feature on Radxa Rock PI 4b hardware with an external
>>> nvme card?
>>
>> This patch series is to fix the PCI controller operation in endpoint (EP) mode.
>> If you only want to use an NVMe device connected to the board M.2 M-Key slot,
>> these patches are not needed. If that board PCI controller does not work as a
>> PCI host (RC mode), then these patches will not help.
>>
> 
> Thanks for your inputs, I don't think my board supports this feature.

The Rock 4B board uses a RK3399 SoC. So the PCIe port should work as long as
you have the right device tree for the board. The mainline kernel currently has
this DT:

rk3399-rock-pi-4b.dts

Which uses

rk3399-rock-pi-4.dtsi

which has:

&pcie0 {
        ep-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
        num-lanes = <4>;
        pinctrl-0 = <&pcie_clkreqnb_cpm>;
        pinctrl-names = "default";
        vpcie0v9-supply = <&vcc_0v9>;
        vpcie1v8-supply = <&vcc_1v8>;
        vpcie3v3-supply = <&vcc3v3_pcie>;
        status = "okay";
};

So it looks to me like the PCIe port is supported just fine. FOr the PCIe port
node definition look at rk3399.dtsi and rk3399-base.dtsi.

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
