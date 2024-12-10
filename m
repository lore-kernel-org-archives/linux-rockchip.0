Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED974E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 08:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XHC6HZxzobXNxd778vg4t8Tsz22tH4oXIQ39cALzF3s=; b=4xaWflr3PMz4OFuZkKxfHXbzyF
	Umr3rDwfwrsuBeJiFTV5iDXSwuHmAhiSOwOOG7fI6q/N5cITnYAFmmaxotGhoZ9CJpmGh8RPHdCC1
	wsoKwZe5k+6iIH5JjqNj4KfqnvKIYJjHLKgWUFUXc+3wYgPPSHdQF5NDaJ8sKh2jnlZ444D+1lMSP
	iRJodW7k8FqfkM3L9qOS39KzgV8B8ERjrengvbPAsy27ts/IWBtu8bXHSqJpxgha5RDVNVds/8vth
	MWC0aYSAgD1vv4cj177cVxxXpoAkQcnsOJfajnK9xd+mqDlwVdxX+Edbjy3wNrjYI7Z0eNN91UVYZ
	Ssoctexw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKvCw-0000000Ae2d-3MfT;
	Tue, 10 Dec 2024 08:03:02 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKvBs-0000000AdvD-3aOL;
	Tue, 10 Dec 2024 08:01:58 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733817714;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8GJywCfHdvdwHDP5uXNzefsQ0GJ0yUR4X2Zmb8a5Y6g=;
	b=BsEW4Zpc7tYFRnA/eaiEQ3pYNQXqR0g71UhiABbge+ZG1g8Gc3Yi5Rd+DE0SxCB4hzsVjF
	6eKOaixnFsoB8OUAYmXfkOG9/+xxvqtobm7vp7ca/5tXkpqaSrDNEMPV/Vi8MGe39ahPUm
	qC5nTFVc0Vuyrd+5ycS1z6m+rHOIMcf3YtcfUMS4JFB5JWQdMb24AcViZQTjUNJN/GaSL5
	/X4Z8W5X3/3gcM8GsVY/k5fSFFMyKBs5+tA1H17JatXHIRM6n3A8rYCY8bkUXvhdXePG1G
	NEEvUIBJMSqDfrmyWQvKDrdA32lh2MVR1l61YeKmrZ+d7BT9ydUEbpQtTxiGIg==
Date: Tue, 10 Dec 2024 09:01:53 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>,
 Diederik de Haas <didi.debian@cknow.org>, Johan Jonker <jbx6244@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/6] arm64: dts: rockchip: remove ethernet alias from
 rk3328-roc
In-Reply-To: <20241210013010.81257-4-pgwipeout@gmail.com>
References: <20241210013010.81257-1-pgwipeout@gmail.com>
 <20241210013010.81257-4-pgwipeout@gmail.com>
Message-ID: <20693a7b7cb1aaed2c21b84fd57c4b72@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_000157_167392_3F58FD8F 
X-CRM114-Status: GOOD (  15.26  )
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

Hello Peter,

On 2024-12-10 02:30, Peter Geis wrote:
> Remove the ethernet alias added back in during the rk3328-roc dtsi
> conversion.

I just checked again the dtsi parent conversion I performed in
the commit f3c6526d6fb2 ("arm64: dts: rockchip: Convert dts files
used as parents to dtsi files"), and both rk3328-roc-cc.dts and
rk3328-roc-pc.dts had the ethernet0 alias defined before the
conversion.  Thus, the alias wasn't added back by mistake during
the conversion, it was there before.

Moreover, I don't see why would we want to delete the ethernet0
alias(es) in the first place?  It's usual for Rockchip board dts
files to have ethernetX aliases defined, and both ROC-RK3328-CC
and ROC-RK3328-PC have their gmac2io DT nodes enabled, and the
boards have wired Ethernet ports, so they should also have the
ethernet0 alias(es) defined.

Am I missing something?

> Fixes: f3c6526d6fb2 ("arm64: dts: rockchip: Convert dts files used as
> parents to dtsi files")
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
> index b5bd5e7d5748..f782c8220dd3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-roc.dtsi
> @@ -9,7 +9,6 @@
> 
>  / {
>  	aliases {
> -		ethernet0 = &gmac2io;
>  		mmc0 = &sdmmc;
>  		mmc1 = &emmc;
>  	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
