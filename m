Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5429CC10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 07:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3DYuKbjvSOPfBNhMQ53ea9lYAJ4ASXUZ9j7ojkcbXk=; b=0YuUfgsUv4w7UL
	GuDn2DLF0Fo3T2W753uJ4wUBqjMfaQTzP3drxGftohT2V/hNlJM3PmuszFmmftLcmGku//s2m/OL5
	JPP9S3pDJsFY0y/yJhg0mNbiF17jrs4y/wm4jQmj2cnSyTYlL9HuIl4TnXcpFue53axtYyhr+LNgq
	deNHXZwBAFEWUngoZkgjfTfvYZYpg3dNEVGd9CEBvqHyVBZuNzNxH3RpM2Qdr6MkM/CvxGZ0yEDRk
	lvMZO8A8ghYdXG9cVWJTRpbmQqq5yC8DXZBEZ9vb6/48g4bnuJscgwHqqR2RmQCmdywZ28UklQ16p
	S1pnL0pFYT9DzSCqk90A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4FQJ-0000000A0bB-1zcJ;
	Tue, 07 May 2024 07:39:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4FQG-0000000A0a0-3CCN;
	Tue, 07 May 2024 07:39:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 57A6B61328;
	Tue,  7 May 2024 07:39:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 609DCC2BBFC;
	Tue,  7 May 2024 07:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715067575;
	bh=rJpFn1AO9QkoOchyzDCE9TfU4pQm9RHy9KJ9ICU1PyM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=L9gF+7FZ6nHYPWp4shMqyCWwss9CfOmgX3yR+TzEemeEu6/MM9FfL5tmUoHUnJxC/
	 Ee0P8hN8UE31H1Lezd8mAQ/SOUYZfehRwVYz0o9KQthH2+fnknhPPlNdflrL1mruLJ
	 nPQTRja9UDNtTkqRDZH4yhbiJu9444DCGyxQFI/99Cuje6MKfp9Q3+9VuTAn+qIucx
	 6EPNF8uPXyEHP2vkM6Z6gfq7RcFbeES9fuwpjlpR/zdX0uS0HMV9vmRc0lPYOb63vU
	 P3oyxFFRNCb1sJvxbK/7Q9GJgE/cPxrWjBqzhBL2qSDgfGTUchkmFvdcE/O/uKkJVw
	 9G9UXN9PNqeLQ==
Message-ID: <41e54b6e-7848-415f-b913-d481509d5e8a@kernel.org>
Date: Tue, 7 May 2024 16:39:32 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] PCI: rockchip-ep: Remove wrong mask on subsys_vendor_id
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, rick.wertenbroek@heig-vd.ch
Cc: stable@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240403144508.489835-1-rick.wertenbroek@gmail.com>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20240403144508.489835-1-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_003936_878105_6ED373D5 
X-CRM114-Status: GOOD (  17.27  )
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

On 4/3/24 23:45, Rick Wertenbroek wrote:
> Remove wrong mask on subsys_vendor_id. Both the Vendor ID and Subsystem
> Vendor ID are u16 variables and are written to a u32 register of the
> controller. The Subsystem Vendor ID was always 0 because the u16 value
> was masked incorrectly with GENMASK(31,16) resulting in all lower 16
> bits being set to 0 prior to the shift.
> 
> Remove both masks as they are unnecessary and set the register correctly
> i.e., the lower 16-bits are the Vendor ID and the upper 16-bits are the
> Subsystem Vendor ID.
> 
> This is documented in the RK3399 TRM section 17.6.7.1.17
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> Cc: stable@vger.kernel.org

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index c9046e97a1d2..37d4bcb8bd5b 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -98,10 +98,9 @@ static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
>  
>  	/* All functions share the same vendor ID with function 0 */
>  	if (fn == 0) {
> -		u32 vid_regs = (hdr->vendorid & GENMASK(15, 0)) |
> -			       (hdr->subsys_vendor_id & GENMASK(31, 16)) << 16;
> -
> -		rockchip_pcie_write(rockchip, vid_regs,
> +		rockchip_pcie_write(rockchip,
> +				    hdr->vendorid |
> +				    hdr->subsys_vendor_id << 16,
>  				    PCIE_CORE_CONFIG_VENDOR);
>  	}
>  

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
