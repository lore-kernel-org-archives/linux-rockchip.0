Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63ACDC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Apr 2024 07:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sy++8mVfX82s04/+D2VN845ZVliXnHNmDrncm4hAtgc=; b=bu8yFnlR8P43xE
	iLisbm2rJdMYds9P6crTBCd4J7K2/hyzdpNW37BbbgIUVJmYaPZSQOTvns3yqGoNUrCsBy07x7ZTl
	mbC6XvvUhhbNt9/HXlEGYcCqgW9VlyRJE9Vzl1bthvd7zps0DcpZag7BXX4pM16nXFHionp0I+Q6E
	oQTZhoWjcD0BWrOcN8sqBWDOKWiqv8TNOwW3zja7H8iz5NRyCilRwKTTGkAFMYL9aw8Qgnn9+cmph
	FbPK1JKPNbKqRRZS3CrZ74csd/4uWUPuJosba51I1jeDU3QeDN0P1a+LK+dcAf6zwK3LY11WlK+4I
	66qnGACHW870nIKQPdEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrYzP-0000000A9GI-0Upq;
	Tue, 02 Apr 2024 07:55:27 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrYzL-0000000A9F9-00c1;
	Tue, 02 Apr 2024 07:55:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 27F7ECE1A12;
	Tue,  2 Apr 2024 07:55:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4857C433F1;
	Tue,  2 Apr 2024 07:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712044520;
	bh=9tCABWjbRzXg0EptOb0wcK/W9TS1scGX5YRHKdTbCUk=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=G7owKfy4tXz/f6hx2LLcKNd+U9OP6Eae58YH/ShJOuQdMFcGyY3vhfdJvZy5jCDLP
	 S1nuHqMnSKz3DckSpTT++JNNkCv/7g4NyQ86pE0hqXjZfPZxGz4xlFUGQrOn00ktCR
	 DvzbS4MYvPX4FxiVIu+6glULuzHB9OYTUeQmeYuu6lQNHvbYtZ9H6YBY35nY8BMSFV
	 KbR55TPzzdTqznj/JiNzcE/DUl8Kguu8RJE3QOSYmf7tYmffyybiqma6VVsX9HKhw5
	 0pG1yGJ5YmZ89RKz7kZOYz7NeDV5WUXA+bxgAvCPpcGRqi0dhhFhgVSxPEIwY8UWLW
	 Gj0+1GlTe8oDg==
Message-ID: <be2a0fa0-9d5d-45c3-810a-56d6924c8891@kernel.org>
Date: Tue, 2 Apr 2024 16:55:16 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 17/18] dt-bindings: pci: rockchip,rk3399-pcie-ep: Add
 ep-gpios property
From: Damien Le Moal <dlemoal@kernel.org>
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
 <49ecab2e-8f36-47be-a1b0-1bb0089dab0f@kernel.org>
 <57d5d6ea-5fef-423c-9f85-5f295bfa4c5f@linaro.org>
 <80c4c37b-8c5c-4628-a455-fcccfc3b3730@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <80c4c37b-8c5c-4628-a455-fcccfc3b3730@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_005523_492904_F548306B 
X-CRM114-Status: GOOD (  21.68  )
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

On 4/2/24 16:38, Damien Le Moal wrote:
> On 4/2/24 16:33, Krzysztof Kozlowski wrote:
>> On 02/04/2024 01:36, Damien Le Moal wrote:
>>> On 4/1/24 18:57, Krzysztof Kozlowski wrote:
>>>> On 01/04/2024 01:06, Damien Le Moal wrote:
>>>>> On 3/30/24 18:16, Krzysztof Kozlowski wrote:
>>>>>> On 30/03/2024 05:19, Damien Le Moal wrote:
>>>>>>> From: Wilfred Mallawa <wilfred.mallawa@wdc.com>
>>>>>>>
>>>>>>> Describe the `ep-gpios` property which is used to map the PERST# input
>>>>>>> signal for endpoint mode.
>>>>>>>
>>>>>>> Signed-off-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
>>>>>>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
>>>>>>> ---
>>>>>>>  .../devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml       | 3 +++
>>>>>>>  1 file changed, 3 insertions(+)
>>>>>>>
>>>>>>> diff --git a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>>>>>>> index 6b62f6f58efe..9331d44d6963 100644
>>>>>>> --- a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>>>>>>> +++ b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>>>>>>> @@ -30,6 +30,9 @@ properties:
>>>>>>>      maximum: 32
>>>>>>>      default: 32
>>>>>>>  
>>>>>>> +  ep-gpios:
>>>>>>> +    description: Input GPIO configured for the PERST# signal.
>>>>>>
>>>>>> Missing maxItems. But more important: why existing property perst-gpios,
>>>>>> which you already have there in common schema, is not correct for this case?
>>>>>
>>>>> I am confused... Where do you find perst-gpios defined for the rk3399 ?
>>>>> Under Documentation/devicetree/bindings/pci/, the only schema I see using
>>>>> perst-gpios property are for the qcom (Qualcomm) controllers.
>>>>
>>>> You are right, it's so far only in Qualcomm.
>>>>
>>>>> The RC bindings for the rockchip rk3399 PCIe controller
>>>>> (pci/rockchip,rk3399-pcie.yaml) already define the ep-gpios property. So if
>>>>
>>>> Any reason why this cannot be named like GPIO? Is there already a user
>>>> of this in Linux kernel? Commit msg says nothing about this, so that's
>>>> why I would expect name matching the signal.
>>>
>>> The RC-mode PCIe controller node of the rk3399 DTS already defines the ep-gpios
>>> property for RC side PERST# signal handling. So we simply reused the exact same
>>> name to be consistent between RC and EP. I personnally have no preferences. If
>>> there is an effort to rename such signal with some preferred pattern, I will
>>> follow. For the EP node, there was no PERST signal handling in the driver and
>>> no property defined for it, so any name is fine. "perst-gpios" would indeed be
>>> a better name, but again, given that the RC controller node has ep-gpios, we
>>> reused that. What is your recommendation here ?
>>
>> Actually I don't know, perst and ep would work for me. If you do not
>> have code for this in the driver yet (nothing is shared between ep and
>> host), then maybe let's go with perst to match the actual name.
> 
> That works for me. The other simple solution would be to move the RC node
> ep-gpios description to the common schema pci/rockchip,rk3399-pcie-common.yaml,
> maybe ? Otherwise, perst-gpios like the Qualcomm schemas would be nice too.

Thinking more about this, I think moving the ep-gpios description to the common
schema is the right thing to do given that the driver uses common code between
RC and EP to get that property. But if that is not acceptable, I can rename it
and get that property in the controller EP mode initialization code. That will
be add a little more code in the driver.

> 
>>
>> Anyway, you need maxItems. I sent a patch for the other binding:
>> https://lore.kernel.org/all/20240401100058.15749-1-krzysztof.kozlowski@linaro.org/
> 
> Thanks for that.
> 
>>
>> Best regards,
>> Krzysztof
>>
> 

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
