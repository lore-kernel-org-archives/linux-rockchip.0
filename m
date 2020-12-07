Return-Path: <SRS0=PznR=FL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B42C4361B
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 18:56:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE311238D6
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 18:56:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EE311238D6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lXlxWXz1iGuWr469+RvPW+mK13dY+b5K+9THm6XGfwc=; b=mPmJufUpyjXNOpV/3tjXBgys2
	ad6hnK+2GBxC6cfP1gQHNwEatkkfgqjhtRCBgRVwDR98BaNe+A1kZKIbmRoDoKXF6IZEXaK96P6oV
	h2+7fnlTrQz/iBdUGME4Fa9eZValXO1WWi+RsX1FG6dINSL50ycofX8x1W1wH/QvfCAQxGk2UK0zg
	X3AMB2Yv2VCH33Vw+ojpLHQHHEOhjHoDZgvjkAwPYU3x9OX1WTPAWYUOFAt3T2vjHT7crB6Gr2Bzw
	VQDnRs63a0dCTuwYd2oVm+bJh1D1aT9LJrHOYKobemxRLdBp0t40J9sem5Po5CYvglG62cZJzWsHA
	tZfLMASTQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmLg7-000470-VJ; Mon, 07 Dec 2020 18:56:08 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmLg4-00046I-2E; Mon, 07 Dec 2020 18:56:06 +0000
Received: by mail-ot1-f66.google.com with SMTP id x13so5968658oto.8;
 Mon, 07 Dec 2020 10:56:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jYKdPSvZjpIiPbVZhXmqc2j76RFh4wXSWnm0PlBYAnE=;
 b=IE2no5EEoCbDmbvaly7/Say1rT8DKMhEP+gYiLEPAbcwY9NVNylZKyXtLh72PsVzjS
 qYyqGr/ml0eX2VNZ4VGJdkKMf0rGiR0Rcys3E033TSgKle4VARbXd49T9a+2zJIC6Sbz
 bBtZMu/Oi+fpsqze6y33oo1PV6JxXtZ+YqWeKWQx9K+s2BXo/87KihbaEPWtSuvacEx0
 YGQBRnSdqn9xxf5WOqUQFjMNxUh60AGG4qvf/SPPHM/9R2EPS9L23M/KpZX+LwRd5e4/
 x/qbrE3e5liQ5pAEzbtrNAERvv5OgwL5LMqE4iCbrNDE90eubYfWg3bPIsF6ABm9Jd0G
 hHVQ==
X-Gm-Message-State: AOAM532smCCmk2B3Bozd6AAPNpv9MbOfImGL/OvBE/YdwBPCuDMwFYhf
 It526ceNDNwIwR2f/vRAAQ==
X-Google-Smtp-Source: ABdhPJz/ljYtKFGmvSgmn4Lys4Ug3P+P2nQy5R4djRcCMl2NVsn0vyrFdDgT0CIZTb6Yp59q9uNiOw==
X-Received: by 2002:a9d:7a97:: with SMTP id l23mr13992794otn.232.1607367363221; 
 Mon, 07 Dec 2020 10:56:03 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i4sm2780609oos.31.2020.12.07.10.56.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 10:56:01 -0800 (PST)
Received: (nullmailer pid 617149 invoked by uid 1000);
 Mon, 07 Dec 2020 18:56:00 -0000
Date: Mon, 7 Dec 2020 12:56:00 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: PCI: pci-ep: Add binding to specify
 virtual function
Message-ID: <20201207185600.GA609331@robh.at.kernel.org>
References: <20201112175358.2653-1-kishon@ti.com>
 <20201112175358.2653-2-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201112175358.2653-2-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201207_135604_138776_693930DD 
X-CRM114-Status: GOOD (  15.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tom Joseph <tjoseph@cadence.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Nov 12, 2020 at 11:23:53PM +0530, Kishon Vijay Abraham I wrote:
> Add binding to specify virtual function (associated with each physical
> function) in endpoint mode.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  Documentation/devicetree/bindings/pci/pci-ep.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/pci-ep.yaml b/Documentation/devicetree/bindings/pci/pci-ep.yaml
> index 7847bbcd4a03..90c85a0c44a1 100644
> --- a/Documentation/devicetree/bindings/pci/pci-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/pci-ep.yaml
> @@ -23,6 +23,15 @@ properties:
>      default: 1
>      maximum: 255
>  
> +  max-virtual-functions:
> +    description: Maximum number of virtual functions that can be configured

Need to say what each element of the array corresponds to.

> +    allOf:

Can drop 'allOf' here.

> +      - $ref: /schemas/types.yaml#/definitions/uint8-array
> +    minItems: 0

minItems should never be 0. That's no property present.

> +    maxItems: 255
> +    items:
> +      maximum: 255
> +
>    max-link-speed:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      enum: [ 1, 2, 3, 4 ]
> -- 
> 2.17.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
