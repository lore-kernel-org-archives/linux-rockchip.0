Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3666C83F17
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 04:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFLjTz5f3xHLwWxhKcYi5mdobApfXXpZkyH6Mu/ROPI=; b=pMMbCYHEmcM7ZD
	fgOfBdq9MGfJko5KiI0q2J0TVz5DTPgGZz5uZa011VfeFlAxnKJwbm7acXRzVD9eH13vVXYMTCZCJ
	YQkZdo6g4d8NjefGJTSRaIN9zwKp2+pVmz/1UaL3iDtZVEBfmoyfQlMGvSpN50P+aXhq26daVPx0Q
	fzlGqC6HRmEW0sCXM2pCmCtHEZFyO9U6qNsVZYOeHcVQ+7tXfX2RcgP4R6Up4EP6+VGuJ2pyyo7Sy
	qVMdncqtu9z7UXE1mdDYsab7zOBBs1wR87DRLpkx64o1XdlEJzTLgrAKfOZ0MYtSsnC0yFkwkcKS9
	CBMiZNjmnn2tnwcPvQUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWqm-00000003xS4-18FH;
	Tue, 15 Jul 2025 04:01:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWQB-00000003tz0-3UyW;
	Tue, 15 Jul 2025 03:33:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DB9DF5C55D8;
	Tue, 15 Jul 2025 03:33:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D1BBC4CEF0;
	Tue, 15 Jul 2025 03:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752550414;
	bh=ICzkoJTPLWohkOmQCN+HprWL27BZ4tfWCYre4NNQSyk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V3GG+EwmZnb5ZAx26T+g67DqRwZlsarxX1OjjEIVXToAVsx5L8hJS/Z8thCm5yJOE
	 5tkbGu/Emq1Ggc52TPAiulcZ4pzQf803r8WnxgFGecopkaIdp5YWN9eDKb+Syhpld2
	 aba7NDBgDFDpl42ue5DIlNUuvNqbedthVO4CZZA0z6C8MVZAwZAeirdL34QJDrCFYF
	 pngcoXK5goIcwo3Ta0P6JpoEfwo8sJaNYiWNg76Jr3FjNeLJTA306L8C/snElzJ9dl
	 a18Er8KqfeAg1TsGZpix3Shd3znGkbOcKbHp5TEV86NP3UhwOVBmQx58gxwX73N+yR
	 TCNV+fF2JlCBg==
Date: Mon, 14 Jul 2025 22:33:33 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: heiko@sntech.de, naoki@radxa.com, krzk+dt@kernel.org,
	quentin.schulz@cherry.de, conor+dt@kernel.org, dsimic@manjaro.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add OneThing Cloud OEC
 turbo
Message-ID: <175255041318.4178343.13360400577484328050.robh@kernel.org>
References: <20250713163255.163669-1-jerrysteve1101@gmail.com>
 <20250713163255.163669-3-jerrysteve1101@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250713163255.163669-3-jerrysteve1101@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_203335_926738_874361E2 
X-CRM114-Status: UNSURE (   9.44  )
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


On Mon, 14 Jul 2025 00:32:54 +0800, Jun Yan wrote:
> Add devicetree binding for the OneThing Cloud OEC turbo.
> 
> The OneThing Cloud OEC turbo features the RK3566 SoC, 4GB of RAM and 8GB
> of eMMC storage, and supports one SATA interface and USB 3.0.
> 
> The original function of the OEC turbo (shipping with the vendor firmware)
> is to serve as a PCDN (P2P Content Delivery Network) device.
> 
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
