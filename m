Return-Path: <SRS0=t7eY=PA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F862C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 15:58:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E866610A2
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Oct 2021 15:58:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4E866610A2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o0Y0vX0yDy2DVK0V3UBvym7aHQ+bF9K/Cjparwr7hHY=; b=5GbrXQogMmPEm/BxqxtMK6AxaR
	8gUy/+3KbcM/bdW+VOkUzqiM3kRMEuBw3N1gtHK4Cke2/FJ23r91dGWYv4nhHKQ99guZkag+M6NAX
	rgGEH4k78ecMOhHLyaIXUG1ac9CaASDXGh/iMKH3QQm7s92rnVrl1bwPUZR4SHjcem7lAdXhqyJES
	k7xVtbkunY86A4hMzdrZgVFBS0tAeBXkleZzba39LKUf/zHtTXtowOXifmILIFvVkXEJWnMv+PETP
	/KiZyaJEvZ593o1yKQnR6OIspKMWXsaIlxi0O5jnXK2//aP29M6TVs1KaovcPEjr1DgAvAYlAsefq
	i8DMVlSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maKAM-00DSDE-64; Tue, 12 Oct 2021 15:58:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maKA8-00DS9c-FV; Tue, 12 Oct 2021 15:57:58 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:dcd8:9f87:c3be:dc06] (unknown
 [IPv6:2a01:e0a:4cb:a870:dcd8:9f87:c3be:dc06])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AF3521F43876;
 Tue, 12 Oct 2021 16:57:53 +0100 (BST)
Subject: Re: [PATCH v2 0/4] media: HEVC: RPS clean up
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
 mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 hverkuil-cisco@xs4all.nl, jc@kynesim.co.uk, ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
 <21222555.EfDdHjke4D@kista>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <3c5851ac-3b8a-decc-93c1-01a65b1f8611@collabora.com>
Date: Tue, 12 Oct 2021 17:57:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <21222555.EfDdHjke4D@kista>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_085756_682266_A3CE9F1C 
X-CRM114-Status: GOOD (  21.84  )
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

