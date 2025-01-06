Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9E0BE77188
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jan 2025 11:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFfpqlBpHhNlgoERnaJUY3G7zVJSSuVCcuepfi9mm50=; b=ZV+yI3/edZBwTq
	GRA/v4WTgDQ+PfGlqYEF7KCmxVaW+EIeEBUbz4QXkJEV/X3es1XAPV/1tXzmnSiSUs8vdJsaqba56
	3MDr/tzBZvWJ+hKu8SMlikLpdKfMlxJ3xZaX/djElGD9V60atFsMOih+nmLY3yMrmNf9KGeTOmhHM
	I6v1vITuekhDJeP4o3nLHrLY+tS3qjDqUrpPQwUejDV3LauF6Yn3kQI/YZnZCtTOE1skpvowZ+Uj8
	qdFVzVnt4Sg/yeWgwCyCNrzM+zw1aBs+0Zr/GMDCPmx6MUPzxPByAuDw9EHTDawug+k5o1IjVhR3z
	ub5GsK7/tbhhIBlZ+7mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUlQC-00000001461-0QVJ;
	Mon, 06 Jan 2025 11:37:24 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUlOy-000000013nV-1sQd;
	Mon, 06 Jan 2025 11:36:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 86382A41595;
	Mon,  6 Jan 2025 11:34:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2479BC4CED2;
	Mon,  6 Jan 2025 11:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736163367;
	bh=LBUAxpsmYNXZIFglggMMgniIO0kuiGahee6e3Q3OKnI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MlWRZbjtf4gKUzYYZH+8KgpJiXwlSsEJyANSob7yODDCDbUlHN+ikT7MdfO22zqZi
	 jcJ1UobMrlmUCNb69sLUOtvqJOqHC2nUfcA3Anx1hsfR76jVeh2fiboToNB3kjhZg/
	 RUT3CqE5oockJapAyDM/wBE/gn2ATj4jLtEfFo/PE0iaOLl++ABclgMkyvZ6nt845z
	 Sb2QBdD6/qk1zOtA2tIXccSGQZlrFMH9DqkItq9uEYtZNdOTOyliWdnlB2E96TbM78
	 3YLF5EVLKT5zaprK7L7Q7cIsW7uzwuX5GFOuvQwG9MIqfgY6AypnYjtwbkRrqi2uGS
	 kfKBU91gKN6rg==
Date: Mon, 6 Jan 2025 12:36:02 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Pei Xiao <xiaopei01@kylinos.cn>
Cc: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	lpieralisi@kernel.org, kw@linux.com, heiko@sntech.de,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH v2] PCI: dw-rockchip: remove redundant dev_err
Message-ID: <Z3vAIksxz9rVqLF9@ryzen>
References: <327718207d3cd72847c079ff9d56eb246744c182.1736126067.git.xiaopei01@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <327718207d3cd72847c079ff9d56eb246744c182.1736126067.git.xiaopei01@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_033608_564628_3AA8C134 
X-CRM114-Status: GOOD (  17.34  )
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

On Mon, Jan 06, 2025 at 04:14:04PM +0800, Pei Xiao wrote:
> dev_err is redundant because platform_get_irq_byname() already prints an
> error.
> 
> cocci warnings:
> 	drivers/pci/controller/dwc/pcie-dw-rockchip.c:454:2-9:line 454 is
> redundant because platform_get_irq() already prints an error
> 
> so remove redundant dev_err.
> 
> Fixes: 8719dbc54668 ("PCI: dw-rockchip: Enumerate endpoints based on dll_link_up irq in the combined sys irq")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202412312343.najrW1Db-lkp@intel.com/
> Signed-off-by: Pei Xiao <xiaopei01@kylinos.cn>
> ---
> V2:add to pci list
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index ce4b511bff9b..a9795866e915 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -458,10 +458,8 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
>  		return -ENODEV;
>  
>  	irq = platform_get_irq_byname(pdev, "sys");
> -	if (irq < 0) {
> -		dev_err(dev, "missing sys IRQ resource\n");
> +	if (irq < 0)
>  		return irq;
> -	}
>  
>  	ret = devm_request_threaded_irq(dev, irq, NULL,
>  					rockchip_pcie_rc_sys_irq_thread,
> @@ -504,10 +502,8 @@ static int rockchip_pcie_configure_ep(struct platform_device *pdev,
>  		return -ENODEV;
>  
>  	irq = platform_get_irq_byname(pdev, "sys");
> -	if (irq < 0) {
> -		dev_err(dev, "missing sys IRQ resource\n");
> +	if (irq < 0)
>  		return irq;
> -	}
>  
>  	ret = devm_request_threaded_irq(dev, irq, NULL,
>  					rockchip_pcie_ep_sys_irq_thread,
> -- 
> 2.25.1
> 

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
