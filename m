Return-Path: <SRS0=31gD=BX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EED7C433DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 10:44:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7000520791
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 10:44:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="prNAFYS5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7000520791
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ToYvHtWQJ9qT0F1NYIHSwuiXzS1EcX/nIbbPVF9v+so=; b=prNAFYS5wTOzzI3s/XZQXZWCE
	7VSg0ormdGgZuVmB6yD0EcBTjcSJ9xdOame6dGGHFFJtoH4T18hQqRAmNcNp+aMKal0dEgE9kCl86
	935Lt9Qf6YQVl2AsF/rpvYXTcMyBa8izD4NuMJ/qb+E8apcggiIwBdqRiM3YpaAEMdvyunFvpAUnQ
	oqyY442adl2DYBI+yPWi0h4xjmUv9jub05JVmADG9/8/hMzohu3MgY+sjmjYgj5Z1mO0IoHkkRb6d
	T0NPhnzrrGSWeWdAl4mJ3QLhc37v4npimAOkyCZPG/J9oREGSGos+hs/7dXcg3yF9dlVr80asB2x1
	pa1R6+FiA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6Aiw-0005r1-Ir; Thu, 13 Aug 2020 10:44:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6Ait-0005qE-ST
 for linux-rockchip@lists.infradead.org; Thu, 13 Aug 2020 10:44:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 21CE8299F07
Subject: Re: [PATCH 3/3] media: staging: rkisp1: params: in 'stop_streaming'
 don't release the lock while returning buffers
To: Robin Murphy <robin.murphy@arm.com>, Tomasz Figa <tfiga@chromium.org>
References: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
 <20200625174257.22216-4-dafna.hirschfeld@collabora.com>
 <e269f2f5-c24c-7009-e624-3545af206709@arm.com>
 <CAAFQd5AsJG=YJC4eG6+qdt_dPyr-dwcXrmujxLaHfoe9==Es1g@mail.gmail.com>
 <e680474a-1b47-7904-b7ab-5a026d0db05f@collabora.com>
 <CAAFQd5CHK+c=zED-evW3sqgF+WpuAYW6M8kvPZCVCrf2_KHG8A@mail.gmail.com>
 <16ea1aba-0b0d-6bcf-8e72-5e253ead9218@arm.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <4d90a5d1-25a7-ab49-f3e5-2d54b6b8ecba@collabora.com>
