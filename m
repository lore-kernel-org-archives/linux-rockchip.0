Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B5060A380B
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 22:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OCi7HXIf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=i5d2cbhq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Bsq3+d3yL3djs2vDCAgttKgKl2hImDLev5qJq/ozwe4=; b=OCi7HXIf36zMbadqjgPMgykvsE
	UGfY77DrWpIFZDY8s0m7+YVYBhHz6TtgrH/CbdbWdOJ9w0xjr1W8PEZIPIZrHpz88rc4lvYxB96nk
	nL0nCaudu+C7NLSdIcrjizjSDTTiAiOuly1mP+BWzoXq9ATELs3lVR965xuThulQKrwDr93ixkYgj
	18Kgi568uAV3bCagcxG5gPntJmVxT3XIOQYFbl6e43ct3z0bfBu1vu7lsPorpdZJAbArrohMD8nnq
	rpE6o+oLnf+LE8uL4XOZ7UkAGUdFP7ZIX5yldhR4Swv0DsrgBIzFnh0bO8dscvNi+de3bgv4rsdeo
	pSXtjLDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdqd-0000000EzuF-0Wu7;
	Sun, 01 Nov 2026 22:16:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdqB-0000000EyrO-1tGF;
	Sun, 01 Nov 2026 22:15:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dzHxCP/qlD9U2Pnz2CYx8W1+O2sBTItyxz8i84HwCSk=; b=i5d2cbhq02cEiFA3UdTTb0AY1q
	0Llb1mDrR9x6zaFxdqunHTec4sA/W7RR35xBlTxiCxWNWNQUelPcrb1tLVsF3SeGx3X9bz2xNs1TZ
	Zkdel6DtXGM7lZY2KHBfo6GFDnpL9g6BiGJowo3OpMVTkigQYTM7Adk/lUt+LfRNz1Ecp0bYTX5rp
	7lDyco/nl2rP+NQ9+x6P+g5M+EtCyeiK9WFEJ5wHkMjsYG+ZDr0Trs4uFRtFt1tfItfZM5BlIii6w
	NJvou2MDY7gErqc76cmtcrL5KTlHRWB6age/1B2K+E4fPisTdpNHTIU8pay0J8IDW8iX6s0QRbUkL
	ZB3f15ag==;
From: Heiko Stuebner <heiko@sntech.de>
To: Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: fix hym8563 interrupt pin on Orange Pi 5 Plus
Date: Sun,  1 Nov 2026 23:15:29 +0100
Message-ID: <179357131393.4107717.8550224711242554057.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260908111908.19371-1-royalnet026@gmail.com>
References: <20260908111908.19371-1-royalnet026@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_141551_560558_0E10D82E 
X-CRM114-Status: GOOD (  12.77  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org, linux-rockchip@lists.infradead.org, Ondrej Jirman <megi@xff.cz>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Tue, 08 Sep 2026 13:19:08 +0200, Igor Paunovic wrote:
> The interrupt line of the hym8563 RTC on the Orange Pi 5 Plus is routed
> to GPIO0_C6, not GPIO0_B0. The vendor device tree uses RK_PC6 for this
> pin; the mainline board file uses RK_PB0, which does not carry the RTC
> interrupt on this board.
> 
> As a result the alarm interrupt never reaches the SoC, so the RTC alarm
> cannot be used as a wakeup source on this board.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix hym8563 interrupt pin on Orange Pi 5 Plus
      commit: dc963c9ec182ec24f0b10f11fe377db00528f7a8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
