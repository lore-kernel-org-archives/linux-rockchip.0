Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E360AC282DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 20:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/8atoSfgOQK+t7GNUx8mu0PXyNw9x+WjcQ4eLA5ZJA=; b=Em3r/MzgarzcgV
	LgI4qS519vNDe7iV1WrIBzKsbvHIIBlKD9Ddl26sS4/YRD1O1ePoUXDl8k1KMNLQ5SoNxuVTknYLH
	Z4qtiZF7lCV84g13c7shP46dzHO5nmflu8wbIgxk06hdSXFGLdkJQgbaeQTz+uIb/97oXH62xgMrg
	n1Zzhc+Gp0B2wvlYdgz1kCoope2K+B22M7kUBATtNGs+0qCF6fhswk9gwTSe0YRgAFc0wJ4YRMWEB
	0rtKvjjhE4hbdUVzSKZtdAJi25SAEhSoidbaqXi4rbWwasMLDqgIg9P2vfouA9TNCRDzEn/QvDVtY
	m1Fg921A9qA6AhzH2xnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trjZy-00000003qln-3SSu;
	Mon, 10 Mar 2025 20:18:26 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trjUk-00000003pGE-00sQ;
	Mon, 10 Mar 2025 20:13:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 00404A46205;
	Mon, 10 Mar 2025 20:07:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78140C4CEE5;
	Mon, 10 Mar 2025 20:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741637580;
	bh=xEM6pFjBPHLs4DsygLv6xgvUvNhyjDWD4dquKB53SKw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PXgsICyE0x+9FM6rPZWMI2kSvKm23bvxf00IUkdgmHflvb5JQuonJ3COzKo3cDsk3
	 e38kgtuQjaJSakJg/LaUDVNB8ReZmowej64+ramCYG5PC8AP7noqXM+5AGbmEOCoer
	 zkGjpeNVMOdHAlkTgfVBtFyFBwN8ftHIppfyw7IWCAp5mhGw5L+wvPDLybzQyCrrGj
	 tN3LaZk8h323+X1M4l+/fM6GtStN4DYzN0vRu9cqobmNaC/ktIXKBOliGvU5wsj3el
	 y6zkmR5tQmuyHsyjlwWXSTNbNYyU/4R87ownu7+7oea73PMcRcDoHK8kaY6M9JhMFC
	 /WwhDxsqc4E4A==
From: Vinod Koul <vkoul@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250306-rk3576-hdptx-phy-v1-1-288cc4b0611a@collabora.com>
References: <20250306-rk3576-hdptx-phy-v1-1-288cc4b0611a@collabora.com>
Subject: Re: [PATCH] phy: phy-rockchip-samsung-hdptx: Add support for
 RK3576
Message-Id: <174163757697.467704.14207163796763946102.b4-ty@kernel.org>
Date: Tue, 11 Mar 2025 01:42:56 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_131302_111524_36D2B908 
X-CRM114-Status: UNSURE (   6.82  )
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


On Thu, 06 Mar 2025 20:29:23 +0100, Nicolas Frattaroli wrote:
> Despite the compatible already being listed in the bindings, the PHY
> driver never gained explicit support for it. This is especially a
> problem because the explicitly listed PHY addresses need to be specified
> for each SoC.
> 
> To solve this, add the compatible, and a PHY config, with the address
> gleaned from rk3576.dtsi.
> 
> [...]

Applied, thanks!

[1/1] phy: phy-rockchip-samsung-hdptx: Add support for RK3576
      commit: 4a8463ae8d871ccd491d48a371a6789eb7378243

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
