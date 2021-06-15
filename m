Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7746C48BDF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 23:22:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 97C04610CD
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 23:22:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 97C04610CD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zt1HrjYtJ76TdvcFlKMC/TnVCuamAuT0mnkfedzWAPQ=; b=EwTeeOxYEXIxRn
	gGi/oQiyicBq1qsCWwZ452zHCOy9pSZI4CwEIbkfFfd9YRfMWMHOWbYa6BunOIKthLsKFLIUC/uuo
	VbqnqWmvx9uesQYOGhvhtRD8/S5z9WtK7pxCLJPjXmt++TuQdFHrZz/2OxD/I997lHsKQAZTMrINg
	EhbQGwJkJevKorFzmHgj+MaysDU7ETDbcp8AvxeHNEkitFUJLGwkB8ovxU/hzudCitk5MEntSRWXc
	q3ZrEhXepYOs6/LpK2KBZFYD6Vzu+I88Vyae7A+KMsZht9LSJ957j+8slGrhHB9q/FxFYVBOcWl+j
	KvsBiMraTLtzLSmQjoLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltINi-003pwP-8Y; Tue, 15 Jun 2021 23:22:06 +0000
Received: from mail-io1-f48.google.com ([209.85.166.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltHtz-003hd5-Nq; Tue, 15 Jun 2021 22:51:28 +0000
Received: by mail-io1-f48.google.com with SMTP id f10so945408iok.6;
 Tue, 15 Jun 2021 15:51:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=v8B2wVaCpr8Qn6YRXaLqCqpnrK4WnHFpvkW5d5afMdg=;
 b=oSCtakJ+mUXtxkuFUxzZAioHJIrE99EqjNZvomSWVUjt7XrueAVwwFxLYcKlykh5SE
 aQoiHJEfE5PQBHeT1F5qsirabX5W0Ob0xP5N+fVmKchZ2B7gMfF+a6zdxz2ZOLh9S/xy
 BDUDCJmRBxqVEE1K1nmMnPSCBzcDwbKTRAPEYXF0TLw0OE9zq3OkQ4o6V7RMkGOdYI6Q
 YZJG/CEIg9zRDZSraIUPNaARcToxyEvulevqnqYWPpoCqRIrc8gy41oudeAVRhykpaUM
 aykGrYTrAmfx2nNgd/G+o6rhKgdvsPbLCIQ/inZtb+bQP5Weu57Mb6/Yo5XJx6438y8R
 epKQ==
X-Gm-Message-State: AOAM5302vYEYp5sHVMz95YPBHRE+jeODthz2WvCqxfTi61nN/RW/nxax
 SDALrsXqYUleF9RMwAxL8g==
X-Google-Smtp-Source: ABdhPJzth4nSZ4K819GvxhIixj1/TglDmqAwAzcAoOD5AHy/ymD3hT+sv48s6GG8ejdtxEtcuUq9XQ==
X-Received: by 2002:a02:2547:: with SMTP id g68mr1300142jag.24.1623797482806; 
 Tue, 15 Jun 2021 15:51:22 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id k4sm223526ior.55.2021.06.15.15.51.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Jun 2021 15:51:22 -0700 (PDT)
Received: (nullmailer pid 1434108 invoked by uid 1000);
 Tue, 15 Jun 2021 22:51:20 -0000
Date: Tue, 15 Jun 2021 16:51:20 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: kishon@ti.com, vkoul@kernel.org, heiko@sntech.de, pgwipeout@gmail.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 1/4] dt-bindings: phy: rockchip: USB2: remove useless
 #phy-cells property
Message-ID: <20210615225120.GA1433605@robh.at.kernel.org>
References: <20210614154359.805555-1-benjamin.gaignard@collabora.com>
 <20210614154359.805555-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210614154359.805555-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_155123_836006_01E7D349 
X-CRM114-Status: GOOD (  15.18  )
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

On Mon, Jun 14, 2021 at 05:43:56PM +0200, Benjamin Gaignard wrote:
> '#phy-cells' property is needed in host-port and otg-port nodes but
> not in parent nodes. Remove it from the JSON schema.

Pretty sure there's already a fix for this.

> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml         | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> index fb29ad807b68f..b14387a48f6a3 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> @@ -119,7 +119,6 @@ required:
>    - reg
>    - clock-output-names
>    - "#clock-cells"
> -  - "#phy-cells"
>    - host-port
>    - otg-port
>  
> @@ -137,7 +136,6 @@ examples:
>        clock-names = "phyclk";
>        clock-output-names = "clk_usbphy0_480m";
>        #clock-cells = <0>;
> -      #phy-cells = <0>;
>  
>        u2phy0_host: host-port {
>          #phy-cells = <0>;
> -- 
> 2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
