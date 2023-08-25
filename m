Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 003C2C71133
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 08:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xq1hDhk1f2ZJmKGZxP8ZN6kboaoxw8OMcTiVJ7p8d6U=; b=Jq2jeLdBx+tyUs
	N0LpW8zpIIwjaksBK3K/hYZ5dEst8shXHa95Uq7LHbnXnBk0GPDCncJs8B81pJJCRJWeaZ2sTiH04
	xQv1vb0IrhYo9Plgwqdhx9B733TRle2bl6q0FqXTO9eQ9Oz9Qp5qeAVcSgf6L8k0oRLt9khOcU1CM
	wTQKScaaHTZdK1nQn2IDo4VRmMMWKNRlBmGg0D2/r5Mxrp/lyUwIqv9Qg+bKpiWZttmX6xJUpaw9F
	Y0+wq37XqB36K32SHNuFvn5/tOqPz3Jv5rsihtU7gyc/FB4cJUtArGeKdufGlpzdIOfJx0v6r4llq
	avc9m8CHQBxCRAoW1BTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZSG8-004dUi-2W;
	Fri, 25 Aug 2023 08:33:36 +0000
Received: from phobos.denx.de ([85.214.62.61])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZSG5-004dTb-0x
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Aug 2023 08:33:35 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 3ABA986A21;
	Fri, 25 Aug 2023 10:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1692952407;
	bh=uL3+NdgqEspH8DbPlAWPtf7vOIH91em+1BkCp/5VpCs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DtoWdeP0E615G1vQwYXYuMsCeYDe1TCqOFi83xmoAWGjbqqqhczbaYd1TKWB92sIA
	 Fc0bI0hbUgMlB5Ar/CX02eUaJKXc3suYfjU4eCamGaXW9tBK1disn2TCeIInhErAzJ
	 dgnSsZ7opUzSGWVZaWwCEefC4Xh0U6QsBqNXpnLNNfaGFj/kBZsAGEkuc65ca/5Zv9
	 DXDw8HbIr0SmtDFz16GvDMUzJRF46ifqBTl0Hcs+vORr880Lcwywj5/5R4jR5uMk1M
	 c8HQAj/Y5gCOsWnzZZRenf7aS4MS2zAqMAcgjq/0yfuyYZCQOlbCo8YSzT+C8AwmfS
	 zubKq6g/+ojSg==
