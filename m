Return-Path: <SRS0=PznR=FL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0013C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 18:02:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A1D0F2389F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 18:02:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A1D0F2389F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9zIlXKb6rOfz1TZ1En5NrYfTPzshqPPFtBZaf/iO4OU=; b=IO1KDlHZO7HRh7+1W0OHdWqVe
	0GNm1dG6PDmXvW0aqa0loZASDtHBy7Y8ZWKMCCaM6ZvcEe/xZn2UB5ZgL73gs/fyme/iupIiYFb7z
	8ebul1Q4L3x3XU+R/74zLGWpIcpofUIQTZ8v5hMz+7uDhUqXRnZQFsHwFT6ugDpVmjGViVKysQmUO
	1it3d2VS9EF+KGTlsIq6PoY5sKP+doZQc/54emeLpB8iMGB3jzSWL9bEwSRGzACoMkYJtvZmdoesd
	+0PWkn6vX66lam9C/IgqlB8f6+1RkzwRPiuwUaq13hbjwqYFSMnxsxMWgTjXgC0ry9AEBiWPZXlHU
	sf/6/mAOQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmKpl-0006Yc-Sk; Mon, 07 Dec 2020 18:02:01 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmKpg-0006XC-Gf; Mon, 07 Dec 2020 18:01:57 +0000
Received: by mail-ot1-f67.google.com with SMTP id b18so13342967ots.0;
 Mon, 07 Dec 2020 10:01:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6yo47xkFd96+1uzbs4hUVtKd9yJftEoZWizCC87Sgzo=;
 b=tl02xRip0D572rzsrXdTVM5YzoZtK52BHFS68LnWZyE6hQ4FuDjXAeWOKisR6IeLKK
 jW2FhMQHYI1HEc2a8nJr12ltKzC532HjRK1uLX8/v1YwIHlXNPF6pF1W2f7dQAV2nP65
 TCS7ahTgTdabEhGT+p+/coH6TvsWh2+2Kxzvwd6Wprgzb216IMziY9CBNcMN7D/8cMiT
 RljznEJTFwxbQw3CDASq5efJFWehlk11VUhRu6pm7RypQPimLM+D30MhMSsRmofhIhqQ
 9NQXBCGyqXJ9YbXeaYydxdYCNfVkcwyMlTqaoy7mgHC+GfPdmtBYUzFxALkDa1nZrfM8
 Kiqg==
X-Gm-Message-State: AOAM5322Vd+wLnXlHOQtDSm8M24F3gJhIgv1c7xIF9222Z0ccG1/enNw
 OPAqjf6Y1aFHMQ9sVMYQvw==
X-Google-Smtp-Source: ABdhPJw0shJl8ArayE//p46EUlSOU5Q2et7NSHa+5b09oa2VHAR5G6ocG2jPI26JO9CVx8E3MajxdA==
X-Received: by 2002:a9d:3e82:: with SMTP id b2mr5062324otc.329.1607364115404; 
 Mon, 07 Dec 2020 10:01:55 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c21sm172554otd.44.2020.12.07.10.01.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 10:01:54 -0800 (PST)
Received: (nullmailer pid 521529 invoked by uid 1000);
 Mon, 07 Dec 2020 18:01:53 -0000
Date: Mon, 7 Dec 2020 12:01:53 -0600
From: Rob Herring <robh@kernel.org>
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
Subject: Re: [PATCH v2 2/2] devicetree: phy: rockchip-emmc: pulldown property
Message-ID: <20201207180128.GA520435@robh.at.kernel.org>
References: <20201129054416.3980-1-chris.ruehl@gtsys.com.hk>
 <20201129054416.3980-3-chris.ruehl@gtsys.com.hk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201129054416.3980-3-chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201207_130156_577374_F207DB44 
X-CRM114-Status: GOOD (  17.62  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Nov 29, 2020 at 01:44:15PM +0800, Chris Ruehl wrote:
> Update the documentation and add the bool property
> enable-strobe-pulldown used to enable the internal pull-down for the
> strobe line.
> 
> Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
> ---
>  Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> index e728786f21e0..3e4d2d79a65d 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> +++ b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> @@ -16,6 +16,8 @@ Optional properties:
>   - drive-impedance-ohm: Specifies the drive impedance in Ohm.
>                          Possible values are 33, 40, 50, 66 and 100.
>                          If not set, the default value of 50 will be applied.
> + - enable-strobe-pulldown: Enable internal pull-down for the strobe line.
> +                           If not set, pull-down is not used.

Needs a vendor prefix.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
