Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C086CEB2CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 09:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PK34YHqfJNWOjWn2Dux2GHtvdOZXP7gAHMojkg1atmE=; b=KMqqBk7arnbv7U
	evjl2K/GAW0erAKw6EcH4vpdZz0IMPlNKZ101uThrTJEEgcwCNkCLNw/xGePG9ZzrqiYq7MTiQCTw
	cOycxkmeGuBqq4CQdVPdGF0qU7Yz71JDTEqiJbVXyqc732XYzNsOfDF1ZE8N7nRPXWd4xQUiE8ddh
	V2xpubq4X4WocR0aqISp2gAYrzj4V8/1oTpCMlWdGDFnUbZnyK69GTRpAODIqkksTgtWJk89qX2Cc
	34ahXwsEK9n0a5xxlT79tR/JcVlyPZRg69kcjc1tZ0RVe7Er9EKcwPHBp1xT0CCrAw1+FslElMmfr
	j/eS+BXlJLutN5+w1+Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCcT-0000000DeKB-1ZdI;
	Sat, 15 Nov 2025 09:30:57 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCcQ-0000000DeJU-0edI;
	Sat, 15 Nov 2025 09:30:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 03B7B410BC;
	Sat, 15 Nov 2025 10:30:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763199051; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=El1dag7V1MQtuD7usBgnxi59sc6/YKeG1sIluoJStD4=;
	b=rALV1oViAYxtYolAplpe2osiF+FOHCNX5Zx4T78qVIAzpsI1P2sQMI+cBw5f0RDEU4PviC
	+moZ/vT0+43hjexj07jGbJ4ZgBKjQ9DRS4mru2wuvcL8whV6J2iihBOtFDqyRl6h/+C4HE
	x/oJMiYsjdJCJg8nasrf8r4Bl6kPFVCklPbxEGgXTMtFG34k+F5fw4JOFIgsHw6RqhIyPN
	zjNqskWy/iR02hg2Rh1akcoc5o76JFhf2BSNjnILcjPqMM8HUY4/DehS0h5Gp7MeLr4xLz
	AEW/Qtq6d2WskL0FDa5GyZqFRHaYa/VgUDM3KJSwGRwqIMqhrSatPVvYdfnQfg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <b04ed0deb42c914847dd28233010f9573d6b5902.1763197368.git.geraldogabriel@gmail.com>
References: <cover.1763197368.git.geraldogabriel@gmail.com> <b04ed0deb42c914847dd28233010f9573d6b5902.1763197368.git.geraldogabriel@gmail.com>
Date: Sat, 15 Nov 2025 10:30:49 +0100
Cc: linux-rockchip@lists.infradead.org, "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>
To: "Geraldo Nascimento" <geraldogabriel@gmail.com>
MIME-Version: 1.0
Message-ID: <c8a6d165-2cdd-cd0d-4bed-95dfa5ff30d2@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/3] =?utf-8?q?PCI=3A?=
 =?utf-8?q?_rockchip-host=3A?= comment danger of =?utf-8?q?5=2E0?= GT/s 
 speed
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_013054_348068_FE462079 
X-CRM114-Status: GOOD (  12.86  )
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

On Saturday, November 15, 2025 10:10 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> According to Rockchip sources, there is grave danger in enabling 5.0
> GT/s speed for this core. Add a comment documenting that danger and
> discouraging end-users from forcing higher speed through DT changes.
> 
> Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> ---
>  drivers/pci/controller/pcie-rockchip-host.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index ee1822ca01db..7e6ff76466b7 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -332,6 +332,11 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
>  		/*
>  		 * Enable retrain for gen2. This should be configured only after
>  		 * gen1 finished.
> +		 *
> +		 * According to Rockchip this path is dangerous and may lead to
> +		 * catastrophic failure. Even if the odds are small, users are
> +		 * still discouraged to engage the corresponding DT option.
> +		 *
>  		 */
>  		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
>  		status &= ~PCI_EXP_LNKCTL2_TLS;

Looking good to me, thanks for this patch!  There's no need
to emit warnings here, because they'd be emitted already in
the rockchip_pcie_parse_dt() function.

Please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
