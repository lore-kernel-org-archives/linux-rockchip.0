Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF2D606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 03:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=a9jhClxm;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=g83VSZWY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:Message-ID
	:In-Reply-To:From:Subject:Cc:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ATIPt8skD+kKy2JPyfjzILFVyQrlESEQMnM63yvfWpE=; b=a9jhClxm+O4caswytbKDIwc1Dg
	4V0JpBM7z+0lF8vSHFp742+NEzwvpVn4Tj8Z3Kj+s9Khe60kyKgE/RgFDLN6pBBuPDjtrp9sdJ3k+
	5vd0SIMqVbn7yxcdNMtBA4lFJHau79pv6+0r6pDJ/x4klQhrUFkcDu0LRflIRgRfrPP8k+w2QGelF
	WjvWcRRMttMwQkpYIpElHp10EKbi+QxnyC2k4MX2emBa6tfe+4R4Mod8A0Ieka3tcnVnro6lyjJYp
	37aN6CdpVx9cCr1yzcohYIdQqriGzhye8jZRC9JzaoZkB/j0sFRgX/89cqpVqXft8eng5VLcowpfb
	RuIHNbiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOo7J-00000007fmC-1ZK0;
	Thu, 05 Nov 2026 03:26:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOo7G-00000007fm3-0T56
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 03:26:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 68E8941224;
	Thu,  5 Nov 2026 03:26:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BB5C1F000C1;
	Thu,  5 Nov 2026 03:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793849177;
	bh=Fpu2k0HmKxZttwGHEPl9JAza7xUeO4Q39YGMtAjSdGI=;
	h=To:Cc:Subject:From:In-Reply-To:References:Date;
	b=g83VSZWYitfSyIrZ0IaeFKQplFLGUG1iqo/2nYF2zo7uoVm/TYBAGEZrDXzKSgNgY
	 F2Myt5/ZQSUVn3IK2wxGXLuFI0YuI+AaPQv1vpWwdGyhtdcclxmVpnfEX/X+6TKoDd
	 b18Gn/231Re3xMYdlxp013NIMw0bAAGa1oNpdmxFOaOkEd7EK6A1yJTKckjxUBS/10
	 1/anNwQrkdXt6msGFLeYH1CF3Vnl4Yp5mY+e+DNH2hRFzLeV1jClWtI63Br6T+YdKm
	 J3lhgkZwZC5Iv9W5LHIhSAILKIE428iNPv6wzpaZewqmL4087g6Gjz5YTXqijrVUIl
	 AWFvdsWO25lgw==
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
  "Martin K . Petersen" <mkp@kernel.org>,  Heiko Stuebner
 <heiko@sntech.de>,  linux-rockchip@lists.infradead.org,
  linux-scsi@vger.kernel.org
Subject: Re: [PATCH] scsi: ufs: rockchip: Improve RX noise immunity
From: "Martin K. Petersen" <mkp@kernel.org>
In-Reply-To: <20261029151030.1.I61cd43e660b146e49d4380a754e936270e5fb6a1@changeid>
Message-ID: <yq1jymsyn6a.fsf@mail.kernel.org>
References: <20261029151030.1.I61cd43e660b146e49d4380a754e936270e5fb6a1@changeid>
Date: Wed, 04 Nov 2026 22:26:16 -0500
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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


Shawn,

> Program VND_RX_SAVE_DET_CTRL for each RX lane to raise the receiver's
> tolerance against short transients on the incoming signal, as recommended
> by the Rockchip PHY team.

Applied to 7.4/scsi-fixes, thanks!

-- 
Martin K. Petersen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
