Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39D31C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 15:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iHkv+SMsX4AFPybRTwOxKvwZsUZNY4WnyTSZlMaNng=; b=cehmtygdXRCXUk
	FVLMyPNLnafsI2VsWVU6GGs3uAxGXiwDdmfx1QWflTFUu2lOa46MnTULeoRzFhsfmo0hIz877One+
	SLyjF/JAV5YHuiuN3kI9X0zPQISMceYP0xGw3x8uu8yClbFXJ/dYIwrMxm7PCDpxBpOGXjcNsdd4c
	X19XcKoDiBs0puXEpxrZJH+o6WlviJF8pGQudXSRNejTZi/2dTaAVB95E3tgrEs6Bb9sdDv9pN9WE
	NqylfMXlIb3qdCBxHylaqgQsTKEUFUWJ3REGIxORStKHxvDxTGBMf+aIzwZiFjjkt216fZK5Ef61O
	RFhuIf1D4kKyjdtQClJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKgK3-00000009luu-0Vh6;
	Fri, 21 Jun 2024 15:37:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKgJy-00000009lu3-47yk;
	Fri, 21 Jun 2024 15:37:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B3F4762508;
	Fri, 21 Jun 2024 15:37:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7796C2BBFC;
	Fri, 21 Jun 2024 15:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718984221;
	bh=atpQZY8aOiTofjKL69fhtdxjNndjMkw9O1BEs9zt1pY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Q6zz2WhdwH7/OdlhSG29KjrnN2W6FKS1z8+FSjGm77tisG2nX9MESqEwnOVRKJ9kX
	 GrLtD84WaApIfsif2wKzcUZQELo4/13RnWt82T06Lx7wNfjS2cMafehpKm6MeRrSfU
	 dd2FO9vMdmKIJdd+v8xLYTS/KLYxazaDGf8lMlA14LajbRcvefaVN6GreDiyMVBPpg
	 4XvH1NX7g7ufBfOee23HiSDOEOaU/UkWCQMUjId250BS9fhuksnPMofEKFmdwUfewJ
	 sczFITfpKq0deS3RjkX1PadlFAlcw5XTJqFcIu7aix7sCUp0KaN/vSBJGZmJ6PgHa1
	 i8E8/jJtv8gSA==
Date: Fri, 21 Jun 2024 08:37:00 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: netdev@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 0/3] cleanup arc emac
Message-ID: <20240621083700.4d3981b7@kernel.org>
In-Reply-To: <171896102978.12983.298145904993537431.git-patchwork-notify@kernel.org>
References: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
	<171896102978.12983.298145904993537431.git-patchwork-notify@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_083703_104197_6CBC5DA1 
X-CRM114-Status: UNSURE (   6.56  )
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

On Fri, 21 Jun 2024 09:10:29 +0000 patchwork-bot+netdevbpf@kernel.org
wrote:
>   - [v1,1/3] ARM: dts: rockchip: rk3xxx: fix emac node
>     (no matching commit)
>   - [v1,2/3] net: ethernet: arc: remove emac_arc driver
>     (no matching commit)
>   - [v1,3/3] dt-bindings: net: remove arc_emac.txt
>     https://git.kernel.org/netdev/net-next/c/8a3913c8e05b

FTR - all of the patches were applied.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
