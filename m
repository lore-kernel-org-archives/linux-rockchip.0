Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32ADFC624D6
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 11:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mx1vcBjJBk1e0Zg2mgCfZoyCmHn9mG5c4aqE/Ha99rw=; b=om7cQkM/S84Qn3
	16/Ftr/Jas8geoVk6Amilxuzp1L6n6l62YPHeGAMVaLQ4Dd6Pwk/SA/3BTay+5n2vvCpYipwsFeqd
	nUsKZEFI0UiHY3TQKy0HFRpYXXad5jVrhTEeRKadvBeDW/qshNa08oWJYdEYABVAUs71ZaF6gryhY
	ErLoExgzI0V7Bk9BEqtJxv6OCRorgWQ84pgIphDgy7vwMAsRxbdINgtlQIihihHwSG3ijqYhG85zT
	IyDrHuciT0LjNja/HeuuCpwffstc7v88iZrhlAlsey/64dwPd6VMKOr9vqqbdEtMPSeCXzXDtYTo6
	Su/Vz35rizOeFf8x6bcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1isK-0000000ESlL-0ghv;
	Wed, 02 Sep 2026 11:11:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1isH-0000000ESif-0mre;
	Wed, 02 Sep 2026 11:11:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=4iGP/Ny9qyvWjshmUHMb/d+fjjArqiKV1JI8S/MR9aE=; b=vzuvRbPSPVB7yq5nS3DhOwU7AD
	gBLhpL5R5LnB0zpx6QRH3wXweGs/tI1/16Yl6g694tKHQhG6xBeeFbsjeTg+ZwRSzEliu1Wob+soq
	w6PYTNrOtBDOq3Uqc92FKqIhaCzk2HLg/EdctgajR/RwozKPtBDDBgt8IuWTq5s3AQQnmto7xjfyN
	uhuEQHNJtyg+mefUarInL3gKp+QE1gsu9Kc9MdeE/U4BPILnW0eRdE41Q2rRFnQhutd8nss+rgu1W
	vDxTdti9nR3iN3HrDlxEMWEFxJ5HRsR3xhJuGbNrImv+n/29pMx5Wp/vFaovHvHzS9hWnnQQ82N44
	9aOq03pw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cunhao Lu <1579567540@qq.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add LubanCat 5IO board
Date: Wed,  2 Sep 2026 13:11:11 +0200
Message-ID: <178834747219.2268650.13087919588318622991.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <tencent_E56643A62E2161842C400BD1D30FBB698B05@qq.com>
References: <tencent_E56643A62E2161842C400BD1D30FBB698B05@qq.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_041125_240829_14144266 
X-CRM114-Status: GOOD (  10.25  )
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


On Sun, 23 Aug 2026 23:46:53 +0800, Cunhao Lu wrote:
> The EmbedFire LubanCat 5IO is a carrier board for the LubanCat 5 BTB
> core board based on the Rockchip RK3588 SoC. Add devicetree binding
> documentation for it.
> 
> 

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add LubanCat 5IO board
      commit: db7e3af507ea357d69116c3b785c5ce3b17428c2
[2/2] arm64: dts: rockchip: Add LubanCat 5IO board
      commit: f7b576f3535665840709efc85a5e2ebe6abc331c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
