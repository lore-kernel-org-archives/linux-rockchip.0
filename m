Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554C9606A31A
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 22:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yQAk9Sur;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=C3vYXEET
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=b5wcfB0kRDzKq2VYFqbtSGl9b0ZmjclLHRFKCKh3Cg8=; b=yQAk9SurX0e/bQtkogpQPaDN//
	zB9OVrB8mMRcSpdX6BB89a3I3XAs6cMat/icf07Sw4rMjw8xFW9XKIWnRETtgnC85Pmvi5K5rVrEq
	WmcGCfOFRaVpCT2ZlFj/OQpj/cTeI+Z705ND7kBe7GN0+3W2qj7NVJNqA+aMiDpTU3oMATNsii/EH
	LthKzPz3Pnt5aVwgATx0UkNhmuPZLCfkQL0/fjnLlKC4psD2yIesWzEuNjfGametwdRw9VKx8ko23
	Ve2N7SbdC0t6AQD2vrCz7Dn69emhTw/gxMzXvXV9hKDc59HfOdwr7IwaTi8M4+d88wGkJP7xr11QV
	8zkkAiRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVGOr-00000001rXy-40cT;
	Sun, 22 Nov 2026 22:51:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVGOS-00000001rKB-3bbg;
	Sun, 22 Nov 2026 22:50:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=SUxK8Wbyp1z6HIwsJTKoC1poNH1fjxEFmkSe91WZgls=; b=C3vYXEET62B3VwzJDoyz559Wqs
	ZvXUi7KIr4r72m48oR0ASnZSR02rvpB+PZ6Ibg1XqKYmYeSfIG5Gx4AAFgZgztQhs7agaidGGXny3
	OdtpQNboCyRjZiXZzBGplLF6ncLDpWnftmbvcFD06KT5TGYGpjCYUG15w2pbcGgGic241+5pqLymq
	Az4IGWmwqq1y2COBGQc81rwyuXpEQECmozyd1u6oibAxax7S5PRxfys4bz2WecSGb8gZjVe3mWZiU
	NLAbPVdABlfFf+ndqc+t+kRimVjQMIHEk+vgIuAlxLySjJf94r3ifXLKQnV1CbLZ7yAOxBG8rdV1j
	z+tOv/cA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Igor Velkov <iav@iav.lv>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Name the GPIO lines on Kobol Helios64
Date: Sun, 22 Nov 2026 23:50:24 +0100
Message-ID: <179538782472.3150822.5314985328388383475.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261112-helios64-gpio-line-names-v1-1-2ce53756753f@iav.lv>
References: <20261112-helios64-gpio-line-names-v1-1-2ce53756753f@iav.lv>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_145045_241507_B596576D 
X-CRM114-Status: GOOD (  12.48  )
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


On Thu, 12 Nov 2026 01:18:15 +0000, Igor Velkov wrote:
> Name the SoC GPIO lines after the nets on the Helios64 Rev1.2
> schematic, so that user space can find a line by name. The auto
> power-on latch (U23, an SN74LVC1G79 flip-flop), for one, has no kernel
> driver: user space sets it at shutdown through AUTO_ON_EN_D and
> AUTO_ON_EN_CLK.
> 
> A line that reaches a named net through a series resistor takes that
> net's name. The SD card lines, whose nets are not named, take the SoC
> pin function, and the two board revision straps are named after the
> schematic's "Board Revision ID" block. Lines that go only to a test
> point or are not connected stay unnamed.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Name the GPIO lines on Kobol Helios64
      commit: 4e14210ef8d7b47d1ec9dc6d6655c1fa5be18243

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
