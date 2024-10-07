Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64457CFB440
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 06:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8BF4fSpURSsp2mSNJuaJaaULxLqHc3bMOnNrSzXpKQ=; b=L6poShSLaq6v1Z
	d8aFtoBzKlY4YDZouLQIdYpiw5omT6Do5y25EV9o5rh8zIjbCjc+SecdimtqneMe2dEi3mQFUhPfH
	BEJX4aiwDc1RGJJZls3V5D6Hf8GxKCx9H45qrZbw/3lPalxlmU09CVmpJ20Qj08BxJ9gjcGoQgzLw
	5QWl/VoH1F0wHXp7dRJArbzy+N+KocQINNcXQTxIgqQrUkcYCazRihYbyPRk1ef7nNZrI+p8xZ/Jb
	ogP6HwdxrKKxpQWTClTR23YAjn6djeA6hw/7Q+jU6TNnluc9z7Ds8UN71UcScgcYohqrwKy/ApVM+
	rUXWGctD1tDw5c5dj6qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxhhW-00000001VNU-3QzO;
	Mon, 07 Oct 2024 06:58:38 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxhhR-00000001VMD-3YWw
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 06:58:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7E72CA41699;
	Mon,  7 Oct 2024 06:58:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8F94C4CEC6;
	Mon,  7 Oct 2024 06:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728284312;
	bh=NH3P73rjlFT8QcjybEaXWlE7Olev3U86b+yiuYZctFE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CGc8wvZkwdBBic/nMnCro8IFmP8y3Ys3xGkfBlj3FfTr8gp9mI3klDSsD00z7toYw
	 zxyd9VknaL9p8bc1+Y8NCorWRGfXujh09PsA6Pa0tuGixa9+gSqsJ4llT/HGAA3ySu
	 9YQoMcd6/umgr36zS75qFlinfbFuIUiXyLsjLmgYXqVnMe2wOEKaZN9cBXOyaiE/vo
	 dxz9EDk7LwgF9isKQW2u3z4F/eKSvclx9ImagKPBuQmOdS0UaEKQ0knfn/bzEbZMVy
	 2vj/cxsDVTLB/qQAdT0rYiC4BLPN9IjMZVqSwfELAARz6hxLmwuCJfHOzpO6udXdc/
	 9QyVs/DgBhcIg==
Message-ID: <ec728ac4-ef63-47a2-9058-5c038003418e@kernel.org>
Date: Mon, 7 Oct 2024 15:58:29 +0900
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
 <179ed297-1d06-480d-8095-7212cbde2ab1@kernel.org>
 <64421c0c-1d48-421d-8841-859695b5046d@kernel.org>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <64421c0c-1d48-421d-8841-859695b5046d@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_235833_988352_2357EC10 
X-CRM114-Status: GOOD (  11.33  )
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

On 10/7/24 15:54, Krzysztof Kozlowski wrote:
> On 07/10/2024 08:50, Damien Le Moal wrote:
>> On 10/7/24 15:12, Krzysztof Kozlowski wrote:
>>> On Mon, Oct 07, 2024 at 01:12:17PM +0900, Damien Le Moal wrote:
>>>> From: Wilfred Mallawa <wilfred.mallawa@wdc.com>
>>>>
>>>> Describe the `ep-gpios` property which is used to map the PERST# input
>>>> signal for endpoint mode.
>>>
>>> Why "ep" for PERST signal? Looks totally unrelated name. There is
>>> already reset-gpios exactly for PERST, so you are duplicating it. Why?
>>
>> Because the host side controller already has the same "ep-gpios" property.
>>
>> Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie.yaml
> 
> If host has it, then it is a common property so goes to common schema
> for these devices.

Ah. OK. I will move it to
Documentation/devicetree/bindings/pci/rockchip,rk3399-pcie-common.yaml then.

>> So naming that property the same allows common code to initialize that gpio in
>> rockchip_pcie_parse_dt().
>>
>> Also, I do not see reset-gpios being defined/used by this driver (host and ep
>> sides).
> 
> I am talking about bindings, not driver.

I do not see reset-gpios being defined in the bindings (common, host and ep).
resets and reset-names are defined though but these have nothing to do with
#PERST control.

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
