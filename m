Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4774C369AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Apr 2025 12:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iuzg7yH5HSFkYTDs+Y3R7RdpVamfmP6LTUrgQmN6v4A=; b=cmKyfMkkGFJe5X
	GfkQLzkTgVzLNtC7pj48lnxbFIf4IZf5Pnuyw8auFxCnf4Kaguwea3h3ZL8ZHdQFRrdZBRrQtM1k3
	fTJIMw1wmtsiNf4zwT4mFvEbdk3tOU6NSIaUTMomh0wu0z41oaz+wdyLSDs2TSOkIRD7fenDn390z
	GNeqSVrc3JkcfBPzAoWDwzlG3toee5zcvvIUwPocdQdNIYcozDfyJsxwpDRKnArAhiViImJuZdYI6
	2OJcB4W1RxhxjiGkx8CU36SNTGNHz9ugcu/scYJDdhndmbGTEWDdMoZ7Hs/5bd5/U5u35vlgNZkfk
	ZyN0TiHgkNOptG6zqK1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5kwh-0000000G5zh-19E8;
	Fri, 18 Apr 2025 12:35:51 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5kul-0000000G5cv-16f5;
	Fri, 18 Apr 2025 12:33:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:From:
	Content-Type; bh=UBDa95ya3cXHyPB4tt8cCTy+Vp36SNsAM/119FvW6N4=;
	b=bJvzxzPlNdGkw+LZC9dvPrYW8aqNO6eGW8ZI3fbxhzW7pvN1GW+LJpa+uDxhPK
	ebJvUlDMfYrQp0SIiVtO/C98MDAXCMT47eYpfWD2oB33MOZupFs/kxCAr8fxfaDZ
	0P6UlRP8rMCpLq4lua26jUN0JW7yEy7sqCYR6ghEjl8dU=
Received: from [192.168.142.52] (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wDXH0qFRgJosq3aAw--.53778S2;
	Fri, 18 Apr 2025 20:33:10 +0800 (CST)
Message-ID: <22720eef-f5a3-4e72-9c41-35335ec20f80@163.com>
Date: Fri, 18 Apr 2025 20:33:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] PCI: dw-rockchip: Configure max payload size on host init
To: Bjorn Helgaas <helgaas@kernel.org>, Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, lpieralisi@kernel.org,
 kw@linux.com, bhelgaas@google.com, heiko@sntech.de,
 manivannan.sadhasivam@linaro.org, robh@kernel.org, jingoohan1@gmail.com,
 thomas.richard@bootlin.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20250417165219.GA115235@bhelgaas>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <20250417165219.GA115235@bhelgaas>
X-CM-TRANSID: _____wDXH0qFRgJosq3aAw--.53778S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxGw1xCw47Kw47Gr45WryfZwb_yoW5CF1Upa
	yag3W5Kr1DGF4fJw4kZw1F9Fy0yrnxAFW3Xw15t3yDZ3s8AFW3ArWqka12kFyxWrn7G3W3
	JFyF9FW3Xwn8ZFDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07Ul0PhUUUUU=
X-Originating-IP: [222.71.101.198]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbBDwgzo2gCPnz1oQAAsr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250418_053351_778896_286207CB 
X-CRM114-Status: GOOD (  27.06  )
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



On 2025/4/18 00:52, Bjorn Helgaas wrote:
> On Thu, Apr 17, 2025 at 10:39:49AM +0200, Niklas Cassel wrote:
>> On Thu, Apr 17, 2025 at 04:07:51PM +0800, Hans Zhang wrote:
>>> On 2025/4/17 15:48, Niklas Cassel wrote:
>>>
>>> Hi Niklas and Shawn,
>>>
>>> Thank you very much for your discussion and reply.
>>>
>>> I tested it on RK3588 and our platform. By setting pci=pcie_bus_safe, the
>>> maximum MPS will be automatically matched in the end.
>>>
>>> So is my patch no longer needed? For RK3588, does the customer have to
>>> configure CONFIG_PCIE_BUS_SAFE or pci=pcie_bus_safe?
>>>
>>> Also, for pci-meson.c, can the meson_set_max_payload be deleted?
>>
>> I think the only reason why this works is because
>> pcie_bus_configure_settings(), in the case of
>> pcie_bus_config == PCIE_BUS_SAFE, will walk the bus and set MPS in
>> the bridge to the lowest of the downstream devices:
>> https://github.com/torvalds/linux/blob/v6.15-rc2/drivers/pci/probe.c#L2994-L2999
>>
>> So Hans, if you look at lspci for the other RCs/bridges that don't
>> have any downstream devices connected, do they also show DevCtl.MPS 256B
>> or do they still show 128B ?
>>
>> One could argue that for all policies (execept for maybe PCIE_BUS_TUNE_OFF),
>> pcie_bus_configure_settings() should start off by initializing DevCtl.MPS to
>> DevCap.MPS (for the bridge itself), and after that pcie_bus_configure_settings()
>> can override it depending on policy, e.g. set MPS to 128B in case of
>> pcie_bus_config == PCIE_BUS_PEER2PEER, or walk the bus in case of
>> pcie_bus_config == PCIE_BUS_SAFE.
>>
>> That way, we should be able to remove the setting for pci-meson.c as well.
> 
> Thanks, I came here to say basically the same thing.  Ideally I think
> the generic code in pcie_bus_configure_settings() should be able to
> increase MPS or decrease it such that neither meson_set_max_payload()
> nor rockchip_pcie_set_max_payload() is required.
> 
> However, the requirement to pick a Kconfig setting makes it a mess.  I
> would love to get rid of those Kconfig symbols.  I don't like the
> command-line parameters either, but it would definitely be an
> improvement if we could nuke the Kconfig symbols and rely on the
> command-line parameters.
> 
> It's also a problem when devices are hot-added after the hierarchy has
> already been set up because the new device might not work correctly in
> the existing config.
> 
> It's a hard problem to solve.
> 
> For new platforms without an install base, maybe it would be easier to
> rely on the command-line parameters since there aren't a bunch of
> users that would have to change the Kconfig.
> 

Dear Bjorn,

Thanks your for reply. Niklas and I attempted to modify the relevant 
logic in drivers/pci/probe.c and found that there was a lot of code 
judging the global variable pcie_bus_config. At present, there is no 
good method. I will keep trying.

I wonder if you have any good suggestions? It seems that the code logic 
regarding pcie_bus_config is a little complicated and cannot be modified 
for the time being?

Best regards,
Hans


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
