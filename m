Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E3F3CD343D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 14:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYnQX3p2lwcQDjjrd5HQizNWZpuI4xVj8DCyQqgp5Z8=; b=EXo5z2b8/aVm+Q
	YY9UW7Qj+wwYw47dbFw5qUwcW6QrNdqdFCRZHeGRQWGxHJrGMBZzB9WRpmUei7rO2clTf/fQw4Km6
	VQM8HgJdBVkQvK82ClflC46Us5CoERs5PqMO8WD9aHqfnvyUZPiUitDsRoyrpJA4mJYiwEwq/kIFH
	18UrkOJxEJ/Rr64CAnesSqPdCUaQymdNt4nPdLx/eN7H1Tlm39/qslKM7sU22pGuAXu6paSCl9jGC
	zg2kkz9XJcH1gTcR6xDM30rz/bA0AKA3WGjWmQz6GqIXPRWoYcHQ0LYIILFJ4c6WzBMY2PNF1gpwl
	q/AFe41+KZ9E+z33ztUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slUoB-00000000eiR-0Q0L;
	Tue, 03 Sep 2024 14:47:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slUmu-00000000eF8-1OGi;
	Tue, 03 Sep 2024 14:45:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1E6A45C5844;
	Tue,  3 Sep 2024 14:45:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 153E1C4CEC7;
	Tue,  3 Sep 2024 14:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725374743;
	bh=iSDAPXcfXfi99MJkJaU478Nz0GEXXstJ4Q3Am5fSk+U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uFwX5QNs7hy9CFQx6BrFceUzU381Ex4ft3CHyRWKb6VMideDik8I7r4S8s8J5edC0
	 XYs8gbnz1hRDvGh0qgbsnlpyPexKgxqGiULFprJHMC/zJh1HwWswe1AmSn0buV4GSo
	 v5o5XiS/456Dr7W9EP7C8ZlOF09s/p/Fjfeh7exl/OTvIMrtwoENk018lBrPgfhBEz
	 oW8iWpC/Z27HPBAr/kzJkTbHLeMuk6V1EG5bF2Ljgckd0okY05AXfI9ymzbVWRS67w
	 FyWwI1S4a8WOHuU7+jemqYWUWxzRST1rKdonquAkpwaxR7rwt3neLL4c2+wQfqIDhw
	 lC4KDofd7NYQw==
Date: Tue, 3 Sep 2024 09:45:42 -0500
From: Rob Herring <robh@kernel.org>
To: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: Re: [PATCH v2 5/8] dt-bindings: rtc: microcrystal,rv3028: add
 clock-cells property
Message-ID: <20240903144542.GA985263-robh@kernel.org>
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
 <20240903105245.715899-6-karthikeyan@linumiz.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903105245.715899-6-karthikeyan@linumiz.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_074544_492700_808CA103 
X-CRM114-Status: GOOD (  13.90  )
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

On Tue, Sep 03, 2024 at 04:22:42PM +0530, Karthikeyan Krishnasamy wrote:
> consume clkout from rv3028 rtc which is able to provide
> different clock frequency upon configuration

Please write complete sentences.

The subject is wrong. There is no such property 'clock-cells'.

> 
> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
> ---
> 
> Notes:
>     v2:
>     - fix commit message subject
> 
>  Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml b/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
> index 5ade5dfad048..cda8ad7c1203 100644
> --- a/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
> +++ b/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
> @@ -22,6 +22,9 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> +  "#clock-cells":
> +    const: 0
> +
>    trickle-resistor-ohms:
>      enum:
>        - 3000
> -- 
> 2.39.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
