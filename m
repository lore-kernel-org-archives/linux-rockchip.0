Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8937CD98CF
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 19:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+mHvGp6LeKi2FFZKI06YC+lH2orhjtHjhIytc68aXM=; b=WmuZng4hjHX6un
	cHt9mNUyHhGJbm1jQVQa8mNzIUr8SnfaYHd3sENbHoQ+5UY6k26vqUVWG4aexG64thPqwFqvgsWGi
	dJc6gR01W1SOX0PzXSsvKsPOBR3TBAdi8KpS/k3s3wHTcyZTx0yn4ufoGL/YwnL8jvLF8zxLztEl2
	wTmfX3X9YpNDGXBzpJYs25Csq4rR46BOWV4fQ+DLJ2LTx7vQdq0Jl29hpH1xZ5He+Lprb3jfm/6bm
	5uFPs9i7C0OMugDACcg1fpN8FCoiqjDPTt0SoP8xpQoOJbAxGK3Wq7dDwlfwfiRCAdQ/Z0claajQG
	Tb6PdjjmPqQPU/AoYDcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZD1R-0000000EmTC-2xD0;
	Mon, 15 Jun 2026 19:31:01 +0000
Received: from mail-dl1-x1230.google.com ([2607:f8b0:4864:20::1230])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZD1L-0000000EmSP-13Et
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 19:30:59 +0000
Received: by mail-dl1-x1230.google.com with SMTP id a92af1059eb24-137ec563a95so3993059c88.0
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Jun 2026 12:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781551854; x=1782156654; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=w4IpH5LEDaSFvAvPiFPbj5ZjEkRtPbLsUPqVa2w6YN4=;
        b=ojL9TwkyKbAPFg717+JvYGFG3++egrJNgME9vhAPN5Fi8vBJ/sF4fRWmGmtbw9/zoL
         dkPDnDS/iddjqrWD7qE8Mcm4CBqcOZhaAMphTiv6+tC8D1Scs/CUSOSc2e/9aHIluSjP
         JlngjUrX0LWSKMcNfhwKQj01XbFzafDZ60g034I/7ok9/Hz7nF1nVlmAoEq/SXNiIiZh
         +MbbJi9Ci/MIAghfMpAmTi8cWmnnE6tiwMTxtUv6lFsNelCaFVDMzCpmOifMdGh5qRNX
         Pya10DWU5PuyUfl1aul7v1yJJAB3Pf00MzsgzHyxyW8UzP61hf3gv1VKNxB6lnrLUxxI
         oTvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781551854; x=1782156654;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w4IpH5LEDaSFvAvPiFPbj5ZjEkRtPbLsUPqVa2w6YN4=;
        b=RJUe6vdexAUO6XKETyAW/6KNI/r9Q6q+UYqacUUFugpXB8l/95rVlXNDAvQ9kGLkkv
         JeFp8GQfexLKi85t+NnPcyckBca2V9o+5wcnE1JNLJ2EjJGzbgOegv4DHhxvFM2R14km
         idoY/odt83tGaS0IIbrrnGhbmkDhvoxCCbcMi9afQY0pVjVt6UHfE1DI4/lCWIgYvsLD
         98v57dH1OkluRE7y6V7z699SxE97rD8qbMeIhdT7CSJtVURP6E+Cboru4Ufa/7Y7ODai
         SyFKYx5TNN57AeAc+UFprSIdNWXM3IN6gs05Oyb6VXQWlMjgL/rOEfj6d9dio9httsvD
         NSeg==
X-Gm-Message-State: AOJu0YyMowQzRrLnVkg+0ODa3c6Nhu1U8htR1uMBH8/Ez2eyo3TTyHRr
	51C20iyTDB1yAZdFrYhzfPG9KsD5KNoohUWErbc3VyEUUi3Nfbs/y6Iq
X-Gm-Gg: Acq92OGrZ8c2O9jYYxmjR33u699wbYIeUMGsevZxPacwpv0hIpLm07x9/W7zldRwN8s
	Eg+gaBE00VOFF5SHjf6q9UP9ke9ev3JMvquzGDhR42UuUDEXgeDXyHWs8tYwlOTGWkeDMzSEDRN
	l+jJl+rQwmLTJSzD0Sy717RPSqbp6RO6pTrWZiPbSctyEaM+MP32OkFTSPecCM0Diq9Yt58G/J4
	sGCX6ecsCjT5Gsc+Mp51mv8tZvlWFVeaZLc54BFey+gafwahU5C5PjoVRr71xRXSFTZo1E5hsgA
	To2zZeNxQeBMHcvzH6/3asIMetk3a6TmiTc64Wpjh4tdwekL2QQ0Xp7LLPT6gcSV4MUr7aOdxlz
	kZNmhZyx0rGvQDvJPIbtv0MddKIVJJ2G6tMttwR8xagLQg0mjsUT4AxaYWrfkDzyQVQ//s1nDRw
	SHfD5s1uNn4teLshAS/wnw
X-Received: by 2002:a05:7022:60e:b0:136:e639:9c22 with SMTP id a92af1059eb24-1386f39567dmr5125138c88.21.1781551853685;
        Mon, 15 Jun 2026 12:30:53 -0700 (PDT)
Received: from geday ([189.115.92.220])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1384b97570asm10735958c88.12.2026.06.15.12.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 12:30:53 -0700 (PDT)
Date: Mon, 15 Jun 2026 16:30:38 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 3/3] PCI: rockchip: drive at 2.5 GT/s, error other
 speeds
Message-ID: <ajBS3tGp0wqLyVq7@geday>
References: <cover.1781207474.git.geraldogabriel@gmail.com>
 <4ac5cd7d2271df375ed6307f5c394247721395d9.1781207474.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ac5cd7d2271df375ed6307f5c394247721395d9.1781207474.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_123055_292142_1B3488E4 
X-CRM114-Status: GOOD (  23.15  )
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

Hi,

On Thu, Jun 11, 2026 at 05:04:22PM -0300, Geraldo Nascimento wrote:
> Configure the core to be driven at 2.5 GT/s Link Speed and ignore
> any other speed with a warning. Also drop the 5.0 GT/s Link Speed
> defines from Rockchip PCIe header.
> 
> The reason is that Shawn Lin from Rockchip has reiterated that there
> may be danger of "catastrophic failure" in using their PCIe with
> 5.0 GT/s speeds.
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
>  drivers/pci/controller/pcie-rockchip.c | 16 +++++++++-------
>  drivers/pci/controller/pcie-rockchip.h |  3 ---
>  2 files changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index 0f88da3788054..5a2876d7c8547 100644
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
> +		dev_warn(dev, "invalid max-link-speed, limited to 2.5 GT/s\n");
> +	}
>  
>  	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
>  		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
> @@ -147,12 +149,12 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
>  		goto err_exit_phy;
>  	}
>  
> +	/* 5.0 GT/s may cause catastrophic failure for this core */
>  	if (rockchip->link_gen == 2)
> -		rockchip_pcie_write(rockchip, PCIE_CLIENT_GEN_SEL_2,

Sashiko caught unreachable dead code rightfully here. It looks like I
had got it right in v4 and then the fix regressed.

Will address this for v7 after I get more comments.

Thanks,
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
