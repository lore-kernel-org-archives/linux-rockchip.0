Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B78BCFA44B
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 22:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3cbYEXcj2q8q2Kuc9ur9jh2cSy3IrqdsSdViHX89BM=; b=rDUshWitKpMfsk
	6oIA5FI+O2EITZc9ayAaJPZ7tu9yq8eqccO5YVG1WiTNOJfjhGg8ZhcQW9GoZhCY43DYKVtw1Surk
	G/TIbfmL9FzbhlRiSWlnwIvdLIaCcy8C+DE4hiXt7BXkUBRqrtHRjan0PWZantKrlwNJzGZUyAvXj
	wFj4W5VIHwPp7GFkwPGkCSa7M/D2LQoJWEsSzD8KbfoMp16gEcXrjGOU8rHrsLfdnAeAx30v2/7sw
	skFDlQSyxYllPSGEw51PQ+KGX2aoE3woG0HhibQiGCSCrbudlXvKuWzw4TUKxQSuUNDFZa/3ZA+Fy
	0QiJ6ueCdOfEpse82R2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMD3k-00000007WCZ-3bq5;
	Thu, 20 Nov 2025 22:23:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMD3d-00000007W8W-1otq;
	Thu, 20 Nov 2025 22:23:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2ZGagKo4E8U1fZXoJGY97Lp3D/2VCHDTxHIn0BKkUPc=; b=neVmwqpRrRcYxienEvFOjVQW0V
	rf8Ybi5e6eMmT8PnqVjM1yI8eJ7v9SzIiiSZc+ljONYiq3gJWmLwjNd8ofGSs3QJAkugieLg2ZvOU
	CysQh7LZx0k39Lu7eZRItkNrCdlGTcJoVmQKzREZNGe26WTBW9KgOpjdQDnnmkyQ+VWK9pLA5RYpq
	S2+6i4uLtOPw46IJvxVKEc892ehJjYGbMNmkKgUPubD5X983e1TDbYkGE1WFftbWe5HEgKtAqN9Ow
	wKq0i4GCYz1mtC67lQgS6vgah5tzcXrdM8eXVM64nCvHv9jwfFhD1bIXxxzUyqqCA8SEW6980oHTQ
	8iPlZGmg==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMD3Y-0007Je-OL; Thu, 20 Nov 2025 23:23:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: rockchip: merge Asus Tinker and Tinker S
Date: Thu, 20 Nov 2025 23:23:02 +0100
Message-ID: <176367711159.9778.13398191776805888348.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251119-merge-tinker-bindings-v1-1-4072b55750c1@rootcommit.com>
References: <20251119-merge-tinker-bindings-v1-1-4072b55750c1@rootcommit.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_142320_068311_4E3D59B9 
X-CRM114-Status: UNSURE (   9.25  )
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


On Wed, 19 Nov 2025 09:22:38 +0000, Michael Opdenacker wrote:
> Merge sections for Asus Tinker Board and Asus Tinker Board S.
> 
> Asus Tinker Board S (Storage) is just a variant of Tinker Board
> with an added eMMC chip.
> 
> 

Applied, thanks!

[1/1] dt-bindings: arm: rockchip: merge Asus Tinker and Tinker S
      commit: 605945281a65ca68af00f3d7592a191b20b21ad4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
