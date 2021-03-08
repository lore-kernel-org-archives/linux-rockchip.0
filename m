Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDB3C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 21:50:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 626BD651B7
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 21:50:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 626BD651B7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3iV6n5ig8hQ7GAzfM2zzq8jD/i/JWJNuV0ftNuxL7dM=; b=Wn0AkA2LOgu++7sinUZCIo6uI
	/siRJ/+Sl6xUvyRJPT2cbn6AFqWUHmADlwNQdHGLQAGKKO8UAdEJu+sALISC3nnAHMQwy9VGAhN56
	tsD/pESwZSDvg9rKdAYFwF8mOJWwHpUGBEhkg5FlzEnr2ECE/iDxwg4O1aBGS+0RA5UaRt3TBMV/s
	WqdXxS98dcZ+V6JtXYfY+J+0tNgW+4u17bk/235BE/8rJTImA7rLOvya3TouPSehUaoiMu6Hp258y
	Gb4r5GtCVVlu+4ox7lWutxUct14FIo9LC/C9GtOLx9G3hIzGSvzuEcjTOJO4WIQDnds0m26ws1IXE
	mXIn6mNiw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJNlY-0033uW-Hj; Mon, 08 Mar 2021 21:50:16 +0000
Received: from mail-io1-f41.google.com ([209.85.166.41])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJNlC-0033rJ-5j; Mon, 08 Mar 2021 21:49:56 +0000
Received: by mail-io1-f41.google.com with SMTP id u20so11637506iot.9;
 Mon, 08 Mar 2021 13:49:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Aopk2xA4zD/bXMuGz7qZQmTI9QDAmCg2/YOh8hW5b/0=;
 b=Zgzkg6fJiR/Xr6aOSHQCxftbEm+SGfC2+Jb5xZvEl9qaWwJoX1aaOJi8mTR5kRWH1f
 x7Hzr0gYkYVqi21feU3VL6pnu91SF5xjSYXMwRhul+X/pa5+2W1F2dCiPYAKk8co5Wj7
 mDpPCwpdZyo4EVq2lJUuZkUutCKwjtVUYw8+2Yk/P7OKu01BMT6IrPksQBTv6aR00THD
 mL7S7dY4IvJiF8iSdQyc/3W1TfJAR7s3rkxJzgMDbHUZtlQbvO2nlFUYEZ+/4lMviywa
 ADLzqWuoJ2THHs98pfV70qV/Yx5O9KO8JvhkJIhQr3qwAXZSHc36AyhTb8eHu1vfJBDa
 iWsw==
X-Gm-Message-State: AOAM531EulijNWKzKZnFykopVhYdsLdir37xOiilrx1IUozquCX3kPp5
 AGVx5b/JCfM4aNmrdTBFSg==
X-Google-Smtp-Source: ABdhPJz4X8nedqPUFZXhmT/nr+nyG6cyHJpqU/AUG5gmHwFE1jAgJvvym0gu44LweRh8c7GRY2E0Ig==
X-Received: by 2002:a05:6602:2497:: with SMTP id
 g23mr20165160ioe.22.1615240193189; 
 Mon, 08 Mar 2021 13:49:53 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id k8sm6514522ilu.4.2021.03.08.13.49.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 13:49:52 -0800 (PST)
Received: (nullmailer pid 3014339 invoked by uid 1000);
 Mon, 08 Mar 2021 21:49:50 -0000
Date: Mon, 8 Mar 2021 14:49:50 -0700
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Arnd Bergmann <arnd@arndb.de>, Tom Joseph <tjoseph@cadence.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Nadeem Athani <nadeem@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pci@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: PCI: pci-ep: Add binding to specify
 virtual function
Message-ID: <20210308214950.GA3010566@robh.at.kernel.org>
References: <20210305050410.9201-1-kishon@ti.com>
 <20210305050410.9201-2-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305050410.9201-2-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_214954_489016_A8654400 
X-CRM114-Status: GOOD (  14.99  )
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

On Fri, Mar 05, 2021 at 10:34:04AM +0530, Kishon Vijay Abraham I wrote:
> Add binding to specify virtual function (associated with each physical
> function) in endpoint mode.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  Documentation/devicetree/bindings/pci/pci-ep.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/pci-ep.yaml b/Documentation/devicetree/bindings/pci/pci-ep.yaml
> index 7847bbcd4a03..b8d5406f94ce 100644
> --- a/Documentation/devicetree/bindings/pci/pci-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/pci-ep.yaml
> @@ -23,6 +23,15 @@ properties:
>      default: 1
>      maximum: 255
>  
> +  max-virtual-functions:
> +    description: Array representing the number of virtual functions corresponding to each physical
> +      function
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    minItems: 1
> +    maxItems: 255
> +    items:
> +      maximum: 255

No need for maximum, as that is already the case for uint8.

With that dropped,

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
