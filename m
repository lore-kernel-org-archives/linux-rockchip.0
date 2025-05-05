Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2D4FC369C2
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 07:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=trO6z9a4w5CXBeBLz/BCjzfi8Lt+SlI3y+WY60VCv9I=; b=LGK1liycz2ncpG
	7By209T4/q76iK9BfeQjKO9OS5aN/w6IdaLom7j6wdHrBG+3otDOgXZXF7Q512Ob12zlSAINX3lDv
	RqXc3UISDc+OmPUvdM2abn4f8o5vn7xr1u47Afb5eEMxL9oyUQeA1enYBqZHGAUJW46OyL/oPmLSF
	4snEhHVGd5fg/56ImnnWV8ObiwOrEnJowEwF3VpQFtpB0cTF3SUAfwML9rCd9zuwii1XEkMyH/5b9
	TMIEtFVMK5kdKSuLINB402BgTrp3cB9hVdVHdsyRv9xPNIxJodZC1SMJLqerI2qc3RPUpkzN/C979
	Ds+b3x9logH3+nEoMmAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqIk-00000006ep1-0mxf;
	Mon, 05 May 2025 07:31:46 +0000
Received: from mail.commetro.pl ([217.61.16.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqIg-00000006en8-2c0o
	for linux-rockchip@lists.infradead.org;
	Mon, 05 May 2025 07:31:44 +0000
Received: by mail.commetro.pl (Postfix, from userid 1002)
	id 8499382ABE; Mon,  5 May 2025 09:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=commetro.pl; s=mail;
	t=1746430296; bh=COht1CALZmZz8MRkow5xVDQUyVzx29Nu6ozA/Y0jgb4=;
	h=Date:From:To:Subject:From;
	b=bDHJtRXojwT4Wet0ndN/G2Z6PZQEmXfBitEs/zv2Jdy48LlEcs4zGv6D6O6KnDUU1
	 hcvnhz6TVmRUTmsXpIdEXw0CSY4cP0CF814g0Ne0RtJyasewNHoDPTvB7kponlvxFV
	 IxN20UUWuMqggJa6ijjDegBmoyDOyD6+kFPh6Y0jjB4N7N3AW/FWy2xnAdZG9PIBsV
	 GZgpOtzlvj4PFer61sEhWX1Hr7Ou8M0viCnpFSISo++dl441wPrjAAW5jhlaQ8xxz+
	 K4VexxgJ9TuJZy1jjzRNp5e9JpX2EPUr3R218ng5LpUpzfOMjFnJzb4BiR/mqupaQ+
	 kJFfc23m7Yb+Q==
Received: by mail.commetro.pl for <linux-rockchip@lists.infradead.org>; Mon,  5 May 2025 07:30:42 GMT
Message-ID: <20250505084500-0.1.2b.qk6r.0.kog8m6rqdv@commetro.pl>
Date: Mon,  5 May 2025 07:30:42 GMT
From: =?UTF-8?Q?"Jaros=C5=82aw_Kownacki"?= <jaroslaw.kownacki@commetro.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_ofert=C4=99?=
X-Mailer: mail.commetro.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_003143_330866_D0BCDA28 
X-CRM114-Status: UNSURE (   0.24  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IHBvdHJ6ZWJ1asSFIFBhxYRzdHdvIGFrdHVhbG5pZSBub3d5Y2gg
a2xpZW50w7N3ID8KClNrdXRlY3puaWUgcG9tYWdhbXkgcm96cG9jenluYcSHIHJvem1vd3kgaGFu
ZGxvd2UgeiBrbGllbnRhbWkgemFpbnRlcmVzb3dhbnltaSBQYcWEc3R3YSBvZmVydMSFLgoKWmFw
cmFzemFtIGRvIGtvbnRha3R1IHp3cm90bmVnby4KCgpQb3pkcmF3aWFtIHNlcmRlY3puaWUKSmFy
b3PFgmF3IEtvd25hY2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
