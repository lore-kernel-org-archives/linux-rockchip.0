Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8C5EC369C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 13:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pJYiSS7b6OYky8Y7NYeXgsWsavjAFPrBZHSaInvfeA=; b=v7sy0RO+0EE/ib
	/FBo8WeTIvYkX0goIt326lKgw5hodeK/btUe6/Xh6eURP39lGX26tWIk9R8SqjLEpUrre2pc9ZlHr
	1GqW+8JY0sTa2hL3NR6XZGX0ZQXM7kibKtNo3kMq0hoN1sNjzTqsOzCwiuG6m5U1pqd8J6wlLmcK4
	yFYtvMZaLZKdOYGadVn2fmwhK6D9KCe1EBYUfYGQRQg1dfNiw1o0jGRqSqc/heiHkay6LKVpmpz8b
	kxfGMvxWfpbfPppO3K7WEqWwNTPrubtPsCeN4rQpOBWI7yaMs30+O+TfLKTxuNbWL4hpN7gQ7F9C9
	V7+BuHXHqUffkMIaa2xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7DXV-00000007GxL-1oZd;
	Tue, 22 Apr 2025 13:19:53 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7CmB-000000077E2-28xl;
	Tue, 22 Apr 2025 12:31:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B1F9BA4B9DA;
	Tue, 22 Apr 2025 12:25:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFF38C4CEE9;
	Tue, 22 Apr 2025 12:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745325058;
	bh=xKrfLs7qzUWVH8zA5N9jPbcdhMGwcx6yfh8zqByQ+e8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d5/8JozmzsqHMFr9MfAeEsbe5a13Rm5wB6vFbHudtpq6sMRptR/iJgl8XzsF+X0yR
	 1NIDbkxXx+l8/FeBcmi+gOa5RHq9hiEZDvoIw5KpIdWs129N8fmR0IrrXPgb8D5a12
	 y5OwXdylmUPmPs1b1Z9EEplSj5AJ/HCp0u0VAtTU1FyVO6mf96CCiLTDQmO3fEKFB7
	 f1gwCGiHRvXUrF8G0bivHZdAIeW4G0nWdBoIzaOdg1sk7HW+zGvDpwCEE73/c2aCR+
	 5994uqd8N87I/3433Bm1culIf0dK1HyTu91JlMlNNVOq4O7G5y0vbjjjwiPfc8P+1y
	 BC1lIJRQP6I8g==
Date: Tue, 22 Apr 2025 14:30:53 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
	heiko@sntech.de, manivannan.sadhasivam@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, shawn.lin@rock-chips.com,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/3] PCI: dw-rockchip: Reorganize register and bitfield
 definitions
Message-ID: <aAeL_Wr42ETm7S96@ryzen>
References: <20250422112830.204374-1-18255117159@163.com>
 <20250422112830.204374-3-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250422112830.204374-3-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_053059_684861_4A25371D 
X-CRM114-Status: GOOD (  17.03  )
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

On Tue, Apr 22, 2025 at 07:28:29PM +0800, Hans Zhang wrote:
> Register definitions were scattered with ambiguous names (e.g.,
> PCIE_RDLH_LINK_UP_CHGED in PCIE_CLIENT_INTR_STATUS_MISC) and lacked
> hierarchical grouping. Magic values for bit operations reduced code
> clarity.
> 
> Group registers and their associated bitfields logically. This improves
> maintainability and aligns the code with hardware documentation.
> 
> Signed-off-by: Hans Zhang <18255117159@163.com>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 42 +++++++++++--------
>  1 file changed, 24 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index fd5827bbfae3..cdc8afc6cfc1 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -8,6 +8,7 @@
>   * Author: Simon Xue <xxm@rock-chips.com>
>   */
>  
> +#include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <linux/gpio/consumer.h>
>  #include <linux/irqchip/chained_irq.h>
> @@ -34,30 +35,35 @@
>  
>  #define to_rockchip_pcie(x) dev_get_drvdata((x)->dev)
>  
> -#define PCIE_CLIENT_RC_MODE		HIWORD_UPDATE_BIT(0x40)
> -#define PCIE_CLIENT_EP_MODE		HIWORD_UPDATE(0xf0, 0x0)
> -#define PCIE_CLIENT_ENABLE_LTSSM	HIWORD_UPDATE_BIT(0xc)
> -#define PCIE_CLIENT_DISABLE_LTSSM	HIWORD_UPDATE(0x0c, 0x8)
> -#define PCIE_CLIENT_INTR_STATUS_MSG_RX	0x04
> +#define PCIE_CLIENT_GENERAL_CONTROL	0x0
> +#define  PCIE_CLIENT_RC_MODE		HIWORD_UPDATE_BIT(0x40)
> +#define  PCIE_CLIENT_EP_MODE		HIWORD_UPDATE(0xf0, 0x0)
> +#define  PCIE_CLIENT_ENABLE_LTSSM	HIWORD_UPDATE_BIT(0xc)
> +#define  PCIE_CLIENT_DISABLE_LTSSM	HIWORD_UPDATE(0x0c, 0x8)
> +
> +#define PCIE_CLIENT_INTR_STATUS_MSG_RX	0x4
> +#define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
> +
>  #define PCIE_CLIENT_INTR_STATUS_MISC	0x10
> +#define  PCIE_RDLH_LINK_UP_CHGED	BIT(1)
> +#define  PCIE_LINK_REQ_RST_NOT_INT	BIT(2)
> +
> +#define PCIE_CLIENT_INTR_MASK_LEGACY	0x1c
>  #define PCIE_CLIENT_INTR_MASK_MISC	0x24
> +
>  #define PCIE_CLIENT_POWER		0x2c
> +#define  PME_READY_ENTER_L23		BIT(3)
> +
>  #define PCIE_CLIENT_MSG_GEN		0x34
> -#define PME_READY_ENTER_L23		BIT(3)
> -#define PME_TURN_OFF			(BIT(4) | BIT(20))
> -#define PME_TO_ACK			(BIT(9) | BIT(25))
> -#define PCIE_SMLH_LINKUP		BIT(16)
> -#define PCIE_RDLH_LINKUP		BIT(17)
> -#define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)

This patch removes PCIE_LINKUP, without adding it somewhere else
so I don't think this patch will compile.

I think the removal of this line has to be in patch 3/3.



Also, I think that Bjorn's primary concern:
"""
The #defines for register offsets and bits are kind of a mess,
e.g., PCIE_SMLH_LINKUP, PCIE_RDLH_LINKUP, PCIE_LINKUP,
PCIE_L0S_ENTRY, and PCIE_LTSSM_STATUS_MASK are in
PCIE_CLIENT_LTSSM_STATUS, but you couldn't tell that from the
names, and they're not even defined together.
""""

is that the fields are not prefixed with the register name.

the secondary concern is that they are not grouped together.

This patch is just solving the secondary concern.

Since you are fixing his secondary concern, should you perhaps also
address his primary concern?



Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
