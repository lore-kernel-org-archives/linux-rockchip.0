Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8418C282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 22:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEVS78nnvNzxb1GrgERZs/PP3NjsbhMxDzaDJyrnI/U=; b=q350onMxWrDB0x
	P1EgtPwc0xQp+nizCF1ZOpfKbuUUFWjQ9jwFfYH7mmnpY2Ozn+T2vYaRMTRZEoT2BuNWHyqM48XMb
	N6YPELhyNb7lOrdBHlpN78kJp9t2KLSBBN1p3Ftkqn7S2xL081/wBZlj/9m6hT78BU0IYNYoEbs8f
	cxTCV4o9O8xNX2+OTt39Rw3CDT91CD9hxONzXMZUuw+JuwFkG1lF3C3b276znTuL57IAH69IQy008
	VYvqf9PfOAZLLzHC4eSA6ubUGufI6hbCX0RS7N+ED3JcuWzfxq8cuoPBvc5V6zHK0gEU/t8Plx2rM
	zy6gFeJCfxWeO1w6qLdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ts8CI-000000076yp-1liy;
	Tue, 11 Mar 2025 22:35:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ts8Ae-000000076rQ-1fMy;
	Tue, 11 Mar 2025 22:33:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F23675C54E6;
	Tue, 11 Mar 2025 22:31:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9523AC4CEE9;
	Tue, 11 Mar 2025 22:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741732435;
	bh=3Z1R+L+jSx5edeWaQS0cx6WJe3wb6MZKgrGV01ESFAs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nCAt106vo4mx0IunDxJo/tZeqkwBgQXFwAdGFGATTpJqAHxWOEzH1rt3h2cbbaL18
	 ELbiVSL6qxyYjnBp0OmGbOFe6TEee2lL32MzveTbUgrceFvDbo/jC9KMeyL7eW7c2D
	 IMf+DRS/ojD2Lhldw/AySw9OwyXFiuV6IaRxHTbZta//FSwmo86+BBuREkvSDbNPCU
	 2fwbAsGDNeNG9qCPu9875swgHns1VFA4H7l7oYstzmp3x9kexg6iYKu+aTVnKx9lpY
	 lgd1LzFGQgH4uDyKQd4jbe6Sp7nyZONyJeTHoZC3zfgpQmcbwNh3qlYhSbBTH4HaOz
	 QcCn7eAth8SOw==
Date: Tue, 11 Mar 2025 23:33:42 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 04/15] dt-bindings: i2c: i2c-rk3x: Add rk3562 support
Message-ID: <dqgqw2e33gaieos3lk4vkrfqmnunrxooar7gisrdwqjhdnl4m5@s2cxnaur5a2b>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
 <20250227111913.2344207-5-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227111913.2344207-5-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_153356_474172_24BD0318 
X-CRM114-Status: UNSURE (   7.15  )
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

Hi Kever,

On Thu, Feb 27, 2025 at 07:19:02PM +0800, Kever Yang wrote:
> rk3562 i2c compatible to the existing rk3399 binding.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

merged to i2c/i2c-host.

Thanks,
Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
