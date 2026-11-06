Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB15606A326
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2026 14:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jFC/1NDq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=F7letiVq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=RzYMMBfMJiqOm5ee53G8aTknd7wu3CoivdBWFEy8eRc=; b=jFC/1NDqNFIu6KufArZ6p3E8a6
	pC2CXLa1TJHb2bRlK/pFAqs9DVuZgWgd6s7RBH2PKmWei7srnBTJVCPX0P1VBoDsLKS8oXvuLuHOy
	0uDEtudHibqev5sBtYbA1FgaKZfECOLnlYos7vLxM2baaYQKoo5K12nqrXXe54CYuor1ZmeCefVBb
	kPqRSlPFTwrTQfLsk1Q8gGCzZpixmcHOgAmUzdJCw9xCsEbIXUEKNR4EaCUTKMk0sxkL/m6aq5+8H
	PUnGc2Iz8eoqYjvN900d0bdc/3fiH5hPSwH3ESHv6VAHx3g3rx8oLUWaJvZGSTu2NTZDVmdMbGfAB
	7jaInIvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLPC-0000000ClOw-2PKO;
	Fri, 06 Nov 2026 14:59:02 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLP9-0000000ClOj-2ym5
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Nov 2026 14:58:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CE59760204;
	Fri,  6 Nov 2026 14:58:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 516E21F008A1;
	Fri,  6 Nov 2026 14:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793977138;
	bh=ztkgEBcGofqcpTmvgtqoSEmYhOEkwYXMRCRepVIF+24=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=F7letiVqvCssUTrccMfIzoyzEEEscr9xSgWzM+KV25xyPl18yAGml4ALQKbK9oFGc
	 j0v5pGzZZ2UdcGzR6Vq+1uQjp+tmuuJwrDlNV+Y/6Pm1ExJWyzqNpi3Rqi1xoU/+GO
	 QiyXTc0T02zCPhT8uTmwfyh9SP8aeP7NCqP2AB0LMLewDLd3+F9mUGHodPsGfwwJw5
	 9AGaoRyCv/lyJQNwxSOf4aSVuPOD/I5waAgZ5dmyzTepAGzNgRtLXMd0ia4Y9zTIwp
	 jfzoWWIeBtgeQm0lxk3ARHzA+S8TzmjNaIVlDwGZYrAZOXcctiely3BN7KEf9yl0b2
	 CzVIZJxOeTHTg==
Received: from traversing.sirena.org.uk (localhost [IPv6:::1])
	by traversing.sirena.org.uk (Postfix) with ESMTP id 08103289C411;
	Fri, 06 Nov 2026 14:58:40 +0000 (GMT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] spi: rockchip: Fix runtime PM underflow on CS error
 paths
From: Mark Brown <broonie@kernel.org>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>
In-Reply-To: <20260806191854.922530-1-eagle.alexander923@gmail.com>
References: <20260806191854.922530-1-eagle.alexander923@gmail.com>
Date: Fri, 06 Nov 2026 14:58:38 +0000
Message-Id: <179397711825.3231166.14531785924256368148.b4-review@b4>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=701; i=broonie@kernel.org;
 h=from:subject:message-id; bh=8DbhSsyDLwBEwvmYHDxI09dNPGpLlc0fHFNJSjSLDro=;
 b=owGbwMvMwCWm/754w+YLFp2Mp9WSGLLevpbPq8yLe2bMdy04w4zF+l3buZXPTNL3Ls5wfbrLx
 +vDLZkzHaUsDGJcDLJiiixxWdwv60ter+E7uLANZg4rE8gQBi5OAZiI7n2G/9W37J8F3Czf1fxy
 2wK2U+c5N+6za5YRWLj7RK9Gr4O68VWGvyLFfqY/6vNfSKe7b646NSfizS/jT/8/S7k1nDk9dYd
 wHiMA
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> The Rockchip SPI driver manages runtime PM reference counting around
> chip select (CS) assertion: pm_runtime_get_sync() is called when CS is
> asserted, and pm_runtime_put() when deasserted. This balanced pair is
> expected.

> @@ -256,6 +257,7 @@ static void rockchip_spi_set_cs(struct spi_device *spi, bool enable)
>  	if (cs_asserted) {
>  		/* Keep things powered as long as CS is asserted */
>  		pm_runtime_get_sync(rs->dev);
> +		rs->cs_claimed = true;

This sort of boolean tracking of reference counts is extremely error
prone, and note that there are two chip selects on the device.  This
should probably at least be per chip select.

-- 
Mark Brown <broonie@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
