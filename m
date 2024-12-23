Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CECE4E7718B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 14:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3TmT3xoj+d/zWo72S0FzxLaKrytsxn2yweAC5mof4c=; b=lC1WXO/ZVoXLEA
	23O1j9xAsO3lYX+l8Dvwj/1n993FM4hvr/QMESAEEpk4Fr7OjDgzC41rHcvj7DfDR0gzugOgBTsFh
	wsnCmKdFNhXt2JT6VwkDiQ9zYC1lHtT/+soLmM6I8Yo0nU8VA1W2V3PAysZ3NYpzR8jHwJnNvLwKI
	rcmWhJjc3ijpgMWdVNlW4dCGxPcilThpocO73bOx5rFTqTkBoIyTPPr2fZoRhv4QrUrZpuOAW6trj
	O7g5kY+CfxePssqXbdzzJUKsm13FMc60BsGBNH8dLkn2qG+m02bBbL42cfcSQQlSnxWF2y/AKvHJb
	Z7SSXrZ/yj0t7iafT3Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPjuB-0000000AEsN-3gyG;
	Mon, 23 Dec 2024 14:59:35 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPjsz-0000000AEkg-3N1C;
	Mon, 23 Dec 2024 14:58:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5EFBBA40CFC;
	Mon, 23 Dec 2024 14:56:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81ECEC4CED3;
	Mon, 23 Dec 2024 14:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734965900;
	bh=bTXyhy5LGoHUqetVuQXM4/3DpaWUAqTOWIbBAh3fDK0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JNx4YZzc4TjHrZmhyFZpXk6bnCd5Ln6K0EQ8fDRhar6iWSp2e4Jj0ZAWde1gq8GkV
	 Y89OjvHcaJprYB9HLq+tD7cbKDqAYSJEBZ1gO/jHaoUHKNvkETSX+WA0NeNdOcvCce
	 u0ptLsttFTzb3VvSe9PeG2r6ub0TAZYd1lmykio60sgnjEh/l7w1icf7KsF9RpPsfA
	 MtNEsuahDLTBpJt9CczFiai+wuKil0T3WvHYGRIOjvIyfmNuzlW6pxUOOZxXNom+Oi
	 VYw7Y36sxY98yk3oQ8ZU8Jla0WD1J7QvKr+4S3ZINzDlrNy3prXWGRuEvBYv0U2gWb
	 NovTQb+vvzfvQ==
Date: Mon, 23 Dec 2024 15:58:17 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Rob Herring <robh@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, Tim Lunn <tim@feathertop.org>, 
	linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v3 5/7] dt-bindings: arm: rockchip: Sort for boards not
 in correct order
Message-ID: <dzrmlapgca6vwqpfxi7sub37z4taerinslfthqwqi7jltb4xxh@wtry22ybpd2r>
References: <20241223110637.3697974-1-kever.yang@rock-chips.com>
 <20241223110637.3697974-6-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241223110637.3697974-6-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_065821_912050_DDA67274 
X-CRM114-Status: UNSURE (   6.54  )
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

On Mon, Dec 23, 2024 at 07:06:35PM +0800, Kever Yang wrote:
> The board entries should be sort in correct order.

And what is the sorting rule for this file? Board name? SoC compatible?
Explain this in commit msg... and please test your patches before
posting. Public infrastructure is not replacement of your tests (see
failiure reported by Rob).

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
