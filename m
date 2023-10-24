Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9F78C07545
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 20:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fm4OzaPWHHyvCpnlz96XmXv6+UjGA5epdQBQOPoKv4k=; b=HHsbRqr6lt6f8Z
	YIyX895CninA6eMfs2OIkkitGhVT0p2kdRyGS9K44jHEy2fgzEwSkvsrFlZTbvQw5O6kVAJhQOy8Y
	173kdH/AX5XYbqYasVuWORWQgrLI7grYMzhVwhvB9pzh7DHRuz3DAO+uw3uQ2lN7lF+3tbRN0jlh0
	RUJ6VTseLsHIN3qbODmsWJ4ALaDHf31NisG/OhCzgeOyLqSfcsvGOuTg6g5bE3DRHejrs1khxlOFt
	5PtRKPRmEMZigLOyMvHwgX+ZPMBITR1LSgmG+5dhrXhuK3+1Pjm2qa/L521FpeU/updU7VImFd9nE
	Tk21omLc2+xAhz4Q/tcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvNba-00An0b-2D;
	Tue, 24 Oct 2023 20:02:22 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvNbW-00Amzu-28;
	Tue, 24 Oct 2023 20:02:20 +0000
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3b2e72fe47fso3299010b6e.1;
        Tue, 24 Oct 2023 13:02:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698177736; x=1698782536;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b7LBP+4sNuVtjoSJxOmRVrbomzzhTqa06ogPkpyg6vM=;
        b=XH4ihzQ1JnANnsGHVklWZAI6aWMB6g84EB8cOs4eS4hjvj7pfZQvjYgYZB+jdCb7Nf
         Q/QrLDvDjUIG8Qfi1opTAyiRMVF0VYC5k93U+XXKDnlNVUJXsu9cwtyDViEIgz5k1Be2
         6OHIG01RSXEwFZoRS5zGZ7F6DGtTsvIqo6vGszMYCs+P1O3yPiFOzb/TK7H3nUu45WwS
         Ku3Pcq1k94eQTk6xE/CgPBrpTQrqkxZOS8DcrFbEC9PSGNbSl7H2EjBYJmQCRUiJgqtE
         TUdfEeLwj/qX10XmsT2olKuldQtZ55GMY+reQYbjZUVm2aK8hRPPtgCC93AJbbJzqnM1
         Huhw==
X-Gm-Message-State: AOJu0YxoHsTz3bFG7umhmsjTEBrE5FKAYCAO4W9OZcAs5dQcTmhQqOAF
	LWsN6B1KnBHg2HMUZvVdIw==
X-Google-Smtp-Source: AGHT+IH4hYt3JNOvk2IbMB7aYMfLDffQfXMNQ/OGQJ8ue/Mw0Ee4HGPBn95Yvl/2SYp5Y2S4brH6OA==
X-Received: by 2002:a05:6808:2005:b0:3ae:b06:2131 with SMTP id q5-20020a056808200500b003ae0b062131mr16665647oiw.0.1698177736277;
        Tue, 24 Oct 2023 13:02:16 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id b2-20020a056808010200b003b2e4754cc2sm2052808oie.26.2023.10.24.13.02.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 13:02:15 -0700 (PDT)
Received: (nullmailer pid 471601 invoked by uid 1000);
	Tue, 24 Oct 2023 20:02:12 -0000
Date: Tue, 24 Oct 2023 15:02:12 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Vegard Nossum <vegard.nossum@oracle.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH] dt-bindings: usb: rockchip,dwc3: fix reference to
 nonexistent file
Message-ID: <20231024200212.GA465811-robh@kernel.org>
References: <20231022185150.919293-1-vegard.nossum@oracle.com>
 <6ea02e5e-bc95-48b5-d6e3-15338ebd0a4d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6ea02e5e-bc95-48b5-d6e3-15338ebd0a4d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_130218_725348_4198E2D6 
X-CRM114-Status: GOOD (  10.33  )
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

On Sun, Oct 22, 2023 at 10:44:10PM +0200, Johan Jonker wrote:
> 
> 
> On 10/22/23 20:51, Vegard Nossum wrote:
> > This file was renamed but left a dangling reference. Fix it.
> > 
> > Fixes: 0f48b0ed356d ("dt-bindings: phy: rename phy-rockchip-inno-usb2.yaml")
> 
> > Cc: Johan Jonker <jbx6244@gmail.com>
> 
> [PATCH v1] dt-bindings: usb: rockchip,dwc3: update inno usb2 phy binding name
> https://lore.kernel.org/linux-rockchip/f8747552-d23b-c4cd-cb17-5033fb7f8eb6@gmail.com/
> 
> Already Acked.

I was assuming Greg would pick that up. I've applied the linked patch 
now.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
