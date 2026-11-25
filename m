Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66EF0606A326
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 20:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mjKMZF2n;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=W0Blz0s7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XrFRncp1IM3LB6T1uz5RJedaoONMWMfKGyoRO/i4BFM=; b=mjKMZF2ng7UU7x1q3q+UPHWOHs
	I2IK0oJX/PlldbfanWcwnqUsI3B+iEpwkcHzMVPMKOHUtrEkQFeboujLmtuFLwTi/x4iJqqmD3irD
	BNunqatK+W2ufI5/d2PZbkT6DOMCCjPn5W/rn3KZ/zwYCSvBDBqMNxzQGYa/dVQXE09l49IH80EI3
	IKwB8Tg8RAECtfNhUREWtsKFi4uandplfNJdiczHKlJv2hxzyOLixyZHD4Yaa+/hQcQmjbQudsu8Q
	UOmFMgqPieXJFQYQLKoozhyk/HMhsm4+sDrHsocwlVx55cCZeKhAqe5H9isTPiASVtuFIpoktOhC+
	dXb61d4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJVl-0000000BGlp-0dNe;
	Wed, 25 Nov 2026 20:22:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJUY-0000000BGD8-0Jxb;
	Wed, 25 Nov 2026 20:21:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=B5BZgd5zoHz0zdIhCzw8DSXoUSIrWD5j0BYlPEOOgi4=; b=W0Blz0s7Y+5YxGr1yzjAAbi3Q4
	99BbmkOTwIREG3Xt2cLcIWh2S1ucamMoYn5/rNfMTRtGd61LH8aLY4lE8uv3DBq0Kv6z6BK6bZFSU
	hRH2gDwGDTJtyQ2AoqyafrqVNgUGeOzPTOkolzKNBQ8lvxPdNZcK/Fuc45iYDmZa8B5TFHo0N9Qqf
	fST48mLv4HmOe3WMHINs7Gj1o9EGwNQAb622Gki8iAbgnQxfnbLTmeehn/AORAPpowX6lHi3eyGAi
	CdhopWWYgnEeC3Eygk6lgqiWhfYBhU+jCHBMRFSt5BKzzIh/bw943dEUNDq9ZuJSmfP2fynLQGG9J
	HgLxyyDA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add FriendlyElec NanoPi NEO3 Plus
Date: Wed, 25 Nov 2026 21:21:00 +0100
Message-ID: <179563805238.3885553.12400647321653395091.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261119121433.550704-1-jonas@kwiboo.se>
References: <20261119121433.550704-1-jonas@kwiboo.se>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_122123_877612_1C21D76B 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Thu, 19 Nov 2026 12:14:30 +0000, Jonas Karlman wrote:
> This series add initial support for the FriendlyElec NanoPi NEO3 Plus board.
> 
> The FriendlyElec NanoPi NEO3 Plus is a compact headless SBC based on the
> Rockchip RK3528A SoC. It shares most of its design with the NanoPi R28S
> and NanoPi Zero2 boards.
> 
> Jonas Karlman (2):
>   dt-bindings: arm: rockchip: Add FriendlyElec NanoPi NEO3 Plus
>   arm64: dts: rockchip: Add FriendlyElec NanoPi NEO3 Plus board
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi NEO3 Plus
      commit: 64ac32ca71400db753449770d81f53c7f41b112d
[2/2] arm64: dts: rockchip: Add FriendlyElec NanoPi NEO3 Plus board
      commit: 6782665f70d67c0541ca6a1619b1dd7ddaf70b53

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
