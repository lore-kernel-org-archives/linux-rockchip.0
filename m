Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59C00C3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 14:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rjg9yKJSFCw8z50CxxE7N/dwyP7SmfUMe/8mT6C3vdk=; b=nFd2YvmA9gk/aS1kWC0x0B7mmB
	CXKIKPKJHFHmfjb6tGb7LpgYUYcsnAhc9LZvbtwgVIu07fHQzDxUQH8ZAWnjnMEGDVZpGSu3AuFe2
	VyJJAV+lOg/UaUF/YFds82TsH3oCMUxj8NKbFDdVjIDaU7+p/U65977exZ5N2Y26wRcwE8cg4ecpM
	Cn1yvo8AC+WWtAV6lFxV445FK6Z7VbvSXD4r11RmN0o5ATkopuWJpuB7DK4oGgnjimMCOPtZgnezH
	Xlb5mIdOMFRXFHiTEgiXTFB7D4btRxkpPFl6CiYW9pvAmfdhko0eSTIVjpXjgvm8vNbMQOQTNRRtm
	KaRGHvxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYjp-0000000AtJP-2dg4;
	Wed, 10 Jul 2024 14:56:09 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYjm-0000000AtHs-2KS7
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jul 2024 14:56:08 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720623364;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1ILBJ+M2fiu9ssMVaf5jfu8iun0ZuvHMpNoVzxZPY1M=;
	b=ulV+ZbIUgH62TG+dgdd+3ndIrh2EpxaezB2H8JWunXbbd9Tz68bxadfi88RZZekGyTr0S6
	D/1a84GpSb7EmOIW6XtHPg4U0Y5sWQbLiJJ7F5CHTMbov47p62FfwGRYNUl6AgBksXYgaI
	E6h4FWl3xboYYC3pqDUio9mXw3nMV6twtdzNyR+2+QNdF2VzTBaO4G8C2a+tOkWOUA4Tea
	UZLeIgXw8yg+0eBcMraKkp/Hd2+Ca6KdCPks6d+hYIUAgANBPrRzPJcpiYUPAPBSZcXpou
	YWrsoJmQIkGtdk79NwLDq+1ufpS8tqi0pL7KoLg1+YNHzLbobBm/gQO4XnKpVA==
Date: Wed, 10 Jul 2024 16:56:04 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Philipp Puschmann <p.puschmann@pironex.com>
Cc: Diederik de Haas <didi.debian@cknow.org>,
 linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add uart dma names to the SoC dtsi
 for RK356x
In-Reply-To: <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
References: <20240710093356.3344056-1-p.puschmann@pironex.com>
 <5414331.Y6POrrGVKo@bagend>
 <72e38433-1ed4-460c-9f69-db26b673c441@pironex.com>
Message-ID: <9af7bd0db5bc5fd23cfeb121b78bbdc1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_075606_939603_531CEF98 
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Philipp,

On 2024-07-10 12:20, Philipp Puschmann wrote:
> Am 10.07.24 um 12:02 schrieb Diederik de Haas:
>> On Wednesday, 10 July 2024 11:33:56 CEST Philipp Puschmann wrote:
>>> DMA names are required by of_dma_request_slave_channel function that 
>>> is
>>> called during uart probe. So to enable DMA for uarts add the names as 
>>> in
>>> the RK3568 TRM.
>> 
>> Setting it on channels without flow control apparently causes issues. 
>> See
>> 
>> https://lore.kernel.org/linux-rockchip/20240628120130.24076-1-didi.debian@cknow.org/
> 
> Ah is see. The only problem that i have is to enable/disable dmas by
> having or not having
> dma-names properties, where the latter case is followed by kernel
> error messages. That
> is very counterintuitive. Maybe a explicit boolean like dma-broken
> would be better. That
> could be set on dtsi level as default and deleted on board dts if
> wanted. With such
> a boolean we could also prevent the misleading "dma-names property of"
> error message
> and replace it with a hint that dma is disabled on purpose.

 From what I've read in the prior discussions, this seems like a driver
issue, so the driver should be fixed instead.

>> 
>>> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 ++++++++++
>>>  1 file changed, 10 insertions(+)
>>> 
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi index 
>>> d8543b5557ee..4ae40661ca6a
>>> 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> @@ -489,6 +489,7 @@ uart0: serial@fdd50000 {
>>>  		clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
>>>  		clock-names = "baudclk", "apb_pclk";
>>>  		dmas = <&dmac0 0>, <&dmac0 1>;
>>> +		dma-names = "tx", "rx";
>>>  		pinctrl-0 = <&uart0_xfer>;
>>>  		pinctrl-names = "default";
>>>  		reg-io-width = <4>;
>>> @@ -1389,6 +1390,7 @@ uart1: serial@fe650000 {
>>>  		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
>>>  		clock-names = "baudclk", "apb_pclk";
>>>  		dmas = <&dmac0 2>, <&dmac0 3>;
>>> +		dma-names = "tx", "rx";
>>>  		pinctrl-0 = <&uart1m0_xfer>;
>>>  		pinctrl-names = "default";
>>>  		reg-io-width = <4>;
>>> ...
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
