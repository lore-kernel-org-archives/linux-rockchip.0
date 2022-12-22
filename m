Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AC63C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 17:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzwq7j/csDXG27cB1+nQGKGaFoCFrTDqYFV6zz8svxI=; b=QHxDyp4ByhGVmS
	2VTSXHjozdAKt5P/uqNXxYo95kPDQj62F8AbJoXHNOe1nlV98S6JqxSu84imzTSyBNhNA0MQiVbiq
	RnZpr3GfYxNJCD0r/ojdv1kSPPjAdLWGa0tZvOOSmwMWJo6tQbn87Fu7Vs0LJpKszdwEJZOMbDKBJ
	jEXYpLktlJs6XrsbC/unlpvane5EZgkGQsS+lWtBaSZDK3ZHU910Rnl8Y5+CM1kprb1GzDV6ESNbA
	XYmYwpn+O89Ul3FtANbGSoCUsCw5m3KSMpl73aNZS6r535EDo5Z6eLzQkgv6/h22q0lzrgxFDnRQa
	7U78G0r4DRnrlBb8NVcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8PJq-00FFZ2-48; Thu, 22 Dec 2022 17:25:22 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8PJc-00FFVY-5b; Thu, 22 Dec 2022 17:25:10 +0000
Received: by mail-ot1-f47.google.com with SMTP id p17-20020a9d6951000000b00678306ceb94so1457553oto.5;
        Thu, 22 Dec 2022 09:25:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ywdkxpZzszObyiaiHAhYDxjz+PlTqZSkApdfOvvTQ0=;
        b=avYAkUgCnA6DESAUusIOcUBj8TNPQkt0LTCfWWXdAMu2LOIJpv7kSrrHmnqqavP4pU
         NEaXJUU6U2SsOLEcGejjxp6vipBW6PpEi5MP1QiRB5U+M8b4NEOx5w693AckHVUfH+MD
         N6SwQ0nu/CixX7QZX5ZrQUXOb2ElF0yHUSKf7/EQrSCLYow4j6OESTavk5iRn+Te/B3Q
         8CWa7WTu++c2KCdZm+fdFWmp/WEK9KNX5Wn2dbvpCm6Y5bqAnLidr5p7NikC7OGYm7wT
         y3si5Glc/ZZxL+in8LhhOS06Ij9DDEIFr5UmCH6U8iSTl+V2IGVh5vvodaV3cs2huht4
         BP1g==
X-Gm-Message-State: AFqh2kqUridjkiU/A8tOqju9HZv+EFYwfLARbBkUD2JUWnpFPzjop99R
	2/yvWailSSx83XmVZoCp2w==
X-Google-Smtp-Source: AMrXdXt5z9z5o3HrtDtlpTLaUxF8WJ7smRmdVlV7GJ1nnomSW+EwnHVVb0D3SaYlD4+RiYOwlnOIbQ==
X-Received: by 2002:a9d:6550:0:b0:670:6f6c:5fc7 with SMTP id q16-20020a9d6550000000b006706f6c5fc7mr2988539otl.9.1671729905440;
        Thu, 22 Dec 2022 09:25:05 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id u20-20020a9d4d94000000b0066871c3adb3sm557759otk.28.2022.12.22.09.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 09:25:04 -0800 (PST)
Received: (nullmailer pid 1746062 invoked by uid 1000);
	Thu, 22 Dec 2022 17:25:04 -0000
Date: Thu, 22 Dec 2022 11:25:04 -0600
From: Rob Herring <robh@kernel.org>
To: Yuteng Zhong <zonyitoo@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: Add RK3566 LubanCat 1
Message-ID: <20221222172504.GA1741501-robh@kernel.org>
References: <Y6Kc650FuvHFWxP0@VM-66-53-centos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y6Kc650FuvHFWxP0@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_092508_226596_57B380FA 
X-CRM114-Status: GOOD (  13.00  )
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

On Wed, Dec 21, 2022 at 01:43:07PM +0800, Yuteng Zhong wrote:
> LubanCat 1 is a Rockchip RK3566 SBC based
> is developed by EmbedFire Electronics Co., Ltd.
> Mini Linux Card Type Cheap Computer Development Board
> It has the following characteristics:
> - MicroSD card slot, onboard eMMC flash memory
> - 1GbE Realtek RTL8211F Ethernet Transceiver
> - 1 USB Type-C port (power and USB2.0 OTG)
> - 1 USB 3.0 Host port
> - 3 USB 2.0 Host ports
> - 1 HDMI
> - 1 infrared receiver
> - 1 MIPI DSI
> - 1 MIPI CSI
> - 1 x 4-section headphone jack
> - Mini PCIe socket (USB or PCIe)
> - 1 SIM Card slot
> - 1 SYS LED and 1 PWR LED
> - 40-pin GPIO expansion header
> 
> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> Signed-off-by: DHDAXCW <lasstp5011@gmail.com>

DHDAXCW is a legal name?

The person sending the patch email should be last.

> ---
> 
> Changed in V2:
>   - Remove RNG node
> Changed in V3:
>   - Modify all node names
> 
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +

Bindings should be separate patch.

>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3566-lubancat-1.dts   | 600 ++++++++++++++++++

Fix all the whitespace errors checkpatch.pl complains about.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
