Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9C4BC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 14:31:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CDE1F610A7
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 14:31:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CDE1F610A7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qg//3a3t/e6SRU/p1b8CGwMDVKRo6kluOuRo+vh3DNE=; b=b8vwi7O1ctbNMBtfzjEkDEx/t
	t6C9bPcVAbU55lhaKYdGnqqxGJYWZdx+q4xgcEnqJwOt891T7C/6lPskMgSMui6nKzAXs4ZTAGpKp
	YAsU0x8Caf8OztdyXu896ofqsQblOvfqwVndTz/IFvC+I+RraeVtwbD5R0r7LmLBLNoDajlQWsytq
	o0FeY03dKrcJfI8flisLczRIOyjne45HVw+cxD6Q+QKrwlJkeQ5p6N6nAlcjbB6C9P4hL9jxRVa3Q
	5qoK/p8zM5pKYIqMeufoG6boEMGtpsWMqY2KoUVBT9+WUz5EqeW4Xat0iHP3NS0pVlBFkeuXL3iFw
	zaLnfhANQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leIYn-001RHI-AU; Wed, 05 May 2021 14:31:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leIYl-001RH9-Bj
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 14:31:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=D07Ph/1+3Jw7Ax3sYGGJcJQ4Mxn9lO9/WLAxt78euEA=; b=wazN6uM82QkeSPs7wZPgBtpUZI
 Q///oxLrTvwiou0MK83s7lr95QytI2YWtn9r2rD7L3rBPsRdBsJF/sFnpMqsk4SQJUvQo39vRU5Sn
 FRZPs3+OVJDzpeVy7xhmYBkqm9zpVJDSxRDLPdA686toY5Gxkgos9tjiKAyvxD3a/BKSoq76lmghW
 VuEfJNV/E0++QSGCLDC32PxfgivvudMY7+e8sJIkgImxPYLgFy6aazmqPYOasZ2ZxFmJr14DwKEd5
 yMP4BPd2MK5bqVnRoF9DF/WwC5IypWWLSRNpyZ+kFfR+wwFVEKLs8RoDC8AK98unmR6Z+kTeSiUVG
 QR1uryVQ==;
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leIYi-004pOK-Gd
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 14:31:30 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id eIYJlNRG3WztCeIYNlLhsM; Wed, 05 May 2021 16:31:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1620225069; bh=D07Ph/1+3Jw7Ax3sYGGJcJQ4Mxn9lO9/WLAxt78euEA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=Pvl+/ujxsh6aWY8YO/eIZ4y3E4tEjR5Q+Q+zb+4Cil9LLX2Fq9A0Lj98AHtIPLEDT
 KkD1ujkgG+dfkCzylN0x5rt6u2vvNpDX+94NTX2JEDxNXWeFKrk8nTKwkvjfe7TwM8
 uXvfs28Zq7su20Q0jqtex0foDT5EaCwIh/TPdsU8sg/vlE6H6s00/Wb2DYbK8CONhw
 EiDpZEUUNQMCPDLogYF1Eq/KsRhMXzmpIGgzWlhzRD+MHnbhW78QD0AqP4iPL8ctwN
 GftcSbZl+ni8b69f5Hw0f0zya+hGl/YfWdB87ILyvF7y1INED8BE+aDPRkisRL5GMZ
 6/82HFD1stxqg==
Subject: Re: [PATCH v4 9/9] ARM: dts: sama5d4: enable Hantro G1 VDEC
To: Emil Velikov <emil.l.velikov@gmail.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: Frank Rowand <frowand.list@gmail.com>
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
 <20210401144336.2495479-10-emil.l.velikov@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <a9829af1-f4e9-5835-9a74-15a0fce6b1eb@xs4all.nl>
Date: Wed, 5 May 2021 16:31:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210401144336.2495479-10-emil.l.velikov@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfDtpP6vDd+QapLbKREIFOqoqr/sFJRlPamXLjLx9it1P0F65R2qEObdLMb/cvpjdwbwMInZNSs46V1xjXOGab0chRWK6Jj+p6Mywl65TjIV2lerEJPza
 mxVR3P9WMu/wogcSbCb5uORxg9uL0JGOcxFfvxaOFM8Ah0xkaGp4Zy8zM5cJ8a1BM+VXHDv+/3o/hvFGko4vPIElKk+rpwWk3+uy9R3shwaDWfHbVW7uE3c+
 N51jchrun383dk91fgYEkFK7q+3W22URvWe7gXicrw9gA7GCvy5gQ7JU0X67ZUVAOE4y2G/RsBRmJmJqHlg9Qqum7A1aOtpHzJHDcGEwtL838yd3h38OEVzz
 2DFNtjIfe81FskSACDujkXC2ssZbAhnTb+f1LaMFZLpMRoR2bQg8vtiWC6SVcoG4p2ESxhSTGbBo1dvxfikAh87riJjL7aRjzLmaOA4War1DD1XqF6x5eZrO
 skR6lKUNrTcbMqai
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_073128_742202_EF31FA25 
X-CRM114-Status: GOOD (  15.31  )
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

On 01/04/2021 16:43, Emil Velikov wrote:
> From: Emil Velikov <emil.velikov@collabora.com>
> 
> Add the SAMA5D4 VDEC module which comprises Hantro G1 video decoder
> core.

I've accepted parts 1-8 of this series for 5.14, so this remaining patch
can be merged by whoever handles such dts patches.

Regards,

	Hans

> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Cc: devicetree@vger.kernel.org
> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
> ---
> v2
>  - Split out of larger patch (Eze)
>  - s/Atmel/Microchip/ (Nicolas)
>  - Drop leading 0 in node name/address
> 
> v3
>  - Drop the clk/irq names (RobH)
> ---
>  arch/arm/boot/dts/sama5d4.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/sama5d4.dtsi b/arch/arm/boot/dts/sama5d4.dtsi
> index 05c55875835d..e47e1ca63043 100644
> --- a/arch/arm/boot/dts/sama5d4.dtsi
> +++ b/arch/arm/boot/dts/sama5d4.dtsi
> @@ -101,6 +101,13 @@ nfc_sram: sram@100000 {
>  			ranges = <0 0x100000 0x2400>;
>  		};
>  
> +		vdec0: vdec@300000 {
> +			compatible = "microchip,sama5d4-vdec";
> +			reg = <0x00300000 0x100000>;
> +			interrupts = <19 IRQ_TYPE_LEVEL_HIGH 4>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
> +		};
> +
>  		usb0: gadget@400000 {
>  			compatible = "atmel,sama5d3-udc";
>  			reg = <0x00400000 0x100000
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
