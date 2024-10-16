Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BD74D2069A
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 06:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FH5B+uNBM+LiDnr2KuQESwASlsC6nt4yBDlIhUAADZc=; b=I5qA1QKRSyCUcT
	U7FDal2LFMoD4dCZ62QkopjjsgXJWdcpP33S76Q0y66aZSmHFtv7U3uOFw7VtAM4EmEbsAT3QS2kw
	NQiuSNWMvxlLTSfThQLhOafCeK6deC/w5tM4MEE3GMNQedf8DYinSbF2/SDRMMeLZiD8CEnoglrA4
	jKsEOG5b4abEZ7fOKxLb5wHvtU368ug0A4mn82hCuJRR83Xy3rv+0BX+OZ1/WJ/PXz31yPpxw123j
	EWt/cCFPnDwcKWNJwPV/5zFkqw2wpdKS1qqf5EhNAiUJxkHHZzaPUQsB55UjeHvHY3ab9VaoB18BL
	wr7b1LzgbtevepOB7FGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0xJu-0000000AeeN-2pnY;
	Wed, 16 Oct 2024 06:15:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0xJX-0000000AeYL-33Hp
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 06:15:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0B38D5C5D4F;
	Wed, 16 Oct 2024 06:15:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B421C4CECF;
	Wed, 16 Oct 2024 06:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729059316;
	bh=5QlqQFbsraBNja/vvnJZK7fg7rwhZcLGk4smWz8inKE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pdtNJPvOsWONhQ4vGRNvdcIHe2/KnhvO2wGB3pK1MEx2OrOtuwl5OW4EVdtAsUUZ6
	 QWWWpoesM3mvYrqJhZUx/gbLp5STTQGTuAEyXV7p3yOHmsVbyCIZEgAnyriVjcIqFm
	 BjPkvyzBaM7BIj5zUmXhseKZC1ZP/Kg1svvOf13jtPVaT8lh7oCr5PUZw/YnorVPUG
	 aKuoJfPw93k6v9kEVtmwOM3N/T/jienNKbeKUWtFihPmaQyeo1ZItl9xlBYogfGJMh
	 jSdugkECURoY5qCWWPXGsW5NhojXw9wMD90ZomcucjbO++EA9J8uyQYHx71UyESIWo
	 KXiEknxeMuFqw==
Message-ID: <f13618a6-0922-4fc8-af01-10be1ef95f0d@kernel.org>
Date: Wed, 16 Oct 2024 15:15:11 +0900
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
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <CANAwSgQ+YmSTqJs3-53nmpmCRKuqfRysT37uHQNGibw5FZhRvg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_231519_847938_026374B7 
X-CRM114-Status: GOOD (  15.11  )
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

On 10/16/24 2:32 PM, Anand Moon wrote:
> Hi Damien,
> 
> On Fri, 11 Oct 2024 at 17:55, Damien Le Moal <dlemoal@kernel.org> wrote:
>>
>> This patch series fix the PCI address mapping handling of the Rockchip
>> endpoint driver, refactor some of its code, improves link training and
>> adds handling of the #PERST signal.
>>
>> This series is organized as follows:
>>  - Patch 1 fixes the rockchip ATU programming
>>  - Patch 2, 3 and 4 introduce small code improvments
>>  - Patch 5 implements the .get_mem_map() operation to make the RK3399
>>    endpoint controller driver fully functional with the new
>>    pci_epc_mem_map() function
>>  - Patch 6, 7, 8 and 9 refactor the driver code to make it more readable
>>  - Patch 10 introduces the .stop() endpoint controller operation to
>>    correctly disable the endpopint controller after use
>>  - Patch 11 improves link training
>>  - Patch 12 implements handling of the #PERST signal
>>
>> This patch series depends on the PCI endpoint core patches from the
>> V5 series "Improve PCI memory mapping API". The patches were tested
>> using a Pine Rockpro64 board used as an endpoint with the test endpoint
>> function driver and a prototype nvme endpoint function driver.
> 
> Can we test this feature on Radxa Rock PI 4b hardware with an external
> nvme card?

This patch series is to fix the PCI controller operation in endpoint (EP) mode.
If you only want to use an NVMe device connected to the board M.2 M-Key slot,
these patches are not needed. If that board PCI controller does not work as a
PCI host (RC mode), then these patches will not help.

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
