Return-Path: <SRS0=qNMI=LZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DED0C11F64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 09:32:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CB8626144F
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 09:32:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CB8626144F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fOuNmMdTz67evofiLkNIsGG0TWSr3pvbA4fOtVGS6O8=; b=1j6y2bANso7J9fECxV68RFy8K1
	TRZtgjt1wX6hfdVFm+eaEERvUe2EULHkrAJONCVpx/YEfKAtZbvtFxGqqPtws9/MO+RIwonl0uYXU
	6RxN1UsbfjndxohGD+6sl1x3wBDa6OTJJSbhW6r/Ycqm+fqVNDcI0fb9G2wIfS5qjyTLPbpKBDAQO
	ZdDYATQ4BsRWh2zRy+UTzj8WzLc0WKQ/OZXLv8LYWzFZIjHO4s23mk/boPLHtMmfk2780FN/F4L8P
	8b/5+Otvmdecy1p2H6SPmbv9CfRDCMKFfW+YwdFzD4+Imbgp95FuDbrro/MU4BgvPfJgC0Xq3/1c/
	/OjG1mRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyt3z-00GitX-4S; Thu, 01 Jul 2021 09:32:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyt3m-00Giq1-2l; Thu, 01 Jul 2021 09:32:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 23C79D6E;
 Thu,  1 Jul 2021 02:32:35 -0700 (PDT)
Received: from [10.57.40.45] (unknown [10.57.40.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DBB5F3F5A1;
 Thu,  1 Jul 2021 02:32:33 -0700 (PDT)
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: helios64: fixup USB setup
To: Dennis Gilmore <dgilmore@redhat.com>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210701004043.18585-1-dgilmore@redhat.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3fd0bb29-239f-50d7-cf4b-c057bcccf885@arm.com>
Date: Thu, 1 Jul 2021 10:32:33 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210701004043.18585-1-dgilmore@redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_023238_251759_B82910F3 
X-CRM114-Status: GOOD (  16.44  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021-07-01 01:40, Dennis Gilmore wrote:
> Without the usbdrd_dwc3_1 node defined u-boot will throw an error and
> reset the system. All other rk3399 systems use this format

This doesn't make much sense - the usbdrd_dwc3_1 label is defined in 
rk3399.dtsi either way, and the compiled DTBs before and after are 
identical :/

If U-Boot is doing something funny with labels and symbols to give 
itself some kind of fragile dependency, that probably wants to be fixed 
in U-Boot.

Robin.

> Signed-off-by: Dennis Gilmore <dgilmore@redhat.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> index 738cfd21df3e..aeedf098f67c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> @@ -490,9 +490,9 @@ &uart2 {
>   
>   &usbdrd3_1 {
>   	status = "okay";
> +};
>   
> -	usb@fe900000 {
> -		dr_mode = "host";
> -		status = "okay";
> -	};
> +&usbdrd_dwc3_1 {
> +	dr_mode = "host";
> +	status = "okay";
>   };
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
