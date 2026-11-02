Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DE9606A324
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 23:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OCNUSRg6;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=ideasonboard.com header.i=@ideasonboard.com header.a=rsa-sha256 header.s=mail header.b=gWUj0o1K
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=65ndPPQUQZhzLQpYT2910pDuHsGEdK+xYW1cYMzNw64=; b=OCNUSRg6FTKTNKVxy5YqyNv9Cu
	JhmKhLXImS88yUK166afXwGyF/Prgh3S04QOIxZWrK4YCE0dbWVwu/fXTCol7HvL+ZrJN9aYGWQVR
	EeAAOx1urp00ORpslsJkh+ActAU3Vc43azBAbC9dJXgJx4Iirm88pKONUZKG47ERYTD5zP+Nmk5Qc
	8MNk0wY3wH8+WW1RwrmJESeydXtV7485d4gz22KZOQY4zQpLmQC2yoryUUGLgvlf5aTkd5wSwlBpa
	tAKAgAIOQP0WzW5GcyQpWH5WiI+HWsWXLg7x8wnvsmSLAK9A5lOSWNlzhvbuOXRyZYj6jYzSIdvnN
	i4+2DzOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO1fp-00000000fS4-0q3G;
	Mon, 02 Nov 2026 23:42:45 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO1fm-00000000fQv-3tUF;
	Mon, 02 Nov 2026 23:42:44 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3690BB1A;
	Tue,  3 Nov 2026 00:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1793662823;
	bh=wAQ2GsgCD/YQbE45EYrTMRsnhVSS61FPzdNJs1TgxY4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gWUj0o1Kms6l1VLKnhTo6f94CoPkynqMsMINex1oVsbdXynf0+v1F0br2jDDty1aE
	 xqjTIiVcZmsIirZnG7OlMKxcxxNTLaTgUIpgrhpH2lUXFDHoV/CXIEYtL+g2dAnKU8
	 GWEebUM2t1mKqXLfiWaY1IMeF5eY7em2SfYV2bKE=
Date: Tue, 3 Nov 2026 01:42:38 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Igor Velkov <iav@iav.lv>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rkisp1: Depend on PM
Message-ID: <20261102234238.GD3559911@killaraus.ideasonboard.com>
References: <20261102-rkisp1-depends-on-pm-v1-1-35a26cb2bbce@iav.lv>
 <20261102223316.GB3548113@killaraus.ideasonboard.com>
 <20261103005500.rkisp1-pm-reply-1@iav.lv>
 <20261102231206.GA3559911@killaraus.ideasonboard.com>
 <20261103-rkisp1-pm-reply-2@iav.lv>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261103-rkisp1-pm-reply-2@iav.lv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_154243_118531_1CF6F2B4 
X-CRM114-Status: GOOD (  13.58  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 03, 2026 at 01:25:45AM +0200, Igor Velkov wrote:
> On Tue, Nov 03, 2026, Laurent Pinchart wrote:
> > What does the driver bind to when running on a system that has PM=n ? On
> > which platform can that happen ?
> 
> None that I can name: the nodes exist only on Rockchip and i.MX8 boards,
> and those select PM. The patch came out of the rkvdec thread, where Nicolas
> pointed out that with PM=n the first MMIO access can hang and asked to
> check similar drivers [1]; rkisp1 and rga had the same pattern. If that
> case is not worth guarding, I'll drop it.

Given that it can't happen on any platform, I don't think the patch is
needed.

> [1] https://lore.kernel.org/r/8aafdbbf04a0d939c6b4d7d5577d97bb58d1c439.camel@collabora.com

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
