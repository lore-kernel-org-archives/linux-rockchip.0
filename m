Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F691EB64DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jun 2023 18:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYBpG8nCSYz6KxpOH1QqQHs5pjHsGAgL9y0Zk5b9OLI=; b=nAcmgPxOWrGM7/
	Mj/+3TtNjvziw+6HAIpv92aUj2QFjyLx1Ds68h3ZzYyY2dhHwCi1xZzS8l/5JXEQ7c6VPHkQ2uYi1
	N/sbbgxxL0fV8CJFD7mXCI0H3Dq5TybUKIMElKiSmvnELFLkFfgdH3uSWn1c7L3SiayfZaNRcjPRp
	nXvX7O9ZfAr95UTcsqcwgr0ZoQhQFuTdrnzNZsOQybQYIpigC/3nAGe4l8r9B/ip2tiIvYHy4O4Z2
	efPluElQMHBKuEwoVwX82du0GMRjgigxq8qj395/P3KBPMF6P5wIIJW2O3Agt5m5LB7a8PrgT/SBx
	nJjjSDPz4utbeNUF5eEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBJda-009CIb-0Y;
	Mon, 19 Jun 2023 18:30:02 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBJdX-009CFx-1G
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jun 2023 18:30:00 +0000
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:15:c623::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9A9846606F91;
	Mon, 19 Jun 2023 19:29:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1687199388;
	bh=TQWW8juW2UtWzPnJZmxaz5aQLcUrScTrb1oeb43glSM=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=GBeLl4NYbN8fFu6f2fQAJUVogONfJePDNDID1lNWYFBNZ2Y7DA4uQ5qNtk4ZI9TYd
	 XM/kHPbtUO1FFQzas4pVtL3N5tFBr6f0GZVNF+7d931FJtM45VYzieDk3UhLJqQG9w
	 aSb7kmYAVGZPapk8hZqNjhRwG9bnJ4DGo8dFT4E7BRtLhBdBMe5SdsPkHvU3SotuxW
	 gZwuQhhiERY99OEnxdMXt/jgTftdjbC1v23t27x20c2Mu2TuDkF6gbv7ts2UbOCiOF
	 EWQw3e+zhWb6FAvyYL9PgpPSa/AEYM+pBM5KIuAu2Gn3KeHekzgPZTV30IrzfvUC2C
	 OlYu6p/cbBrNg==
Message-ID: <d9f088d1d548c8735b393a15d5a16dbd914ddeca.camel@collabora.com>
Subject: Re: [PATCH 2/2] media: verisilicon: change confusingly named
 relaxed register access
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Arnd Bergmann <arnd@arndb.de>, Arnd Bergmann <arnd@kernel.org>, Ezequiel
 Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Jernej Skrabec
 <jernej.skrabec@gmail.com>,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Mon, 19 Jun 2023 14:29:38 -0400
In-Reply-To: <063a8886-fd31-425f-901c-fc830512eca3@app.fastmail.com>
References: <20230616144854.3818934-1-arnd@kernel.org>
	 <20230616144854.3818934-2-arnd@kernel.org>
	 <e264ac3a15e0f115aa7e941a77eb312429b8f65e.camel@collabora.com>
	 <063a8886-fd31-425f-901c-fc830512eca3@app.fastmail.com>
