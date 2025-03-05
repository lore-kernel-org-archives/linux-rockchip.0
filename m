Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF511C19F32
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 13:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VX16KuMogo2A4wDBLZTj/DopLxcceIPuHZa9NCm5M4Q=; b=V1k2Tyd5f4nzjS
	ZFntgDQHoXEXA5RkAnjdCKgfLaEfqSZuBAhbx8+oV5jZiWXLVC2Axk5kK4Mz3/065HUTErst3fd9H
	6JtZ+9fWYyZAvxF4FOsRD1OJLbB86BiabwVcU8HQNZBOtga3aMtPezbkSmnZbesDbXcQ5wNwVoSzG
	Sd2hxxxmdHpStI933fYLYVhUmGnOmr27NPtzmI/7h6krH8qf9B18kYuOgiw2J52lWYvQFHR6PkJuQ
	W3oziJs0j8x5szbQb2VXgG5j++2ImDm7AUL4Vn34GURcYTJbxWz5NNeIKFSBg0bEUeDoCJE0KTYRv
	11Z8VqM9QYxs6NoDMiNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpoPW-000000086mD-1FK7;
	Wed, 05 Mar 2025 13:03:42 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpmcr-00000007oDH-1tJ3
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Mar 2025 11:09:22 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741172946; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ZTUYJn29glC9vvUfcOfxW13mevM1V8V0v7dxFnI4YHIdMNrt5mm5q84KSOo33+VW4JQm9tOiFmmr9j+x7cgqxCDo1sy/jmipmV4wqDLhqYZ+pLm8TBZrXqHnWOPi5OmHxoX7Vwhtc12lsvDMwM1DecqU3sgnh+Uc9V4Lgx6CO6Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741172946; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=1QzXkuu/q5GiJN30wSGE0+yL0Yhr9XMU57s5jrdhvAA=; 
	b=nPCFfxJMonpZzXyhib2hgPGPXvNu76+XP24uIpaUaE3+kdB/0OsqrBvSTFycDNh43DMeRmPKgSwZ+/8yKC8gHieelMuK0bUsu//T0Xv+ONo1EOJCV4YhgcqhFXZ3cMfCbvsZL9XHkHBxUZt13C8HouwnmSG2cfHF/1YHywAA4q4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741172946;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=1QzXkuu/q5GiJN30wSGE0+yL0Yhr9XMU57s5jrdhvAA=;
	b=MEhKF3Axe1O7AWq4XpWTTgOY+tP4S7KJQfblgQ2/+qxWDooPsnQo36bpHcslg596
	NfOqumBStSvnxYHdUnh3Li766LL0nLhj/rsoqNuQw9SJrs+4iuNqdyu/8o7Ce1Vn92U
	xsL6hyQHEjYjhY6za4pfuyCBIpgC75tGaYy29y/M=
Received: by mx.zohomail.com with SMTPS id 1741172944911622.394610948164;
	Wed, 5 Mar 2025 03:09:04 -0800 (PST)
Message-ID: <d41bfc24-2787-4bae-aa8e-352899be097b@collabora.com>
Date: Wed, 5 Mar 2025 14:08:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 6/6] arm64: defconfig: Enable Synopsys HDMI receiver
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
 <20250225183058.607047-7-dmitry.osipenko@collabora.com>
 <a8a6c8c8-ee3b-422a-8573-a2cbb61fc3aa@xs4all.nl>
 <863f9c1beb7a912f94f8740b3e5095e09e49cee5.camel@collabora.com>
 <cade5c73-e25f-4f56-be10-7d5a06f92917@xs4all.nl>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <cade5c73-e25f-4f56-be10-7d5a06f92917@xs4all.nl>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_030921_553853_EE8FE1F0 
X-CRM114-Status: GOOD (  22.41  )
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

