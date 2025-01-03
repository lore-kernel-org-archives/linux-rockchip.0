Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24D5BE77188
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jan 2025 15:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36PyGPp5zmhpq5DY4Sxy/xNipmE8OEpS7tCN9G+4YFU=; b=r6tvHEMyXoxUTZ
	LHqhHpxYDf3tBN5EvUollwGhyUa3+RH7yZe/T01LG48CrHpBCXvZIDi7k2lljjV6Jw+0vv64IC87x
	wtbeSSKp1snquC7XLqD/ZfI55gnhKUnkLPwiEskekFwSwUhFUEV5QBCxS8WC1i8BT2OuO96Bjr3sT
	qZMR63/hWSucFYlzP766s798Y0Hj8Os04jZ+HpXEnihgkYdGwdj/+K56ncznYeU6yb96nQtYoff3s
	4bAP3mdw0anqAGptmq2yf4WH3LH92fzH83H7nGczSRVjhFRAuDth2lpMrrauv4tdCJvK3cTIptcH0
	qvIdtAl2zSvjjDtuAA/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTjL5-0000000DEBX-0oJz;
	Fri, 03 Jan 2025 15:11:51 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTjJr-0000000DDzM-0aSp;
	Fri, 03 Jan 2025 15:10:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 30BA4A40BE4;
	Fri,  3 Jan 2025 15:08:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABE5FC4CECE;
	Fri,  3 Jan 2025 15:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735917034;
	bh=1BF/6cjFkwRL519wCuap2QXMjEYM9CYI1Dk9qxzXxNc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vJ/ApSphiN0qvPN/WMJ+exnXwCvG9WFvpjWQRoBQBZcqsyUjnn18nMvnIqLGZ06lY
	 +RkGa0cC+t7uOFJ9JqNsid9tEeuhCrAL4pSp+0I0uo5PX6AdEdoKAoQjDW+BIde+WY
	 tYCOHmN4MlLC1J28eVTXF9UpQl6y3EroHLu0La2eGSpxkG/4HK2kgo3+OYe8vc9AV2
	 4dmKOA9ZuekWiaIfZKGzZkCj5MVDFG4gYtk13UX+CvrBswD5Jm6BnuGdByRhMBBWv9
	 Y+UmfzAfmios8vQXrVYmdKi5yxQAFjh7HnvXID8K7LQ5O7TzO+VGIWNlQSiIzk1aub
	 fLGO436FH22rw==
Date: Fri, 3 Jan 2025 16:10:29 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
Message-ID: <Z3f95RXj7GhZZHEP@ryzen>
References: <20240809073610.2517-1-linux.amoon@gmail.com>
 <Z3fKkTSFFcU9gQLg@ryzen>
 <CANAwSgS5ZWGTP+A11r_qFSrjWZH_DqsM89MLiP+1VAxhz+e+2A@mail.gmail.com>
 <Z3fzad51PIxccDGX@ryzen>
 <CANAwSgQEunirUf3O3FJJAUsQu9mQYD_Y40uJ_zMYDZYVy5J=wQ@mail.gmail.com>
 <Z3f4JQZ6yYV1BJ-b@ryzen>
 <CANAwSgRTcHuDNLvPJAs7ZaV-NnepeOkHj_kVc5OAJtP03hd6pQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgRTcHuDNLvPJAs7ZaV-NnepeOkHj_kVc5OAJtP03hd6pQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250103_071035_240197_2F81CECD 
X-CRM114-Status: GOOD (  16.69  )
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

On Fri, Jan 03, 2025 at 08:36:18PM +0530, Anand Moon wrote:
> > >
> > > We need to enable the GMAC PHY and reset it using the proper GPIO pin
> > > (PCIE_PERST_L).
> > > Please refer to the schematic for more details.
> >
> > The PERST# GPIO is already asserted + deasserted from the PCIe Root Complex
> > (host) driver:
> > https://github.com/torvalds/linux/blob/v6.13-rc5/drivers/pci/controller/dwc/pcie-dw-rockchip.c#L191-L206
> >
> > which will cause the endpoint device (a RTL8125 NIC in this case)
> > to be reset during bootup.
> >
> Thanks for letting me know. It seems like a workaround.
> I'll try to disable this and test it again.
> 
> My point is that we haven't enabled the GMAC PHY (device nodes)
> and must properly reset the GMAC.
> 
> We're relying on the code above hack to do that job.

I do not think it is a hack.

If you look in most PCIe controller drivers, they toggle PERST before
enumerating the bus:
$ git grep gpiod_set_value drivers/pci/controller/


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
