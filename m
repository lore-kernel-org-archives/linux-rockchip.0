Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 270E3CA0EFF
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 09:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YFvvgq4fV85GiyverGpkn+0dQVKdFBOfEUYU+ez83g0=; b=vNw6aa/mB6jAbk
	YDFBIw91dKxsynVEl6wn/XAQeKTQnAoXoVqZec55SzctROsQoF17s4HZiaqsOsQHGkn3DE+Mo4Nlk
	Tm2flJzA/HtybSvABhCHICUrOUlTLpEDw6i0R5iv65t4+bOHPvDWaYP6+wmoeI6bD8pahg2CniGt8
	FUGWUBWseAyiWXfaoISs/V7n+3xLOtZRA8GF92b+JHnP8XzeuSCRzRbupM1BrDuUfwWxAr35Q+uOm
	C88YFFA44aDAp8LsHkjR8rQ6Ao833e278jdXVzSG2k3uzVUQSlUEqwvzH1Uu9H4SFZ0t3CaThjPkF
	IhVcEcG8Ygkewd7Dk0hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoekl-0000000Cq1X-40jH;
	Wed, 20 Aug 2025 09:05:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uody2-0000000ChEt-0Gzx
	for linux-rockchip@bombadil.infradead.org;
	Wed, 20 Aug 2025 08:14:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=0Yjr6NsrKkaYb/LNYm1mPKHuxqkR0iWhkNkzH9QSzrg=; b=EXlmUIXsgh0jjcEv7Umu0OZIE/
	CqzLvHf/MCFxX/kkpb1u1v1R8zVNriiJg3Mggsw/VS5f6YtzvPOYOOMuXkafqdssPwVbgN7Vl4i3r
	TMre/xCY5QbKMo8fC7C8WEqfxRoRFwSe4qr6Z1v2r+CKgQHQFen7/huQrPo+VHLQf2qvTBKCVXso2
	oNwe/iEfCkg5LHj6/dlr65dd81b47RD0vqWhto8KlG2WzpLiDO4HPOFOSFAcIuGDgP3cZxOX2cFTM
	/PosLV+wN4zZnNFPozOCqiUcLhGLmRRWMLJNJDO7u2H05qA/JS8+4YqYqxkWk/W5WBPdGYymkV+zn
	M0F7tbqg==;
Received: from mail.fintara.pl ([51.68.214.200])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uodxy-000000036Hs-2x37
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 08:14:44 +0000
Received: by mail.fintara.pl (Postfix, from userid 1002)
	id 33CD847E33; Wed, 20 Aug 2025 10:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fintara.pl; s=mail;
	t=1755677538; bh=0Yjr6NsrKkaYb/LNYm1mPKHuxqkR0iWhkNkzH9QSzrg=;
	h=Date:From:To:Subject:From;
	b=J810zyjURP/UlDIgeunBB5dLKADWHihahOgc0Xb/1gzxYDCLPDrWj/PsijE7Ml3+6
	 yiBOHlqtqtRBP6lzCGOY+3BspLEgkVp7wuJhFlSBLI00ADrOv34jd67cIvAxHkAiYx
	 yfSzG6aeSHVy7qVcUPdM+7Dq1Ysu9CuKCgU2CNsicIdeIxMGNCjG6WJJdGarOS5lC2
	 AGocDbCqgc2m1WYP0JAqB3pSTU4YZpadaf/MhF7nkptPxotwjV3rEn5k+LyaCEbm5n
	 w/TD4eVoZsbNwuCBo64Y97NDKvSiZgX8yaQsfZ1+xSgr7MLDLXU4Bv9l6ZgZjccfsc
	 fDeCDrDMRu2NQ==
Received: by mail.fintara.pl for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 08:10:15 GMT
Message-ID: <20250820084500-0.1.bd.38puk.0.rkulsor8q5@fintara.pl>
Date: Wed, 20 Aug 2025 08:10:15 GMT
From: "Dominik Lotka" <dominik.lotka@fintara.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.fintara.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_091443_447513_78975997 
X-CRM114-Status: UNSURE (   0.89  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbQpEb21pbmlrIExvdGthCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
