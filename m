Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BB8AC7EE2A
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 21:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLbgIHx8HQ+g9u2eW2yB6WYxXc+eLt3ffKbfNOTl2mo=; b=eEtjLzk2kxEvd1
	uEjtIcQnTMWF50snFTbBmXdyZCLmG7ovEjwfK9ykPuGAbq6YStwIgVno7GgjSaoLgnTPYGOjIFdn7
	U8RspPm5yK8Ptjggyo7duoGSY+qU8iOp1Vq5Cb89rONbH6RQT+CWRcgEOfeYaIDIfRIwhNUbMfUQl
	WMEVpt1rhp80aFn/vsbR13Ppjst34sIZRrHS/+8o1OK7d+W3fTKjcoKz16CTmVzJE1jfxWDct4sL/
	n5pzPHrXO1ibJS4Q7ilPIyP637yd7Qm7LvChf0hZFs8MyErFN+K2In7TmbtNt15+BXZED6+fEJqHJ
	vJUzVZ+AAgjBc1VsJepA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVGYi-0000000FqWl-16RT;
	Fri, 27 Jun 2025 21:24:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVGV0-0000000FpvE-0KpS;
	Fri, 27 Jun 2025 21:20:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BA6D85C6464;
	Fri, 27 Jun 2025 21:20:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 516DEC4CEE3;
	Fri, 27 Jun 2025 21:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751059240;
	bh=4J16U+mJuSFM5IHsFfFhTgaXdQ+EuBLNNii42LozHp8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wf52Y4dHyxFBJfkfDoz1mzvZGGkii1Xvc2cJs9k2+fGFPBXQcDlhHTybVbqCI93sS
	 oOJllPgFpQMFxuQuC3cQ1qpCit2+VjXMC1qSH6SJkvONDN7cIkRtandeD2j6sbJ5Ku
	 SjWlQsZsFX+B9lHquH1EcITt6noZLzyZa7uA98rw2hgMZcsNm5Tgip5IDs6oFRZCOG
	 nKo/uRrZZHXjlb/UjUv11ns/TFYhfKzmm5sLETXRnwxeqMQSLkw8aTf6RdYMKlvoE6
	 5WO/gfqxDxsYT2P13F28n0zRs70PQHsOAbqAMDbZVDHw+bZ9ntC3nErEqhsUJCjqah
	 0WUGxhUxYz4eA==
Date: Fri, 27 Jun 2025 16:20:39 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: John Clark <inindev@gmail.com>
Cc: krzk+dt@kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add FriendlyElec
 NanoPi M5 board
Message-ID: <175105923912.162854.13501826277820249376.robh@kernel.org>
References: <20250626054728.4882-1-inindev@gmail.com>
 <20250626054728.4882-2-inindev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250626054728.4882-2-inindev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_142042_160515_34456220 
X-CRM114-Status: UNSURE (   8.18  )
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


On Thu, 26 Jun 2025 01:47:27 -0400, John Clark wrote:
> Add device tree documentation for rk3576-nanopi-m5
> 
> Signed-off-by: John Clark <inindev@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
