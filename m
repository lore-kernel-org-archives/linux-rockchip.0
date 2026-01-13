Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABF51D29DE2
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 07:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBXCP/JMqrPcMTSVnfy6QTWCuIVyoa8ymaq9w1FuB0M=; b=VPYsw/ruRxSTTk
	WGFKAud1yV1pQhnswot8kQeHxHUL2xY/6Y9Qt+864V/dNgzka4KQ9H4qjAJMHFBQWT0ppt+rD9eQq
	KtAM4EsplnIbXZzuncF2E4Kwlx//QF+ptLQYVUdPfgXr0mqV3bRuf8C9/YS7GySLiNcOAPRP0Z5uL
	rWOoENnOfZozWW4zuSa2GTHg+Rt7KD4J5Nt2myFp5hL8qxVYgjH6gPe2kUgXrx3WHfe+zlWTxNnzB
	mvv9QaFpXAB3GHxss+mXWeTgAL1VH8PpXTqO1TX6HIcMpYGIY90t2IpqgxYjjRsJ7dKHH7ACsWcee
	4z2BqmkUx9EbgVrsowVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZIh-00000006h0f-0GNK;
	Tue, 13 Jan 2026 07:58:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZIb-00000006gzk-3c1x;
	Tue, 13 Jan 2026 07:58:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 20382400CF;
	Tue, 13 Jan 2026 07:58:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 730F9C116C6;
	Tue, 13 Jan 2026 07:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768291125;
	bh=3lXAgY/S95JPbtfa3piTX96xIrT9coW1vZhiDkowGIE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I4ZTpJxy5sukEisu2/F6nxdjmlQMYMKB07601B+sXZYup51yVfBRBEptmT4q8xKYt
	 bKzrM1QWX1/hQQB6L6Il1B6IthUHCJ3Osa54LOetCgBmrPqRQaQ9KEtOL6rmBRFsWA
	 Ss8ia8LioYltC2zZmRrhMmhKsyLWi8g+8VKFPpmCd0rUsFywe5Du+4jBggBei/lMOK
	 d65s7Hz62kSHTaL/t6uXeJqbISMdD1v7AF86VLbYFUkBZpXpu0wtzt4TOKi+SkPvSY
	 AdD6BDWJEsdSZTiCki4VC+sQsch4YWExR8dQrDTrQae4gIRrgUNuRowaDm6Oo9z+86
	 V7+wm7kCH3geA==
Date: Tue, 13 Jan 2026 08:58:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joseph Chen <chenjh@rock-chips.com>
Cc: Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/3] dt-bindings: mfd: Add rk801 binding
Message-ID: <20260113-funny-utopian-doberman-1a55b7@quoll>
References: <20260112124351.17707-1-chenjh@rock-chips.com>
 <20260112124351.17707-2-chenjh@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260112124351.17707-2-chenjh@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_235846_340249_29DA585B 
X-CRM114-Status: UNSURE (   9.60  )
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

On Mon, Jan 12, 2026 at 08:43:49PM +0800, Joseph Chen wrote:
> Add DT binding document for Rockchip's RK801 PMIC
> 
> Signed-off-by: Joseph Chen <chenjh@rock-chips.com>
> ---
>  .../bindings/mfd/rockchip,rk801.yaml          | 197 ++++++++++++++++++
>  1 file changed, 197 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
