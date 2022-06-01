Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1B99C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jun 2022 08:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FuQhdbb8HrUSDZ+K57wKQ2M3rIFaDvaQ9CO/EuQjTXI=; b=KxNnEWT1nrLooD
	nfXD3AX7j98BUIG7RN7QsMB1UlkO67bgLWHbEy0Z+YSwG62qJh1RS0BYtow9CZjY5m12SNxYgcKAd
	IEgc9azgq+OzVL4KiXwTlcnnze9TDun/eGEN68Ch9gCvBuOWW4g0fYz0NkGleyz46ehb1vDLaEsVe
	W27owZxOkstLPK5qVdlc85ts12NAljVLFvBKs5zo6KzvnI9pfhLtm4A76ICcIxx9zYFy2l05vzsnc
	EG4foJ4TOsWazgUIHI8LqDuOIw1jLVfbEGDwShFAy3LByFoz0vNMRpbRoSiV/rgpGNYAevfpAWN0I
	8vJ1SM9p+FpKM5nn6Vsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwJJA-00EVrS-Ju; Wed, 01 Jun 2022 08:02:24 +0000
Received: from mail.forindustry.pl ([37.187.225.170])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwJJ8-00EVqn-IC
	for linux-rockchip@lists.infradead.org; Wed, 01 Jun 2022 08:02:23 +0000
Received: by mail.forindustry.pl (Postfix, from userid 1002)
	id 1D2FDA6066; Wed,  1 Jun 2022 07:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=forindustry.pl;
	s=mail; t=1654069651;
	bh=Vw5jk5D1DE7WK/GNf/MxRQNyAyPYcC0rMJLibxKTj58=;
	h=Date:From:To:Subject:From;
	b=b5XWxk2D0OTuZu+FxXOiAMJsseLzt3738MHdD3mHdYQluU/92ueMzRT6rSGzuHanC
	 JwInZUHc/jMqs37UFjyp8xQLtoSHRdqCxOtY2UG+j1AJGGGRPwkZ1ZLawK0pjUIrke
	 9lzAQesdDeQ+qk6lKzcA8gF1LiCskv2P7F6or46sqMwaEcVHndPO14E40PeWI0I2Xb
	 t0wnHm3h1LSk7lhjf8MjgQZ74tdwmBU1kQgKRMEOccfHOCetPv/2+OAP+W+xUcK3SS
	 ORf4OlwvJgDyMjyqzH3u6jQzlCth6NPImioealOYqO9FQnz7U4mkMuXNGVcQCTmDh2
	 JCBoRRVjPqEZw==
Received: by mail.forindustry.pl for <linux-rockchip@lists.infradead.org>; Wed,  1 Jun 2022 07:45:30 GMT
Message-ID: <20220601064501-0.1.3k.lmn0.0.spu6h4jdq2@forindustry.pl>
Date: Wed,  1 Jun 2022 07:45:30 GMT
From: =?UTF-8?Q?"Arkadiusz_Soko=C5=82owski"?= <arkadiusz.sokolowski@forindustry.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Koszty instalacji fotowoltaicznej
X-Mailer: mail.forindustry.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_010222_795896_895B250B 
X-CRM114-Status: UNSURE (   1.57  )
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

RHppZcWEIGRvYnJ5LAoKc3R3b3J6eWxpxZtteSBzcGVjamFsbsSFIG9mZXJ0xJkgZGxhIGZpcm0s
IG5hIGtvbXBsZWtzb3fEhSBvYnPFgnVnxJkgaW53ZXN0eWNqaSB3IGZvdG93b2x0YWlrxJkuCgpT
cGVjamFsaXp1amVteSBzacSZIHcgemFrcmVzaWUgZG9ib3J1LCBtb250YcW8dSBpIHNlcndpc2ll
IGluc3RhbGFjamkgZm90b3dvbHRhaWN6bnljaCwgZHlzcG9udWplbXkgbmFqbm93b2N6ZcWbbmll
anN6eW1pIHJvendpxIV6YW5pYSwga3TDs3JlIHphcGV3bmnEhSBQYcWEc3R3dSBvY3pla2l3YW5l
IHJlenVsdGF0eS4KCk1vxbxlbXkgcHJ6eWdvdG93YcSHIGRsYSBQYcWEc3R3YSB3c3TEmXBuxIUg
a2Fsa3VsYWNqxJkgaSBwcnplYW5hbGl6b3dhxIcgZWZla3R5IG1vxbxsaXdlIGRvIG9zacSFZ25p
xJljaWEuCgpDenkgc8SFIFBhxYRzdHdvIG90d2FyY2kgbmEgd3N0xJlwbsSFIHJvem1vd8SZIHcg
dHltIHRlbWFjaWU/CgpQb3pkcmF3aWFtLApBcmthZGl1c3ogU29rb8WCb3dza2kKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
