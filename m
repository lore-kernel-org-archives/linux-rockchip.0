Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9208CA1009
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Sep 2025 13:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/ZLTPXmzBeauBkoQmZdZ8It8MjhagDGoKr4F0ArecI=; b=W/JO42DQ+TKjKg
	oPfEtcBVF//eqHJ05T7AD+QHDPXfPR65UQBJZUgmGfmRY9pp1wkV5NePCQSPbJkRg2vB5w8wo6M+E
	XSsKHcSwwO1tfje2dt0UYP7GiVqnSOc9IrTHKDuG8a4DBwQCKEpCGtlArKh5SoZoAqCloXZtZekpA
	82v5KAflfS2XflBGPOpV/E/gjR6KDd+YPh4BjjYgyMNcHlNx1gvpd3spgUbf1yMXi35dXuTJDModS
	sUSxO8KUoGAnvXhB7Ax/tdxdBt0PbNOp72Sy36mkDsz9Tyv1jrasOAFSUews5ruKXocT1vCPH3wta
	fR/A3KdL6YSI5nTn5GNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utnIk-00000006XWQ-1GYz;
	Wed, 03 Sep 2025 13:13:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utmPK-00000006MFp-1CQm;
	Wed, 03 Sep 2025 12:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=McfUlmNWXahZ5b3iibcvLakQVppuaRB/2ZGlhVmpKJ4=; b=EO5NQoNp/9z6s3T7xfSArrxHMa
	Laq3wXi7iyKd5j7gcXB6sMqM5d/aH811t+FRIe6qDqmrs99BqS33rEzbVla2D+/vexsSUjgNqJVgt
	djD1KZs0aMPJ4mQ2Rs0E5J7HzGwa86F54XL9015GfLeXeLcyX+WVJBeZS63phtQB/CNDeUxlug+Kj
	Ot3z1aE+5vUVbkK+T5YcCBB1b8vXJRvUMrdNR0DlSE3WQ4PDYRuUql2fUgB1CXqQwR9SijPT/APD3
	i9EnIVjbbxwOn8Lq0hOY6vQcIQcLslzqxGf+eBK2/TcL5aSxycPBxWQ32yHgEIuze0rschz62Z8L4
	SwkIBR8A==;
Received: from [213.70.33.227] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1utmPF-000551-5Q; Wed, 03 Sep 2025 14:16:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org, WeiHao Li <cn.liweihao@gmail.com>,
 andy.yan@rock-chips.com
Cc: hjc@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Subject: Re: [PATCH v1 2/7] drm/rockchip: vop: add lut_size for RK3368 vop_data
Date: Wed, 03 Sep 2025 14:16:04 +0200
Message-ID: <5726817.Isy0gbHreE@phil>
In-Reply-To: <20250831104855.45883-3-cn.liweihao@gmail.com>
References: <20250831104855.45883-1-cn.liweihao@gmail.com>
 <20250831104855.45883-3-cn.liweihao@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_051610_321546_6B455371 
X-CRM114-Status: GOOD (  13.78  )
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

SGksCgpBbSBTb25udGFnLCAzMS4gQXVndXN0IDIwMjUsIDEyOjQ4OjUwIE1pdHRlbGV1cm9ww6Rp
c2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgV2VpSGFvIExpOgo+IFZPUCBkcml2ZXIgbmVlZCBhIGNv
cnJlY3QgbHV0X3NpemUgdG8gd29yayBub3JtYWxseS4KCnBsZWFzZSBhZGQgYSBjb21tZW50IHdo
ZXJlIHRoYXQgdmFsdWUgaXMgY29taW5nIGZyb20uCkJlY2F1c2UgdGhlIHZvcCBpbiB0aGUgdmVu
ZG9yIGtlcm5lbCBpcyBzbyB2YXN0bHkgZGlmZmVyZW50LgoKClRoYW5rcwpIZWlrbwoKPiAKPiBT
aWduZWQtb2ZmLWJ5OiBXZWlIYW8gTGkgPGNuLmxpd2VpaGFvQGdtYWlsLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcF9yZWcuYyB8IDEgKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcF9yZWcuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF92b3BfcmVnLmMKPiBpbmRleCBkMWY3ODg3NjMuLjIxOWY4YzJmYSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wX3JlZy5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcF9yZWcuYwo+IEBAIC04ODAs
NiArODgwLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB2b3BfZGF0YSByazMzNjhfdm9wID0gewo+
ICAJLndpbiA9IHJrMzM2OF92b3Bfd2luX2RhdGEsCj4gIAkud2luX3NpemUgPSBBUlJBWV9TSVpF
KHJrMzM2OF92b3Bfd2luX2RhdGEpLAo+ICAJLm1heF9vdXRwdXQgPSB7IDQwOTYsIDIxNjAgfSwK
PiArCS5sdXRfc2l6ZSA9IDEwMjQsCj4gIH07Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHZv
cF9pbnRyIHJrMzM2Nl92b3BfaW50ciA9IHsKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
