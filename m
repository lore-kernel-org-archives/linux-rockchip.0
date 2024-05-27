Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C242EC25B74
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 22:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQxJd0tQtBTxtyKpwlp89UI+Q7Df0wkkeulIjp5vIow=; b=AUvWIC0MtHrBif
	inXIdooyYGvwQpyFe8KRVOeYCR2U9srUTCpLkT9f8cLFPgsrPt8DTEydbb29X7Tvwh5TrHPVCK52J
	YEOlgY5W5fMjoWGArWvw7X89Qy2xoTS7bkDwfMWYA8ZrRDUKISy0z97WTHVvIwxqtd+wq08OesKzv
	4fzHagpm4z/yNgfPYJBN9daR7vOF6sK2JVViZ9fwOY+HiUdo+jGUj/iFJ5yi5v4sHEyAnTgNbZV9H
	b32XVrXpavVxshnwRjbQXjThUEDk5d9QSo53qBF9R/e5k3SB/w3SKpKuZyv2qs4VPx5EasUnUrwcR
	8hwBlk+XiXLVg/boXLzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBj2z-0000000GVkk-3Lno;
	Mon, 27 May 2024 22:42:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBj2v-0000000GViy-0XUQ;
	Mon, 27 May 2024 22:42:26 +0000
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBj2r-0005Os-Bt; Tue, 28 May 2024 00:42:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add Radxa ROCK S0
Date: Tue, 28 May 2024 00:42:17 +0200
Message-Id: <171684956152.1783037.13185837612901353898.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240521212247.1240226-1-jonas@kwiboo.se>
References: <20240521212247.1240226-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_154225_186041_F64FABCD 
X-CRM114-Status: GOOD (  11.54  )
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

On Tue, 21 May 2024 21:22:41 +0000, Jonas Karlman wrote:
> This series adds initial support for the Radxa ROCK S0 board.
> 
> Radxa ROCK S0 is a single-board computer based on the Rockchip RK3308B
> SoC in an ultra-compact form factor.
> 
> Schematic for the ROCK S0 can be found at:
> https://dl.radxa.com/rockpis0/radxa_rock_s0_v1200_schematic.pdf
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Radxa ROCK S0
      commit: 768dfd7b49a24b02f1422bf8e2270bcdccea16b9
[2/2] arm64: dts: rockchip: Add Radxa ROCK S0
      commit: adeb5d2a4ba47910238b3c4f5fd960cc0c26a98b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
