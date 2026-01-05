Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE09DC2A079
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jan 2026 09:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zuo6S5MD8nhnJN0sKAKdKzTdv5L2vNGiV2K/rENuEk4=; b=2DwpErHQF70YCx
	H+Z91I2VcQoyBUjiftol+AW3oqbQR85j8L4lNsdt43mLSsXsOw/Wx1FXVpkdMhcj+0Fh9c2Q9NXYV
	FKXFtA/nepr5zlZNDcSvFejtu9718hMCrfz0SZpkQRpxLUKfxgS0AbEXZKXxcSNMQHN2u6MIHmo/Z
	6erVWBpp8DZkDtpZRoA9w/hBy43t7V0+8xau4YTLR6qMdCt1clf8qPL5Rhl7qoJ3d6Es5MvDeVxH0
	TmQIUB/n2GJ7UMos9454o+C50dUW7xAxBRfcd+wdBGuM90m0uFTwWvzGS4HVqMd+h1T0e4ywuL9M5
	BnPy1C/ODi7S4uniHAvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcgcl-0000000B2zZ-2cCa;
	Mon, 05 Jan 2026 09:11:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcgcj-0000000B2yv-1PQ8;
	Mon, 05 Jan 2026 09:11:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 983FD43FB1;
	Mon,  5 Jan 2026 09:11:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E82C0C4FDE8;
	Mon,  5 Jan 2026 09:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767604296;
	bh=293FtUQ7717ZLJ3GK5UfL9sE+u/Yt7Z762ctr1vjyuc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m+AN8CWvXZDnw/EwpEvJBge6pOURd2pvPqPihCvM2tQ9MZfqhtTTSPzR/Ijht81k6
	 BHxQq+MhazVLBzaYQS2rh7hcjFP7DxIS6UrDEm/sI7MXTfALKhYWWI+x9RZpVfNiL1
	 zvlEMVW3vlWz+M4hEZ9wRslu8lJs3FkI8j5Kg5oURUJhruQQ5pjbHY0OOaNqJATUWu
	 4Jv4JQ+iLwlXUjkxuwJpxiilo5/h00/tVH/hbElC01MhR+jHnf0EFlFtwTmN8FfqAa
	 1pxRb4pZnrQ3bhnyxVZgr+0YnEsuoGRKqxKsyDqB9PrVceMGSx3hCc+Ow9peqqlSgv
	 4mQiOgwI+/LgA==
Date: Mon, 5 Jan 2026 10:11:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Jonas Karlman <jonas@kwiboo.se>, John Clark <inindev@gmail.com>, FUKAUMI Naoki <naoki@radxa.com>, 
	Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>, 
	Michael Riesch <michael.riesch@collabora.com>, Peter Robinson <pbrobinson@gmail.com>, 
	Alexey Charkov <alchark@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add rk3576 evb2 board
Message-ID: <20260105-gregarious-powerful-mongoose-cdfe27@quoll>
References: <20260104023703.118-1-kernel@airkyi.com>
 <20260104023703.118-2-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260104023703.118-2-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_011137_397930_A90D5ED1 
X-CRM114-Status: UNSURE (   7.95  )
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

On Sun, Jan 04, 2026 at 10:37:02AM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Add devicetree binding for the rk3576 evb2 board.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
