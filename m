Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49BAACD1283
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 09:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfT/RxwXKOfQTf8lvgPCM+oNpiWd/e0sucbMwXNfW6o=; b=uSe9QxNnZkLqDt
	0j4WGeR+DbWGPr4QOqBgN59+xdKtkdQtqtMH2bWKPOnf7c9uPaYGtY5pY+ggSJpI42+h5YfhIXool
	xenFK6q0uSgOKjuFZhmR0JPXEsrRDMWRGj1LXJbLYxM9qfmF+ca/4oHwnW9iQTeYyftgEqzWaKHjE
	Ajg9VUsq4B9Ppz8bCNa9QASbbmSeUoPW4P9Y7ViDnO7lowhxBsYThXwNB9EfINaPDwvEgqAEFxRwT
	BIQcASrqvVPqo9Pr3te/6ogHqGmpTpLwmCmmBie2ngoy9rCshLMTmE0FD9HrCMclHdklbHfhR4P/U
	uYlvwChV3y4JtV2Drf3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrEPk-00000007P6V-22SS;
	Mon, 01 Apr 2024 09:57:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrEPi-00000007P5q-05gE
	for linux-rockchip@bombadil.infradead.org;
	Mon, 01 Apr 2024 09:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=pNxyOU0TK6s/eBpUUq++3gl10VSUBotVXGhvU/SrY8M=; b=BmQ6EFt5bzYZg9lqkJHuOm5ZCT
	E3Jeo7ROMwFH/NkSFLslVvisfy70Kn0/jcazhIPC4gYLUsDfgpY8lGjbDiFzZgRO4Bw0PXD5CVGM5
	6oCdM4NHAd3/BU4K2h92dZa0ndQp1FUuRnI4nB2A7qTpwZOZiCJl9OJn4YP4xhTESl3Axtm4P7iTj
	jwzwaJg+u6TBpgK6VE0zmjRryab3MlzoZ6j1RgJ4vtwJD8WmxoFB01+QQ5To9Ode1QyjXa3GRPP8S
	n2Lc8D2w0n9G1xr1/lpzvn2PFMbQq3ys7oj9rdGAwyKu8fN1bvffyVLO3z+PabUWlxOexsRRXizgF
	c3H/cPvQ==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrEPe-000000030M3-0EaE
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Apr 2024 09:57:12 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-56bdf81706aso4683785a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Apr 2024 02:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711965426; x=1712570226; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=pNxyOU0TK6s/eBpUUq++3gl10VSUBotVXGhvU/SrY8M=;
        b=T9i/3eCMYWKc3G9UX8ugUKfaq5+R/FKLVI0h1w7V3Dv7jN5fxdyh6J2jJg0IzP7YQR
         rCYWMkLch0GrQnTIYS/NC856uf1wXDZeCjz3BTOPDwnp6/GS9s9+tx5NfviCwZQm3+GZ
         DabBUlj2ZJr0fmPlSg1GZf+AitlnchRizWGb2gqOET3GlMomJKq2vK9j3U+lLdx8BllU
         /Zs7XsMjj6EDbtV730y4mBmTxHFGscyq8HLm00TTJ2DrgGI3EWzDZvZ8rlFedeGQltUj
         tCRS+lpsmHK0Sn5nTfN8tVa9xXnw6Xa7U4t//bJU7c+xhPPi4wt0WKqk7p6khElc5bak
         uFMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711965426; x=1712570226;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pNxyOU0TK6s/eBpUUq++3gl10VSUBotVXGhvU/SrY8M=;
        b=KhQs0uqJRjbdZtqTquqexX5sQJ9N3ugrftDmdpfgtY41tpknFXjhA5CJjYVcLwJp02
         4fXq6Kc29XD/tUw8wgi0WTW8EOqtk7bPBf1BsawiUeBU24GHn0B+TxwY9AzqTKpYnz0o
         1cBBqMwn/2ShMaQfPU58UEgSWORT35aqu1VbGLHxHp/g+bkJwBCR75x6SKcnmEhX0kgh
         FOppViBAm4e8aIOJs/+q+XYYgfVgEDY4r0FyBuziFYS3uSB37xkpJ9VDwtv9ka+EAV3i
         QONFFyt+ZCQ5x7m236Cxi7iJx7Md4MBWYX7IL4UdFON/kE5OIKxm9VNl7SOwuVZ4jCx8
         eN6g==
X-Gm-Message-State: AOJu0YwN0dQDkMMyZcABLSO8tuy/AkylCKX3NolBGGvOFhTKhM8CVAzV
	zW4aH9TU+VO5ULqh4VbKPdD5bB6itgRCluImG9WVUgkJPvdvn2xdOHdwrmBNmUM=
X-Google-Smtp-Source: AGHT+IECEoyLtT4w3AH+Zhlt29Dbm0o4hodOjNAf1JlCMoNXW4dToGYBgYKyLMxIUAmDZuq/EoVoSg==
X-Received: by 2002:a17:906:39c6:b0:a4e:2686:4f1b with SMTP id i6-20020a17090639c600b00a4e26864f1bmr5397597eje.2.1711965426168;
        Mon, 01 Apr 2024 02:57:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id y17-20020a170906071100b00a4e6626ae21sm1395816ejb.0.2024.04.01.02.57.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Apr 2024 02:57:05 -0700 (PDT)
Message-ID: <518f04ea-7ff6-4568-be76-60276d18b209@linaro.org>
Date: Mon, 1 Apr 2024 11:57:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 17/18] dt-bindings: pci: rockchip,rk3399-pcie-ep: Add
 ep-gpios property
To: Damien Le Moal <dlemoal@kernel.org>,
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
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <c75cb54a-61c7-4bc3-978e-8a28dde93b08@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_105710_641889_4309206C 
X-CRM114-Status: GOOD (  13.53  )
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

On 01/04/2024 01:06, Damien Le Moal wrote:
> On 3/30/24 18:16, Krzysztof Kozlowski wrote:
>> On 30/03/2024 05:19, Damien Le Moal wrote:
>>> From: Wilfred Mallawa <wilfred.mallawa@wdc.com>
>>>
>>> Describe the `ep-gpios` property which is used to map the PERST# input
>>> signal for endpoint mode.
>>>
>>> Signed-off-by: Wilfred Mallawa <wilfred.mallawa@wdc.com>
>>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
>>> ---
>>>  .../devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml       | 3 +++
>>>  1 file changed, 3 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>>> index 6b62f6f58efe..9331d44d6963 100644
>>> --- a/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>>> +++ b/Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-ep.yaml
>>> @@ -30,6 +30,9 @@ properties:
>>>      maximum: 32
>>>      default: 32
>>>  
>>> +  ep-gpios:
>>> +    description: Input GPIO configured for the PERST# signal.
>>
>> Missing maxItems. But more important: why existing property perst-gpios,
>> which you already have there in common schema, is not correct for this case?
> 
> I am confused... Where do you find perst-gpios defined for the rk3399 ?
> Under Documentation/devicetree/bindings/pci/, the only schema I see using
> perst-gpios property are for the qcom (Qualcomm) controllers.

You are right, it's so far only in Qualcomm.

> The RC bindings for the rockchip rk3399 PCIe controller
> (pci/rockchip,rk3399-pcie.yaml) already define the ep-gpios property. So if

Any reason why this cannot be named like GPIO? Is there already a user
of this in Linux kernel? Commit msg says nothing about this, so that's
why I would expect name matching the signal.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
