Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0379CD6E4A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jun 2026 07:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CITqigC9kXQl1VRvfXwbqAyFJfDnOh/Q8NrWqD962nM=; b=VZp9QnAVzQ3/G9
	INTRR+3P+2bxe3WUDV1f2/QkRupHppea7W+t0KyfQs9zRuKD5EPd/q2NYX+D3oZiFftPuhERbs+4E
	pzPIzczNeYulpwtCdtdTdkyqWPuZfzpq9BeOIGy3kz7qRj8er+q5rJpwHEmZAb1WdLZtOnWz/W0b4
	cKFGfAxcZxFzNtgj2LmhCVdZMnTq+BvWo9l4wxR6/lVCVtGdO70Ar53zFzToe+6dWnDkmS2Vh2E4T
	IHXE+5Y0NutuTNxYarN6efsBjZEuncQ4w6SjcMKZNe6CjoPlFzcRUOWV4FZlhM0oJKcSM/lXrzkPk
	oscISXEGkQu2FsIRRG7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUfeV-0000000EQYP-33n1;
	Wed, 03 Jun 2026 07:04:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUfeT-0000000EQXx-0rDY;
	Wed, 03 Jun 2026 07:04:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8FA1A42ADA;
	Wed,  3 Jun 2026 07:04:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C96401F00898;
	Wed,  3 Jun 2026 07:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780470272;
	bh=owgt5GZRIYeDMJIHAWtLU/xNbrE+XbTLopPPhhJdwX0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=fAxZ5M5Z6UB9VOMhTBp9fakq6NBZWlNLeoac9S3KzKpnvG6ip4bNQxWZOebB8mj/G
	 BK8bwNp3pGZuNKNqpmfYalXmCeKOjz3n6/dic0WicfEyJUY17+1r1+dliIhO4BLlI2
	 iHmoGnTLR0KdWuc2N/5gkTDqybFaoJaVE9+fR1OSdwtTfQ/4WvVtC+CMh3EhKeyKfm
	 8Ee+Si/3okzTqe8FfPLlwG8MTD1c3sTfEdzPdcDIJu6nZ1EVNFLSr5FtL+Kczc7M1C
	 xyr6g58ugpOwu8bwiJD+tA2DGjyrLk4ljPw/SnJPWjzYv6W1kYLS4QtintXqHBSvfc
	 /m5ufH25vAlBw==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>, 
 Jaroslav Kysela <perex@perex.cz>, Heiko Stuebner <heiko@sntech.de>, 
 =?utf-8?q?C=C3=A1ssio_Gabriel?= <cassiogabrielcontato@gmail.com>
Cc: linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260521-asoc-rockchip-i2s-devm-cleanup-v1-1-9319bd781393@gmail.com>
References: <20260521-asoc-rockchip-i2s-devm-cleanup-v1-1-9319bd781393@gmail.com>
Subject: Re: [PATCH] ASoC: rockchip: i2s: Use managed hclk and runtime PM
 cleanup
Message-Id: <178041265480.93058.3443088566208285913.b4-ty@b4>
Date: Tue, 02 Jun 2026 16:04:14 +0100
MIME-Version: 1.0
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1141; i=broonie@kernel.org;
 h=from:subject:message-id; bh=u/zNKQDn2qZ5UricnkeWmclMJhxio9VwGxwwA+hGTOw=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqH9H9YBF7/GEMcxFUwfJTVENUepltyZ5fT6mUm
 1UYNG7rS4KJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCah/R/QAKCRAk1otyXVSH
 0P4SB/9L2IrHxod3dm8i9HNZt7IgrEdr5Xbe00ZvnkA6R3WtT1VYCjObwb+1XiQjPMwsrDwc9uO
 PoA5FdvMRtG+jWbvzl3asMRzVcqB2VRliwYPoGEN9W845NmwAzTjDvlXUm/PdXV3Angxqjkv+gx
 N4HgHJ1V0qlJBj5WJXjj0lyDntBf++FA15PolkXq5UBKuK+f9xUbX7D2CABeyhGEVZcY8mep79K
 ZVuMGSDVlrmbQ3iz7G/QIax7gFup/pyBTijMC70JJB/QDI3lKlNz6Dfsx8iRSkXI1k5tXHCGPtp
 68adMWk7OWG25nqsuSAEZHOjyZFvj+lm6zupiSrorzdgWQ2Q
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_000433_288044_D0C3D1B2 
X-CRM114-Status: UNSURE (   8.69  )
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

