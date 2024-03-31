Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E8B9CD128A
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Mar 2024 23:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PVJfPecfH/NbpU4mgsSQ567YdxF34KRO9S3IFUXgdI=; b=aHss1g4SmoiQGH
	DvXczV5VG98JPRNeTVjmTRKwJ4979DkmRxHkXVK2o2xf1iivO8zXQ+NdGElR6QB8eWCnVKk85i/Zl
	xvfrTjmpRPFWSvsE7ktwrl8nE1aQDUzjzVSEKSj1PweBGm0yTR3TnJSyOQjhuhuirU7Z6qmmbicb+
	rrXNZk3W3w5PhfWD1ihJIPXRa4IXQOtg2IV7EZyawqp965hfsXdVyd/AjxE25tj/xH4SQS/e82GOF
	VMHi9LC4ThCkvk+299biVOp2MDPD/qnfm4UKwPwm0A8ZlV6/t/6dPkStKme5lfbKA/ujMOQdt/gRO
	vzl7vV4tO/qUrEAsOvxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rr4G0-00000006S8X-0lnq;
	Sun, 31 Mar 2024 23:06:32 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rr4Fw-00000006S6e-2iAA;
	Sun, 31 Mar 2024 23:06:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 14866CE0CE3;
	Sun, 31 Mar 2024 23:06:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC358C433F1;
	Sun, 31 Mar 2024 23:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711926381;
	bh=14qIqX8MDo3yXNFpqBzy/00s9TGjAWt6G7ERHC7x30A=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gw6sdMmccfg6fv2rsBdDfRpSG7EMGTTmkv9GV0mfGfq78EG0Qa3zFW+rJUZzSqm/1
	 9rw6aVYZcX3zsaWf+T8zHt+KIJdjHHYF+3GyTxnvmPCDqh8zutCL1T5XgVQX8sf8Ub
	 XCLjmRv0WFLzmR5UfSYpKO6zco0y/AHJCjO71mC+f9PpTO5gqM/B2OmeCNYooRVxo9
	 2mKSG0zoKqfErDvmrGPb305oT3IpOq+xTMdWPERY6pzWuFMWaE5sXg9Bo7xIRiphe7
	 ddcRd9uXmkpF6sUoIMIgiNFlwRzX4TbqA6IWQNgGTC8Bl/Jgmi+8lfUjtYJAAmr2Et
	 fItqbas/oQN0g==
Message-ID: <c75cb54a-61c7-4bc3-978e-8a28dde93b08@kernel.org>
Date: Mon, 1 Apr 2024 08:06:17 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 17/18] dt-bindings: pci: rockchip,rk3399-pcie-ep: Add
 ep-gpios property
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, Niklas Cassel <cassel@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
 <20240330041928.1555578-18-dlemoal@kernel.org>
 <b020b74e-8ae1-448a-9d47-6c9bb13735f9@linaro.org>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <b020b74e-8ae1-448a-9d47-6c9bb13735f9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240331_160628_868421_19398C8C 
X-CRM114-Status: GOOD (  14.50  )
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

On 3/30/24 18:16, Krzysztof Kozlowski wrote:
> On 30/03/2024 05:19, Damien Le Moal wrote:
>> From: Wilfred Mallawa <wilfred.mallawa@wdc.com>
>>
>> Describe the `ep-gpios` property which is used to map the PERST# input
>> signal for endpoint mode.
>>
>> Signed-off-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
>> ---
>>  .../devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml       | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>> index 6b62f6f58efe..9331d44d6963 100644
>> --- a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>> +++ b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>> @@ -30,6 +30,9 @@ properties:
>>      maximum: 32
>>      default: 32
>>  
>> +  ep-gpios:
>> +    description: Input GPIO configured for the PERST# signal.
> 
> Missing maxItems. But more important: why existing property perst-gpios,
> which you already have there in common schema, is not correct for this case?

I am confused... Where do you find perst-gpios defined for the rk3399 ?
Under Documentation/devicetree/bindings/pci/, the only schema I see using
perst-gpios property are for the qcom (Qualcomm) controllers.
The RC bindings for the rockchip rk3399 PCIe controller
(pci/rockchip,rk3399-pcie.yaml) already define the ep-gpios property. So if
anything, this patch should be probably be modified to move this property to the
common schema in pci/rockchip,rk3399-pcie-common.yaml.
No ?

> 
> Best regards,
> Krzysztof
> 

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
