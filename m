Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 829DBFEE4CC
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 06:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=beXV7zlu5BGD7aqemqB0eQ7ka9nLS6D9AoLSapFTolg=; b=Cd8DJfjEuIGVvd
	uWGx5EGQC8G5K/DvD8RtKdVCrqtDMQVMGsJkqhIrO98fuEUdOzZpn2CR6vhIm3QvFB4VWWNkF0VaJ
	CzOAkHmOoyWNtEByKLTXBCR4a/lysuJkhs5IiBkmxqaE1e6h9KDHmuOryktIozc1VtzGG+sBJ/dYr
	qGLbTsHeCW7U4BaVj18L6isyyY8k6oLve91GO4N3Kfiv4YaPQQmnw4U9XseYB3dU58SL+DmD7fPHM
	Xjdcm6SuWEF7Se10zUdQ+6YoFM0aSZ8RKzVoDljfVq9DCj4jzTQLC15R+idLfFp52FRYWFUdlK6fa
	wHocz+7i4b441MNH9RLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwDdD-00000009XRm-38ZK;
	Sat, 28 Feb 2026 06:16:51 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwDdA-00000009XQq-3NW5;
	Sat, 28 Feb 2026 06:16:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id DD03E41FA1;
	Sat, 28 Feb 2026 07:16:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1772259405; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=oCnDQ+Cgo3/mYIp2xchNf+7hSQRwKXW3o25K0mtFwcg=;
	b=mifTh5yIJLK1ISJhkH0iQu8WWSc8bdFeddn4Bp5PB7nMjY9UEFnsVtKWrT9n/hsh0rne8i
	Q1yNpcyfqlgTB/53328QujCxxaH7fzv40A1VNIE89O768UOfgljFJgqGzidJ29diO9PQsS
	Ye7udeuU/vN67DmhhUc5gEvXgFhzjVSSvuh2VomTnA+m9wsgCaYLCxKBsXTNL8bKr+FHcI
	5HuHwxB35suC08+u8pJ+s/f+7uvZypjgz+jAyCmawmiil56itFfTWuffodL8OjsFlq/nw8
	SjCs+hwYo0VRKnpGXrXwCOgSZym6l56fcwJ4aVijGMKkw3/ROO5hbaFaK/pgBA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <2a0a4aa97bb8b0cb511cb651c5d66c9ec8bab97a.1772239598.git.geraldogabriel@gmail.com>
References: <cover.1772239598.git.geraldogabriel@gmail.com> <2a0a4aa97bb8b0cb511cb651c5d66c9ec8bab97a.1772239598.git.geraldogabriel@gmail.com>
Date: Sat, 28 Feb 2026 07:16:41 +0100
Cc: "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Geraldo Nascimento" <geraldogabriel@gmail.com>
MIME-Version: 1.0
Message-ID: <d2b91260-7666-3606-69ec-0e7cb7a48c02@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v5 3/4] =?utf-8?q?PCI=3A?==?utf-8?q?_rockchip=3A?= 
 drive at =?utf-8?q?2=2E5?==?utf-8?q?_GT/s=2C?= error other speeds
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_221649_229683_0EBA2D7E 
X-CRM114-Status: GOOD (  23.80  )
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

On Saturday, February 28, 2026 01:55 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> Configure the core to be driven at 2.5 GT/s Link Speed and ignore
> any other speed with a warning. The reason is that Shawn Lin from
> Rockchip has reiterated that there may be danger of "catastrophic
> failure" in using their PCIe with 5.0 GT/s speeds.
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
> Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> Cc: stable@vger.kernel.org
> Reported-by: Dragan Simic <dsimic@manjaro.org>
> Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> ---
>  drivers/pci/controller/pcie-rockchip.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index 0f88da378805..2f211d1f4c7c 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c
> @@ -66,8 +66,10 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
>  	}
>  
>  	rockchip->link_gen = of_pci_get_max_link_speed(node);
> -	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
> -		rockchip->link_gen = 2;
> +	if (rockchip->link_gen < 0 || rockchip->link_gen >= 2) {
> +		rockchip->link_gen = 1;
> +		dev_warn(dev, "invalid max-link-speed, fix your DT\n");
> +	}

I'd suggest using a bit more formal message here, like the one below,
which would also avoid addressing the user directly:

  "Invalid max-link-speed found, limited to Gen1 to avoid data corruption"

>  	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
>  		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
> @@ -147,12 +149,13 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
>  		goto err_exit_phy;
>  	}
>  
> -	if (rockchip->link_gen == 2)
> -		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_2,
> -				    PCIE_CLIENT_CONFIG);
> -	else
> +	if (rockchip->link_gen == 2) {
> +		/* 5.0 GT/s may cause catastrophic failure for this core */
> +		dev_warn(dev, "5.0 GT/s may cause data loss or worse\n");
> +	} else {
>  		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_1,
>  				    PCIE_CLIENT_CONFIG);
> +	}

I don't think we need to emit a warning here, because, as we've already
established through earlier discussions, the rockchip_pcie_init_port()
function should never receive an invalid speed value.

>  	regs = PCIE_CLIENT_ARI_ENABLE |
>  	       PCIE_CLIENT_CONF_LANE_NUM(rockchip->lanes);

It would make most sense to squash all three patches in this series
into a single patch, because they all form a single logical unit, which
introduces changes that are just going to be harder to track down later
if it's all scattered into multiple separate patches.

The only possible issue with the squashing comes from the inability to
have different patch subject prefixes for different driver changes, but
I think that's actually not an issue.  The long-term benefits of having
everything as a single patch outweighs the benefits of having different
patch subjects with separate patches.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
