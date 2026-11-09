Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E50606D83A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 03:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jy8g2Hfo;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=NvG8DIbf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=od3Vhr7Qosk1bm2gQ+zROxC4mv9Js+wLK1Dogws1X6M=; b=jy8g2Hfo0UOeXAAryokUl9o0Uq
	hWN2CPktg1n2N7OSJPpwyiaxPopMAFvXS13TAc5zbmTYwuOwWwlxCfMU8YF+e/0vZeekXdaixkb9M
	mVztoFl3wHLgQuwRCRW9NwtiAdlAzZ6UuyRom70hLkagBRTiYv6/05+cQMUeqH9kX8/B9pOoIDLCM
	WzKA6Eo1t5qGZjIX3Teyo18l6ROfN1zi18ax+BX3HyKhCBoZ7UpJYv/4u5DtwoUxiPnsE7lLC/Hty
	snkYoB+nktrdDMH1WALg46wHXyAq1IxkILCTZD8QagbUcGGpPRYA6nT4/CxgbD0qpvMg6Y0DLf4DF
	CTGjiOoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQGU3-0000000HHFQ-3vLt;
	Mon, 09 Nov 2026 03:55:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQGU3-0000000HHFH-0FXB
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 03:55:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 794D34555C;
	Mon,  9 Nov 2026 03:55:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B96781F008A3;
	Mon,  9 Nov 2026 03:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794196550;
	bh=yl0cWu9LSM4Hk1hkiEXe0iDaWO1AMImJZAKH5kG2YLk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=NvG8DIbfnBPyzmILgsdKqCT7Gp/waww2aP4aFnUenQChZKmhqqri7fKo/djgrEPKb
	 OeAFZeuP5t5Z2Z4bd+bORzxIRzWqHIuN3BBIi82EWzhVTQI5SdHzo3IsccsQEZbYYi
	 CVAMl8cZV6LASWkQQN2y+b1pHC6PhzLT+UrXVbhXxDDj7dvGrpqb65SO9x1evvYCqa
	 cnrKGlOWNAPSZq18imP+lTz8lwlvVU3E75GWMVyGfUY85wWai38Ayq0T56P46o6C3K
	 dSIR6Cmt/U3iw0gR6g1YQZGcYOC+b0B3AtewDaGN+OYcrk70GBCI9FvXOzIvzpDiWI
	 jmneZSCOd+PGg==
From: "Martin K. Petersen (Oracle)" <mkp@kernel.org>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Cc: "Martin K . Petersen" <mkp@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH] scsi: ufs: rockchip: Improve RX noise immunity
Date: Sun,  8 Nov 2026 22:55:31 -0500
Message-ID: <179419615225.1941224.6496447799725433464.b4-ty@b4>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261029151030.1.I61cd43e660b146e49d4380a754e936270e5fb6a1@changeid>
References: <20261029151030.1.I61cd43e660b146e49d4380a754e936270e5fb6a1@changeid>
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, 29 Oct 2026 15:24:55 +0800, Shawn Lin wrote:

> Program VND_RX_SAVE_DET_CTRL for each RX lane to raise the receiver's
> tolerance against short transients on the incoming signal, as recommended
> by the Rockchip PHY team.

Applied to 7.4/scsi-fixes, thanks!

[1/1] scsi: ufs: rockchip: Improve RX noise immunity
      https://git.kernel.org/mkp/scsi/c/c84374cf4d2c

-- 
Martin K. Petersen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
