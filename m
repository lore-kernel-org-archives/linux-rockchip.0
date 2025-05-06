Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D318C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 May 2025 18:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2qY/XlUPQV+W5nv8VIh/ZUP3oVsHYR3orqdrAdS9lg=; b=DOJaI1uB89RI1x
	nrrmkn/HimxlttIuITgSzrpiJ+mjA1lhm10T12l5gc7sCN62Vw4FGAoHfk4356o9tyfwAG+dx8lBi
	e+0PPdUmal5VwRoTuBIXfByyNka5Ys0XbdvHNwnIdSQ+Fs7+uDFdPGr3dROjR+WV1jPDbmEnGz3hh
	IK6UQyu46LbLhfcxlhVYtJ24itkup70brW2P43fRLZ/0+GQC1CjxEMJyQv1g7bo8MPaC2i15Q6xlK
	bEdfNue/CFH3KAUjbx+Ju2mZXKaClC4Y9yMNPM79Zo4DKyCYXQ5/hhNnvnc3h3EYv56x0TcoY+/6x
	H8DXTLuLtCWYkSe1Mwmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCNEo-0000000D8qN-32hQ;
	Tue, 06 May 2025 18:41:54 +0000
Received: from mail-43167.protonmail.ch ([185.70.43.167])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCJe4-0000000COOq-2i41
	for linux-rockchip@lists.infradead.org;
	Tue, 06 May 2025 14:51:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1746543102; x=1746802302;
	bh=LLO17FglWgYSVBW2cYDBU2hPFlvOAFb4nPLQLayDh9U=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=ccm8KxW9LC7iFnHe38StTvImk0UJjsJhNM/yP14IzScKDGNntYNqyapZijEE0K2/6
	 9mU/IZHZRZ1ViPMHaNWTgk6SiV8KyKinklKvCTqqLFp/lrZasWyBTqgV3tK/a0oBqw
	 aP5TzCcZvfF8jhcHDxzPfJNmS9osqwI3aIoPWaMJjMlLdsMMj5/yKgZAFnUK6oJNnX
	 xciJ1qkjdgjFCcaPXw6ro2dhLJ2ARZOlXlwYGzJXYSaS+/fKMnmKED3f42dMxAdo32
	 1Q7TPNzCuKuhNgXTxsfPF4ctIAnHjSeQcFrsf5h5NkgRDS2AMeofnFeHl3dqWiDar5
	 NnJa5CL86Tq9Q==
Date: Tue, 06 May 2025 14:51:39 +0000
To: Niklas Cassel <cassel@kernel.org>
From: Laszlo Fiat <laszlo.fiat@proton.me>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?utf-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, Krishna chaitanya chundru <quic_krichai@quicinc.com>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, Damien Le Moal <dlemoal@kernel.org>, Hans Zhang <18255117159@163.com>, =?utf-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH v2 0/4] PCI: dwc: Link Up IRQ fixes
Message-ID: <-6f4j_eknGQJZqqLhxH5YFUXv6uIumEfiFbaPQXGPoQYpWZUrt2y8gx6gqw_mM0leAv7U3znZbcHtlmKKdt1xZVt0ASVpH0pBIoMChf0Iwk=@proton.me>
In-Reply-To: <aBodwvmG6ENM7haH@ryzen>
References: <20250506073934.433176-6-cassel@kernel.org> <aBodwvmG6ENM7haH@ryzen>
Feedback-ID: 130963441:user:proton
X-Pm-Message-ID: 5ad6aa2b5e02d5ecce87cb33b4d947670322600f
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_075145_275182_0E5595ED 
X-CRM114-Status: GOOD (  15.61  )
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


-------- Original Message --------
On 06/05/2025 16:33, Niklas Cassel <cassel@kernel.org> wrote:

>  On Tue, May 06, 2025 at 09:39:35AM +0200, Niklas Cassel wrote:
>  > Hello there,
>  >
>  > Commit 8d3bf19f1b58 ("PCI: dwc: Don't wait for link up if driver can detect
>  > Link Up event") added support for DWC to not wait for link up before
>  > enumerating the bus. However, we cannot simply enumerate the bus after
>  > receiving a Link Up IRQ, we still need to wait PCIE_T_RRS_READY_MS time
>  > to allow a device to become ready after deasserting PERST. To avoid
>  > bringing back an conditional delay during probe, perform the wait in the
>  > threaded IRQ handler instead.
>  >
>  > Please review.
>  >
>  >
>  > Kind regards,
>  > Niklas
>  
>  Hello Laszlo,
>  
>  Since you have a RK3588 based board, sending a Tested-by
>  tag on testing patches 1-2 makes sense.
>  
>  However, patches 3-4 are for Qualcomm based boards.
>  I'm not sure if you also have a Qualcomm board at your disposal.
>  
>  If you don't, Manivannan can probably drop your Tested-by tags
>  on patches 3-4, but it might be good to know until next time.

Hello Niklas,

You are right, I only have a Rockchip based board, which I have tested on. 
Mannivan should drop my Tested-by tags on the qcom patches. My mistake, I am sorry.

>  
>  Thank you for testing!
>
You are welcome! Thank you for making my board work again.

Bye,

Laszlo


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
