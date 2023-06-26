Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBB40EB64D7
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jun 2023 19:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jF1poZ5ktt0iw6PA+P4exqnyaIlAa7+JVKDnWQiIHPs=; b=LtJnb1N8iAhxdc
	Xcn2a0cmpIJTTSnZU0UhPFwH1nMrARzRdRckKJwXNedV9+8ZFuRpmgz/di5pr2NatMEcedrmcvTHS
	sR09nLGEAFJwEkK85klp9VvoS4n/++jzYK1asTTZU6+53zgCwBo8ctZtU6SRxLUfU1Q8rDRdEGX3S
	wGE0l9kR1+r3hlIOzVtn6akmeXUDYvkYhf6XCy4AZA1QmcBCeDGjkfDcb6dxor3juCC+8UMUKXgHt
	9a1lBesoRlembAyNrCUGHFzcnxpSKl6fY129AhwyynjA4JuJkO3mWX1/aTIwrOAXPX/BaPbKfVekR
	dVVRMKKJgdoAekqoT8JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDs00-00Aw7u-1F;
	Mon, 26 Jun 2023 19:35:44 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDrzx-00Aw7T-1L;
	Mon, 26 Jun 2023 19:35:42 +0000
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-7836164a08aso45903239f.1;
        Mon, 26 Jun 2023 12:35:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687808140; x=1690400140;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BGfCwcbVLNoCSLzgxFgaQHuuup0hQXpRqIa+hpJXPdc=;
        b=kOro9BFmQjyk6do1BHXOs/SvMhRi/MT83lVPSmkG4gMBwh58+qNbdFSZk4On+4rwO0
         crzDwRFgWp+BGvOvFl0kr5+tmNtFjFQe6RfPLkKs0b3BHqVUYM+M8sYlTiwPUCfWjqWA
         BHo7C8wBjFk6JqbqPIrln5jlb5E79EGDpddYpfUXR8Rrl+Rh/aZdHKlUnGtBCJ1B/pui
         hqYXrLpeq4OEb9fh/GdRpbh4+TekdzCQPczitY8TfIjr9W6gjiMQOr8IFqIscvMuBT1T
         wkC0lF3hKjKQUb18Jg/IcUvtaISdmNpD0Tpa6NkZIiHG0B6htjLCtqIfDm5zSvyivZnY
         UNSA==
X-Gm-Message-State: AC+VfDwe9aAein00UCK+WKvnK9+F8I2zobE+SyJy+Rb2Bp0sOlYPjh5p
	d7BPRGNSJmJzZIevPfjC1A==
X-Google-Smtp-Source: ACHHUZ5n+5iHOWhRthQiOeSfPq/OI+/OPCixQPcsYGvRwG60osxotB0cF5A7pDV6dz3Nptrxo1Q4lQ==
X-Received: by 2002:a5d:96c1:0:b0:76f:1664:672 with SMTP id r1-20020a5d96c1000000b0076f16640672mr28860112iol.13.1687808140076;
        Mon, 26 Jun 2023 12:35:40 -0700 (PDT)
Received: from robh_at_kernel.org ([199.114.228.113])
        by smtp.gmail.com with ESMTPSA id l14-20020a02a88e000000b00423076f5442sm409363jam.2.2023.06.26.12.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 12:35:39 -0700 (PDT)
Received: (nullmailer pid 3613294 invoked by uid 1000);
	Mon, 26 Jun 2023 19:32:38 -0000
Date: Mon, 26 Jun 2023 13:32:38 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v1 0/4] RK3588 PCIe2 support
Message-ID: <20230626193238.GA3553158-robh@kernel.org>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230616170022.76107-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_123541_473057_2300C271 
X-CRM114-Status: GOOD (  12.25  )
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

On Fri, Jun 16, 2023 at 07:00:18PM +0200, Sebastian Reichel wrote:
> Hi,
> 
> This adds PCIe2 support for RK3588. The series has been tested with the
> onboard RTL8125 network card on Rockchip RK3588 EVB1 (&pcie2x1l1) and
> Radxa Rock 5B (&pcie2x1l2). The final patch in this series depends on
> the combo PHY support added by the SATA series [0].
> 
> [0] https://lore.kernel.org/all/20230612171337.74576-1-sebastian.reichel@collabora.com/
> 
> Thanks,
> 
> -- Sebastian
> 
> Sebastian Reichel (4):
>   dt-bindings: PCI: dwc: rockchip: Fix interrupt-names issue
>   dt-bindings: PCI: dwc: rockchip: Add missing
>     legacy-interrupt-controller
>   dt-bindings: PCI: dwc: rockchip: Update for RK3588
>   arm64: dts: rockchip: rk3588: add PCIe2 support

I applied patches 1-3.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