Message-ID: <f6f55f46-bd6e-4dde-4484-86d1c385c8fe@denx.de>
Date: Fri, 25 Aug 2023 10:33:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] media: hantro: Check whether reset op is defined before
 use
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org
References: <20230824013858.303105-1-marex@denx.de>
 <CAHCN7xLDmMv7T_fT7vY3iq+KMWuPM9tBP_2AJ-X04L7ZTRWPOw@mail.gmail.com>
 <80d9a66f-c703-6057-e084-1a6d2214d775@denx.de>
 <CAGXv+5GQFtCAYbfSbEJeHA4Os0O6WuD64V-xcZ9uDD33HbuhhQ@mail.gmail.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <CAGXv+5GQFtCAYbfSbEJeHA4Os0O6WuD64V-xcZ9uDD33HbuhhQ@mail.gmail.com>
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_013333_722579_C9F1D6F1 
X-CRM114-Status: GOOD (  16.49  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gOC8yNS8yMyAwOTowOSwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+IE9uIFRodSwgQXVnIDI0LCAy
MDIzIGF0IDk6MDjigK9QTSBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4gd3JvdGU6Cj4+Cj4+
IE9uIDgvMjQvMjMgMTI6MzksIEFkYW0gRm9yZCB3cm90ZToKPj4+IE9uIFdlZCwgQXVnIDIzLCAy
MDIzIGF0IDg6MznigK9QTSBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4gd3JvdGU6Cj4+Pj4K
Pj4+PiBUaGUgaS5NWDhNTS9OL1AgZG9lcyBub3QgZGVmaW5lIHRoZSAucmVzZXQgb3Agc2luY2Ug
cmVzZXQgb2YgdGhlIFZQVSBpcwo+Pj4+IGRvbmUgYnkgZ2VucGQuIENoZWNrIHdoZXRoZXIgdGhl
IC5yZXNldCBvcCBpcyBkZWZpbmVkIGJlZm9yZSBjYWxsaW5nIGl0Cj4+Pj4gdG8gYXZvaWQgTlVM
TCBwb2ludGVyIGRlcmVmZXJlbmNlLgo+Pj4+Cj4+Pj4gTm90ZSB0aGF0IHRoZSBGaXhlcyB0YWcg
aXMgc2V0IHRvIHRoZSBjb21taXQgd2hpY2ggcmVtb3ZlZCB0aGUgcmVzZXQgb3AKPj4+PiBmcm9t
IGkuTVg4TSBIYW50cm8gRzIgaW1wbGVtZW50YXRpb24sIHRoaXMgaXMgYmVjYXVzZSBiZWZvcmUg
dGhpcyBjb21taXQKPj4+PiBhbGwgdGhlIGltcGxlbWVudGF0aW9ucyBkaWQgZGVmaW5lIHRoZSAu
cmVzZXQgb3AuCj4+Pgo+Pj4gSSBhbSBzdXJwcmlzZWQgSSBkaWRuJ3QgaGF2ZSBpc3N1ZXMgd2hl
biBJIHdhcyB0ZXN0aW5nIHRoZSA4TVEgYW5kCj4+PiA4TU0sIGJ1dCB0aGlzIG1ha2VzIHNlbnNl
Lgo+Pgo+PiBZb3UgbmVlZCB0byB0cmlnZ2VyIHRoZSBWUFUgd2F0Y2hkb2cgdG8gdHJpZ2dlciB0
aGUgY3Jhc2gsIHRoYXQgbWVhbnMKPj4geW91IGhhdmUgdG8gZ2V0IHRoZSBWUFUgaW50byBzb21l
IHdlaXJkIHN0YXRlIHdoZXJlIGl0IGZhaWxzIHRvIGRlY29kZQo+PiBmcmFtZS4gVGhlbiBpdCB0
cmlnZ2VycyB0aGUgcmVzZXQgYW5kIC4uLiBib29tLgo+Pgo+PiBTZWUgdGhpcyBwYXRjaCwgdGhh
dCBjb250YWlucyBhIGdzdHJlYW1lciBpbnZvY2F0aW9uIHRvIGdlbmVyYXRlIHN1Y2gKPj4gdHJp
Z2dlciBjb25kaXRpb24gaW5wdXQgZGF0YToKPj4KPj4gW1BBVENIXSBtZWRpYTogdmVyaXNpbGlj
b246IERvIG5vdCBlbmFibGUgRzIgcG9zdHByb2MgZG93bnNjYWxlIGlmCj4+IHNvdXJjZSBpcyBu
YXJyb3dlciB0aGFuIGRlc3RpbmF0aW9uCj4+Cj4+ICIKPj4gVG8gZ2VuZXJhdGUgaW5wdXQgdGVz
dCBkYXRhIHRvIHRyaWdnZXIgdGhpcyBidWcsIHVzZSBlLmcuOgo+PiAkIGdzdC1sYXVuY2gtMS4w
IHZpZGVvdGVzdHNyYyAhCj4+IHZpZGVvL3gtcmF3LHdpZHRoPTI3MixoZWlnaHQ9MjU2LGZvcm1h
dD1JNDIwICEgXAo+PiAgICAgICAgICAgICAgICAgICAgdnA5ZW5jICEgbWF0cm9za2FtdXggISBm
aWxlc2luayBsb2NhdGlvbj0vdG1wL3Rlc3QudnA5Cj4+IFRvIHRyaWdnZXIgdGhlIGJ1ZyB1cG9u
IGRlY29kaW5nIChub3RlIHRoYXQgdGhlIE5WMTIgbXVzdCBiZSBmb3JjZWQsIGFzCj4+IHRoYXQg
YXNzdXJlcyB0aGUgb3V0cHV0IGRhdGEgd291bGQgcGFzcyB0aGUgRzIgcG9zdHByb2MpOgo+PiAk
IGdzdC1sYXVuY2gtMS4wIGZpbGVzcmMgbG9jYXRpb249L3RtcC90ZXN0LnZwOSAhIG1hdHJvc2th
ZGVtdXggIQo+PiB2cDlwYXJzZSAhIFwKPj4gICAgICAgICAgICAgICAgICAgIHY0bDJzbHZwOWRl
YyAhIHZpZGVvL3gtcmF3LGZvcm1hdD1OVjEyICEgdmlkZW9jb252ZXJ0Cj4+ICEgZmJkZXZzaW5r
Cj4+ICIKPiAKPiBEb2VzIGl0IGNvbXBsZXRlbHkgcmVjb3ZlciBhZnRlcndhcmRzPyBJbiBteSBw
cmV2aW91cyB0cmlhbHMgdGhlIGhhcmR3YXJlCj4gZW5kZWQgdXAgaW4gc29tZSBiaXp6YXJlIHN0
YXRlOiB3aGlsZSBkZWNvZGluZyBzdWNjZWVkcywgdGhlIG91dHB1dCdzIG1kNXN1bQo+IGRpZG4n
dCBtYXRjaCB1cC4KCkhhdmUgeW91IGdvdCBhIHRlc3RjYXNlIHRoYXQgdHJpZ2dlcnMgdGhpcywg
b25lIEkgY2FuIHRyeSA/CgpJIGFtIG5vdCBlbnRpcmVseSBzdXJlIHdoZXRoZXIgdGhpcyBpcyBo
YXBwZW5pbmcgaGVyZSBhcyB3ZWxsIG9yIG5vdCwgCmJ1dCBJIGNhbiBpbWFnaW5lIHRoYXQgdGhl
IHBvd2VyIGRvbWFpbiB3ZW50IGRvd24gYW5kIGJhY2sgdXAgYmV0d2VlbiAKdGVzdHMsIHNvIHRo
ZSBWUFUgd291bGQgYmUgcG93ZXIgY3ljbGVkIChhbmQgdGhlcmVmb3JlIHJlc2V0KSB0aGF0IHdh
eS4gClNvLCBJIHRoaW5rIGl0IGlzIHdvcnRoIHRlc3RpbmcgdGhhdC4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
