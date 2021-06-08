Return-Path: <SRS0=ZuRO=LC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 214F1C47082
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jun 2021 06:49:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7306861027
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jun 2021 06:49:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7306861027
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wz13qilpUbeUS84sQx2TEfLJKWq01IbyLiNJgjCWag=; b=0q4qqVr5VpYYu5
	g6oqdiCaET1VGpfS6S65wwrrXirtQ4q05CQ8cysL7G4InvpEE/HX43a0d2J9bWRYPi0B3TRoLWCT7
	InYKbLUrvayVoahhj4amzLYGZkkgYmHBCtukgtRFPfesg6LTG6PBWtCCvu2doF5czPZOiqp9vIpLs
	I1J9pHx95yvE2zGio7CSw3myUX1QQd54rIctiqWKIsAC4Wlf8BbnUwaLzNIV/4pB8lBTO60TYVFxC
	LnbOYMrQCI0Qn1ERDIoI3BQH7x4HEk7D75xn9JeMz8CO67UEXjwDRI0PBNTARA9N6P5cKNYndbKcI
	NOX1LJTHhM9PCZIXokGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqVYD-006kxA-Rh; Tue, 08 Jun 2021 06:49:25 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqVXn-006kp9-2S; Tue, 08 Jun 2021 06:49:01 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id 92D1C1B43;
 Tue,  8 Jun 2021 14:48:47 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.64] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P30809T139674015004416S1623134925256256_; 
 Tue, 08 Jun 2021 14:48:46 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f6723536972b33749120c29e955b16f5>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: javierm@redhat.com
X-RCPT-COUNT: 11
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Message-ID: <c3f49fe5-edbe-2889-bd59-92891adc807b@rock-chips.com>
Date: Tue, 8 Jun 2021 14:48:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101
 Thunderbird/90.0
Cc: shawn.lin@rock-chips.com, Peter Robinson <pbrobinson@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_PCI=3a_rockchip=3a_Avoid_accessing_PCIe?=
 =?UTF-8?B?IHJlZ2lzdGVycyB3aXRoIGNsb2NrcyBnYXRlZOOAkOivt+azqOaEj++8jOmCrg==?=
 =?UTF-8?Q?=e4=bb=b6=e7=94=b1linux-rockchip-bounces+shawn=2elin=3drock-chips?=
 =?UTF-8?B?LmNvbUBsaXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
To: Javier Martinez Canillas <javierm@redhat.com>
References: <20210607213328.1711570-1-javierm@redhat.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20210607213328.1711570-1-javierm@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_234859_509082_DE4888D7 
X-CRM114-Status: GOOD (  30.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 2021/6/8 5:33, Javier Martinez Canillas wrote:
> IRQ handlers that are registered for shared interrupts can be called at
> any time after have been registered using the request_irq() function.
> 
> It's up to drivers to ensure that's always safe for these to be called.
> 
> Both the "pcie-sys" and "pcie-client" interrupts are shared, but since
> their handlers are registered very early in the probe function, an error
> later can lead to these handlers being executed before all the required
> have been properly setup.
> 
> For example, the rockchip_pcie_read() function used by these IRQ handlers
> expects that some PCIe clocks will already be enabled, otherwise trying
> to access the PCIe registers causes the read to hang and never return.
> 
> The CONFIG_DEBUG_SHIRQ option tests if drivers are able to cope with their
> shared interrupt handlers being called, by generating a spurious interrupt
> just before a shared interrupt handler is unregistered.
> 
> But this means that if the option is enabled, any error in the probe path
> of this driver could lead to one of the IRQ handlers to be executed.
> 
> In a rockpro64 board, the following sequence of events happens:
> 
>    1) "pcie-sys" IRQ is requested and its handler registered.
>    2) "pcie-client" IRQ is requested and its handler registered.
>    3) probe later fails due readl_poll_timeout() returning a timeout.
>    4) the "pcie-sys" IRQ is unregistered.
>    5) CONFIG_DEBUG_SHIRQ triggers a spurious interrupt.
>    6) "pcie-client" IRQ handler is called for this spurious interrupt.
>    7) IRQ handler tries to read PCIE_CLIENT_INT_STATUS with clocks gated.
>    8) the machine hangs because rockchip_pcie_read() call never returns.
> 
> To avoid cases like this, the handlers don't have to be registered until
> very late in the probe function, once all the resources have been setup.
> 
> So let's just move all the IRQ init before the pci_host_probe() call, that
> will prevent issues like this and seems to be the correct thing to do too.
> 

Acked-by: Shawn Lin <shawn.lin@rock-chips.com>

Thanks.

> Reported-by: Peter Robinson <pbrobinson@gmail.com>
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> ---
> 
>   drivers/pci/controller/pcie-rockchip-host.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index f1d08a1b159..78d04ac29cd 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -592,10 +592,6 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
>   	if (err)
>   		return err;
>   
> -	err = rockchip_pcie_setup_irq(rockchip);
> -	if (err)
> -		return err;
> -
>   	rockchip->vpcie12v = devm_regulator_get_optional(dev, "vpcie12v");
>   	if (IS_ERR(rockchip->vpcie12v)) {
>   		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
> @@ -973,8 +969,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>   	if (err)
>   		goto err_vpcie;
>   
> -	rockchip_pcie_enable_interrupts(rockchip);
> -
>   	err = rockchip_pcie_init_irq_domain(rockchip);
>   	if (err < 0)
>   		goto err_deinit_port;
> @@ -992,6 +986,12 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>   	bridge->sysdata = rockchip;
>   	bridge->ops = &rockchip_pcie_ops;
>   
> +	err = rockchip_pcie_setup_irq(rockchip);
> +	if (err)
> +		goto err_remove_irq_domain;
> +
> +	rockchip_pcie_enable_interrupts(rockchip);
> +
>   	err = pci_host_probe(bridge);
>   	if (err < 0)
>   		goto err_remove_irq_domain;
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
