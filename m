Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51EDFC77B7E
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 14:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6G2nuorSc3ZRg9UwuqwaFFvT838RBt0wlYWG9kV5QJU=; b=qQ0ZJh2qLxTSi6
	Ghkl0HmzfuUqlsafTH48g5LS3gHkq8twFD+8Nq6Ixtxhn6gglga2uuIJPOI8gLqQqlfJzak+Ig4by
	RJZv6ldyv6u871bUlWVDxhTkTm0IvoT9Bv7DXS0k4ksYsEXDsL3yVMk7Fr8ONAMPT0rqsQL/YEzlx
	22XgCG503STwLT4ORIedNtFssMfn0VyPVZ/4RgBo08qzYJaaLFdCMworRBhkoyN4hbCteGEM97Rqt
	HymuqgrRfSHKjdBAn5iwZV6vW8MbZ2oygrIX/RROgWz4TmTQK4b2UF4w4HfZiTOho828NHzdq5Rox
	q4u5ED9qC6QSEogHvx7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2BpZ-00GpEZ-27;
	Thu, 25 May 2023 14:20:41 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2BpU-00GpCc-2g;
	Thu, 25 May 2023 14:20:38 +0000
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:17:6c0::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B89BA660296C;
	Thu, 25 May 2023 15:20:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685024431;
	bh=kckLKIas8OQKHj9mgS3dAcAlwkYBLOPS+UmpWGh3W54=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=hWmiJWTaoRi6hmuqDZOul6ASwBK4mXuIYiCHcrNkRzCFiy5UdEDNJp6Nc2KamYgjJ
	 4Hm33Mh+ByPMeLWWF5zj1LDxShWSRuE/l06q6u3/EtyiE/m2EVOylocyMX2aKgNV8h
	 +iDqS/Y67BcEogAcCdBn3cqwv//h6Z3WezQbuO9xbVD60+Ot0ZYR4dITkl77fE1Mw8
	 PI8Qi7HlM39RGUKH5TCsYONCwrDoqU/AfaJxtWoWOovFcjwAQM7n9NrNqv+g7xbLKv
	 5/4LIfzaQNrjaNlGEvdFbnAoH5DBLUoSkO6ssjnmPEDMzbYQ+C7kpsbMGDRIWClNK4
	 iix1mQvJaKXIQ==
Message-ID: <c3aa61c2ae8c3ac98a2dd63d29a0064ae8b8aa46.camel@collabora.com>
Subject: Re: [RFC 2/2] media: rkvdec: Add VP8 encoder
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Marco Felsch <m.felsch@pengutronix.de>, Adam Ford <aford173@gmail.com>
Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 kernel@collabora.com
Date: Thu, 25 May 2023 10:20:21 -0400
In-Reply-To: <20230523064237.pvj6pipj7ftnduom@pengutronix.de>
References: <20230309125651.23911-1-andrzej.p@collabora.com>
	 <20230309125651.23911-3-andrzej.p@collabora.com>
	 <CAHCN7xKQv=Dx7cVSc_ekZ2GHzOVFuv6Yzum=kGQnCVfWxV0m5w@mail.gmail.com>
	 <20230523064237.pvj6pipj7ftnduom@pengutronix.de>
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_072037_033196_FA7B5D09 
X-CRM114-Status: GOOD (  15.91  )
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

SGkgTWFyY28sCgpMZSBtYXJkaSAyMyBtYWkgMjAyMyDDoCAwODo0MiArMDIwMCwgTWFyY28gRmVs
c2NoIGEgw6ljcml0wqA6Cj4gSGkgQWRhbSwKPiAKPiBPbiAyMy0wNS0yMCwgQWRhbSBGb3JkIHdy
b3RlOgo+ID4gT24gVGh1LCBNYXIgOSwgMjAyMyBhdCA2OjU54oCvQU0gQW5kcnplaiBQaWV0cmFz
aWV3aWN6Cj4gPiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gPiAKPiA+ID4g
QSBzdGF0ZWxlc3MgVlA4IGVuY29kZXIgZm9yIHJvY2tjaGlwIHZwdTIgZm91bmQgZS5nLiBpbiBy
azMzOTkuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyemVqIFBpZXRyYXNpZXdpY3og
PGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+ID4gCj4gPiBJcyB0aGVyZSBhIGdvb2QgcGxhY2Ug
b3IgcmVzb3VyY2Ugd2hlcmUgSSBjb3VsZCBsZWFybiBtb3JlIGFib3V0Cj4gPiB3aGF0J3MgbmVl
ZGVkIHRvIHBvcnQgdGhlIHZwdTEgVlA4IGVuY29kZXI/ICBJJ2QgcmVhbGx5IGxpa2UgdG8gcG9y
dAo+ID4gdGhlIEhhbnRybyBIMSBlbmNvZGVyIHRoYXQncyB1c2VkIG9uIHRoZSBpbXg4bW0sIGJ1
dCBpdCBzZWVtcyBsaWtlIHRoZQo+ID4gdnB1MiBlbmNvZGVyIGhhcyBkaWZmZXJlbnQgcmVnaXN0
ZXJzIHRoYW4gdGhlIEgxIGVuY29kZXIgb24gdGhlIE1pbmkuCj4gPiBJIHdhcyBob3BpbmcgbXkg
ZW1wbG95ZXIgd291bGQgc2VuZCBtZSB0byBQcmFndWUgZm9yIHRoZSBjb25mZXJlbmNlIGF0Cj4g
PiB0aGUgZW5kIG9mIEp1bmUsIGJ1dCB1bmZvcnR1bmF0ZWx5LCB0aGF0J3Mgbm90IGdvaW5nIHRv
IGhhcHBlbi4gIEknZAo+ID4gbGlrZSB0byBnZXQgbW9yZSBpbnZvbHZlZCB3aXRoIHByb2plY3Rz
IGxpa2UgdGhpcyBhcyBhIHBlcnNvbmFsIHNpZGUKPiA+IHByb2plY3QuCj4gCj4gSSdtIGN1cnJl
bnRseSB3b3JraW5nIG9uIHRoZSBpLk1YOE1NIEgyNjQgZW5jb2RlciBrZXJuZWwgYnJpbmd1cC4K
CktlZXAgdXMgcG9zdGVkICEgV2UgYXJlIGludGVyZXN0ZWQgdG9vLiBBcmUgeW91IGJhc2luZyB5
b3Ugd29yayBvbiBQYXVsJ3MgUkZDID8KCj4gCj4gUmVnYXJkcywKPiAgIE1hcmNvCj4gCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
