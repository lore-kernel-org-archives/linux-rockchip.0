Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 844BCCD98E4
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jun 2026 19:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzrRbVOoNFTCzVokKcBi/Y/eJQBx6Qh3OMFlciws8W4=; b=UmXwQb6uzGBInV
	IBPEeBuyhnfE1SfY7Fd64jthfNakGK7QQfw6Kr5poPe4DHRkFYUvUgybboZ1g8NebMqOHkNk/aKSw
	WnspwbihbJUV6cFSgjZ3QCXpez3G+8xeFnN+yTMLCXsrvXQje/yPhLHwlSNml+MRu4V5lQcP2kDp3
	3JJql5DTG6/SXc7hRIByv/e9EfTmDpd1G4yQYWm0DsTBy9Gjza2L9Ltr7rDuBUmP2ajcYcTfEZbcm
	+QWdAroP2yCSDgGEwyCcUI+JZImTh/mhjuBL3KT2b3qUDxeii03FERkszPTU2HX1IyHfHRtDPm5O4
	64ku+DwzEKsjljpVKpXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZZ7q-0000000GEy3-2Fki;
	Tue, 16 Jun 2026 19:07:06 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZZ7n-0000000GExN-0UqQ;
	Tue, 16 Jun 2026 19:07:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 14A5440F83;
	Tue, 16 Jun 2026 21:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1781636817; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=rWbzq0uUdK4mFc78V/pvFY8rAJ0udBH3buweyPX5lrI=;
	b=H0W94XPl48hsbbXQ2SyO03bHTFLcwPP9aM8P635mYQvR3IyOnoypWLdfbsVfBP4qCKYEjs
	da8VEHALEE5FH4gCG8QlB3eUUd+bRYXY/wL8OfJFWFcp3xF1SQejESbkasoPR66waonOYo
	W7rA8txp6zhNe5wTG6mpzEHxGt5XRRkUe+EmFCP1XWPopHJaMxrYUBCtAmJyHDTPCF5BJm
	MXvcuYAFOJhBwHB4p0npZ+BN+pcEItu4UDfKfUFPOu1nnRZqxDxuSpEKcgcyY2/YbZz7jE
	nfssXJgS2Gefr+T5upBSyUdC6nnzrHecmNBXIHgRhj+vr8yIIbui1Q9xFAEZ7A==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <d994f8fb3481bbb8f3972f117334a6e8aea383fb.1781622998.git.geraldogabriel@gmail.com>
References: <cover.1781622998.git.geraldogabriel@gmail.com> <d994f8fb3481bbb8f3972f117334a6e8aea383fb.1781622998.git.geraldogabriel@gmail.com>
Date: Tue, 16 Jun 2026 21:06:53 +0200
Cc: "Shawn Lin" <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Geraldo Nascimento" <geraldogabriel@gmail.com>
MIME-Version: 1.0
Message-ID: <ee80e2c7-8327-0000-5986-e909f0a41df1@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v7 1/3] =?utf-8?q?PCI=3A?=
 =?utf-8?q?_rockchip-ep=3A?= do not attempt =?utf-8?q?5=2E0?= GT/s 
 retraining
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_120703_425071_76983AA4 
X-CRM114-Status: GOOD (  16.83  )
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

Hello Geraldo,

Thanks for the v6 and v7 of this series.

On Tuesday, June 16, 2026 17:25 CEST, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> Drop the 5.0 GT/s Link Speed retraining code block from Rockchip PCIe
> EP driver. The reason is that Shawn Lin from Rockchip has reiterated
> that there may be danger of "catastrophic failure" in using their PCIe
> with 5.0 GT/s speeds.
> 
> While Rockchip has done so informally without issuing a proper errata,
> and the particulars are thus unknown, this may cause data loss or
> worse.
> 
> This change is corroborated by RK3399 official datasheet [1], which
> states maximum link speed for this platform is 2.5 GT/s.
> 
> [1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf
> 
> Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> Cc: stable@vger.kernel.org
> Reported-by: Dragan Simic <dsimic@manjaro.org>
> Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 13 -------------
>  1 file changed, 13 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index 799461335762e..9ebc227a1ef84 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -553,19 +553,6 @@ static void rockchip_pcie_ep_link_training(struct work_struct *work)
>  	if (ret)
>  		goto again;
>  
> -	/*
> -	 * Check the current speed: if gen2 speed was requested and we are not
> -	 * at gen2 speed yet, retrain again for gen2.
> -	 */
> -	val = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
> -	if (!PCIE_LINK_IS_GEN2(val) && rockchip->link_gen == 2) {
> -		/* Enable retrain for gen2 */
> -		rockchip_pcie_ep_retrain_link(rockchip);
> -		readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
> -				   val, PCIE_LINK_IS_GEN2(val), 50,
> -				   LINK_TRAIN_TIMEOUT);
> -	}
> -
>  	/* Check again that the link is up */
>  	if (!rockchip_pcie_ep_link_up(rockchip))
>  		goto again;

Looking good to me, so please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
