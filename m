Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6266FC67861
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 13:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/1W6VplaI5P+hZZfHl5xFBYlvhtFqVrwnwVOytL64c=; b=wTVIa0B1lqUJ0f
	PXqbipxhC9Z367jR2k0vbgSmjitjj3OAEb7IikoHTK17fDvzFzQb9LSyBh58KhnjyJjFtW8acEHYP
	hyRoQgAGLMMNEJwRgbDcPBJ89kcBA01+hqemM269heGpGFGrLGotFIObss/5JS+do+trCkzDxeMEb
	rqie70GesbMtZLvJwD2W+OLomafeZkF8ArIhg+780XlYe6pMNoyU+74mYvcPQHMA6cgjLGT9nVDWc
	81aroyrYIxTrOlDvfn8pXEtcPfxX0mGtyWotG66X3MeH+hFDQyTEPt72jTyEid+YN45cuFZ2oUk2B
	1wQfOS/An0jLZYK1hhAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsjp0-00000007HTk-2AeR;
	Fri, 05 Apr 2024 13:41:34 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsjow-00000007HRX-2Jj8;
	Fri, 05 Apr 2024 13:41:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id DC251CE369D;
	Fri,  5 Apr 2024 13:41:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55874C433F1;
	Fri,  5 Apr 2024 13:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712324488;
	bh=V+Xyb/jwNJsEvKzPZ1fkCMpDaQQ/EP8zA4y0v+msi18=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KIFGpFrycHM2ymqjL7xxbKsG27dgV8+Smtj/IGt6XTZQ7czeCZrCXeSAYBRuRzTPn
	 bI2iQJpYxjeOrbPje0qIVYrmB25ug6nkSjocCpZBtYs130izvlkDakf8zR/lPG7+F2
	 azDH0tKNAUjyorDkKggL1WJJaWdHhIulBKXZ/Z1rPqpHWMcbfkSUdk7rpk7apy2Jj2
	 w5MCn5wbZKTPIwX7fkY4jfOZ251RvEYH9t9b9zML8m0o1e2BhGLEt0A1C0sTCpNBaV
	 vwTle62EpO36T68fkrzfeL9gcKn+pPWNzvax3cWigZQ5c2qS7PrgxQzHCR1gs57pPS
	 6w+QiZ64eVn4A==
Date: Fri, 5 Apr 2024 15:41:19 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
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
Subject: Re: [PATCH v2 05/18] PCI: endpoint: test: Synchronously cancel
 command handler work
Message-ID: <Zg//fzGM0ptjMM8s@x1-carbon>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-6-dlemoal@kernel.org>
 <20240403074702.GD25309@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240403074702.GD25309@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_064130_852100_440BB148 
X-CRM114-Status: GOOD (  10.62  )
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

On Wed, Apr 03, 2024 at 01:17:02PM +0530, Manivannan Sadhasivam wrote:
> On Sat, Mar 30, 2024 at 01:19:15PM +0900, Damien Le Moal wrote:
> > Replace the call to cancel_delayed_work() with a call to
> > cancel_delayed_work_sync() in pci_epf_test_unbind(). This ensures that
> > the command handler is really stopped when proceeding with dma and bar
> > cleanup.
> > 
> > Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> - Mani
> 
> > Reviewed-by: Frank Li <Frank.Li@nxp.com>
> > ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
