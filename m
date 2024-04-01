Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C132CD128A
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 23:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xy53yltlUgULQzy3nl7Ji609SUbG4v1pWi4fUwa3FZE=; b=vZLJ60RHtOB/8k
	odh5EXTvaOn4gmskRzCEVcQgjJ2ozv64efJvRbUoZ6zDgRyMK8RinUnb4eX4J/fznpgdhgDXJCXlg
	AvcfpYDmMdrUbDB18+N8UHmVSY35ja804n6D1IdPWa0cvMW4ROpxV0aPZGl6hypoYeo40g0Q7IUAS
	d36QWCmlEHyqFeGCUzat1Wv3RbGC/gBrsegJQj7L+PYoDrzi6FWNaEmUw1A8qjV0bqQskzfB3Fpqa
	xfne76We/hd+lG9BTXGQygZIepzgLNIspMfDysKjEXK3dGVJMpchNYRbqvxVwbp0WFx+45S9Cw1im
	J++nZNyUsdE9Jx/84hsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrRD1-000000098oh-0Wcf;
	Mon, 01 Apr 2024 23:36:59 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrRCv-000000098nX-2koy;
	Mon, 01 Apr 2024 23:36:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DBCA660B7B;
	Mon,  1 Apr 2024 23:36:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1324CC433F1;
	Mon,  1 Apr 2024 23:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712014611;
	bh=8wQEbHsfIcXr4dr2XxcWj3nO0LM8qgHsZ3uOarKVfQ8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OI1ECswy95ztWR1qMgjtRvTP+YtC/H3AmmZiGQn2J+eI8zEOG1rPCP7A37qpNwBLE
	 et5TTtnKjWCoiVC75z+lA94ahzdQ2s4Xrhezz8feT00f6X61oHBT9acQ4pXOBqCoBZ
	 rnh49TrrW2yhX9kjwStf9gQGEz7FpSBbZCz1pUUojkwL/xVwPCJGcdW3S9q4P2jIpG
	 rjs2GACJ/gKERLUohzcvvGo8N7otb7TN2YtxiVdtRjqawmjaIMePq76Nt1DeQdCzZ9
	 9YqEk1ICTdeu3AHyzLkn337YjnDgQiapEy41C3z7dkdhXhkULVeo+Vjd20RDzw0k5l
	 bIOJT/gVmGVng==
Message-ID: <49ecab2e-8f36-47be-a1b0-1bb0089dab0f@kernel.org>
Date: Tue, 2 Apr 2024 08:36:47 +0900
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
 <c75cb54a-61c7-4bc3-978e-8a28dde93b08@kernel.org>
 <518f04ea-7ff6-4568-be76-60276d18b209@linaro.org>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <518f04ea-7ff6-4568-be76-60276d18b209@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_163654_032533_F1D10806 
X-CRM114-Status: GOOD (  16.23  )
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

On 4/1/24 18:57, Krzysztof Kozlowski wrote:
> On 01/04/2024 01:06, Damien Le Moal wrote:
>> On 3/30/24 18:16, Krzysztof Kozlowski wrote:
>>> On 30/03/2024 05:19, Damien Le Moal wrote:
>>>> From: Wilfred Mallawa <wilfred.mallawa@wdc.com>
>>>>
>>>> Describe the `ep-gpios` property which is used to map the PERST# input
>>>> signal for endpoint mode.
>>>>
>>>> Signed-off-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
>>>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
>>>> ---
>>>>  .../devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml       | 3 +++
>>>>  1 file changed, 3 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>>>> index 6b62f6f58efe..9331d44d6963 100644
>>>> --- a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>>>> +++ b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>>>> @@ -30,6 +30,9 @@ properties:
>>>>      maximum: 32
>>>>      default: 32
>>>>  
>>>> +  ep-gpios:
>>>> +    description: Input GPIO configured for the PERST# signal.
>>>
>>> Missing maxItems. But more important: why existing property perst-gpios,
>>> which you already have there in common schema, is not correct for this case?
>>
>> I am confused... Where do you find perst-gpios defined for the rk3399 ?
>> Under Documentation/devicetree/bindings/pci/, the only schema I see using
>> perst-gpios property are for the qcom (Qualcomm) controllers.
> 
> You are right, it's so far only in Qualcomm.
> 
>> The RC bindings for the rockchip rk3399 PCIe controller
>> (pci/rockchip,rk3399-pcie.yaml) already define the ep-gpios property. So if
> 
> Any reason why this cannot be named like GPIO? Is there already a user
> of this in Linux kernel? Commit msg says nothing about this, so that's
> why I would expect name matching the signal.

The RC-mode PCIe controller node of the rk3399 DTS already defines the ep-gpios
property for RC side PERST# signal handling. So we simply reused the exact same
name to be consistent between RC and EP. I personnally have no preferences. If
there is an effort to rename such signal with some preferred pattern, I will
follow. For the EP node, there was no PERST signal handling in the driver and
no property defined for it, so any name is fine. "perst-gpios" would indeed be
a better name, but again, given that the RC controller node has ep-gpios, we
reused that. What is your recommendation here ?

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
