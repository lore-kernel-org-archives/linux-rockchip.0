Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D47ACC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 11:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wka7Ld1CbpbKEKpiaXMQZhtPCilI2o1G7SzioEyUxrI=; b=EAUJbsliYs4E0I
	fcYkXbv3eUJrJeD59q1jMwjj2x4ayPG9w3RyTEoey3iZT+oswwGa/d0CjylZwegzUgfoP4+EtQsze
	cVAM1vqx4pJyMrjc/vQSfkjgW/vOzrkS/vYmMJu7OBmO/Puc/OaeiFRZg0Dy+iEIPqDVd+M0ZkcxQ
	Tq2nPUjIxIRTErkNUtGTdvlzlQiU+ifhS3/DcaXOlH6R8rpIbzoe2j925Tf5Ea/HCEN9rWlxcGL23
	wwzIIe9votfPNhjcOkz2LlQ5Bflz29AiHCJ7j37efvLcJb33Cwk1Zj/JpHXm+A9eHwx+9rDkaTt8R
	0NYllCjL7QHDMfKekuwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1lsp-00000006D9Z-2tBN;
	Tue, 30 Apr 2024 11:42:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1lsm-00000006D8P-440k
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Apr 2024 11:42:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 46B9A6146C;
	Tue, 30 Apr 2024 11:42:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03162C2BBFC;
	Tue, 30 Apr 2024 11:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714477368;
	bh=VaIaxDUSfC9tPdxaV5FO7mC+kHCogNIyqCj6cKrFrh0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iwR7P75X0Imgr4j4coJaR0fUmXMk/XWFhO9g6AXVFZkyPKGnVVwCwSKPznhae0Otj
	 XK3c/7KB2r44y8q46Ees4Q542PhrivwpcN6ldjEM+8MFFkbjQO2SQflhZl2RojCWQc
	 NHPQ6DmHoH9Ou95U7Gaud6fu88w1Teo0vy7OZx+k5j7HSNxm9q9ll/nuYAD5bmMGEl
	 J0o8DQDXoKp8I4vTY/BThCITEPfci1rEr0NdKeNiriMZuOUdL5uAcTVncE33qEcbRn
	 nUoracT6+q2Fv8tPLFZXx2N90gH7YD+6cdqKZ93qSJSBz/DcuW91J3K5nlU1g+1ZqY
	 gqoZ2aJMwJeVA==
Date: Tue, 30 Apr 2024 13:42:41 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 10/12] misc: pci_endpoint_test: Add support for rockchip
 rk3588
Message-ID: <ZjDZMeNGPA6rCr7O@ryzen.lan>
References: <20240424-rockchip-pcie-ep-v1-v1-0-b1a02ddad650@kernel.org>
 <20240424-rockchip-pcie-ep-v1-v1-10-b1a02ddad650@kernel.org>
 <ZiqsJZh5SV6q33Fz@lizhi-Precision-Tower-5810>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZiqsJZh5SV6q33Fz@lizhi-Precision-Tower-5810>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_044249_134509_CA3A7D18 
X-CRM114-Status: GOOD (  31.25  )
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

On Thu, Apr 25, 2024 at 03:16:53PM -0400, Frank Li wrote:
> On Wed, Apr 24, 2024 at 05:16:28PM +0200, Niklas Cassel wrote:
> > Rockchip rk3588 requires 64k alignment.
> > While there is an existing device_id:vendor_id in the driver with 64k
> > alignment, that device_id:vendor_id is am654, which uses BAR2 instead of
> > BAR0 as the test_reg_bar, and also has special is_am654_pci_dev() checks
> > in the driver to disallow BAR0. In order to allow testing all BARs, add a
> > new rk3588 entry in the driver.
> > 
> > We intentionally do not add the vendor id to pci_ids.h, since the policy
> > for that file is that the vendor id has to be used by multiple drivers.
> > 
> > Hopefully, this new entry will be short-lived, as there is a series on the
> > mailing list which intends to move the address alignment restrictions from
> > this driver to the endpoint side.
> > 
> > Add a new entry for rk3588 in order to allow us to test all BARs.
> > 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > ---
> >  drivers/misc/pci_endpoint_test.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
> > index c38a6083f0a7..a7f593b4e3b3 100644
> > --- a/drivers/misc/pci_endpoint_test.c
> > +++ b/drivers/misc/pci_endpoint_test.c
> > @@ -84,6 +84,9 @@
> >  #define PCI_DEVICE_ID_RENESAS_R8A774E1		0x0025
> >  #define PCI_DEVICE_ID_RENESAS_R8A779F0		0x0031
> >  
> > +#define PCI_VENDOR_ID_ROCKCHIP			0x1d87
> > +#define PCI_DEVICE_ID_ROCKCHIP_RK3588		0x3588
> > +
> 
> Did you make sure 0x3588 will not used by other production with vendor id
> 0x1d87?

Hello Frank,

I do not fully understand your question.

Vendor ID 0x1d87 is rockchip:
https://admin.pci-ids.ucw.cz/read/PC/1d87

https://admin.pci-ids.ucw.cz/read/PC/1d87/3588
is RK3588.

This is the PCI device ID and the vendor ID that the device will have on
reset. So since rockchip has put these values as the reset values, and
they appear in the PCI IDE repository, I assume that they should be fine
to use.

I could not find any other Linux device driver using this PCI device and
vendor ID, if that was what you meant.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