CkxlIDEyLzEwLzIwMjEgw6AgMTc6MzQsIEplcm5laiDFoGtyYWJlYyBhIMOpY3JpdMKgOgo+IEhp
IEJlbmphbWluIQo+Cj4gRG5lIHRvcmVrLCAxMi4gb2t0b2JlciAyMDIxIG9iIDE2OjM1OjQ4IENF
U1QgamUgQmVuamFtaW4gR2FpZ25hcmQgbmFwaXNhbChhKToKPj4gVGhpcyBzZXJpZXMgYWltcyB0
byBjbGVhbiB1cCBSZWZlcmVuY2UgUGljdHVyZSBTZXQgdXNhZ2UgYW5kIGZsYWdzLgo+Pgo+PiBM
b25nIHRlcm0gZmxhZyB3YXMgbmFtZWQgd2l0aCBSUFMgcHJlZml4IHdoaWxlIGl0IGlzIG5vdCB1
c2VkIGZvciBSUFMKPj4gYnV0IGZvciBtYXJrIGxvbmcgdGVybSByZWZlcmVuY2VzIGluIERCUC4g
UmVtYW5lIGl0IGFuZCByZW1vdmUgdGhlIHR3bwo+PiBvdGhlciB1c2VsZXNzIFJQUyBmbGFncy4K
Pj4KPj4gQ2xhcmlmeSBkb2N1bWVudGF0aW9uIGFib3V0IFJQUyBsaXN0cyBjb250ZW50IGFuZCBt
YWtlIHN1cmUgdGhhdCBIYW50cm8KPj4gZHJpdmVyIHVzZSB0aGVtIGNvcnJlY3RseSAoaS5lIHdp
dGhvdXQgbG9vayB1cCBpbiBEQlApLgo+Pgo+PiBUaGVzZSBwYXRjaGVzIGFyZSB0aGUgbGFzdCBp
biBteSBiYWNrbG9nIGltcGFjdGluZyBIRVZDIHVBUEkuCj4+ICBGcm9tIG15IHBvaW50IG9mIHZp
ZXcsIG9uY2UgdGhleSBnZXQgbWVyZ2VkLCB5b3UgY291bGQgc3RhcnQgdGFsa2luZwo+PiBhYm91
dCBob3cgbW92ZSBIRVZDIHVBUEkgdG8gc3RhYmxlLgo+IFdpdGggeW91ciBjaGFuZ2VzLCBIRVZD
IHVBUEkgY29udHJvbHMgc3RpbGwgd29uJ3QgYmUgY29tcGxldGUuIENlZHJ1cyBuZWVkcwo+IGVu
dHJ5IHBvaW50IGNvbnRyb2wsIHdoaWNoIGluIHR1cm4gbmVlZHMgZHluYW1pYyBhcnJheSBzdXBw
b3J0LiBJJ20gYSBiaXQgbGF6eQo+IGltcGxlbWVudGluZyB0aGF0IGNvbnRyb2wsIGJ1dCBJIGd1
ZXNzIEkgY2FuIHRha2UgYSBsb29rIGluIGEgbW9udGggb3Igc28uCj4gcmt2ZGVjIGFsc28gbmVl
ZHMgbW9yZSBmaWVsZHMgZm9yIEhFVkMuIFdpdGggcGF0Y2hlcyBjb2xsZWN0ZWQgaGVyZToKPiBo
dHRwczovL2dpdGh1Yi5jb20vTGlicmVFTEVDL0xpYnJlRUxFQy50di9ibG9iL21hc3Rlci9wcm9q
ZWN0cy9Sb2NrY2hpcC8KPiBwYXRjaGVzL2xpbnV4L2RlZmF1bHQvbGludXgtMjAwMS12NGwtd2lw
LXJrdmRlYy1oZXZjLnBhdGNoCj4gZmx1c3RlciBIRVZDIHRlc3Qgc2NvcmUgaXMgcmVwb3J0ZWRs
eSAxMjEvMTM1ICg4LWJpdCB0ZXN0cyBvbmx5KS4KCkhpIEplcm5laiwKClRoYW5rcyBmb3IgeW91
ciBmZWVkYmFjaywgZ2V0dGluZyBhIGxpc3Qgb2YgbWlzc2luZyBpdGVtcyBpbiBIRVZDIHVBUEkK
d2lsbCBkZWZpbml0aXZlbHkgaGVscCB0byBmaWxsIHRoZSBob3BlLgpUaGUgcGF0Y2ggeW91IG1l
bnRpb24gZm9yIHJrdmRlYyBhcmUgYWxyZWFkeSBtZXJnZWQgaW4gbWFpbmxpbmUga2VybmVsIChh
dApsZWFzdCBmb3IgdUFQSSBwYXJ0KS4KQ2VkcnVzIG5lZWRzIGFyZSBhYm91dCBudW1fZW50cnlf
cG9pbnRfb2Zmc2V0cywgb2Zmc2V0X2xlbl9taW51czEgYW5kIGVudHJ5X3BvaW50X29mZnNldF9t
aW51czFbIGkgXQppbiBIRVZDIHNwZWNpZmljYXRpb25zID8KClJlZ2FyZHMsCkJlbmphbWluCgo+
Cj4gSSB3b3VsZCBjZXJ0YWlubHkgd2FpdCB3aXRoIG1vdmluZyBIRVZDIHVBUEkgdG8gc3RhYmxl
Lgo+Cj4gQmVzdCByZWdhcmRzLAo+IEplcm5lago+Cj4+IHZlcnNpb24gMjoKPj4gLSBjaGFuZ2Ug
RFBCIGZpZWxkIG5hbWUgZnJvbSBycHMgdG8gZmxhZ3MKPj4KPj4gUGxlYXNlIG5vdGUgdGhhdCB0
aGUgb25seSBwdXJwb3NlIG9mIGNvbW1pdHMgMyBhbmQgNCBpcyB0byBhbGxvdyB0byB0ZXN0Cj4+
IEcyIGhhcmR3YXJlIGJsb2NrIGZvciBJTVg4TVEgdW50aWwgYSBwcm9wZXIgc29sdXRpb24gaXN1
aW5nIHBvd2VyIGRvbWFpbgo+PiBjYW4gYmUgZm91bmQuIERvIG5vdCBtZXJnZSB0aGVtLgo+Pgo+
PiBHU3RyZWFtZXIgSEVWQyBwbHVnaW4gbWVyZ2UgcmVxdWVzdCBjYW4gYmUgZm91bmQgaGVyZToK
Pj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2dzdHJlYW1lci9nc3RyZWFtZXIvLS9t
ZXJnZV9yZXF1ZXN0cy8xMDc5Cj4+Cj4+IFdpdGggdGhvc2UgcGllY2Ugb2YgY29kZSBmbHVzdGVy
IHNjb3JlIGlzIDc3LzE0Ny4KPj4KPj4gQmVuamFtaW4KPj4KPj4gQmVuamFtaW4gR2FpZ25hcmQg
KDQpOgo+PiAgICBtZWRpYTogaGV2YzogUmVtb3ZlIFJQUyBuYW1lZCBmbGFncwo+PiAgICBtZWRp
YTogaGV2YzogRW1iZWRkZWQgaW5kZXhlcyBpbiBSUFMKPj4gICAgbWVkaWE6IGhhbnRybzogVXNl
IHN5c2NvbiBpbnN0ZWFkIG9mICdjdHJsJyByZWdpc3Rlcgo+PiAgICBhcm02NDogZHRzOiBpbXg4
bXE6IEFkZCBub2RlIHRvIEcyIGhhcmR3YXJlCj4+Cj4+ICAgLi4uL21lZGlhL3Y0bC9leHQtY3Ry
bHMtY29kZWMucnN0ICAgICAgICAgICAgIHwgMTQgKysrLS0tCj4+ICAgYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgICAgIHwgNDMgKysrKysrKysrKysrKy0tLS0KPj4g
ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5oICAgICAgICAgfCAgNSArLQo+
PiAgIC4uLi9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzJfaGV2Y19kZWMuYyB8IDI3ICsr
Ky0tLS0tLS0tCj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92cHVfaHcu
YyAgIHwgNDggKysrKysrKysrKysrLS0tLS0tLQo+PiAgIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhp
L2NlZHJ1cy9jZWRydXNfaDI2NS5jICB8ICAyICstCj4+ICAgaW5jbHVkZS9tZWRpYS9oZXZjLWN0
cmxzLmggICAgICAgICAgICAgICAgICAgIHwgIDYgKy0tCj4+ICAgNyBmaWxlcyBjaGFuZ2VkLCA4
NCBpbnNlcnRpb25zKCspLCA2MSBkZWxldGlvbnMoLSkKPj4KPj4gLS0gCj4+IDIuMzAuMgo+Pgo+
Pgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
