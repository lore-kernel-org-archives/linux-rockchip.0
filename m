Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DA9606A31E
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 23:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SZvqMtEQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=A4Y2b49y
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BTZy97gGeu2mH38of2uB5AR3SUAnUl2HD/wP0w4NVAc=; b=SZvqMtEQJF/CpgHo8OdJEOQvju
	s4Y3AhcycdQ3seHGlk0j1eptlqyRZnxa4Q2HUJSTFlojX7kxvZaPPKVGLlpgW0jg3PfL+ywlfAa+K
	2++0KYlRdV2imKo6gXn7loxkX2S0In3lnfYGdvEAId31ehuG1/erLxlr6MCCj4s3JWBWJTjSV93K6
	pwe5wI10ZmsvrIK/JiO/59zrk7PbYZrnQoqrZTl5NrjaIvU3Oi2cXFU//Vvif/2ie2cbxJqRS+rX+
	QM6PEzFQtzGnoGd3vSKh+d834UKwKGpQCHvPK879W6gBgbwGKo9n2t0kO7kg+/i1PX1MXHI2vZpic
	pK4DgTHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVGe6-00000001sta-3V6p;
	Sun, 22 Nov 2026 23:06:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVGe3-00000001st9-41UE;
	Sun, 22 Nov 2026 23:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jPHQU+9wXfFcupAO4vYQAzpuQPGZ9v1Qdy5LLuFL8Ww=; b=A4Y2b49yIgBkWlFP6buQZN01jp
	J84dV9WXuEMPn9lEjWR0wjYVK9hL/pkSMDVBM6uSB9Zvqt9WrdoDocm2A/J/uLoKuRvoxAVQlqoLr
	BQSVfFrM5e3/XvrqQ0EEJkGgQk4vbqwae0yZMEFDOoVOniVUwr7pOi07tn4OrsHVzohxqAsGXrWEE
	7MPkF92hkToFvDt/GvWdq451N4ryis4zLAM4S0o5ha6clmYl7TuolEckpxt8BlWulm7zmZpT4lwce
	44rUJiOUe4QTP+hH5EgJPE7PBIkOQuTQnAKxiiAN5lC56YesVfoq9ZLuJYfJ9ttewLbzErkzgml+8
	OYTATdhA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	=?UTF-8?q?Yal=C3=A7=C4=B1n=20Can?= <ylcncn@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Brian Masney <bmasney@redhat.com>,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: rk3066: uart0/1 pclk comes from hclk_ahb2apb
Date: Sun, 22 Nov 2026 23:50:30 +0100
Message-ID: <179538782486.3150822.15627188420950858780.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261030073638.164388-1-ylcncn@gmail.com>
References: <20261030073638.164388-1-ylcncn@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_150652_081081_6B41D1B6 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIEZyaSwgMzAgT2N0IDIwMjYgMTA6MzY6MzggKzAzMDAsIFlhbMOnxLFuIENhbiB3cm90ZToK
PiBPbiByazMwNjZhLCB1YXJ0MCAoMHgxMDEyNDAwMCkgYW5kIHVhcnQxICgweDEwMTI2MDAwKSBz
aXQgYmVoaW5kIHRoZQo+IEFIQi10by1BUEIgYnJpZGdlIG9mIHRoZSBjcHUgYnVzLCBhcyBvbiBy
azMxODgsIGJ1dCB0aGVpciBwY2xrIGdhdGVzIG5hbWUKPiBwY2xrX2NwdSBhcyBwYXJlbnQuIE5v
dGhpbmcgdGhlbiBob2xkcyBoY2xrX2FoYjJhcGIgKENMS0dBVEVfQ09ONCBiaXQgOSksCj4gc28g
aXQgaXMgc3dpdGNoZWQgb2ZmIGFzIHVudXNlZCBhdCBsYXRlIGluaXQgYW5kIGJvdGggVUFSVHMg
cmVhZCBiYWNrIGFzCj4gYWxsIHplcm9zOiA4MjUwIGF1dG9jb25maWcgcmVwb3J0cyBQT1JUX1VO
S05PV04gZm9yIHVhcnQwIGFuZCBhIHNlcmRldgo+IEJsdWV0b290aCBjb250cm9sbGVyIG9uIGl0
IChicmNtLGJjbTQzMzAtYnQpIHRpbWVzIG91dCBvbiBldmVyeSBjb21tYW5kLgo+IAo+IFsuLi5d
CgpBcHBsaWVkLCB0aGFua3MhCgpbMS8xXSBjbGs6IHJvY2tjaGlwOiByazMwNjY6IHVhcnQwLzEg
cGNsayBjb21lcyBmcm9tIGhjbGtfYWhiMmFwYgogICAgICBjb21taXQ6IDUxMzhiMDlkNjZmOTNl
NmU0MDUwMzA0MzQxMmU4Mjk1MTQyNTcwYjYKCkJlc3QgcmVnYXJkcywKLS0gCkhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
