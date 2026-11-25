Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A43C2606A336
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 20:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tGdLOB16;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sang-engineering.com header.i=@sang-engineering.com header.a=rsa-sha256 header.s=k1 header.b=IC5AH4wH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yEgV92N7+XHudBkrUbTJ7ewSmKLBAxAGOgQaijcFTgM=; b=tGdLOB16dyK2njwQpOVTioENWj
	ZwixdiH43PCE+3KNihPfRt6PuihHeq6LJBc1gc3Brnqos+5ZsVC9iM8OGUR7yj983hR8Xdi/a67N4
	ZMtMb7+cJDCQXnOGxKqHx4FEzvHxrsRWEVFeG97UrW4iZyGUpc3n6L4kJMpHzhmRg8sgL6nAkZgQL
	iG6tVV5y8Kv6ew/5IoSZRAGXVI9NvmZLbqCAwceaHgZRQo/IiME4rXdHcT2XrvE3Gk76QgZxhdCsI
	v1GFNks82mI2SK8YzUTYpfx/tSwMdxSjx6U9wrl/RxDRdxcjGmY8Mt57Yq8vzmKOs30MMw90k2m4d
	ObH3kXyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWK2i-0000000BK5j-2zUq;
	Wed, 25 Nov 2026 20:56:40 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWK2f-0000000BK4k-15Ba
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 20:56:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=1kRR
	OKKosl/yXIFPGvtByySBNrtF9KbT7CipojNr2Ac=; b=IC5AH4wH8ctwgU1Tad8s
	xxEe94U8RhC8pxG9PqWsbXeD8GVt2Y+5Mvs31bENX9y38nSyIDNndU9Y1PG0a7NN
	W+BuKm74LzsdGg6JApTSoC+1xeN6L07eXNsFtuL+Sij08GFgJ8UJumuydRlNXvxu
	jM3vqfO2wWK8nSQKrAUPz730IdfB47eT8S8imuHjYRXMHCIItemfb0v/lCesvMz7
	LJZSN3QJrAXQqhy1pqUb6z/kHft2RKTw7xem2GTTITZu3xnp8TApeA/ATHOUGM53
	MbBSbQhwqERI4NeMSCtkHF8ddkv/OFIAFw+dYxneDk3fgbvDvYfaWtwnCdpMjPiV
	uA==
Received: (qmail 1132956 invoked from network); 25 Nov 2026 21:56:32 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 25 Nov 2026 21:56:32 +0100
X-UD-Smtp-Session: l3s3148p1@ZOnQDyBhXuAujnvc
Date: Wed, 25 Nov 2026 21:56:32 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Russell King <linux@armlinux.org.uk>,
	Paul Walmsley <paul@pwsan.com>, Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>, Ulf Hansson <ulfh@kernel.org>,
	linux-clk@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 3/6] clk: renesas: Convert to dev_clk_get_from_provider()
Message-ID: <awdLgHC8WvGsgQAk@ninjato>
References: <cover.1795094688.git.geert+renesas@glider.be>
 <55d67b95c675924fb67d13ecbab47bb45c8af372.1795094688.git.geert+renesas@glider.be>
 <awQ6PXdLz88kI9wQ@ninjato>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <awQ6PXdLz88kI9wQ@ninjato>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_125638_195599_B9F7A0EF 
X-CRM114-Status: GOOD (  13.20  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Nov 23, 2026 at 02:06:05PM +0100, Wolfram Sang wrote:
> On Thu, Nov 19, 2026 at 02:40:36PM +0100, Geert Uytterhoeven wrote:
> > Renesas clock domain callbacks use of_clk_get_from_provider() to obtain
> > clocks used for power management, so the latter show up as "deviceless"
> > in the consumer column of the clk_summary file in debugfs.
> > 
> > Fix this by using dev_clk_get_from_provider() instead, letting us pass
> > the consumer device, too.
> > 
> > Sample clk_summary change snippet on R-Car H1 Marzen:
> >     - sata 1 1 0 62500000 0 0 50000 Y deviceless    of_clk_get_from_provider
> >     + sata 1 1 0 62500000 0 0 50000 Y fc600000.sata dev_clk_get_from_provider
> > 
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> > Tested on R-Car H1 and H3.
> 
> Tested on RZ/A1 (Genmai) and RZ/N1D (demo board).
> 
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

And now also on RZ/G3S (G3S SMARC) using the rzg2l driver.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
