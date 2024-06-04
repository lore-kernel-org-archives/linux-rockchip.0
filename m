Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAC97C25B75
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 01:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNzbsxhyURSSNn+S4YJweCgn/+gOSLbZ8c91FlVnoY4=; b=wJW66T1pzs+e3E
	beNasJ8eXqxWApCAPfFygFD1tUHlB2eK5D85aN/EhHJHrPndEKbJOiOXDRbrX2U6hUCMBved57Z/8
	s6UK7SPb07+CyUIpumx1vn5QGC3cyTIcT8uvE1oTVfGEPIhswwkTmV55uXykScYZGF3g67DxDI/ju
	yaQCa3gMHSSWfG0af0POyONO+2yES1Yd7+pG6utyKbgwZB3s0y/HpNx2WBcJItknar775xjTD0han
	fzCDUAcxUftjSAdjUP0PDeZP8F5RE+gE8zQVe7hNM7jqyyRuPmimKYAmB3VkYhVSD0P7SckrKTJ0k
	HA/qF5hLhWGdfZT3grtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEJKs-00000000r9V-1wbs;
	Tue, 04 Jun 2024 01:51:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEJKp-00000000r94-0igJ
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Jun 2024 01:51:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1693D611B9;
	Tue,  4 Jun 2024 01:51:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 647E2C2BD10;
	Tue,  4 Jun 2024 01:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717465893;
	bh=dEPv1dYC3IoPhn6DAU+v5jT+Lv/0U5BtbLurTzGUu1k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ilIRnfCX2IMfOHYc9qygVQ7gs3ZJHi1xvtlDsULEKrGRSQcNVgAWPpKa8u9Yznb+4
	 ZrHy0Hgf6z26Oh10/wXCBY0XMeZS4UbeoQ8/02iUccl+Kv7pdck5c2dMF1p/77JLv4
	 SF0sGw26WeOtqgOKwKm3jJYgI+kUJG/EemC3ohi3WWLqv1j755c2FSG2eueA6nHt4o
	 lSoxP+YDI5Aw96mwq2q5JqmdxLdV9GBfqVaxRNhd9MBu7Y20HRUEwx9T4ksjCWCHO1
	 oukzoMq28Z12OUqyjVOg7N8pMfE8B1C+JJEuZkMlmIMuLDyM2fmLhKgzG0JTGL47aN
	 /emSPme8p9eew==
Message-ID: <b272c3e3-ccfc-49ab-bc0b-242cd01161e3@kernel.org>
Date: Tue, 4 Jun 2024 10:51:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/13] PCI: dw-rockchip: Add endpoint mode support
To: Kever Yang <kever.yang@rock-chips.com>, Niklas Cassel
 <cassel@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Jon Lin <jon.lin@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <05b1bfa3-4284-4820-b0f6-124e08088456@rock-chips.com>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <05b1bfa3-4284-4820-b0f6-124e08088456@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_185135_405054_1F62EE61 
X-CRM114-Status: GOOD (  12.75  )
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

On 6/4/24 10:45, Kever Yang wrote:
> Hi Niklas,
> 
> On 2024/5/29 16:28, Niklas Cassel wrote:
>> Hello all,
>>
>> This series adds PCIe endpoint mode support for the rockchip rk3588 and
>> rk3568 SoCs.
>>
>> This series is based on: pci/next
>> (git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git)
>>
>> This series can also be found in git:
>> https://github.com/floatious/linux/commits/rockchip-pcie-ep-v4
>>
>> Testing done:
>> This series has been tested with two rock5b:s, one running in RC mode and
>> one running in EP mode. This series has also been tested with an Intel x86
>> host and rock5b running in EP mode.
> 
> I'm interesting how you test in Intel x86 host, PC scan the PCIe device 
> in BIOS, do you
> 
> power on the EP before PC power on?

Yes. Same with any host, not just x86.

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
