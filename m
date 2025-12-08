Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F25DD3ABEF
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Dec 2025 05:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtIRZ98g9gSWIjmNUxTzaxGLj6tlZ3sb0yvrtwdhxoM=; b=Z9P6+ICbIqlZYV
	vsObIwI4jCHNpdmF2yYLIRllnOv+0XGM8TCGYXQQrUZAPAOoJFUB145W2IxqcyR1VKr3m2aMcWVDO
	Bm93B1WKeHRbD5aTSOqA0qa5MZqq8yysqDA4NPcsPDz49hizH/jByjYcmFvobbNZkmP8MflQpgpdv
	3IQUll8+W+Jo4jZUCoLnEmgu+yqrst1woh6ZGBX82my4C6Uf5urH8bZol8lxvkd823pTI5O/9JbAQ
	GhgFTogdlJK43cZPlxGDXYfMV/3O/MAp+DiWIYNki3QLpyXXuuhqSWdv7l2Cwd9bXv3qT/jk355xn
	fALqQaZMhihpG6B8kjrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSU4a-0000000CdbE-1h5B;
	Mon, 08 Dec 2025 05:46:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSU4U-0000000CdaN-2iP9;
	Mon, 08 Dec 2025 05:46:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C17B641698;
	Mon,  8 Dec 2025 05:46:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C384C4CEF1;
	Mon,  8 Dec 2025 05:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765172764;
	bh=4oPFnaKOuwa795QouzAkLdFmxipO+zRI6ijexJF2Dxw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lCUkO5wHsKZaS1oV3YA4xJ+CuE3qQlV6O/izT24g2LwTzWQM0yWZDfrfXf8XszMZM
	 pU7zjfUPgjvYmGK5EGD/fuhch+Ncj7uAQH/atF4qnUZpN/Zgfb5MtnJAPYXmYWlGdR
	 ecR1dkvQK7j0zb22jeMacLyxp0uqmxqs8jS333sRUmep9+h4otHPN2oyZdOtsai0+P
	 6fOmtKSOJ6BRwDZxmrNJb6jFgjopig9uDBC7tMPvRkQA7r4poQaIWDEur1i4fx9W84
	 hsb5RlkxjqfzLp/7IylsogbO5hf7pae/x2S4Zlba4P+0aiJ+uDNLuNM3jR6xIJKzbM
	 L3Rhlaf8d62oQ==
Date: Mon, 8 Dec 2025 06:45:59 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dwc: Make Link Up IRQ logic handle already
 powered on PCIe switches
Message-ID: <aTZmF5AEJQhQld4Y@ryzen>
References: <20251201063634.4115762-2-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251201063634.4115762-2-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_214606_707894_7627E373 
X-CRM114-Status: UNSURE (   8.56  )
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

On Mon, Dec 01, 2025 at 07:36:35AM +0100, Niklas Cassel wrote:

Mani, could you perhaps try this series on Qcom?

I personally prefer this series over a revert because:
It allows to us to still use a PCIe endpoint that comes up after the
main system has booted, e.g. when the PCIe endpoint is a board running
pci-epf-test, without the need for a manual rescan on be bus.

If we go with revert instead, this very nice feature would be gone,
and the user would need to do a manual rescan of the bus.

One could even argue that that is a user visible regression.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
