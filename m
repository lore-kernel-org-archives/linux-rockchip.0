Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A088BC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jan 2022 20:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hs0+aXomsBgm2p92SXa+zsmz9BNNTmuqwb0e9TcR1ss=; b=PMiIYTNwhXxk4L
	T6SuPkh0Y043rJmp7eH3JDQ4ChjmJIAj0f3FcRbJ7Lo3WpQjZ03Zj8z1flq8WzVCiCrK6T2/urp92
	S3bI2Ezt1g549yHM6dcKcQ79X+3Tfq7wj+OW/Wlh0Xsdf/N5V64uw05wtPwlBe2R0/cR3eZwGnTrU
	YkfC2SIdsX+XUXlY4v6hayxGJvL7omc8w00OxwZnZ9jCkNDml+mVt3SIemrfkG6PhYvRXmfJ4cSJ9
	B0PFR2zG7xRHGkrBc3Dxc7D+rzDogB7fqELp5GNqUcxc0hhbRvJhxlHBtLOSaovxtqGBMt+skISuq
	U7FHbJwkUtdyYjUVv8IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n71Sv-00DFjM-3w; Mon, 10 Jan 2022 20:40:29 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n71So-00DFgm-B4; Mon, 10 Jan 2022 20:40:23 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 j6-20020a056830240600b00590eab8f4fbso1757225ots.8; 
 Mon, 10 Jan 2022 12:40:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=brEnSG94a9dEuzAEhYmErXtFPNCp8zc17eSCyTs7HPY=;
 b=7cNWRJ2/eptC8TYsUaDaqTnZJ58t6Qm47b2/5YS+Tdq8vxAeIcnOWOPsHpyuoiwj91
 BC2lMqyfhJz6ON3+T/zgnMgB01qj8J7ESII2FTakAhnYdF75pvrTb9L/Cn615842kr2U
 FFmzl9lxzAfS8Wj/taLkbdbuubOxQ1bCciKUkmtDfZlz2TM8Eq2/QwDRYqwNVTHZEdLx
 45tYttI+EUVgZgN1TiIdDxZk7OVxNpd8jS0xSzUc1cnx7NWuIBcjsgLdcJTbDWn50I15
 xdkoVbKKkzvenR4GReXyI5/qU4EFz9KBwjCJyE6AREvCnVFwCwjXYaFZSS8SWVdbxn3g
 2a3A==
X-Gm-Message-State: AOAM531L71yFTtwjjC78LEwPLNL79+c7pd1P8YMYscj/Ww1riHFfj++N
 wtglG/56axwXKfxwqSzlZQ==
X-Google-Smtp-Source: ABdhPJzk49Ol9ambqLs0ZZIbcVdiZbc+q+NbxpnrF8t8Q/F7kIf1MubSNAMHOfkCOtRL57+99q7Pfg==
X-Received: by 2002:a9d:27e1:: with SMTP id c88mr1144745otb.354.1641847221453; 
 Mon, 10 Jan 2022 12:40:21 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id v4sm1507610oot.36.2022.01.10.12.40.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Jan 2022 12:40:20 -0800 (PST)
Received: (nullmailer pid 1466998 invoked by uid 1000);
 Mon, 10 Jan 2022 20:40:19 -0000
Date: Mon, 10 Jan 2022 14:40:19 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: cl@rock-chips.com, vkoul@kernel.org, robh+dt@kernel.org,
 p.zabel@pengutronix.de, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, yifeng.zhao@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kever.yang@rock-chips.com,
 heiko@sntech.de, wulf@rock-chips.com, kishon@ti.com,
 michael.riesch@wolfvision.net
Subject: Re: [PATCH v7] dt-bindings: soc: grf: add naneng combo phy register
 compatible
Message-ID: <YdyZs7dDFPCWfJd9@robh.at.kernel.org>
References: <20211230084815.28110-2-yifeng.zhao@rock-chips.com>
 <20211231082249.5075-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211231082249.5075-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_124022_419599_ADA8E7A4 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
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

On Fri, 31 Dec 2021 09:22:49 +0100, Johan Jonker wrote:
> Add Naneng combo phy register compatible.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