T24gVGh1LCAyMSBNYXkgMjAyNiAyMzozMDowNyAtMDMwMCwgQ8Ohc3NpbyBHYWJyaWVsIHdyb3Rl
Ogo+IEFTb0M6IHJvY2tjaGlwOiBpMnM6IFVzZSBtYW5hZ2VkIGhjbGsgYW5kIHJ1bnRpbWUgUE0g
Y2xlYW51cAoKQXBwbGllZCB0bwoKICAgaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvYnJvb25pZS9zb3VuZC5naXQgZm9yLTcuMgoKVGhhbmtzIQoKWzEvMV0g
QVNvQzogcm9ja2NoaXA6IGkyczogVXNlIG1hbmFnZWQgaGNsayBhbmQgcnVudGltZSBQTSBjbGVh
bnVwCiAgICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvYnJvb25pZS9zb3VuZC9jLzJkOTBlY2Rm
YTMyNgoKQWxsIGJlaW5nIHdlbGwgdGhpcyBtZWFucyB0aGF0IGl0IHdpbGwgYmUgaW50ZWdyYXRl
ZCBpbnRvIHRoZSBsaW51eC1uZXh0CnRyZWUgKHVzdWFsbHkgc29tZXRpbWUgaW4gdGhlIG5leHQg
MjQgaG91cnMpIGFuZCBzZW50IHRvIExpbnVzIGR1cmluZwp0aGUgbmV4dCBtZXJnZSB3aW5kb3cg
KG9yIHNvb25lciBpZiBpdCBpcyBhIGJ1ZyBmaXgpLCBob3dldmVyIGlmCnByb2JsZW1zIGFyZSBk
aXNjb3ZlcmVkIHRoZW4gdGhlIHBhdGNoIG1heSBiZSBkcm9wcGVkIG9yIHJldmVydGVkLgoKWW91
IG1heSBnZXQgZnVydGhlciBlLW1haWxzIHJlc3VsdGluZyBmcm9tIGF1dG9tYXRlZCBvciBtYW51
YWwgdGVzdGluZwphbmQgcmV2aWV3IG9mIHRoZSB0cmVlLCBwbGVhc2UgZW5nYWdlIHdpdGggcGVv
cGxlIHJlcG9ydGluZyBwcm9ibGVtcyBhbmQKc2VuZCBmb2xsb3d1cCBwYXRjaGVzIGFkZHJlc3Np
bmcgYW55IGlzc3VlcyB0aGF0IGFyZSByZXBvcnRlZCBpZiBuZWVkZWQuCgpJZiBhbnkgdXBkYXRl
cyBhcmUgcmVxdWlyZWQgb3IgeW91IGFyZSBzdWJtaXR0aW5nIGZ1cnRoZXIgY2hhbmdlcyB0aGV5
CnNob3VsZCBiZSBzZW50IGFzIGluY3JlbWVudGFsIHVwZGF0ZXMgYWdhaW5zdCBjdXJyZW50IGdp
dCwgZXhpc3RpbmcKcGF0Y2hlcyB3aWxsIG5vdCBiZSByZXBsYWNlZC4KClBsZWFzZSBhZGQgYW55
IHJlbGV2YW50IGxpc3RzIGFuZCBtYWludGFpbmVycyB0byB0aGUgQ0NzIHdoZW4gcmVwbHlpbmcK
dG8gdGhpcyBtYWlsLgoKVGhhbmtzLApNYXJrCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
