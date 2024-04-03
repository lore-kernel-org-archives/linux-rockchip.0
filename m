Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F160CD1288
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 07:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5w+FOjYdhKMMBl+g6dlgzafSl4+6qosc2bj5x4i44M=; b=3oUZy2hacMP+dE
	CX5cjulmcqJiY4SHsHNgYh+5n0OVl4pl8WSTNR8sQhVPC3zDmgymlk+RdA3WhZHHzyJvpCKQSiQgv
	MmROrHLWwM2LdICSMf/7RDY6Q3EWTcX3gnSb1LFfTrUWUSvJaFtRlZ2OF/61A7Jqu5CQIGtwZTttv
	nAsdoiJ/wrEIjWtiS/lt1szYycHBCvyhx0S/jHhfKNRUVCX+fNBqTztc2S59UtGPoI9gllON2QA23
	xB+389uEbQro+Eqva1+G6fgeWM84OXYJ7ic1vDKAW7lvWqqipHvv1QGUUCExT/YDSGIPPramJGpHL
	e51DDAnH2F4HQsUrt3rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvWG-0000000EgiV-3eIO;
	Wed, 03 Apr 2024 07:58:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrvWB-0000000Egeu-1XuX;
	Wed, 03 Apr 2024 07:58:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CBB3461295;
	Wed,  3 Apr 2024 07:58:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD8A6C433F1;
	Wed,  3 Apr 2024 07:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712131126;
	bh=rff1smmYpqyVpVVfAiWjpMpTYNbLSpbWFwSmqO/3U4g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Mxf93bp6wDizDIACTo4UdoDT5pg99FD2NqYFnuCZMDNdqh6VsEeWgF+VKKwu1x43i
	 P+5tYJSLJWqv/gy7hxE/lNOQ4Suik163ZcbxSP+RBZdHCnvBxikA4xXjnb8QSt5taY
	 hkG+omhxKCxYgQrZxOWXEZ2a92soCc2fzkeX84hURgDFbHp2+qn78zUVmNmvBG32VB
	 oKJgyXLeDksYFuH71EZaIGxi5LD+bQq49jT2P3J3owdEL+h0oaXAvZXh2oiHM67OQH
	 JG1z2uIMMMtW5pHoz1BEGR3CfY2/+14nsN1ZdqW6Zk65aSOgttY35xhGInQ5L2x69Z
	 W2+sPk5raT2CQ==
Message-ID: <2cdc7045-e277-4d1f-ad7c-66e4ac819a41@kernel.org>
Date: Wed, 3 Apr 2024 16:58:42 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/18] Improve PCI memory mapping API
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, Niklas Cassel <cassel@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240403075034.GF25309@thinkpad>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240403075034.GF25309@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_005847_557624_DF4F5D13 
X-CRM114-Status: GOOD (  20.34  )
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

On 4/3/24 16:50, Manivannan Sadhasivam wrote:
> On Sat, Mar 30, 2024 at 01:19:10PM +0900, Damien Le Moal wrote:
>> This series introduces the new functions pci_epc_map_align(),
>> pci_epc_mem_map() and pci_epc_mem_unmap() to improve handling of the
>> PCI address mapping alignment constraints of endpoint controllers in a
>> controller independent manner.
>>
>> The issue fixed is that the fixed alignment defined by the "align" field
>> of struct pci_epc_features assumes that the alignment of the endpoint
>> memory used to map a RC PCI address range is independent of the PCI
>> address being mapped. But that is not the case for the rk3399 SoC
>> controller: in endpoint mode, this controller uses the lower bits of the
>> local endpoint memory address as the lower bits for the PCI addresses
>> for data transfers. That is, when mapping local memory, one must take
>> into account the number of bits of the RC PCI address that change from
>> the start address of the mapping.
>>
>> To fix this, the new endpoint controller method .map_align is introduced
>> and called from pci_epc_map_align(). This method is optional and for
>> controllers that do not define it, the mapping information returned
>> is based of the fixed alignment constraint as defined by the align
>> feature.
>>
>> The functions pci_epc_mem_map() is a helper function which obtains
>> mapping information, allocates endpoint controller memory according to
>> the mapping size obtained and maps the memory. pci_epc_mem_map() unmaps
>> and frees the endpoint memory.
>>
>> This series is organized as follows:
>>  - Patch 1 tidy up the epc core code
>>  - Patch 2 and 3 introduce the new map_align endpoint controller method
>>    and related epc functions.
>>  - Patch 4 to 6 modify the test endpoint driver to use these new
>>    functions and improve the code of this driver.
> 
> While posting the next version, please split the endpoint patches into a
> separate series. It helps in code review and can be applied separately.

Which patches ? They are all endpoint related:
 (1) Core code
 (2) test function driver
 (3) rockchip rk3399 controller

(2) and (3) depend on the patches in (1), so splitting the series is a big
possible only if (1) is applied first, so that is a source of delays and breaks
the context of the patches...

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
