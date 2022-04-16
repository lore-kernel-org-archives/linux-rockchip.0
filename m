Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D19C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 10:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOSOAskveXxAoDTplk4nGJDK2lya2F9D6+XWfF4WMEk=; b=gqm6LXtz3Z3fK4
	Ys2Av9fbrntVWzDmaY4vhfUJg0j20y3e8hGmSYiQqy2sPTqF01+wj06TSm12PhuhwEomEVnNvAg6C
	5OStyooE255lw7WUqRk6hRWXF/3FDFQScTPkO/iRChFJoARHEZxLO/UmlR1j0maYEYaa4EZWGlq/J
	eSVD/8AMrrKOEowzKztssbfV58cHZr3fKINXW/P7bmxFGfxynip+lgzjjQHcnGuFqoHzPqaD4ZAGn
	ievhLd6XzV5KmwpN00Qa9MhtBGSPMIc6P/I1xf1VGYZgTIXfMnGC8oSk4hTW1jG93DGPvArX2Ibtf
	pFtZjoPK8YuMqZ3CzZ0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nffMZ-00CiVr-Rj; Sat, 16 Apr 2022 10:09:07 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nffMO-00CiRm-4C; Sat, 16 Apr 2022 10:08:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 35F7C1F41452
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650103731;
 bh=sGShg6P3fjsXl1jywOY1QK1SQCDN6GKf+gR0jCl+lmo=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=KwfXNoeIHcekZpWSXPNzbOVy5ioV6ncDUdlui/CkWBPAUL+aY942WgYo4VH3V7/Hm
 qTfIjR02LXitTCOobt4Q8EkygRec3cdmW3VGZ69v9kOtIOBgPKFuSb+kubpQj9fBi6
 QUaqHuyFq1scrpB77k69lI5znp6HraaV73u54YIO71pReqvV6YCIVMlQjVBD9wdDkh
 FFrekt2vW0h8m5V8RGOs6Sz7AxZ/1VKo+sFmUe/G5E+HqAZzYz+hD+GJliEZ1eRePq
 trN98guEzOARuhdsgLuwj+rMbCOlXKePwCDThGyo5VtE45TFu1i4520ThsR7pJvKOh
 iUPOKgAK7DX5g==
Message-ID: <eadc4422-15bb-0b46-8235-db6e160e8d32@collabora.com>
Date: Sat, 16 Apr 2022 13:08:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v6 3/4] arm64: dts: rockchip: add rk3568 pcie2x1 controller
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220416100502.627289-1-pgwipeout@gmail.com>
 <20220416100502.627289-4-pgwipeout@gmail.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220416100502.627289-4-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_030856_319410_7EC0A9C7 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Peter,

On 4/16/22 13:05, Peter Geis wrote:
> +	pcie2x1: pcie@fe260000 {
> +		compatible = "rockchip,rk3568-pcie";
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		bus-range = <0x0 0xf>;
> +		assigned-clocks = <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
> +			 <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
> +			 <&cru CLK_PCIE20_AUX_NDFT>;

Why these assigned-clocks are needed? I don't see anything assigned in
this patchset.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
