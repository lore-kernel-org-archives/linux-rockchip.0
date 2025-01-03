Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C074FE7718F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jan 2025 09:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6j/B/zZLeG8tXYNBaapQThOVqpxkp0frPMznIa/OUM=; b=QqIjdXpIMqq94A
	e/yLtjqV+6iwWvWqPevrD6Ccq6HXCKE3uBl/6iVUpTxTq4DTE7DXTdG4HNaW8E3RkQOcqYBOxsF8k
	ZoFfAg9NBsVur2R4MS6rlXhj3zvKW2XqmBAywx4q+RfuCrPeSStJjOzkonJM2aXmotL65grKpo2Sp
	fCVd8X+nRBaPCzDb3B97+Wo+lBxUG2JU/cGRpmGS9QqkdiefbDXaZ1CO0xnWoNtzaKVdKfPgEkAj4
	YhdEnzGuDziqR8FU4FK0ePZm3+kckZi/lCi8WdA+QKS1YHEoKYCthGTQb9VBkIeKFa8UYkZFDYYvL
	knr1fEl2jgKIAz+O/wCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTeKd-0000000CfRb-1Jig;
	Fri, 03 Jan 2025 09:51:03 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTeKZ-0000000CfQt-42i5
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jan 2025 09:51:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 65B08A404E3;
	Fri,  3 Jan 2025 09:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34419C4CECE;
	Fri,  3 Jan 2025 09:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735897857;
	bh=H2Tn3QQHdE8KgsAg7KeLhSP8MekEW26c5Lb3yvzZBfk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Etyo59LybjO+m6PwWqogt5jV5ePBKAmKrl0/CGxdM7uWD+yzw3QYVBUqkFDXQA8fq
	 RfJVIo36Rb4K2NPHTtX+aIJK/RWGRAHucOUG6iYB0WVBSQwa9wgDshk93EBPnZcA0o
	 N/5WZhwGOd5qu8cbgkWlIGmBHx2sJlRWyZ+oWxtRxEkEvaglUfwN2d1ObVD8aRUjfv
	 C2pSfQCq4B1zmI2ijXOlxznBDW23JA3P9nCNkjOrHsJXJWL2CcQC10mDSp8LolquAM
	 M/3511Hs4sXQQgI6mDmzJvXMD5dRMha//VHwCV+tkBCmS3KlI4QHaDAJgOz7KzY8ZU
	 m+m2KCfIfBO5w==
Date: Fri, 3 Jan 2025 10:50:53 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Pei Xiao <xiaopei01@kylinos.cn>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] PCI: dw-rockchip: remove redundant dev_err
Message-ID: <Z3ey_QaI56jJZWRH@ryzen>
References: <cd0312093fc04a0d13467660bafb2b3a48b29332.1735887742.git.xiaopei01@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd0312093fc04a0d13467660bafb2b3a48b29332.1735887742.git.xiaopei01@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250103_015100_084110_623F4D9C 
X-CRM114-Status: GOOD (  16.33  )
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

On Fri, Jan 03, 2025 at 03:04:52PM +0800, Pei Xiao wrote:
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

You did not CC: linux-pci.

Patches for drivers/pci/controller/dwc/pcie-dw-rockchip.c are merged via the PCI tree.

Please send a V2 to the proper list.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
