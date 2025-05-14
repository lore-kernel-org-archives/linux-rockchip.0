Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA184C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 20:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0buTmg5A7lAbJ9wSy68gQU2NF24Kp2HHrP9PNp3ys0=; b=ng/cMdaZsz9jXi
	wHDtfJDqXOZJhcnZ1KyzIra2LvYSPR51jbk9PVwXXh509l83Zzu+LLTb2JxJZY8e3WA9/Iqcxgapo
	DPUh1DACu1domyck0t7bbXVtO9dZ5iNbTuuuoEOLVPYU9JhtKpslObUgGrbfOPle93/w7qeYbTiok
	h3nIjsEZ1W4roO8nliqgeUeD6p8SmBFdFlg3JNAjzdEJ8ZpolOFFI615XLoCMPLvFUJjrJaRrf5kA
	DdnqbTZzCfe1wTVEUrDSxIkMcXc5IA8OkgDRgdmBNZ3AIOlXUH8XTDIjHX9dfssQH0vcPyRn+lpHb
	bY8uExbypDbVSz2MIgFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFIKn-0000000GEhh-0CPl;
	Wed, 14 May 2025 20:04:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFIIj-0000000GERZ-3jIr;
	Wed, 14 May 2025 20:02:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0616E5C67F1;
	Wed, 14 May 2025 19:59:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF13DC4CEE3;
	Wed, 14 May 2025 20:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747252921;
	bh=JI+ICFrIj/b5sZpzyiGA9sjL2/dMeBAEF1D8xL1cHyw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DS8qB7GszMeZwaTsOn5bMQUgTXXqXoSV1llRN0P5/k3ZjPTDamqG+QBpdyWJ4wK8t
	 g0CRoNAZG7e3VmXe+jaeIQeWvim2xg+hRtlsq2Zkm2/AX/Jn/wJFC/JUfUzJBmz1av
	 FOZeXAiICnAcK2a25WZlz2lLu3U8Q92B9PbDXpcAMZwT1OcV8kag115miQs5MoareB
	 STha8oSD3UJAWfHDsp+ywKhH5BNDgAYo1k6RhDPkcNjwjPgJKCvWWjbRJlkAUgR33D
	 pNaX+98OBhRgZJzhjukqGXeFUIgZ3H08ldpc/w+aEC/0IhBVy+JvQB6Pdcfhy49zRX
	 05Sj0JC93Xuaw==
Date: Wed, 14 May 2025 15:01:59 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: John Clark <inindev@gmail.com>
Subject: Re: [PATCH RESEND v4 2/3] dt-bindings: arm: rockchip: Add Luckfox
 Omni3576 and Core3576 bindings
Message-ID: <174725291822.2934315.15782059306366204305.robh@kernel.org>
References: <20250509122637.26674-1-inindev@gmail.com>
 <20250509122637.26674-3-inindev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250509122637.26674-3-inindev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_130201_963711_9E6CAE76 
X-CRM114-Status: UNSURE (   9.31  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Quentin Schulz <quentin.schulz@cherry.de>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Andrew Lunn <andrew@lunn.ch>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Fri, 09 May 2025 08:26:36 -0400, John Clark wrote:
> This patch adds device tree binding support for Luckfox Core3576 Module
> based boards, specifically the Luckfox Omni3576, with compatibility for the
> Rockchip RK3576 SoC.
> 
> Signed-off-by: John Clark <inindev@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
