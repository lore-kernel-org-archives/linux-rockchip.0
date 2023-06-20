Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E750EEB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 01:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8UvMms24KH6dc1NWIg1spdI+rN5x75V2jkbnyCe244k=; b=JLdKHYlVqDV84Q
	USTilvwsN8bxesaT+mSuT2NjrJTNzDMcdq/GJga11VJcXbxdLUavACkPtvZPCAWJBc4sgXnkYj2zp
	sPtQ+76Zvg5ewO9ErrahW5MTI+mYqf4W+5lfRasWA8q+iD8f7h2Smoq2Dq8DlqgG8NueaSQpSfyEL
	jLzvm9MOFKDbmpwPIBff9JNMMBsL8VigNMtMbfy6HIfvBF9ktI2reMxUt3GwlkYS5NoeD1g5qaNI9
	7Xf9EJ7oZEbqJwQ9f09mrhyiw085d0bVgOCVdNzfqvQu8jh3TWIo9o60VmNh0s3StofUM4r2mC70n
	txgCeUhtMdjgpnvjI/ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBQ0H-009rpv-0f;
	Tue, 20 Jun 2023 01:17:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBQ0E-009ro1-1X;
	Tue, 20 Jun 2023 01:17:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B732560F79;
	Tue, 20 Jun 2023 01:17:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8E8AC433C8;
	Tue, 20 Jun 2023 01:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687223867;
	bh=JhZIMKUZdfUZG1G2LF/l44rtxC/mRDQxMAGxL8IUqvc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Dh3bgcsgx6qDhure1EUvQAns9alftceykHkXtqxvGfbodjpMqtPMmp98jFNhAOG1r
	 1NDK1Vlh9h/96366cR9HLSV56f1OSv7AtkVF9pLFv13vIQfv71/hL2/K/eNt4buEIx
	 J097jL1vOOAeKlcq+oVS0UBga6BidT18AZV2uIzjcJt9gyWjqMtXYmAXB+zbfJInVH
	 co4pU5/FT/b3Q44fR4qPO3XDN/nPx2sdDHTv/tGj41xSPFSKgp1Y9vRxIeYEd3yyH5
	 rgQ8YKDEMSQLrb0iaXF1UFhNa30I8saTcL0HLEgkZaX3H5GwuDyhV5O+aMO+1wCXWW
	 9/02GYdE0TbJw==
Message-ID: <3b7c6fee-4af3-5541-5c24-a290e3243164@kernel.org>
Date: Tue, 20 Jun 2023 10:17:44 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4 0/5] Add RK3588 SATA support
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
Content-Language: en-US
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20230612171337.74576-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_181750_570800_49414598 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
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

On 6/13/23 02:13, Sebastian Reichel wrote:
> Hi,
> 
> This enables SATA support for RK3588.

Applied 1-3 to libata for-6.5 branch. Thanks !



-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
