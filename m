Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 695D0CFB43F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 11:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3uhpEpU4VTSEloc49bJAQjqWgtchcTVDakx4yx5EWEY=; b=ZxLrSgAlX5yn9s
	+o4nbvi7w13ml3xzJCus8SCle6cf2ppDkIleDBeovobbKu9by91AjK1/VOilPPRynnswaP7/wtSVK
	/7Uboo6Yq8Fmsx6/uy+BFUf9Se09S6TFF8vgFJzmctQmk3wGqrcCpr3JQl2BT/yCpo0vavOt2eDCX
	lADcKRCwRNc0wl1vwky+HRTTkzYTcBS9quS+NU/xS2Qd7g8opjUKPmTfOM3ZzDOTW1yEWnrtVXUwU
	qBKvBDZwjC5OXQIKvk8Ht4iGN3RZQ1OS6xuhVzDP4VVpzcpH2Wpgby1mNIjOuJKiSNoynXrCI/zQb
	CLYedGEgfefYW/d247JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxm3Y-00000002CLY-1HYp;
	Mon, 07 Oct 2024 11:37:40 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxm2p-00000002CD6-0g2N
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 11:36:56 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1728301004; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=j4I9UWJsisQisqCf+FkGQze/j2a9UgqdHL1kN+2zZzi428esWfDDwTrXmhBfk7CqnRSGcQj1uQCCwL1U0HDeamN2BAr1AG3oJycnYdXTUQxGZi00slOyHqwBhwJcPHiU7gQ1yve0LZtoERt70Z1a2OmCXCQCxjDDbpyVB8B7YYE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1728301004; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=AFKho57gUpxy4V1/EUaFr4abLL2qh3hunfyPaBeSLbY=; 
	b=NcsY+0isEI3qViBRpTT4AuRDB7qruwLtRTr4BPKtQ+T1jhc8uF70ossZsH5ZVSRBstQn4PJwb96HIuw4iZgBXYwmuMWqSLpS3pPkOoYrGM9Rit7vhY3lpdGtEcioy9XUsOh/ZEjZWmWBe+FHp3kU+tHwnddnkRzRDA7fUtTgP6A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1728301004;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=AFKho57gUpxy4V1/EUaFr4abLL2qh3hunfyPaBeSLbY=;
	b=WGV5/4QOqnJQQzmDZ0VHxSvKD0Dmxz/bohQSd3ZBPKFZxiUuFUkeFzDwtXvyEs/u
	jaPWe5BequJB9CGmNSF6SturlPtsVueZi0g7soJsHTzHtpqzdMQw0VKNu85wTQwNrzC
	G5hc23cRV2rzSnaKEyJA/Jp7SUExNUtTatNIIVbo=
Received: by mx.zohomail.com with SMTPS id 1728301002132977.0168082874125;
	Mon, 7 Oct 2024 04:36:42 -0700 (PDT)
Message-ID: <557f9a0c-be89-477b-b8ee-e0bed98c2ee2@collabora.com>
Date: Mon, 7 Oct 2024 13:36:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/3] Enumerate all pixels formats
To: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar,
 hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <010201918fb76f7a-650dc960-4911-48d7-8e82-8f18243c4b71-000000@eu-west-1.amazonses.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <010201918fb76f7a-650dc960-4911-48d7-8e82-8f18243c4b71-000000@eu-west-1.amazonses.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_043655_271221_AA2E5D1C 
X-CRM114-Status: GOOD (  17.15  )
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

