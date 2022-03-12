Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B47AFC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Mar 2022 03:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b42G0VV98uW68GOWklIv6Sujm0PXD0SfLrpuBKWawAQ=; b=WV/J/5mJEXZuo8
	/ym7ue5AUw3MRyBok21/l0m8Ux0pStFuFYEUh2cr0VuWkNzen5Cqbt6HQHQDoEqiRWr+Lj+ZKNYtq
	d7sWK4NiDD/kjXMBMDUoeS+/yUdDFcGTYkzzo9zkFZ2PgHJ/G8W00w9DfA8/oDaOePOFMnkMTOdF3
	dxV3ErYuSIJzZX6LSTcEyN7iFLq29PpZqY2B23H4z6p9wVEsqdEZ23E5oMr25AMvhS+b6nJNwl9A3
	60nPFtPueBuK1NXgZtfnRxp96EULy8JHZ0XOU7YF4c6ngSa94LNG5ELdavKffQbYL2/Ckk86j3X9O
	fadN11hE3STuT2EncyKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSshV-000h0x-S2; Sat, 12 Mar 2022 03:45:53 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSshK-000gvz-Kp; Sat, 12 Mar 2022 03:45:44 +0000
Received: by mail-oi1-f182.google.com with SMTP id v75so2695753oie.1;
 Fri, 11 Mar 2022 19:45:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vd8wRMirH20qZ3MunPMpjYuLCrOwOqi3XC/b/3pYVHA=;
 b=eXjTGWytiKOzJ12ibtEYRBWiKW24yTjdWrWVlSaLKgTwBTlc2PwwUqHL1hSYbvZOup
 1OEi+VJarC/vY+lZSYfxJ9vZbLE64dLV4Xp2dA93vzvQekZspniIu4D3MwpeO2Wu91lx
 TTLjdev6pnQYWULoBruhUmc0TaienAKsopTfd8eKIaiPiXglFNqtRFG8gue8Kc8iyUNZ
 hacnODmhZ+uAapzJLF+dEPPw9AVZ2qwn0dXkWjA5IYxZuFy9cmz8bo3kRKicjPPV+hB4
 XMQbA9TfnoIKdJ7WiQ8qdDM3hUDcOihC9qGwRBob1kFfRYiXOym7iKBQlf+pjkd7aB6O
 ulYA==
X-Gm-Message-State: AOAM531id5y058mIbb6W9dECNwJ96rBsntvnVtQ5ZN32PCCXDYXZgp67
 10NoPQ4k/k+ZDIA6W8BZrQ==
X-Google-Smtp-Source: ABdhPJx4byST3cn01Iwsrcdl0TxymdYn3svPvMQkqG/bJhnL9oRUPuCxQhxOTuMBuuFJbDX7dtHbZg==
X-Received: by 2002:a05:6808:d4:b0:2da:503b:40a with SMTP id
 t20-20020a05680800d400b002da503b040amr8863995oic.121.1647056741712; 
 Fri, 11 Mar 2022 19:45:41 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 bb39-20020a05680816a700b002d9a8eb89fasm4515278oib.46.2022.03.11.19.45.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Mar 2022 19:45:41 -0800 (PST)
Received: (nullmailer pid 730936 invoked by uid 1000);
 Sat, 12 Mar 2022 03:45:39 -0000
Date: Fri, 11 Mar 2022 21:45:39 -0600
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
 Frank Wunderlich <frank-w@public-files.de>, Andrew Lunn <andrew@lunn.ch>,
 Hans de Goede <hdegoede@redhat.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-ide@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Viresh Kumar <vireshk@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v6 5/6] dt-bindings: ata: ahci-platform: Add
 rk3568-dwc-ahci compatible
Message-ID: <YiwXY6/JVwMUfa71@robh.at.kernel.org>
References: <20220311210357.222830-1-linux@fw-web.de>
 <20220311210357.222830-6-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220311210357.222830-6-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_194542_788666_29CE8D30 
X-CRM114-Status: GOOD (  11.08  )
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

On Fri, 11 Mar 2022 22:03:56 +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add SoC specific compatible for rk3568 ahci controller
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
> v6:
>   change subject to dwc instead of dwc3
> ---
>  Documentation/devicetree/bindings/ata/ahci-platform.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