Date: Thu, 13 Aug 2020 12:44:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <16ea1aba-0b0d-6bcf-8e72-5e253ead9218@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200813_064440_128693_D58C3D0A 
X-CRM114-Status: GOOD (  25.55  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: kernel@collabora.com, Dafna Hirschfeld <dafna3@gmail.com>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpBbSAyNi4wNi4yMCB1bSAxODo1OCBzY2hyaWViIFJvYmluIE11cnBoeToKPiBPbiAyMDIwLTA2
LTI2IDE2OjU5LCBUb21hc3ogRmlnYSB3cm90ZToKPj4gT24gRnJpLCBKdW4gMjYsIDIwMjAgYXQg
NTo0OCBQTSBEYWZuYSBIaXJzY2hmZWxkCj4+IDxkYWZuYS5oaXJzY2hmZWxkQGNvbGxhYm9yYS5j
b20+IHdyb3RlOgo+Pj4KPj4+Cj4+Pgo+Pj4gT24gMjYuMDYuMjAgMTY6MDMsIFRvbWFzeiBGaWdh
IHdyb3RlOgo+Pj4+IE9uIEZyaSwgSnVuIDI2LCAyMDIwIGF0IDM6MzIgUE0gUm9iaW4gTXVycGh5
IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+IEhpIERhZm5hLAo+Pj4+
Pgo+Pj4+PiBPbiAyMDIwLTA2LTI1IDE4OjQyLCBEYWZuYSBIaXJzY2hmZWxkIHdyb3RlOgo+Pj4+
Pj4gSW4gdGhlIHN0b3Bfc3RyZWFtaW5nIGNhbGxiYWNrICdya2lzcDFfcGFyYW1zX3ZiMl9zdG9w
X3N0cmVhbWluZycKPj4+Pj4+IHRoZXJlIGlzIG5vIG5lZWQgdG8gcmVsZWFzZSB0aGUgbG9jayAn
Y29uZmlnX2xvY2snIGFuZCB0aGVuIGFjcXVpcmUKPj4+Pj4+IGl0IGFnYWluIGF0IGVhY2ggaXRl
cmF0aW9uIHdoZW4gcmV0dXJuaW5nIGFsbCBidWZmZXJzLgo+Pj4+Pj4gVGhpcyBpcyBiZWNhdXNl
IHRoZSBzdHJlYW0gaXMgYWJvdXQgdG8gZW5kIGFuZCB0aGVyZSBpcyBubyBuZWVkCj4+Pj4+PiB0
byBsZXQgdGhlIGlzciBhY2Nlc3MgYSBidWZmZXIuCj4+Pj4+Pgo+Pj4+Pj4gU2lnbmVkLW9mZi1i
eTogRGFmbmEgSGlyc2NoZmVsZCA8ZGFmbmEuaGlyc2NoZmVsZEBjb2xsYWJvcmEuY29tPgo+Pj4+
Pj4gLS0tCj4+Pj4+PiDCoMKgwqAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JraXNwMS9ya2lzcDEt
cGFyYW1zLmMgfCA3ICstLS0tLS0KPj4+Pj4+IMKgwqDCoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDYgZGVsZXRpb25zKC0pCj4+Pj4+Pgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9ya2lzcDEvcmtpc3AxLXBhcmFtcy5jIGIvZHJpdmVycy9zdGFnaW5n
L21lZGlhL3JraXNwMS9ya2lzcDEtcGFyYW1zLmMKPj4+Pj4+IGluZGV4IGJmMDA2ZGJlZWUyZC4u
NTE2OWIwMjczMWYxIDEwMDY0NAo+Pj4+Pj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3Jr
aXNwMS9ya2lzcDEtcGFyYW1zLmMKPj4+Pj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9y
a2lzcDEvcmtpc3AxLXBhcmFtcy5jCj4+Pj4+PiBAQCAtMTQ4OCwxOSArMTQ4OCwxMyBAQCBzdGF0
aWMgdm9pZCBya2lzcDFfcGFyYW1zX3ZiMl9zdG9wX3N0cmVhbWluZyhzdHJ1Y3QgdmIyX3F1ZXVl
ICp2cSkKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIC8qIHN0b3AgcGFyYW1zIGlucHV0IGZpcnN0bHkg
Ki8KPj4+Pj4+IMKgwqDCoMKgwqDCoMKgIHNwaW5fbG9ja19pcnFzYXZlKCZwYXJhbXMtPmNvbmZp
Z19sb2NrLCBmbGFncyk7Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoCBwYXJhbXMtPmlzX3N0cmVhbWlu
ZyA9IGZhbHNlOwo+Pj4+Pj4gLcKgwqDCoMKgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnBhcmFt
cy0+Y29uZmlnX2xvY2ssIGZsYWdzKTsKPj4+Pj4+Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoCBmb3Ig
KGkgPSAwOyBpIDwgUktJU1AxX0lTUF9QQVJBTVNfUkVRX0JVRlNfTUFYOyBpKyspIHsKPj4+Pj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Bpbl9sb2NrX2lycXNhdmUoJnBhcmFtcy0+Y29u
ZmlnX2xvY2ssIGZsYWdzKTsKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
ZiAoIWxpc3RfZW1wdHkoJnBhcmFtcy0+cGFyYW1zKSkgewo+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBidWYgPSBsaXN0X2ZpcnN0X2VudHJ5KCZw
YXJhbXMtPnBhcmFtcywKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHN0cnVjdCBya2lzcDFfYnVmZmVyLCBxdWV1ZSk7Cj4+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxpc3RfZGVsKCZidWYtPnF1ZXVlKTsKPj4+Pj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrX2ly
cXJlc3RvcmUoJnBhcmFtcy0+Y29uZmlnX2xvY2ssCj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgZmxhZ3MpOwo+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IH0gZWxzZSB7Cj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZwYXJhbXMtPmNvbmZpZ19sb2NrLAo+Pj4+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZsYWdzKTsKPj4+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+Pj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4+Pgo+Pj4+PiBKdXN0IHNraW1taW5nIHRocm91Z2gg
b3V0IG9mIGlkbGUgY3VyaW9zaXR5IEkgd2FzIGdvaW5nIHRvIGNvbW1lbnQgdGhhdAo+Pj4+PiBp
ZiB5b3UgZW5kIHVwIHdpdGggdGhpcyBwYXR0ZXJuOgo+Pj4+Pgo+Pj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgaWYgKCF4KSB7Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Ly9kbyBzdHVmZgo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfSBlbHNlIHsKPj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgIH0KPj4+Pj4KPj4+Pj4gaXQgd291bGQgYmUgYmV0dGVyIGFzOgo+Pj4+Pgo+Pj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgaWYgKHgpCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYnJlYWs7Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAvL2RvIHN0dWZmCj4+Pj4+Cj4+
Pj4+IEhvd2V2ZXIgSSB0aGVuIHdlbnQgYW5kIGxvb2tlZCBhdCB0aGUgd2hvbGUgZnVuY3Rpb24g
YW5kIGZyYW5rbHkgaXQncyBhCj4+Pj4+IGJpdCBvZiBhIFdURi4gQXMgYmVzdCBJIGNvdWxkIGRl
Y2lwaGVyLCB0aGlzIHdob2xlIGNyYXp5IGxvb3AgYXBwZWFycyB0bwo+Pj4+PiBiZSBhIGJhcm9x
dWUgcmVpbnZlbnRpb24gb2Y6Cj4+Pj4+Cj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBsaXN0X2Zv
cl9lYWNoX2VudHJ5X3NhZmUoJnBhcmFtcy0+cGFyYW1zLCAuLi4sIGJ1Zikgewo+Pj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxpc3RfZGVsKCZidWYtPnF1ZXVlKTsKPj4+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2YjJfYnVmZmVyX2RvbmUoJmJ1
Zi0+dmIudmIyX2J1ZiwgVkIyX0JVRl9TVEFURV9FUlJPUik7Cj4+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCB9Cj4+PiBIaSwgaW5kZWVkIHRoaXMgaXMgYSBtdWNoIHNpbXBsZXIgaW1wbGVtZW50YXRp
b24sIGdyZXBpbmcgJ3JldHVybl9hbGxfYnVmZmVycycKPj4+IEkgc2VlIHRoYXQgbWFueSBkcml2
ZXJzIGltcGxlbWVudCBpdCB0aGlzIHdheS4KPj4+IHRoYW5rcyEKPj4+Cj4+Pj4+Cj4+Pj4+IChh
c3N1bWluZyBmcm9tIGNvbnRleHQgdGhhdCB0aGUgbGlzdCBzaG91bGQgbmV2ZXIgY29udGFpbiBt
b3JlIHRoYW4KPj4+Pj4gUktJU1AxX0lTUF9QQVJBTVNfUkVRX0JVRlNfTUFYIGVudHJpZXMgaW4g
dGhlIGZpcnN0IHBsYWNlKQo+Pj4+Cj4+Pj4gT3IgaWYgd2Ugd2FudCB0byBhdm9pZCBkaXNhYmxp
bmcgdGhlIGludGVycnVwdHMgZm9yIHRoZSB3aG9sZQo+Pj4+IGl0ZXJhdGlvbiwgd2UgY291bGQg
dXNlIGxpc3Rfc3BsaWNlKCkgdG8gbW92ZSBhbGwgdGhlIGVudHJpZXMgb2YKPj4+Cj4+PiBCdXQg
dGhpcyBjb2RlIHJ1bnMgd2hlbiB1c2Vyc3BhY2UgYXNrcyB0byBzdG9wIHRoZSBzdHJlYW1pbmcg
c28gSSBkb24ndAo+Pj4gdGhpbmsgaXQgaXMgaW1wb3J0YW50IGF0IHRoYXQgc3RhZ2UgdG8gYWxs
b3cgdGhlIGludGVycnVwdHMuCj4+Cj4+IEl0J3MgZ2VuZXJhbGx5IGEgZ29vZCBwcmFjdGljZSB0
byByZWR1Y2UgdGhlIHRpbWUgc3BlbnQgd2l0aAo+PiBpbnRlcnJ1cHRzIGRpc2FibGVkLiBEaXNh
YmxpbmcgdGhlIGludGVycnVwdHMgcHJldmVudHMgdGhlIHN5c3RlbSBmcm9tCj4+IGhhbmRsaW5n
IGV4dGVybmFsIGV2ZW50cywgaW5jbHVkaW5nIHRpbWVyIGludGVycnVwdHMsIGFuZCBzY2hlZHVs
aW5nCj4+IGhpZ2hlciBwcmlvcml0eSB0YXNrcywgaW5jbHVkaW5nIHJlYWwgdGltZSBvbmVzLiBI
b3cgbXVjaCB0aGUgc3lzdGVtCj4+IHJ1bnMgd2l0aCBpbnRlcnJ1cHRzIGRpc2FibGVkIGlzIG9u
ZSBvZiB0aGUgZmFjdG9ycyBkZXRlcm1pbmluZyB0aGUKPj4gZ2VuZXJhbCBzeXN0ZW0gbGF0ZW5j
eS4KPiAKPiBSaWdodCwgd2l0aCB0aGUgd2F5IHdlIGhhbmRsZSBpbnRlcnJ1cHQgYWZmaW5pdHkg
b24gQXJtIGFuIElSUSBjYW4ndCB0YXJnZXQgbXVsdGlwbGUgQ1BVcyBpbiBoYXJkd2FyZSwgc28g
YW55IHRpbWUgc3BlbnQgd2l0aCBJUlFzIGRpc2FibGVkIG1pZ2h0IGJlIHByZXZlbnRpbmcgb3Ro
ZXIgZGV2aWNlcycgaW50ZXJydXB0cyBmcm9tIGJlaW5nIHRha2VuIGV2ZW4gaWYgdGhleSdyZSBu
b3QgZXhwbGljaXRseSBhZmZpbmUgdG8gdGhlIGN1cnJlbnQgQ1BVLgo+IAo+IE5vdyB0aGF0IEkn
dmUgbG9va2VkLCBpdCBhcHBlYXJzIHRoYXQgdmIyX2J1ZmZlcl9kb25lKCkgbWlnaHQgZW5kIHVw
IHBlcmZvcm1pbmcgYSBETUEgc3luYyBvbiB0aGUgYnVmZmVycywgd2hpY2gsIGlmIGl0IGhhcyB0
byBkbyBvcmRlci1vZi1tZWdhYnl0ZXMgd29ydGggb2YgY2FjaGUgbWFpbnRlbmFuY2UgZm9yIGxh
cmdlIGZyYW1lcywgaXMgdGhlIGtpbmQgb2YgcmVsYXRpdmVseSBzbG93IG9wZXJhdGlvbiB0aGF0
IHJlYWxseSBkb2Vzbid0IHdhbnQgdG8gYmUgZG9uZSB3aXRoIElSUXMgZGlzYWJsZWQgKG9yIHVu
ZGVyIGEgbG9jayBhdCBhbGwsIGlkZWFsbHkpIHVubGVzcyBpdCBhYnNvbHV0ZWx5ICpoYXMqIHRv
IGJlLiBJZiB0aGUgbG9jayBpcyBvbmx5IG5lZWRlZCBoZXJlIHRvIHByb3RlY3QgbW9kaWZpY2F0
aW9ucyB0byB0aGUgcGFyYW1zIGxpc3QgaXRzZWxmLCB0aGVuIG1vdmluZyB0aGUgd2hvbGUgbGlz
dCBhdCBvbmNlIHRvIGRvIHRoZSBjbGVhbnVwICJvZmZsaW5lIiBzb3VuZHMgbGlrZSBhIGdyZWF0
IGlkZWEgdG8gbWUuCgpvaywgdGhhdCBtaWdodCBiZSBhIHByb2JsZW0gaW4gdjRsMiBpbiBnZW5l
cmFsIHNpbmNlIHZiMl9idWZmZXJfZG9uZSBpcyBhY3R1YWxseSBvZnRlbiB1c2VkIGluc2lkZSBh
biBpcnEgaGFuZGxlcgoKPiAKPiBSb2Jpbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
