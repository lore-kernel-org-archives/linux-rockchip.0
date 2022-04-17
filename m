Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC573C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Apr 2022 22:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMHoCM/dOCYA6zMYDbnAdG9d4RomIDMdAmAcxLZEbTY=; b=jqaYjy8SbR4tDp
	g5n589Vqm4rwG4hJZeccqjHDp4BNeRk+10GaRni5EYBoIi8iG+dEzluCh9QGCSjl6wzUpUBLnNWzp
	eJ6RUoySAgaXIW1C6nCbxmsqUiLgRGmWcWQqmPPI9iFxg8U9R6VWOLKWCYfjNqysa1GxKeqx9dBHg
	uCebJ9RJqSZANxefeqCK5IrlYm+1fxOw9L9e5PvY5AHLqdSCDOHgw1DXBRMAMly9lgIN80rJxejFf
	cnGT1iVc7gFGoU9S33OBFGhQOrEBJSeVGpU2LDohzaOu7RjkX1aitfEap2L+FRetJVsAPHlfCsNh8
	mep3Np+co+7ZHpLUtTiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngDJ5-00F1cH-6X; Sun, 17 Apr 2022 22:23:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngDIt-00F1ZM-DO; Sun, 17 Apr 2022 22:23:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 297C91F4437C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650234211;
 bh=CcJUP4Ei7n9o+q3O09iFOiRFDYRHYPSFpc7uzXTjwqw=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=O+CzWC3I4DC8z3XM2IQbYer0jnYm0GvhGcfZaI0iAs8RYuy8ZZKxmNZRNJlkQw+tR
 mLrSXxk9//8YTKlDK0Uo1hu6/lKZNXJ/9TWeAO2WgI4+CaO55Poz7f7DFpMYm+KMx0
 iqJoffXxpZ3U1RVWadGzX6M9vOvKus1Q6ULwn5UWqV6/pe62H4vuozPJG7rKQIwGcU
 O4k78HU2VqbQkbJuiVVb0IokIf85KaY9RgvVisIDOJJdo9my+Sw5qA4eEj9hOL7rdf
 sPUbEPtEYALhknm3kH+W5YF9V5AUAdlvnu/x5gynv7rGXgyyCNhbzr/ApLUBPX1UYg
 SDJtEV7s2Hl6w==
Message-ID: <a8bb3ef6-8f37-709f-adfe-3608e5c1e11f@collabora.com>
Date: Mon, 18 Apr 2022 01:23:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v6 3/4] arm64: dts: rockchip: add rk3568 pcie2x1 controller
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 PCI <linux-pci@vger.kernel.org>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220416100502.627289-1-pgwipeout@gmail.com>
 <20220416100502.627289-4-pgwipeout@gmail.com>
 <eadc4422-15bb-0b46-8235-db6e160e8d32@collabora.com>
 <CAMdYzYq=nQhwY_4+Y=PM9do_Dcrg1pD-jeD=q36D48ks=WDVgw@mail.gmail.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <CAMdYzYq=nQhwY_4+Y=PM9do_Dcrg1pD-jeD=q36D48ks=WDVgw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220417_152335_706666_C205F9AB 
X-CRM114-Status: GOOD (  11.75  )
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

On 4/16/22 13:17, Peter Geis wrote:
> On Sat, Apr 16, 2022 at 6:08 AM Dmitry Osipenko
> <dmitry.osipenko@collabora.com> wrote:
>>
>> Hi Peter,
>>
>> On 4/16/22 13:05, Peter Geis wrote:
>>> +     pcie2x1: pcie@fe260000 {
>>> +             compatible = "rockchip,rk3568-pcie";
>>> +             #address-cells = <3>;
>>> +             #size-cells = <2>;
>>> +             bus-range = <0x0 0xf>;
>>> +             assigned-clocks = <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
>>> +                      <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
>>> +                      <&cru CLK_PCIE20_AUX_NDFT>;
>>
>> Why these assigned-clocks are needed? I don't see anything assigned in
>> this patchset.
> 
> Ah, those are remnants of early bringup when performance wasn't good
> and I was manually setting clock rates.

If it's not needed, should it be removed then? Otherwise it looks like
something is missing in the DT in regards to the assigned clocks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
