Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4F68CFB442
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 06:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a81d+m/YOjd2lpoFYoIXxJF0dG3f/541aofbxvgbEZY=; b=Skc465fMJEWONK
	aNc+tEQFZVA3j3kRTj+2Q/vJaCCyWVEBkSrFuMsGlPFLBmzEUakLdBSABckNCoAVILeslQMQRAhdK
	pXZJep+o1nCnqdLydvdhyAzjvXfPU4fG8OjWIH7EhQr3AwtTMdAQRgSU76+05WPEK94pMWRy2bqv4
	z4WTjT+iDrkGS9IZ/FsWGiSd2kjdfesEVjgRIiL1VaI8lhpqdJJPJOq23v0pr6i8hzVcuoWafdYaf
	hWhA74LB+H/5RPp5ZjfF6RJUsxke6PvgsXqDahnfhwjh2JYOuJHmwjq4RFpE3r4KbzSSXWlHEoW9F
	MhfDirvDE1DF0nSqQBNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxhH1-00000001Qxz-0p7z;
	Mon, 07 Oct 2024 06:31:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxgyr-00000001O5G-1YMU
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 06:12:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 655645C557F;
	Mon,  7 Oct 2024 06:12:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A45CC4CEC6;
	Mon,  7 Oct 2024 06:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728281548;
	bh=xRjPy8I/3kx4TadUZ1+xA+A0H7dMZA3eQSNLYv1Lvxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dDwpo/2rr98M4mzBcVTcplW9KUbfN1xgEd81hblZ6Fb7hcnUqMzCKw6rvgqfyUmjT
	 +sHfTwAcHot7H24gOn6MVEPSSXOtfKdXptf6KQ4yDFcbxGRgwVaaw6RcbDgCBnYMyg
	 +uuROkzQ8uUWEFmT8tRo8mZ15ROs4D5vr4ZzulnugNlbHAHe76CChd/GpYECoDoExz
	 Ov2v7CgPmCUBvd4pOasG7H7l5xbGdO/TdOxw9YAeMFGaX2v6c2FP8hyP5DCLNIoauk
	 QKkPHOSf4aH7QN8p6sAmNbFg9C9P6JxFTtJlUur5oOb38EU6BUCrnWOdYPVmMv9u89
	 nEbkv6g7p8waQ==
Date: Mon, 7 Oct 2024 08:12:24 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Rick Wertenbroek <rick.wertenbroek@gmail.com>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 11/12] dt-bindings: pci: rockchip,rk3399-pcie-ep: Add
 ep-gpios property
Message-ID: <o42ki5dwipmldcpnthpfoaltpmu7ffheq627ersrvjj73xkm6x@vkqjomiznstg>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-12-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-12-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_231229_472333_EF8CABE7 
X-CRM114-Status: UNSURE (   5.90  )
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

On Mon, Oct 07, 2024 at 01:12:17PM +0900, Damien Le Moal wrote:
> From: Wilfred Mallawa <wilfred.mallawa@wdc.com>
> 
> Describe the `ep-gpios` property which is used to map the PERST# input
> signal for endpoint mode.

Why "ep" for PERST signal? Looks totally unrelated name. There is
already reset-gpios exactly for PERST, so you are duplicating it. Why?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
