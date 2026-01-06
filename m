Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86348CEFCEC
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 18:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ecqbt4IopLOvKn48s+AHo1UpN3dUZHyM9gaXtZ+0Lys=; b=wqhTbcZ9/Fecq5
	TTXHowc8Nqe3h3amKb2W6nv6e6QytG6Yp42bS09l7vVxqMm7tLn/Bq41cJqdaW3+nWQ6RBuoVITUD
	onbv22J/V8GEl9++x9xSLJ3KAbhARtOR6/hg3ctMK7/70jyrg7tKKuaoYJ07ERktiu93hxmJAa2HL
	CV8RezbG200quHXBs9VeXT0LfvDiYe7bUcd2ymr/e4UDdUGOsLKi7YpcQrT/qlgQb3aI5t7WLD5N3
	7lmoD3KZCbuZUdhb7BrYqIOUGaC68I0CbDeW+CctCKdY1zurOnewZc11F8LP52+NoTeo0aHq9JzZF
	j9pT0pM6lv9Iww82KZlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdC0Z-0000000DhIs-1uya;
	Tue, 06 Jan 2026 18:42:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdC0R-0000000Dh9l-1ED7;
	Tue, 06 Jan 2026 18:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=t9ScP5d8wekTX42aNwJVZH0BUxqMs75Bpo0k3QnzEAM=; b=tNoDj4IwtaXOKP5/uLMDTqaM3w
	eapxoIpWRDskQPf0akaZY8cKXLFyfnGyAqPyUtlvm/WOqcgHB7f61UXqbOZJA+pjNK2LDKONJ8u46
	Juv/aqauyVQl/H+mGEzixvLJfNcCqS8z+AOEzM5pgOtLAFJgArebT+uGyd8WF4+kbOUSRlxwyYMrK
	XrEi9nO6MrW5MUgxmWZRXuZOKhUAFZwTOsAgOYKcgKfuvPsblLeWFHeEJks/SKqwThxtOx4/nbikW
	IjLkThjNWjTOy2n3Js4nPLb7a/NVyR8cy/++jDm9QKVV84Qq02wrofM4jI+8Y3Fg5DLcHPwi85zPv
	XENjpNjA==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdC0P-001Hfs-13; Tue, 06 Jan 2026 19:42:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3399-roc-pc-plus: Add missing everest,es8388 supplies
Date: Tue,  6 Jan 2026 19:42:03 +0100
Message-ID: <176772487182.3029798.12947667629234941436.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260105193245.3167500-1-robh@kernel.org>
References: <20260105193245.3167500-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_104211_351262_122C9334 
X-CRM114-Status: GOOD (  11.66  )
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


On Mon, 05 Jan 2026 13:32:44 -0600, Rob Herring (Arm) wrote:
> The regulator supplies for everest,es8388 audio codec are missing and
> are required. Add them based on the schematics found here:
> 
> https://personalbsd.org/download/Documents/SCH/ROC-RK3399-PC-PLUS-V20-20210809.pdf
> 
> With this, "regulator-always-on" should no longer be necessary for LDO5.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3399-roc-pc-plus: Add missing everest,es8388 supplies
      commit: 77712fe6847b2471a558ec88868311a4784afdce

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
