Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F14BC05027
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 02:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+oUljjnW2NBtSV2pcanQjDLeJ5z0nQgmqoLKxW36MTA=; b=d0liGSnPp3kmVb
	QBtAGCYYI+8jeZb7WZiuub1/kBtThiVxML42oJwPqdoBEdk54VDZue4q1cJcfqyAxTfrCRWSLueNW
	w6FobH+66DBEg5xclk2bHLvgh058mQcuKrhFG5faUg+vMxiwFSJgHGfozQhSvPk09oGQs3uJlbhYs
	MfHSB193mzX6a+TkoblDPynm2SSkIh5wsiLWgkqHbGSWAZcvkbhm0Ky+eDDsmno5Kg/s6UoNbfihH
	RRUFch3ziw0HuCadnTewxqeQfHhz4akyuhvP+i/rfYSk50I8q0niAT+6r2NkOaXEdoexzPzOsHGXe
	WvFdff5Cl60dRPDmoWGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS7hL-004PfS-Qt; Wed, 15 Feb 2023 02:39:07 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS7hB-004Pb7-Uf
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 02:38:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676428737; x=1707964737;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=LRGknKhxil6Qohqe+Jm3wtRMBjwrnnr85uMuaDhF6bI=;
  b=L2Lc9J39N6VF0bBx+z/QBKgWz60ZRGRx7YSdNbzWtN2aizvUsTBz/IlP
   gDTkJi2LsB9grqnhT0dIRCRLOizTEaPGD0W6k9wGE0dTS1pIqUUU03G9e
   AZhWRAyAvtNMvbRIMC6PAYJrrGy/4J+/3dFiqDpAJwVkjwqca3ZrVszhT
   7rLwQSIzHGJjeuaA7h3DUr7it2SGbCUHQ90JVm6y+xYNQxWJ1k8Lj6NEV
   ukuSdMvtHhwSGi3S9bKVm/waWanS0a1VEcspQx39xRX57pGxFuimqx93U
   HeLnxEXQOiadV5oj/ujTD7vbrjHndcD7z4SQ3JUx5jzZVFbAeCR905ZKe
   w==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="221626864"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 10:38:55 +0800
IronPort-SDR: q15Y8+Lz33QGxA26UEifEdAaB1uffqNEE+bNdxMwlJpZ6LveG/y+N9qf3ytsl6MCyrRZ+Qbzls
 CVNK8gVRkYZ5ljalayxP5DB7ojefV05Nl91DXhArdVLe4D9RyVz8jZoDQPL21PbxurEy3XLHzo
 yi/YOUtO8NE/SpPVjpnCfi9ZRQh3cHFFgV/1b6BSwIXkSOaOhA+JyF9X1OIdv0G0AUyo7lKA+m
 Bx52/2NZXQEIlxulDKP+LH0k8XgVUehIQc9KEUSXRlPZU1ZNMAMxnRmZWWWQSQ6AoAO7xItVlp
 q7A=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 17:50:17 -0800
IronPort-SDR: oHlDuT/Tsd5wjzyv+JMnO/LwbTwnYHsIgyiTnqo34oq3wEQYCu57lvqOi24qBg1rFCBvx2AFfb
 6rTFmYixMQ7QHZUXfowCHa+SjAXnrVXPtObOo9RSEa73tdLxcIKzRDthRyXZOpHzjnKPnuaA4Q
 r39nn2Mc60HF4z5bknhRrcp5ZkvQjDMHiPzMei4gnFfqfXfTgmilgooHabJf5nnj9EKrx4hW9o
 jy1sV2A/5v4zrSxMM+gZ/Jw7OVwgw+/xHYhXjxp1xZCoeaZzR0tRVWMxSDQootv3g0SQ4s69cG
 jII=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 18:38:54 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGj270639z1RWxq
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 18:38:54 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676428733; x=1679020734; bh=LRGknKhxil6Qohqe+Jm3wtRMBjwrnnr85uM
	uaDhF6bI=; b=HFn/XTBOmCRXwNl1rv11Q40ZgxO+WDnGEOvySfbGvYcTidahx62
	0dVss0hxRSODx5fmEDRcNRrAHVRULPb3zexnP5C/mfGiyT6aeU3BOxWRtMwjOJ20
	B2GOfq0VTpQeTF8/ZoDgSiQst/+PTxvXfh06iiHVdxMPDEaffExqQK3d6zbPOb/k
	aJcrxb8uak5xKl3NmDtG0eMHfhOaCoDo67SwHXZbY4nVgVeQD6CutSyDih5ZtImx
	5eh8YjmMo6I2absY993+zR8I2QAFKKlc2fVkSODrt/eTiSxshauQ8EXXvLSpw2Zm
	oIr7IE34agdo4CiA1rbFyt7aWmy7dWyz3mw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id xddUMfPS_ZmI for <linux-rockchip@lists.infradead.org>;
	Tue, 14 Feb 2023 18:38:53 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGj222VYbz1RvLy;
	Tue, 14 Feb 2023 18:38:50 -0800 (PST)
Message-ID: <ccdc6924-c35f-4a29-fabb-587271fc929c@opensource.wdc.com>
Date: Wed, 15 Feb 2023 11:38:48 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 7/9] PCI: rockchip: Fix legacy IRQ generation for
 RK3399 PCIe endpoint core
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch, stable@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-8-rick.wertenbroek@gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-8-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_183858_063905_FD1E2E43 
X-CRM114-Status: GOOD (  19.85  )
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

On 2/14/23 23:08, Rick Wertenbroek wrote:
> Fix legacy IRQ generation for RK3399 PCIe endpoint core according to
> the technical reference manual (TRM). Assert and deassert legacy
> interrupt (INTx) through the legacy interrupt control register
> ("PCIE_CLIENT_LEGACY_INT_CTRL") instead of manually generating a PCIe
> message. The generation of the legacy interrupt was tested and validated
> with the PCIe endpoint test driver.
> 
> Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 38 +++++------------------
>  drivers/pci/controller/pcie-rockchip.h    |  6 ++++
>  2 files changed, 14 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index cbc281a6a..ca5b363ba 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -328,45 +328,23 @@ static void rockchip_pcie_ep_assert_intx(struct rockchip_pcie_ep *ep, u8 fn,
>  					 u8 intx, bool is_asserted)
>  {
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
> -	u32 r = ep->max_regions - 1;
> -	u32 offset;
> -	u32 status;
> -	u8 msg_code;
> -
> -	if (unlikely(ep->irq_pci_addr != ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR ||
> -		     ep->irq_pci_fn != fn)) {
> -		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
> -					     AXI_WRAPPER_NOR_MSG,
> -					     ep->irq_phys_addr, 0, 0);
> -		ep->irq_pci_addr = ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR;

By the way, ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR is now unused. Remove it
too please.

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