CkxlIDI2LzA4LzIwMjQgw6AgMTk6MjQsIEJlbmphbWluIEdhaWduYXJkIGEgw6ljcml0wqA6Cj4g
VGhlIGdvYWwgb2YgdGhpcyBzZXJpZXMgaXMgdG8gaGVscCB1c2Vyc3BhY2UgYXBwbGljYXRpb25z
LCBsaWtlIEdzdHJlYW1lcgo+IG9yIENocm9taXVtLCB0byBjYXRlZ29yaXplIGRlY29kZXJzIGFu
ZCBzbyBhdm9pZCB0cnlpbmcgdG8gdXNlIGRlY29kZXIKPiB0aGF0IGNhbid0IGRvIHRoZSByZXF1
aXJlIHRhc2sgYmVjYXVzZSBpdCB3b24ndCBzdXBwb3J0IHRoZSBuZWVkZWQgcGl4ZWwKPiBmb3Jt
YXQuCj4gQXMgZXhhbXBsZSwgaW4gdG9kYXkgaW1wbGVtZW50YXRpb24gd2UgbmVlZCB0byBzaW11
bGF0ZSAxMCBiaXQgaGVhZGVyCj4gY29udHJvbCB0byBrbm93IGlmIHRoZSBkcml2ZXIgc3VwcG9y
dCAxMCBiaXRzIHBpeGVsIGZvcm1hdHMuIFdpdGggdGhpcwo+IG5ldyBmbGFnIGl0IHdpbGwgc2lt
cGxlciBmb3IgdXNlcnNwYWNlIGFwcGxpY2F0aW9ucyBrbm93IGlmIGRyaXZlcgo+IHN1cHBvcnQg
MTAgYml0IHBpeGVsIGZvcm1hdHMgYW5kIGlmIGl0IGlzIHN1cHBvcnRlZCBieSB1c2Vyc3BhY2Uu
Cj4KPiBBbiBleGFtcGxlIG9mIGhvdyBpdCBjYW4gYmUgdXNlZCBpbiBHU3RyZWFtZXIgdG8gZGlz
Y292ZXIgdGhlCj4gc3VwcG9ydGVkIHBpeGVscyBmb3JtYXRzIGZvciBzdGF0ZWxlc3MgZGVjb2Rl
cnMgaXMgYXZhaWxhYmxlIGhlcmU6Cj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Jl
bmphbWluLmdhaWduYXJkMS9nc3RyZWFtZXIvLS9jb21taXRzL3Y0bDJjb2RlY3NfZW51bV9hbGxf
c3VwcG9ydGVkX2Zvcm1hdHM/cmVmX3R5cGU9aGVhZHMKPgo+IHY0bDItY29tcGxpYW5jZSB0ZXN0
IG9mIHRoaXMgZmxhZzoKPiBodHRwczovL2dpdGxhYi5jb2xsYWJvcmEuY29tL2JlbmphbWluLmdh
aWduYXJkL3Y0bC11dGlscy8tL2NvbW1pdHMvZW51bV9hbGxfZm9ybWF0c192NAo+Cj4gY2hhbmdl
IGluIHZlcnNpb24gNzoKPiAtIFJld29yayBkb2N1bWVudGF0aW9uIGFib3V0IHdoaWNoIGRyaXZl
cnMgc2hvdWxkIHVzZSB0aGUgZmxhZwoKSGksCgphIGdlbnRsZSBwaW5nIG9uIHRoaXMgc2VyaWVz
CgpUaGFua3MsCkJlbmphbWluCgo+Cj4gY2hhbmdlIGluIHZlcnNpb24gNjoKPiAtIENoYW5nZSBm
bGFnIG5hbWUuCj4gLSBJbXByb3ZlIGRvY3VtZW50YXRpb24uCj4gLSBJbXByb3ZlIHZpc2wgZHJp
dmVyIHRvIGVudW1lcmF0ZSBvbmUgbW9yZSBwaXhlbCBmb3JtYXQgd2hlbiB0aGUgZmxhZwo+ICAg
IGlzIHVzZWQuCj4KPiBjaGFuZ2VzIGluIHZlcnNpb24gNToKPiAtIFJlc2V0IHRoZSBwcm9wb3Nh
bCB0byBmb2xsb3cgSGFucydzIGFkdmljZXMKPiAtIEFkZCBuZXcgZmxhZyB0byBiZSB1c2VkIHdp
dGggaW5kZXggZmllbGQuCj4gLSBNYWtlIHZpY29kZWMgYW5kIHZpc2wgdGVzdCBkcml2ZXIgdXNl
IHRoZSBuZXcgZmxhZwo+IC0gRG9pbmcgdGhlIHNhbWUgZm9yIFZlcmlzaWxpY29uIGRyaXZlci4K
PiAgIAo+IEJlbmphbWluIEdhaWduYXJkICgzKToKPiAgICBtZWRpYTogdmlkZW9kZXYyOiBBZGQg
ZmxhZyB0byB1bmNvbmRpdGlvbmFsbHkgZW51bWVyYXRlIHBpeGVsIGZvcm1hdHMKPiAgICBtZWRp
YTogdGVzdC1kcml2ZXJzOiBVc2UgVjRMMl9GTVRERVNDX0ZMQUdfRU5VTV9BTEwgZmxhZwo+ICAg
IG1lZGlhOiB2ZXJpc2lsaWNvbjogVXNlIFY0TDJfRk1UREVTQ19GTEFHX0VOVU1fQUxMIGZsYWcK
Pgo+ICAgLi4uL21lZGlhL3Y0bC92aWRpb2MtZW51bS1mbXQucnN0ICAgICAgICAgICAgIHwgMTgg
KysrKysrKysrKysrKysrKy0KPiAgIC4uLi9tZWRpYS92aWRlb2RldjIuaC5yc3QuZXhjZXB0aW9u
cyAgICAgICAgICB8ICAxICsKPiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50
cm9fdjRsMi5jICB8IDE4ICsrKysrKysrKysrKy0tLS0tCj4gICBkcml2ZXJzL21lZGlhL3Rlc3Qt
ZHJpdmVycy92aXNsL3Zpc2wtdmlkZW8uYyAgfCAyMCArKysrKysrKysrKysrKysrKy0tCj4gICBp
bmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmggICAgICAgICAgICAgICAgfCAgMyArKysKPiAg
IDUgZmlsZXMgY2hhbmdlZCwgNTIgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
