Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F11DBC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 14:20:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BA51761037
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 14:20:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BA51761037
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1KlGo9VOlluH7dPyJONtJZwaCO8Za2n31meg5e/rI+U=; b=fIifXIMn6nJnWbFcjDvW6aVmlr
	+2+eNFs41N8jQ78I05YySUVA8HXcTZw04T0KP1x1xtpaOM5Q8uN080Lu22u682TWYFtJ7ShfOa56R
	/H3TK9zZdWDw0PUjHppZv6p7Yp9bWn7JzxW9S1S8hqj6WLar70u37kHa9iXcTYaeIBfhURDNzbxLO
	o5+sofvRA374vBs5GWL9Vusi5cy7waUv+IbMebOhILQ34+y4gtD+r7cIWJ3qCBb0AjSv2mSsgSYse
	Gy2NcP2CGdccXu+xVqDoQD5eAEav+kA2Fi8I7v9FdWFW917DENfbyRhZV7I4jPjOEPAu3Bh0/KCid
	Mj50p3OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbO4f-007Xsr-1n; Fri, 15 Oct 2021 14:20:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbNrR-007SMf-16; Fri, 15 Oct 2021 14:07:04 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:6fac:80cf:59ad:86b] (unknown
 [IPv6:2a01:e0a:4cb:a870:6fac:80cf:59ad:86b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 141ED1F45370;
 Fri, 15 Oct 2021 15:06:57 +0100 (BST)
Subject: Re: [PATCH v2 0/4] media: HEVC: RPS clean up
To: Alex Bee <knaerzche@gmail.com>, =?UTF-8?Q?Jernej_=c5=a0krabec?=
 <jernej.skrabec@gmail.com>, mchehab@kernel.org, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, hverkuil-cisco@xs4all.nl,
 jc@kynesim.co.uk, ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
 <21222555.EfDdHjke4D@kista>
 <3c5851ac-3b8a-decc-93c1-01a65b1f8611@collabora.com>
 <1705005.VLH7GnMWUR@kista> <4f8f6da3-70b1-5dd8-27b7-c9f9fd37920b@gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <9d9645a1-9d44-4fec-55e7-5b0a1c69e7ab@collabora.com>
Date: Fri, 15 Oct 2021 16:06:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <4f8f6da3-70b1-5dd8-27b7-c9f9fd37920b@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_070701_385747_9C9E2AA2 
X-CRM114-Status: GOOD (  29.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

CkxlIDE1LzEwLzIwMjEgw6AgMTI6MzMsIEFsZXggQmVlIGEgw6ljcml0wqA6Cj4gSGkgQmVuamFt
aW4sIEplcm5lago+IEFtIDEyLjEwLjIxIHVtIDE4OjA4IHNjaHJpZWIgSmVybmVqIMWga3JhYmVj
Ogo+PiBDQzogQWxleCBCZWUKPj4KPj4gQWxleCwgcGxlYXNlIHRha2UgYSBsb29rIHRvIHRoZXNl
IHBhdGNoZXMgdG9vLgo+IFRoZXNlIHBhdGNoZXMgZG9uJ3QgcmVtb3ZlIGFueXRoaW5nIHRoYXQg
d291bGQgYmUgbmVlZCBmb3Igcmt2ZGVjIGhldmMgCj4gLSBidXQgaW5kZWVkIC0gd2UgbmVlZCBz
b21lIG1vcmU6Cj4gaHR0cHM6Ly9naXRodWIuY29tL0xpYnJlRUxFQy9MaWJyZUVMRUMudHYvYmxv
Yi9tYXN0ZXIvcHJvamVjdHMvUm9ja2NoaXAvcGF0Y2hlcy9saW51eC9kZWZhdWx0L2xpbnV4LTIw
MDEtdjRsLXdpcC1ya3ZkZWMtaGV2Yy5wYXRjaCNMMjQyLUwzMDUgCj4KPgo+IHY0bDJfY3RybF9o
ZXZjX3NwczoKPiBfX3U4wqDCoMKgIHZpZGVvX3BhcmFtZXRlcl9zZXRfaWQKPiBfX3U4wqDCoMKg
IHNlcV9wYXJhbWV0ZXJfc2V0X2lkCj4KPiB2NGwyX2N0cmxfaGV2Y19wcHM6Cj4gX191OMKgwqDC
oCBwaWNfcGFyYW1ldGVyX3NldF9pZAo+IF9fdTE2wqDCoMKgIHNob3J0X3Rlcm1fcmVmX3BpY19z
ZXRfc2l6ZQo+IF9fdTE2wqDCoMKgIGxvbmdfdGVybV9yZWZfcGljX3NldF9zaXplCj4KPiBBcyBm
YXIgYXMgSSBjYW4gc2VlLCB0aGV5IGFyZSBhbGwgcGFydCBvZiB0aGUgc3BlYyBhbmQgc2hvdWxk
IGJlIAo+IHRoZXJlZm9yZSBnb29kIHRvIGdvIGluIHRoZSB1YXBpLgoKRG8geW91IGhhdmUgYW55
IHBsYW4gdG8gdXBzdHJlYW0gdGhlc2UgZmllbGRzIGluIEhFVkMgdUFQSSA/CgpSZWdhcmRzLApC
ZW5qYW1pbgoKPgo+IEFzIHlvdSBtaWdodCBub3csIGV2ZW4gcmt2ZGVjIGlzIGEgZnJhbWUtYmFz
ZWQgZGVjb2RlciwgaXQgZG9lc24ndCAKPiBmdWxseSBwYXJzZSBzbGljZSBoZWFkZXJzIGluIEhX
IGZvciBIRVZDIGFuZCB3ZSBuZWVkIHRvIHNldCByZWZlcmVuY2VzIAo+IGluIFNXIHdoaWNoIHJl
cXVpcmVzIGxvb3Bpbmcgb3ZlciB0aGUgc2xpY2VzLiBEb3duc3RyZWFtIHdlIGhhdmUgYSAKPiBo
YWNrIHRvIGdpdmUgbnVtX3NsaWNlcyBpbiB2NGwyX2N0cmxfaGV2Y19zcHMgZm9yIGRvaW5nIHRo
YXQuCj4gVGhhdCBjb3VsZCBmdWxseSBnbyBhd2F5LCBpZiBWNEwyX0NJRF9NUEVHX1ZJREVPX0hF
VkNfU0xJQ0VfUEFSQU1TIAo+IGNvdWxkIGdldCBkeW5hbWljIGFycmF5IGNvbnRyb2wgc3VwcG9y
dCBhbmQgd291bGQgbWFrZSB1cHN0cmVhbWluZyAKPiB0aGlzIGEgbG90IGVhc2llciAtIGFzIGZh
ciBhcyBJJ20gY29uY2VyZWQgdGhpcyB3b3VsZCBiZSByZXF1aXJlZCBmb3IgCj4gUlBpIEhFVkMg
ZGVjb2RlciBhcyB3ZWxsLgo+IEFzIGEgbGFzdCByZXNvcnQgd2UgY291bGQgYWxzbyBpbXBsZW1l
bnQgYSBIVyBzcGVjaWZjIGNvbnRyb2wgw6AgbGEKPiBWNEwyX0NJRF9IQU5UUk9fSEVWQ19TTElD
RV9IRUFERVJfU0tJUCAtIGJ1dCBJJ2QgbGlrZSB0byBhdm9pZCB0aGF0LCAKPiBrbm93aW5nIGl0
IHdvdWxkIGNlcnRhaW5seSBiZSBiZXR0ZXIgZnJvbSBwZXJmb3JtYW5jZSBwb3YuCj4KPiBBbGV4
Lgo+Pgo+PiBEbmUgdG9yZWssIDEyLiBva3RvYmVyIDIwMjEgb2IgMTc6NTc6NTAgQ0VTVCBqZSBC
ZW5qYW1pbiBHYWlnbmFyZCAKPj4gbmFwaXNhbChhKToKPj4+Cj4+PiBMZSAxMi8xMC8yMDIxIMOg
IDE3OjM0LCBKZXJuZWogxaBrcmFiZWMgYSDDqWNyaXQgOgo+Pj4+IEhpIEJlbmphbWluIQo+Pj4+
Cj4+Pj4gRG5lIHRvcmVrLCAxMi4gb2t0b2JlciAyMDIxIG9iIDE2OjM1OjQ4IENFU1QgamUgQmVu
amFtaW4gR2FpZ25hcmQKPj4gbmFwaXNhbChhKToKPj4+Pj4gVGhpcyBzZXJpZXMgYWltcyB0byBj
bGVhbiB1cCBSZWZlcmVuY2UgUGljdHVyZSBTZXQgdXNhZ2UgYW5kIGZsYWdzLgo+Pj4+Pgo+Pj4+
PiBMb25nIHRlcm0gZmxhZyB3YXMgbmFtZWQgd2l0aCBSUFMgcHJlZml4IHdoaWxlIGl0IGlzIG5v
dCB1c2VkIGZvciBSUFMKPj4+Pj4gYnV0IGZvciBtYXJrIGxvbmcgdGVybSByZWZlcmVuY2VzIGlu
IERCUC4gUmVtYW5lIGl0IGFuZCByZW1vdmUgdGhlIAo+Pj4+PiB0d28KPj4+Pj4gb3RoZXIgdXNl
bGVzcyBSUFMgZmxhZ3MuCj4+Pj4+Cj4+Pj4+IENsYXJpZnkgZG9jdW1lbnRhdGlvbiBhYm91dCBS
UFMgbGlzdHMgY29udGVudCBhbmQgbWFrZSBzdXJlIHRoYXQgCj4+Pj4+IEhhbnRybwo+Pj4+PiBk
cml2ZXIgdXNlIHRoZW0gY29ycmVjdGx5IChpLmUgd2l0aG91dCBsb29rIHVwIGluIERCUCkuCj4+
Pj4+Cj4+Pj4+IFRoZXNlIHBhdGNoZXMgYXJlIHRoZSBsYXN0IGluIG15IGJhY2tsb2cgaW1wYWN0
aW5nIEhFVkMgdUFQSS4KPj4+Pj4gwqAgRnJvbSBteSBwb2ludCBvZiB2aWV3LCBvbmNlIHRoZXkg
Z2V0IG1lcmdlZCwgeW91IGNvdWxkIHN0YXJ0IAo+Pj4+PiB0YWxraW5nCj4+Pj4+IGFib3V0IGhv
dyBtb3ZlIEhFVkMgdUFQSSB0byBzdGFibGUuCj4+Pj4gV2l0aCB5b3VyIGNoYW5nZXMsIEhFVkMg
dUFQSSBjb250cm9scyBzdGlsbCB3b24ndCBiZSBjb21wbGV0ZS4gQ2VkcnVzCj4+IG5lZWRzCj4+
Pj4gZW50cnkgcG9pbnQgY29udHJvbCwgd2hpY2ggaW4gdHVybiBuZWVkcyBkeW5hbWljIGFycmF5
IHN1cHBvcnQuIEknbSAKPj4+PiBhIGJpdAo+PiBsYXp5Cj4+Pj4gaW1wbGVtZW50aW5nIHRoYXQg
Y29udHJvbCwgYnV0IEkgZ3Vlc3MgSSBjYW4gdGFrZSBhIGxvb2sgaW4gYSBtb250aCAKPj4+PiBv
ciBzby4KPj4+PiBya3ZkZWMgYWxzbyBuZWVkcyBtb3JlIGZpZWxkcyBmb3IgSEVWQy4gV2l0aCBw
YXRjaGVzIGNvbGxlY3RlZCBoZXJlOgo+Pj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9MaWJyZUVMRUMv
TGlicmVFTEVDLnR2L2Jsb2IvbWFzdGVyL3Byb2plY3RzL1JvY2tjaGlwLyAKPj4+Pgo+Pj4+IHBh
dGNoZXMvbGludXgvZGVmYXVsdC9saW51eC0yMDAxLXY0bC13aXAtcmt2ZGVjLWhldmMucGF0Y2gK
Pj4+PiBmbHVzdGVyIEhFVkMgdGVzdCBzY29yZSBpcyByZXBvcnRlZGx5IDEyMS8xMzUgKDgtYml0
IHRlc3RzIG9ubHkpLgo+Pj4KPj4+IEhpIEplcm5laiwKPj4+Cj4+PiBUaGFua3MgZm9yIHlvdXIg
ZmVlZGJhY2ssIGdldHRpbmcgYSBsaXN0IG9mIG1pc3NpbmcgaXRlbXMgaW4gSEVWQyB1QVBJCj4+
PiB3aWxsIGRlZmluaXRpdmVseSBoZWxwIHRvIGZpbGwgdGhlIGhvcGUuCj4+PiBUaGUgcGF0Y2gg
eW91IG1lbnRpb24gZm9yIHJrdmRlYyBhcmUgYWxyZWFkeSBtZXJnZWQgaW4gbWFpbmxpbmUgCj4+
PiBrZXJuZWwgKGF0Cj4+PiBsZWFzdCBmb3IgdUFQSSBwYXJ0KS4KPj4KPj4gQXJlIHRoZXk/IFdo
YXQgYWJvdXQ6Cj4+IHZpZGVvX3BhcmFtZXRlcl9zZXRfaWQKPj4gc2VxX3BhcmFtZXRlcl9zZXRf
aWQKPj4gcGljX3BhcmFtZXRlcl9zZXRfaWQKPj4gc2hvcnRfdGVybV9yZWZfcGljX3NldF9zaXpl
Cj4+IGxvbmdfdGVybV9yZWZfcGljX3NldF9zaXplCj4+Cj4+IEF0IGxlYXN0IEkgZG9uJ3Qgc2Vl
IHRoZW0gaW4gbGludXgtbmV4dC4gTWF5YmUgdGhhdCBpbmZvcm1hdGlvbiBjYW4gYmUKPj4gb2J0
YWluZWQgaW4gc29tZSBvdGhlciB3YXk/Cj4+Cj4+PiBDZWRydXMgbmVlZHMgYXJlIGFib3V0IG51
bV9lbnRyeV9wb2ludF9vZmZzZXRzLCBvZmZzZXRfbGVuX21pbnVzMSBhbmQKPj4gZW50cnlfcG9p
bnRfb2Zmc2V0X21pbnVzMVsgaSBdCj4+PiBpbiBIRVZDIHNwZWNpZmljYXRpb25zID8KPj4KPj4g
WWVzLCBDZWRydXMgbmVlZHMgdG8ga25vdyB3aG9sZSBsaXN0IG9mIGVudHJ5IHBvaW50cy4gSSBk
b24ndCB0aGluayAKPj4gd2UgbmVlZCB0bwo+PiB3b3JyeSBhYm91dCBvZmZzZXRfbGVuX21pbnVz
MSwgbGlzdCBjb3VsZCBiZSBwcmUtcHJvY2Vzc2VkIC0ganVzdCAKPj4gbnVtYmVyIG9mCj4+IGVu
dHJ5IHBvaW50cyBhbmQgdGhlaXIgdmFsdWVzLgo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+IEplcm5l
ago+Pgo+Pj4KPj4+IFJlZ2FyZHMsCj4+PiBCZW5qYW1pbgo+Pj4KPj4+Pgo+Pj4+IEkgd291bGQg
Y2VydGFpbmx5IHdhaXQgd2l0aCBtb3ZpbmcgSEVWQyB1QVBJIHRvIHN0YWJsZS4KPj4+Pgo+Pj4+
IEJlc3QgcmVnYXJkcywKPj4+PiBKZXJuZWoKPj4+Pgo+Pj4+PiB2ZXJzaW9uIDI6Cj4+Pj4+IC0g
Y2hhbmdlIERQQiBmaWVsZCBuYW1lIGZyb20gcnBzIHRvIGZsYWdzCj4+Pj4+Cj4+Pj4+IFBsZWFz
ZSBub3RlIHRoYXQgdGhlIG9ubHkgcHVycG9zZSBvZiBjb21taXRzIDMgYW5kIDQgaXMgdG8gYWxs
b3cgCj4+Pj4+IHRvIHRlc3QKPj4+Pj4gRzIgaGFyZHdhcmUgYmxvY2sgZm9yIElNWDhNUSB1bnRp
bCBhIHByb3BlciBzb2x1dGlvbiBpc3VpbmcgcG93ZXIgCj4+Pj4+IGRvbWFpbgo+Pj4+PiBjYW4g
YmUgZm91bmQuIERvIG5vdCBtZXJnZSB0aGVtLgo+Pj4+Pgo+Pj4+PiBHU3RyZWFtZXIgSEVWQyBw
bHVnaW4gbWVyZ2UgcmVxdWVzdCBjYW4gYmUgZm91bmQgaGVyZToKPj4+Pj4gaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2dzdHJlYW1lci9nc3RyZWFtZXIvLS9tZXJnZV9yZXF1ZXN0cy8x
MDc5IAo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBXaXRoIHRob3NlIHBpZWNlIG9mIGNvZGUgZmx1c3RlciBz
Y29yZSBpcyA3Ny8xNDcuCj4+Pj4+Cj4+Pj4+IEJlbmphbWluCj4+Pj4+Cj4+Pj4+IEJlbmphbWlu
IEdhaWduYXJkICg0KToKPj4+Pj4gwqDCoMKgIG1lZGlhOiBoZXZjOiBSZW1vdmUgUlBTIG5hbWVk
IGZsYWdzCj4+Pj4+IMKgwqDCoCBtZWRpYTogaGV2YzogRW1iZWRkZWQgaW5kZXhlcyBpbiBSUFMK
Pj4+Pj4gwqDCoMKgIG1lZGlhOiBoYW50cm86IFVzZSBzeXNjb24gaW5zdGVhZCBvZiAnY3RybCcg
cmVnaXN0ZXIKPj4+Pj4gwqDCoMKgIGFybTY0OiBkdHM6IGlteDhtcTogQWRkIG5vZGUgdG8gRzIg
aGFyZHdhcmUKPj4+Pj4KPj4+Pj4gwqDCoCAuLi4vbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5y
c3TCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxNCArKystLS0KPj4+Pj4gwqDCoCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzacKgwqDCoMKgIHwgNDMgCj4+Pj4+ICsr
KysrKysrKysrKystLS0tCj4+Pj4+IMKgwqAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9o
YW50cm8uaMKgwqDCoMKgwqDCoMKgwqAgfMKgIDUgKy0KPj4+Pj4gwqDCoCAuLi4vc3RhZ2luZy9t
ZWRpYS9oYW50cm8vaGFudHJvX2cyX2hldmNfZGVjLmMgfCAyNyArKystLS0tLS0tLQo+Pj4+PiDC
oMKgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3LmPCoMKgIHwgNDgg
Cj4+Pj4+ICsrKysrKysrKysrKy0tLS0tLS0KPj4+Pj4gwqDCoCAuLi4vc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX2gyNjUuY8KgIHzCoCAyICstCj4+Pj4+IMKgwqAgaW5jbHVkZS9t
ZWRpYS9oZXZjLWN0cmxzLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
wqAgNiArLS0KPj4+Pj4gwqDCoCA3IGZpbGVzIGNoYW5nZWQsIDg0IGluc2VydGlvbnMoKyksIDYx
IGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiAtLSAKPj4+Pj4gMi4zMC4yCj4+Pj4+Cj4+Pj4+Cj4+
Pj4KPj4+Cj4+Cj4+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
