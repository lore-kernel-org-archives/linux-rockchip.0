Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D529CCD1284
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Apr 2024 23:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WklxU4OabxbHiGtXYNXSZGF09ao2qR348+oZ6Y5WYBE=; b=OUdVAgubo3MPw/
	ObQOEl3GcdpeWUystOBbFpAyeLa32+anfmZ60dJFz9vHgH8KB8JVr8Qz4sZyJvaT/9Fbhw9xQ2lNd
	/JI+3Vg5t0MQvQDpiXrv58PqIpPFu4ibOZBIuyxKyxJtyqW5UT23aWnh+e3RbvsmYLMq9lYMJZKCS
	PU27Mlt7pDGq6fgNw9QiyZRUdznL0IBBmxoEqp19fkRbYoEz+Zony9nIYh24FNrJI52CODHO2AUge
	PgwDoHBa1oJQSx2qms0TDtgAZXR+jEAPRP22zxP5v0xBckuvS1WwGzct2PdsPv2yD5cfXbugooaJP
	q9oNztSPExmK6lugae8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrnTR-0000000D9o2-3ZSb;
	Tue, 02 Apr 2024 23:23:25 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrnTN-0000000D9ly-405G;
	Tue, 02 Apr 2024 23:23:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D56F2CE1E66;
	Tue,  2 Apr 2024 23:23:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F930C433C7;
	Tue,  2 Apr 2024 23:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712100199;
	bh=MeLS86YdjnIzGiuXPd5GfJyCavX2wucsvi48OLJIDeY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iDClBlzz9+EtddVYkNAHFxMOaJoQnATld9xN8+G7AiRLrW7spNjrDNZM/uicl1gNC
	 /4s+WZzVoGUN+ZuUz4LGB4ROWhXkjWQizKYDFkZf+cAe1AKNQFgXsDfosJpa0agVxB
	 M5o8dcwAboK6CVcg9uHI7lQ/hN/0aWqMXTdhsK+mcGDXMyKCtQ523hcjTqPEkkJzt2
	 QsW3JK5SlE5/vyEPltNDECa01GNs189lB/+aCOMZHnHE45q1l/ZlMzWKwP0ybKiXww
	 MK/AsqJ5mpzh8pdRZ12QUp3pV5t8X8m/qbI2RMyDqYR6uPKZIcqHoIE91YuDIw/zuD
	 gU/YCoT6iYU9A==
Message-ID: <992dcef1-00d3-456c-b3ee-253ab475f0cf@kernel.org>
Date: Wed, 3 Apr 2024 08:23:15 +0900
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
 <49ecab2e-8f36-47be-a1b0-1bb0089dab0f@kernel.org>
 <57d5d6ea-5fef-423c-9f85-5f295bfa4c5f@linaro.org>
 <80c4c37b-8c5c-4628-a455-fcccfc3b3730@kernel.org>
 <be2a0fa0-9d5d-45c3-810a-56d6924c8891@kernel.org>
 <65b6329a-643c-4adf-9137-281964865d51@linaro.org>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <65b6329a-643c-4adf-9137-281964865d51@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_162322_290870_FE46708F 
X-CRM114-Status: GOOD (  16.65  )
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

On 4/3/24 03:10, Krzysztof Kozlowski wrote:
>> Thinking more about this, I think moving the ep-gpios description to the common
>> schema is the right thing to do given that the driver uses common code between
>> RC and EP to get that property. But if that is not acceptable, I can rename it
>> and get that property in the controller EP mode initialization code. That will
>> be add a little more code in the driver.
> 
> I forgot that it is actually the same hardware, so if host has
> "ep-gpios" already then EP mode should have the same property. Common
> schema is good idea.

OK. But this will conflict with the patch you sent to add the missing maxItem.
Is that patch a fix or is it for 6.10 ? If it is the former, I can wait for
next week to rebase on rc3 and avoid a conflict.

> 
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
