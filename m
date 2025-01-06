Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AECFE77198
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jan 2025 14:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQ0i5WomwRPCGVMd+xGA8e0fei1mVW+mTlgkOK+YK+E=; b=mA9/GlN9A73u8U
	9DyxcpUApHBK+iKLuJSExpuNG6jFs5hI87f+d0YLalDVy9edvrX+rvFlsUXOnlwYtz9TMYf5JtIOd
	aEvQ+bNhKR/dedjPrblM1unHbNrVGwhasGkJEtMQVw10/53LPTYtRKvlTB8Klu2IsEeERmth2TYJp
	kjpEd7T82b16VL/adtXkivRQl2u9UpJ1VBWGUhplBC979ISGoI2ZvRqKqibXkJX0uYJUwJdJj9czD
	RvY5E6f/dgC+0W8DrVCMobRpVJ+6omy+/wGxOSSi5n6pt+cqDC12DiY2OMDYQ4aQgWHRJPP5tq3Gg
	FJQtYrKgCuYnziktJttg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUoSO-00000001eaU-0ieG;
	Mon, 06 Jan 2025 14:51:52 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnPE-00000001Rje-3Hea;
	Mon, 06 Jan 2025 13:44:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=jPkB+WGq3E7u+EGSM2PcJI+Gi33CoRnyjGq/ftg1apk=; b=ISl0fbKuUQ8lMiwligsmbR+plC
	JjC342g3xpVPQWI2K9aXk9wSCnkVVCcHqv4jR+KivMdjhNVDnaSVQHAQO1dvn1ef+/Z90Y4pdjgMK
	OhmdIb9F/npjbPB+1TPiV+G+w2jlQ79mJkVU4qPaenwOBrkvohtj5iLtUO/IEi8yiQGA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1tUnP1-001tBo-T9; Mon, 06 Jan 2025 14:44:19 +0100
Date: Mon, 6 Jan 2025 14:44:19 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Niklas Cassel <cassel@kernel.org>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
Message-ID: <b49e6147-32c6-4239-bdba-72f25ef04a9f@lunn.ch>
References: <20240809073610.2517-1-linux.amoon@gmail.com>
 <Z3fKkTSFFcU9gQLg@ryzen>
 <CANAwSgS5ZWGTP+A11r_qFSrjWZH_DqsM89MLiP+1VAxhz+e+2A@mail.gmail.com>
 <5a3e8fda-f9e4-4c2f-847b-93f521b8313b@lunn.ch>
 <CANAwSgSUuEvJb2Vn58o0i7Soo3jGzM8EYHvDtUTPxRHekCpruA@mail.gmail.com>
 <c94570db-c0af-4d92-935c-5cc242356818@lunn.ch>
 <CANAwSgQ_gojVxvi_OyHTyTSdzRrno=Yymn0AdEXyTHTgDTyFcA@mail.gmail.com>
 <Z3vGXrUIII4ixNnF@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z3vGXrUIII4ixNnF@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_054432_827173_D772E303 
X-CRM114-Status: GOOD (  14.00  )
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

> As both me an Manivannan said earlier in this thread,
> PCIe endpoint devices should not be described in device tree
> (the exception is an FPGA, and when you need to describe devices
> within the FPGA).
> 
> So I think that adding a "ethernet-phy" device tree node in this case is
> wrong (as the Ethernet PHY in this case is integrated in the PCIe connected
> NIC, and not a discrete component on the SoC).

There are other cases when PCIe devices need a DT node. One is when
you have an onboard ethernet switch connected to the Ethernet
device. The switch has to be described in DT, and it needs a phandle
to the ethernet interface. Hence you need a DT node the phandle points
to.

You are also making the assumption that the PCIe ethernet interface
has firmware driving all its subsystems. Which results in every PCIe
ethernet device manufacture re-inventing what Linux can already do for
SoC style Ethernet interfaces which do not have firmware, linux drives
it all. I personally would prefer Linux to drive the hardware, via a
DT node, since i then don't have to deal with firmware bugs i cannot
fix, its just Linux all the way down.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
