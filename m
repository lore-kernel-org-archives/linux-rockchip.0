Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE41C9EC8C
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 10:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0LF23mdiUSv/BSG7Gfa6wh+D4uBiyMtf4X25Uzwkis=; b=oOXqY/VzBfdEFl
	hROZXz9ZVAM0cbNG3roKs/gvXbrWMxio9FHsu6GELi2iPM08iXeifzHrsIDDIq1Ni3IWoHbNDcsCi
	784ydbgS5YKq8nYPIJoMmsdZDr88V+WdCZWe2ORsr72PuZldmoXUmP8gnSrizZMIvZWuS89B4DuXM
	atchaaTp4nqZ45chPCQ1Ag01hOQF57IzYWT5XpPkftECZdyl4zxZbF9Cav1Or4v65YExQBGmS5JR+
	wGF3fl+JMZ0OqkjzRahhluTz1Ou9+Rx4vQfdbUkgfl9sPEz/9cBn9UZ6jNpY5OPG3xzWAlzU9Oj9J
	P6zGY1WVUAiMuocq/pZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbOj-00000006soX-1eMb;
	Tue, 13 Jan 2026 10:13:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbOg-00000006so9-3L9U;
	Tue, 13 Jan 2026 10:13:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E228F43FCC;
	Tue, 13 Jan 2026 10:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED356C19423;
	Tue, 13 Jan 2026 10:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768299189;
	bh=B60Fgt62EI+KMFzznTOtUxbSOZ4bl9cL8ytB20WIh18=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TR1n3nxeNYKPBju7jSmTmUvHf2B07hvvjuClTqXpglYDTqUIy3Qc+ayTSIQ67kdIW
	 M0dogUadKwpI8h4jvgScUNLHuPpfbDt72RggjaLhTMNJ7ilAdcNOaFZ7DP4BB8L3iQ
	 pxtiM+2rAxz/7nXY1Gfa4Lf/sua6WJYBRwQl3QgHhT9y7zjGrl8I21BrlhCOtmeZ7M
	 j/QK2RGJUmXm/TWFHY1viLqWV/1cRQnveztEjn7wZpPxhcp3HkUUE5GqdpNOtWv+Z3
	 JSgAtsbANLy8Foi9gAgpkGw7D1b7Q4uu7lOrRkXsdRH4iHGFcjMTZa2D+8nBwldlOa
	 l9AGfTdUR8RjQ==
Date: Tue, 13 Jan 2026 11:12:57 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Koichiro Den <den@valinux.co.jp>
Cc: jingoohan1@gmail.com, mani@kernel.org, lpieralisi@kernel.org,
	kwilczynski@kernel.org, robh@kernel.org, bhelgaas@google.com,
	vigneshr@ti.com, s-vadapalli@ti.com, hongxing.zhu@nxp.com,
	l.stach@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, minghuan.Lian@nxp.com,
	mingkai.hu@nxp.com, roy.zang@nxp.com, jesper.nilsson@axis.com,
	heiko@sntech.de, srikanth.thokala@intel.com,
	marek.vasut+renesas@gmail.com, yoshihiro.shimoda.uh@renesas.com,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	christian.bruel@foss.st.com, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, thierry.reding@gmail.com,
	jonathanh@nvidia.com, hayashi.kunihiko@socionext.com,
	mhiramat@kernel.org, kishon@kernel.org, jirislaby@kernel.org,
	rongqianfeng@vivo.com, 18255117159@163.com,
	shawn.lin@rock-chips.com, nicolas.frattaroli@collabora.com,
	linux.amoon@gmail.com, vidyas@nvidia.com, Frank.Li@nxp.com,
	linux-omap@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH v6 3/5] PCI: endpoint: Add dynamic_inbound_mapping EPC
 feature
Message-ID: <aWYaqZLhNVHof4BW@ryzen>
References: <20260113023715.3463724-1-den@valinux.co.jp>
 <20260113023715.3463724-4-den@valinux.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260113023715.3463724-4-den@valinux.co.jp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_021310_879874_D286F3F1 
X-CRM114-Status: GOOD (  11.90  )
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

On Tue, Jan 13, 2026 at 11:37:13AM +0900, Koichiro Den wrote:
> Introduce a new EPC feature bit (dynamic_inbound_mapping) that indicates
> whether an Endpoint Controller can update the inbound address
> translation for a BAR without requiring the EPF driver to clear/reset
> the BAR first.
> 
> Endpoint Function drivers (e.g. vNTB) can use this information to decide
> whether it really is safe to call pci_epc_set_bar() multiple times to
> update inbound mappings for the BAR.
> 
> Signed-off-by: Koichiro Den <den@valinux.co.jp>
> ---

Since your new feature depends on this feature, this patch should be first
in the series.

With that fixed:
Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
