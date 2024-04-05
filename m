Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BF99C67861
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 13:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IO7mkc75TALQ8lTXPvAEcoUy02IK8xrqiQEj4xlywrY=; b=roMGYInyYCsU9A
	l1UK1tDSE6I6cpnTjJRvRVcLO0zMA6WSDhz8LFalLLeHu8kjB9GzN7YmhtD43kKy9D7PVT6P+OoYQ
	xFSncFOfZJ3OjALNgAbwtMJBoSNa/VTL9dPm8NoyeyqxJbJpjnmXZp4nBLB5e/D/xrYa/sCn9okZ3
	Qn8gioFvp/FWP3TMU16HUc7uvyGJ2XvP2qQUl2PRxR86CpDfxSDqv62PTPHq52VAGgjYo76Sd4lC8
	o8UqJPsprKOOlAFGeT3C4X/If2b/IoqgIqqpGsrUw/5TSb35GXVlL2bRUGD4X/qD+nLUwq9kQ/W2e
	WgsInhWcaHxyBObPyqIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsjhO-00000007Eu2-0EhQ;
	Fri, 05 Apr 2024 13:33:42 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsjhJ-00000007Esj-3q7B;
	Fri, 05 Apr 2024 13:33:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E3F39CE369D;
	Fri,  5 Apr 2024 13:33:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EF58C433F1;
	Fri,  5 Apr 2024 13:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712324015;
	bh=zfEeXh3hz25nDeq9dAo0iY9I4+qJizPHM4+Hki6OxD4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RBlURaLrFBp1q2lYBiEiNbuJxjgEpFiuQO3t9ZQdjV4T24hplKn2qODVKd/6j7rKY
	 xpr5VtNZVRz8lS4VG76mWHUZnEWv4TD4GY4VWlOBJHOR2Ms8A7scVANGaXzXB6DkxE
	 5DlqbxBlew7Ko3emEWT1ERVFUUyn9sNNW8hDRLwFQjkMwMc0nT6e5TUqlv6a72moFR
	 8ILiJGYHMSUf07W6OPLKy/9Zq26BChP7WKtwcG0O1BTKSFumpjKGr71ZuirCloJs3/
	 N5dRgMkN9XyKnItvKsbeCjfpUpt0j3AW+C+hKKQFulSoiCz5BdHLTBLhkG15kB/CHs
	 /6AwBuyHdaYdg==
Date: Fri, 5 Apr 2024 15:33:28 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>
Subject: Re: [PATCH v2 01/18] PCI: endpoint: Introduce
 pci_epc_function_is_valid()
Message-ID: <Zg_9qNgh4KZIoHMX@ryzen>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-2-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240330041928.1555578-2-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_063338_233605_9B5F48BD 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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

On Sat, Mar 30, 2024 at 01:19:11PM +0900, Damien Le Moal wrote:
> Introduce the epc core helper function pci_epc_function_is_valid() to
> verify that an epc pointer, a physical function number and a virtual
> function number are all valid. This avoids repeating the code pattern:
> 
> if (IS_ERR_OR_NULL(epc) || func_no >= epc->max_functions)
> 	return err;
> 
> if (vfunc_no > 0 && (!epc->max_vfs || vfunc_no > epc->max_vfs[func_no]))
> 	return err;
> 
> in many functions of the endpoint controller core code.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
