Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C9D7C3ABC9
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 May 2025 08:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olKwPOjUM9IpxApQYq+lVEk6T/oUcIm9Tzh3AouZMIM=; b=SA8aQTv/ZhmO9j
	zS3Gh0yJrW3ZZGAI935LR3XxRpfNjH8lbjI3KiUuIVuPLSiBqDPM0ricwL7Ef5RJ/EgLZAivmJvfj
	9U5EMaECrE+3AokSOr+1v/0xRrBUBuRW5pvzblFpNSVFUkDOp1AZh0WJjgBSsyRj7yqEdBHuqbyTb
	w/Iok3pJitlMsPTuqJ+5yf4b2+Ns1IJ/oAwfwTXSpsd8JTNxvidQNHY4F/z08H5Axyqkq5/CBouwR
	brCyTNABTlxsy1PnnslGO66Jsib92peUHZIc48U8A/g3ACFrKjKAsrqnIXLEAemmX17Rh3+7jXMTU
	KtF9ceGo8vD+E6otHqdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEkgo-0000000BjKn-2rrd;
	Tue, 13 May 2025 08:08:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEkdu-0000000Bisu-47qR;
	Tue, 13 May 2025 08:05:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 217BAA4B770;
	Tue, 13 May 2025 08:05:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8A92C4CEE4;
	Tue, 13 May 2025 08:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747123537;
	bh=sSLHepxaBasy33/TfS4tiApG1/Hq+nahx2oIe40vZas=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fY5fXRkhQXDsTK4NVuUemu8FjDl3DpzWexI4kAdMDct6y3OvhQbuVZ76LPWS70zpp
	 KmtY9jHHFNwUs31bDfBSdF5xxlOteIUMM+af8v5Xz6Tda48JkAwzZZ2nG5DZG2lBSu
	 lBSm7nP+6UsJ6hcV2Q01UCFWf1zEqB1DFhrhUEvHr6iPk8s8U+VwCAExExokG0VT7A
	 C1mW28WQJ8xMqXpKkOqpwSnxUfueGafuBDLJW4DaqkCdVgkIiScpwOlaK2PrOw/AIY
	 WHEIMwgGhQDdee6lqrXGfyXN4zczvpVuESgwbkQqlI1Oq+8NndmrFB8DZwEGIbATCz
	 G1wXGWDaJE9kw==
Date: Tue, 13 May 2025 10:05:30 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
	heiko@sntech.de, manivannan.sadhasivam@linaro.org,
	yue.wang@amlogic.com, pali@kernel.org, neil.armstrong@linaro.org,
	robh@kernel.org, jingoohan1@gmail.com, khilman@baylibre.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 2/2] PCI: dwc: Remove redundant MPS configuration
Message-ID: <aCL9Stg0UKJ2AfDK@ryzen>
References: <20250510155607.390687-1-18255117159@163.com>
 <20250510155607.390687-3-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250510155607.390687-3-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_010539_088911_45F336F8 
X-CRM114-Status: UNSURE (   7.30  )
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

On Sat, May 10, 2025 at 11:56:07PM +0800, Hans Zhang wrote:
> The Meson PCIe controller driver manually configures maximum payload
> size (MPS) through meson_set_max_payload, duplicating functionality now
> centralized in the PCI core.  Deprecating redundant code simplifies the
> driver and aligns it with the consolidated MPS management strategy,
> improving long-term maintainability.
> 
> Signed-off-by: Hans Zhang <18255117159@163.com>
> ---

Looks good to me:
Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
