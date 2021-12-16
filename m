Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6973C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 20:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vx6vxeap9jlmusvSaniP2GbXZMTh6IH57W2jJuMoTrg=; b=l6pIMChoRB54Fw
	GIOPawf/otzkfNyUF3qPYN2y6C98rF+GBGD7d26Z++VXbm8EQfzU1YkO073upzTlcdPUydUsYAr4u
	4At4yCOJ6JvO33KUvbDIW/BciaZBTSfYxBaM5W1ncG8DLFgOeRq2wXfUGLaFml1Xf1D0LxJOuDq9s
	ZG0wrkd2Q130EyOoPsTGAHYKfZt1/wZDkov50XpdqHNHvg02FV0rJbfXeQAPWGjTjNj9s+YIMFZx5
	db7iBn2ksxPxS+g3gGtbAfCTsJZxcln2hWmPX1mTu2V1b7Aubk1hQNmBfaSa6rPvanzwAkcIcQtEx
	qDHq3IHjaERk/9DznH2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxxPk-007WX8-M4; Thu, 16 Dec 2021 20:31:44 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxxPU-007WTL-O1; Thu, 16 Dec 2021 20:31:30 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 47-20020a9d0332000000b005798ac20d72so305597otv.9; 
 Thu, 16 Dec 2021 12:31:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9OyruAna4eQK8uRw8f/nq559G0rjy0iQItWA5/0EZSI=;
 b=bWdbm0s2iT5tzTU1Wjon6J5l7ZBRalYOOC3Xm6dB1DWoQPP6ZH2StVrJateKtnMuiF
 d+/bXekVYFaw5KljMpB5EA4TKVkAxohRrC4bolc9Ag0h0eZna+nHSRCzYD3n3umgdDnH
 FCoVR62ny+W83vxAZEt/FNenEeM3+sI195odGH540nAr9GMzxKfiIJYnSiK0o/W9Wqhu
 l9w535Q3rFHX6T5Cy8viyIe9c6QfeCBiaVGXa7ksfOtqeZZHM4RdtjEm/PcFNHlh1kXt
 KBt1kbnHIL3n/vLWBRUoPr7NPcE653mIoT94oKuM30saZ78oHyFHDhbJe2AfNBabc5Hz
 4O1Q==
X-Gm-Message-State: AOAM532ks4+gI95xSI77tE8ETlAX+WfyvnVMjbjoLmBAbZIAmDx88m3r
 78KCiX4FP13CWjNmMCdeqg==
X-Google-Smtp-Source: ABdhPJyOYXNB53yOciN7Z88z8EuVw1heccZg9ATVKolCRbHwQ8myX1kELq8j+Ks33oKO0ALx+/QjHg==
X-Received: by 2002:a9d:7cce:: with SMTP id r14mr13783658otn.114.1639686687735; 
 Thu, 16 Dec 2021 12:31:27 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id w5sm1221565otk.70.2021.12.16.12.31.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Dec 2021 12:31:26 -0800 (PST)
Received: (nullmailer pid 705168 invoked by uid 1000);
 Thu, 16 Dec 2021 20:31:25 -0000
Date: Thu, 16 Dec 2021 14:31:25 -0600
From: Rob Herring <robh@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 2/8] dt-bindings: phy: phy-rockchip-inno-usb2: add
 rk3568 documentation
Message-ID: <YbuiHfUPezvB01CH@robh.at.kernel.org>
References: <20211215210252.120923-1-pgwipeout@gmail.com>
 <20211215210252.120923-3-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211215210252.120923-3-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_123128_809308_4B2D7449 
X-CRM114-Status: GOOD (  15.95  )
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

On Wed, 15 Dec 2021 16:02:46 -0500, Peter Geis wrote:
> The rk3568 usb2phy node is a standalone node with a single muxed
> interrupt.
> Add documentation for it to phy-rockchip-inno-usb2.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
> 
> This was the best solution I've come up with for this.
> I avoided creating another binding since this is such a simple change to
> the actual driver and would likely require renaming the existing
> binding.
> I've tested that this correctly flags if the interrupts are missing or
> incorrectly assigned on both rk356x and rk3399.
> 
> Thank you Johan and Rob for your constructive feedback.
> 
>  .../bindings/phy/phy-rockchip-inno-usb2.yaml  | 44 +++++++++++++++++--
>  1 file changed, 40 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
