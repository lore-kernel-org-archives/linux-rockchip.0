Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA9E7CFB442
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDCAq5EoJ1Ea5Jd5UebJWwcdAVqI5eBhbNiipXjPbik=; b=PXimobhlV6EMD3
	v7gIHtn/b/96Y3wgWZ7zbGsmAupo+Mbqk4TJNmfIDsEVqxpzfcjtHeLzlC699vaaSibkfcl40bKsA
	YgQeImWtV/+QmNrVmMEmWxniEcGiRvZEF16o/75XGX5yxcaWLGq/JBsfjUObLvggE4DnUEpFo5v/R
	/T3zJuN48r8c1E3cuHT0q1XUVSl1mrIykmBLZpjbMyUavoaicyftZAomsrynpwlmLwtyNjvhOZVFy
	GYZi89jwHRSbYhI+aXNQD/HRptxKe3Vk4n4RIzWa0XpAhluRM0DuRhXGg7k/GeugyHatG9MffolRy
	5a9jcRSE7Qd+iufY+eEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxhZy-00000001UVr-0hxf;
	Mon, 07 Oct 2024 06:50:50 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxhZv-00000001UVT-2jw9
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 06:50:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id EAA3FA415F5;
	Mon,  7 Oct 2024 06:50:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EF8AC4CEC6;
	Mon,  7 Oct 2024 06:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728283846;
	bh=qDAe+BSsiioIiqPoJ/5NRfo8zrnpHg4n7A+8Ga+ENNM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Bh1Gj+08iRC+C3z5nBaRa5b/Ksjm3Br88Fy+L/QInt5azyQa5B35WqUJRql5KqhZf
	 tSP1XYcW/6TNTwJo7hwQ9BbdzMzx9y2/WaE/howuOgJQ6V0PsDM4g3t1qhOr1xh0RD
	 1DlL9ZQTf9UL34mILyj+kU3HVqZQOAibDEGqEIlSCnx0Ul+j2SDblkIeMneswpb5DI
	 wOrX3Xi6R8sVtxmuD4KFcxpUn0KEkowlHnu1f+BGhRI7r26/LI5D8z+rL7m3PORa+T
	 +gophihNGK3kch2Je6TCR9Fr7Y0q6QZoAlpQezft7R74Fmp3D47n2gZ5XNdDLw5Zx8
	 ZCtXwhJVTjkNg==
Message-ID: <179ed297-1d06-480d-8095-7212cbde2ab1@kernel.org>
Date: Mon, 7 Oct 2024 15:50:43 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/12] dt-bindings: pci: rockchip,rk3399-pcie-ep: Add
 ep-gpios property
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, Niklas Cassel <cassel@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-12-dlemoal@kernel.org>
 <o42ki5dwipmldcpnthpfoaltpmu7ffheq627ersrvjj73xkm6x@vkqjomiznstg>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <o42ki5dwipmldcpnthpfoaltpmu7ffheq627ersrvjj73xkm6x@vkqjomiznstg>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_235047_806131_98B9B176 
X-CRM114-Status: UNSURE (   7.59  )
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

On 10/7/24 15:12, Krzysztof Kozlowski wrote:
> On Mon, Oct 07, 2024 at 01:12:17PM +0900, Damien Le Moal wrote:
>> From: Wilfred Mallawa <wilfred.mallawa@wdc.com>
>>
>> Describe the `ep-gpios` property which is used to map the PERST# input
>> signal for endpoint mode.
> 
> Why "ep" for PERST signal? Looks totally unrelated name. There is
> already reset-gpios exactly for PERST, so you are duplicating it. Why?

Because the host side controller already has the same "ep-gpios" property.

Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie.yaml

So naming that property the same allows common code to initialize that gpio in
rockchip_pcie_parse_dt().

Also, I do not see reset-gpios being defined/used by this driver (host and ep
sides).

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