T24gMy80LzI1IDE5OjE3LCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4gT24gMjgvMDIvMjAyNSAwNDo1
MSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPj4gSGkgSGFucywKPj4KPj4gTGUgbWVyY3JlZGkg
MjYgZsOpdnJpZXIgMjAyNSDDoCAwOTozMSArMDEwMCwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6
Cj4+PiBPbiAyNS8wMi8yMDI1IDE5OjMwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+Pj4gRnJv
bTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4+
Pj4KPj4+PiBUaGUgUm9ja2NoaXAgUkszNTg4IGhhcyBhIGJ1aWx0LWluIEhETUkgcmVjZWl2ZXIg
YmxvY2sgZnJvbQo+Pj4+IFN5bm9wc3lzLiBMZXQncyBlbmFibGUgdGhlIGRyaXZlciBmb3IgaXQu
Cj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgT3NpcGVua28g
PGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29tPgo+Pj4+IC0tLQo+Pj4+IMKgYXJjaC9hcm02
NC9jb25maWdzL2RlZmNvbmZpZyB8IDIgKysKPj4+PiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29u
ZmlnCj4+Pj4gYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCj4+Pj4gaW5kZXggY2I3ZGE0
NDE1NTk5Li4zZGNjYzllMWM0YWEgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9jb25maWdz
L2RlZmNvbmZpZwo+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKPj4+PiBA
QCAtODU5LDYgKzg1OSw4IEBAIENPTkZJR19WSURFT19TQU1TVU5HX0VYWU5PU19HU0M9bQo+Pj4+
IMKgQ09ORklHX1ZJREVPX1NBTVNVTkdfUzVQX0pQRUc9bQo+Pj4+IMKgQ09ORklHX1ZJREVPX1NB
TVNVTkdfUzVQX01GQz1tCj4+Pj4gwqBDT05GSUdfVklERU9fU1VONklfQ1NJPW0KPj4+PiArQ09O
RklHX1ZJREVPX1NZTk9QU1lTX0hETUlSWD1tCj4+Pj4gK0NPTkZJR19WSURFT19TWU5PUFNZU19I
RE1JUlhfTE9BRF9ERUZBVUxUX0VESUQ9eQo+Pj4KPj4+IEkgZG8gbm90IGJlbGlldmUgaXQgaXMg
YSBnb29kIGlkZWEgdG8gZGVmYXVsdCB0byB5IGZvciB0aGlzIG9wdGlvbi4KPj4+Cj4+PiBUaGUg
RURJRCBkZXBlbmRzIG9uIHRoZSBzcGVjaWZpYyBkZXZpY2UgeW91IG1ha2UsIGFuZCB5b3Ugc2hv
dWxkCj4+PiB0aGluayBjYXJlZnVsbHkgYWJvdXQgd2hldGhlciB0aGUgZGVmYXVsdCBFRElEIGZp
dHMgdGhlIG5lZWRzIG9mIHRoZQo+Pj4gZGV2aWNlLgo+Pj4KPj4+IFNvIGlmIHlvdSB3YW50IHRo
ZSBkZWZhdWx0IEVESUQsIHRoZW4geW91IHNob3VsZCBtYW51YWxseSBzZWxlY3QgaXQKPj4+IGFu
ZCBub3QgaGF2ZSBpdCBhdXRvc2VsZWN0ZWQuCj4+Cj4+IEZvbGxvd2luZyB1cCBoZXJlLCBmcm9t
IHRoZSBkZXZpY2UgbWFrZXIgcGVyc3BlY3RpdmUgc3VyZSwgYnV0IEknbSBub3QKPj4gc3VyZSB0
aGlzIGlzIHRoZSBiZXN0IGNob2ljZSBmb3IgZ2VuZXJpYyBMaW51eCBkaXN0cmlidXRpb24uIEFz
IG9mCj4+IHRvZGF5LCBwcmV0dHkgbXVjaCBubyB1c2Vyc3BhY2UgY2FwdHVyZSBzb2Z0d2FyZSBr
bm93cyBhYm91dCB0aGlzLAo+PiBtZWFuaW5nIHRoZSBkZXZpY2Ugd2lsbCBub3Qgd29yayBvdXQg
b2YgdGhlIGJveCBpbiBPQlMsIEdTdHJlYW1lciwKPj4gRmZtcGVnLCBXZWIgQnJvd3NlcnMuIElu
IGNvbXBhcmlzb24sIGlmIHlvdSBwaWNrIGFueSBVVkMgSERNSSBjYXB0dXJlLAo+PiBpdCBqdXN0
IHdvcmssIHdpdGggYSBkZWZhdWx0IEVESUQgdGhhdCBjb3ZlcnMgdGhlIHJhbmdlIG9mCj4+IGNh
cGFiaWxpdGllcywgd2hpY2ggaW4gdGhpcyBjYXNlIGFyZSBkZWZpbmVkIGJ5IHRoZSBTb0MuCj4g
Cj4gQSBVVkMgSERNSSBjYXB0dXJlIGRldmljZSBpcyBub3QgYSBnb29kIGNvbXBhcmlzb246IHRo
YXQgaGFzIGl0J3Mgb3duCj4gRURJRCB0aGF0IGlzIGNvbmZpZ3VyZWQgZm9yIHRoZSBzcGVjaWZp
YyBoYXJkd2FyZSBhbmQgVVNCIGJhbmR3aWR0aAo+IGxpbWl0YXRpb25zLiBFRElEIGhhbmRsaW5n
IGlzIGFsbCBpbnRlcm5hbCB0byB0aGF0IGRldmljZSwgbm90aGluZyB0bwo+IGRvIHdpdGggdGhl
IFVWQyBkcml2ZXIuCj4gCj4gVGhhdCBzYWlkLCB0aGlzIGRldmljZSBpcyBhIGJpdCBkaWZmZXJl
bnQgY29tcGFyZWQgdG8gbW9zdCBvdGhlcgo+IEhETUkgcmVjZWl2ZXJzIGluIHRoYXQgaXQgYWxz
byBoYXMgYSBETUEgZW5naW5lLiBVc3VhbGx5IEhETUkgcmVjZWl2ZXJzCj4gYXJlIGkyYyBkZXZp
Y2VzIHRoYXQgY29ubmVjdCB0byBhbiBTb0MuIEluIHRoaXMgY2FzZSB0aGUgaGFyZHdhcmUgaXMK
PiBpbnNpZGUgdGhlIFNvQy4gU28gSSBhbSBPSyB3aXRoIG1ha2luZyBMT0FEX0RFRkFVTFRfRURJ
RD15IGluIHRoZSBkZWZjb25maWcuCj4gCj4gU286Cj4gCj4gQWNrZWQtYnk6IEhhbnMgVmVya3Vp
bCA8aHZlcmt1aWxAeHM0YWxsLm5sPgo+IAo+IE5vdGUgdGhhdCBJIHdpbGwgbWVyZ2UgdGhlIHYx
MyBkcml2ZXIgKHBhdGNoZXMgMS0zKSwgc2luY2UgaXQgbG9va3MgZ29vZC4KPiAKPiBCdXQgdjEx
LXYxMyBvZiB0aGlzIGRlZmNvbmZpZyBwYXRjaCBkcm9wcGVkIHRoZSAiQ09ORklHX1ZJREVPX1NZ
Tk9QU1lTX0hETUlSWF9MT0FEX0RFRkFVTFRfRURJRD15Igo+IGxpbmUsIHNvIHlvdSBtaWdodCB3
YW50IHRvIHBvc3QgYSB2MTQgb2YganVzdCBwYXRjaGVzIDQtNiwgcmVzdG9yaW5nIHRoYXQKPiBs
aW5lLCBvbmNlIEkgbWVyZ2VkIHBhdGNoZXMgMS0zLgoKV2lsbCBwb3N0IHYxNCwgdGhhbmtzIQoK
LS0gCkJlc3QgcmVnYXJkcywKRG1pdHJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