User-Agent: Evolution 3.48.3 (3.48.3-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_112959_580243_312405AB 
X-CRM114-Status: GOOD (  27.12  )
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

TGUgbHVuZGkgMTkganVpbiAyMDIzIMOgIDE2OjQ5ICswMjAwLCBBcm5kIEJlcmdtYW5uIGEgw6lj
cml0wqA6Cj4gT24gTW9uLCBKdW4gMTksIDIwMjMsIGF0IDE2OjQxLCBOaWNvbGFzIER1ZnJlc25l
IHdyb3RlOgo+ID4gTGUgdmVuZHJlZGkgMTYganVpbiAyMDIzIMOgIDE2OjQ4ICswMjAwLCBBcm5k
IEJlcmdtYW5uIGEgw6ljcml0wqA6Cj4gPiA+IEZyb206IEFybmQgQmVyZ21hbm4gPGFybmRAYXJu
ZGIuZGU+Cj4gPiA+IAo+ID4gPiBUaGUgcmVnaXN0ZXIgYWJzdHJhY3Rpb24gaGFzIHdyYXBwZXJz
IGFyb3VuZCBib3RoIHRoZSBub3JtYWwgd3JpdGVsKCkKPiA+ID4gYW5kIGl0cyB3cml0ZWxfcmVs
YXhlZCgpIGNvdW50ZXJwYXJ0LCBidXQgdGhpcyBoYXMgbGVkIHRvIGEgbG90IG9mIHVzZXJzCj4g
PiA+IGVuZGluZyB1cCB3aXRoIHRoZSByZWxheGVkIHZlcnNpb24uCj4gPiA+IAo+ID4gPiBUaGVy
ZSBpcyBzb21ldGltZXMgYSBuZWVkIHRvIGludGVudGlvbmFsbHkgcGljayB0aGUgcmVsYXhlZCBh
Y2Nlc3NvciBmb3IKPiA+ID4gcGVyZm9ybWFuY2UgY3JpdGljYWwgZnVuY3Rpb25zLCBidXQgSSBu
b3RpY2VkIHRoYXQgZWFjaCBoYW50cm9fcmVnX3dyaXRlKCkKPiA+ID4gY2FsbCBhbHNvIGNvbnRh
aW5zIGEgbm9uLXJlbGF4ZWQgcmVhZGwoKSwgd2hpY2ggaXMgdHlwaWNhbGx5IG11Y2ggbW9yZQo+
ID4gPiBleHBlbnNpdmUgdGhhbiBhIHdyaXRlbCwgc28gdGhlcmUgaXMgbGl0dGxlIGJlbmVmaXQg
aGVyZSBidXQgYW4gYWRkZWQKPiA+ID4gcmlzayBvZiBtaXNzaW5nIGEgc2VyaWFsaXphdGlvbiBh
Z2FpbnN0IERNQS4KPiA+ID4gCj4gPiA+IFRvIG1ha2UgdGhpcyBiZWhhdmUgbGlrZSBvdGhlciBp
bnRlcmZhY2VzLCB1c2UgdGhlIG5vcm1hbCBhY2Nlc3NvciBieQo+ID4gPiBkZWZhdWx0IGFuZCBv
bmx5IHByb3ZpZGUgdGhlIHJlbGF4ZWQgdmVyc2lvbiBhcyBhbiBhbHRlcm5hdGl2ZSBmb3IKPiA+
ID4gcGVyZm9ybWFuY2UgY3JpdGljYWwgY29kZS4gaGFudHJvX3Bvc3Rwcm9jLmMgaXMgdGhlIG9u
bHkgcGxhY2UgdGhhdAo+ID4gPiB1c2VkIGJvdGggdGhlIHJlbGF4ZWQgYW5kIG5vcm1hbCB3cml0
ZWwsIGJ1dCB0aGlzIGRvZXMgbm90IHNlZW0KPiA+ID4gY3JpY2l0YWwgZWl0aGVyLCBzbyBjaGFu
Z2UgaXQgYWxsIHRvIHRoZSBub3JtYWwgb25lcy4KPiA+IAo+ID4gSW4gdGhpcyB0ZXh0IHlvdSBz
cG9rZSBhYm91dCBwb3RlbnRpYWwgcGVyZm9ybWFuY2Ugc2lkZSBlZmZlY3RzIG9mIGV4aXN0aW5n
IGNvZGUKPiA+IGFuZCB5b3VyIGNoYW5nZXMsIGJ1dCBpdHMgbGVmdCBhbGwgdmVyeSB2YWd1ZSBh
bmQgdGhlb3JldGljYWwuIEhhdmUgeW91IGRvbmUgYW55Cj4gPiBtZWFzdXJlbWVudCA/IERvIHlv
dSBuZWVkIGhlbHAgd2l0aCB0aGUgbWFubmVyID8KPiAKPiBJIGRvbid0IGhhdmUgdGhpcyBoYXJk
d2FyZSBhbmQgaGF2ZSBub3QgZG9uZSBhbnkgbWVhc3VyZW1lbnRzLgo+IE9idmlvdXNseSB0aGUg
b25seSBwb2ludCBvZiB1c2luZyByZWxheGVkIGFjY2Vzc29ycyBpcyB0bwo+IGltcHJvdmUgcGVy
Zm9ybWFuY2UgaW4gY3JpdGljYWwgY29kZSBwYXRocywgYnV0IGZyb20gdGhlIHdheSB0aGV5Cj4g
YXJlIHVzZWQgaGVyZSBpdCBzZWVtcyB0aGF0IHRoaXMgd2FzIGluc3RlYWQganVzdCBhbiBhY2Np
ZGVudAo+IGFuZCBub2JvZHkgZWxzZSBkaWQgYW55IGNvbXBhcmlzb25zIGVpdGhlci4KPiAKPiBN
eSBndWVzcyB3b3VsZCBiZSB0aGF0IGlmIG9uZSB3YW50ZWQgdG8gc3BlZWQgdXAgdGhlIHJlZ2lz
dGVyCj4gYWNjZXNzLCBhIGJldHRlciB3YXkgd291bGQgYmUgdG8gdXNlIGEgcmVnbWFwIGNhY2hl
IHRvIGF2b2lkCj4gcmVhZGluZyByZWdpc3RlcnMgd2hlbiB0aGUgY29udGVudHMgYXJlIGFscmVh
ZHkga25vd24uCgpBbGwgSSBrbm93IGlzIHRoYXQgZm9yIHRoZSBtYWpvcml0eSBvZiByZWdpc3Rl
cnMgd2hlbiBwcm9ncmFtbWluZyBzdGF0ZWxlc3MKY29kZWNzLCBlYWNoIDMyYml0IHdvcmQgb2Yg
cmVnaXN0ZXJzIGFyZSBmdWxseSB3cml0dGVuIHRvbywgdGhlIHJlYWQgdmFsdWUgaXMKbm90IGFs
d2F5cyBtZWFuaW5nZnVsIChpdHMgYSB2YWx1ZSBmcm9tIGxhc3QgdGltZSB0aGUgSFcgaGFzIGJl
ZW4gdHJpZ2dlcmVkKSBhbmQKc2hvdWxkIGJlIGlnbm9yZWQsIHNvIGJldHRlciB0byBub3QgZG8g
dGhhdC4gQXMgZm9yIHJlZ21hcCwgdGhlcmUgaXMgZm9sa3MgdGhhdApoYXZlIHJlcG9ydGVkIHJl
Z21hcCB0byBiZSBjb21wbGV0ZWx5IG92ZXJraWxsIGZvciB0aGlzIHR5cGUgb2YgaGFyZHdhcmUu
CgpUaGF0IGRpc2N1c3Npb24gaGlnaGxpZ2h0IG15IGNvbmNlcm4sIHdoaWNoIGlzIHRoYXQgdGhp
cyBzcGVjaWZpYyBwYXRjaCBzaG91bGQKcmVxdWlyZSBhIFRlc3RlZC1ieSBiZWZvcmUgYmVpbmcg
bWVyZ2VkLiBBIGNsZWFyZXIgbm90ZSB0byBzYXkgdGhhdCB0aGlzIHBhdGNoCmlzIG5vdCB0ZXN0
ZWQgY291bGQgaGF2ZSBoZWxwZWQuCgpyZWdhcmRzLApOaWNvbGFzCgo+IAo+ICAgICAgQXJuZAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
