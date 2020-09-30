Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF15C4727E
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 11:06:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3E795206FC
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 11:06:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="o//BnaKC"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3E795206FC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nABK12vYretpL6+7SjLXjI7Hm7rIREsggPmXP2jwFf0=; b=o//BnaKCCCotjEQiMAzfKkvIx
	Du73cov7e/s8ih5nDPl7PTCuYsjhVVE9PVZYqL9hG7pRifGlsYl1dtF1Ml6k4uWA5F8EgRNcFGFbw
	twZoDU07ZxvvviY7ASIBGDmxoHvzkYwMbdBwWpoZ9wWfQe4WRaHy+kGdCg5Eas+h7NmqjtphDVYTf
	pw0n7cQJgVDl0XM6WSoXjHdtZT6pINKU+a/jkqSBl7KKB3tQQjUaobuRor6rXDZHmPu+Rfcr7v2S/
	d8jZXCUVVeQVT/pbvAiGHT68aiX2XPHozEYEy6LPTeaasrV9RXDuFkYZ5Jqyh/wSTawjTDTB/t2mO
	EsADMHoJA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNZwT-0000mF-K1; Wed, 30 Sep 2020 11:06:37 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNZwQ-0000lP-Rw
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 11:06:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 9E74CB25E;
 Wed, 30 Sep 2020 11:06:33 +0000 (UTC)
Subject: Re: [BUG] discard_granularity is 0 on rk3399-gru-kevin
To: Adrian Hunter <adrian.hunter@intel.com>
References: <2438c500-eb41-4ae2-b890-83d287ad3bcd@gmail.com>
 <32986577-b2c2-98ac-1a30-28790414b25d@suse.de>
 <ba57d7a8-bafc-e06e-8ed2-87db4ff96904@suse.de>
 <a2b74575-3899-8450-8d11-10d6524cfc41@intel.com>
From: Coly Li <colyli@suse.de>
Autocrypt: addr=colyli@suse.de; keydata=
 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
Message-ID: <5cff0e29-f3e5-ebed-0e6a-393fd4485e9e@suse.de>
Date: Wed, 30 Sep 2020 19:06:27 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <a2b74575-3899-8450-8d11-10d6524cfc41@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_070635_129375_ED393012 
X-CRM114-Status: GOOD (  22.70  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Darrick J. Wong" <darrick.wong@oracle.com>,
 Vicente Bergas <vicencb@gmail.com>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>, cjb@laptop.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMC85LzMwIDE4OjQ4LCBBZHJpYW4gSHVudGVyIHdyb3RlOgo+IE9uIDI4LzA5LzIwIDg6
MDIgYW0sIENvbHkgTGkgd3JvdGU6Cj4+IE9uIDIwMjAvOS8yOCAxMToxNSwgQ29seSBMaSB3cm90
ZToKPj4+IE9uIDIwMjAvOS8yOCAwNDoyOSwgVmljZW50ZSBCZXJnYXMgd3JvdGU6Cj4+Pj4gSGks
Cj4+Pj4gc2luY2UgcmVjZW50bHkgdGhlIHJrMzM5OS1ncnUta2V2aW4gaXMgcmVwb3J0aW5nIHRo
ZSB0cmFjZSBiZWxvdy4KPj4+PiBUaGUgaXNzdWUgaGFzIGJlZW4gdW5jb3ZlcmVkIGJ5Cj4+Pj4g
wqBiMzVmZDc0MjJjMmY4ZTA0NDk2ZjVhNzcwYmQ0ZTFhMjA1NDE0YjNmCj4+Pj4gwqBibG9jazog
Y2hlY2sgcXVldWUncyBsaW1pdHMuZGlzY2FyZF9ncmFudWxhcml0eSBpbgo+Pj4+IF9fYmxrZGV2
X2lzc3VlX2Rpc2NhcmQoKQo+Pj4KPj4+IEhpIFZpY2VudGUsCj4+Pgo+Pj4gVGhhbmtzIGZvciB0
aGUgaW5mb3JtYXRpb24uIEl0IHNlZW1zIHRoZSBkZXZpY2Ugd2l0aCBmMmZzIGRlY2xhcmVzIHRv
Cj4+PiBzdXBwb3J0IERJU0NBUkQgYnV0IGRvbid0IGluaXRpYWxpemUgZGlzY2FyZF9ncmFudWxh
cml0eSBmb3IgaXRzIHF1ZXVlLgo+Pj4KPj4+IENhbiBJIGtub3cgd2hpY2ggYmxvY2sgZHJpdmVy
IGlzIHVuZGVyIGYyZnMgPwo+Pgo+PiBNYXliZSBpdCBpcyB0aGUgbW1jIGRyaXZlci4gQSB6ZXJv
IHZhbHVlIGRpc2NhcmRfZ3JhbnVsYXJpdHkgaXMgZnJvbSB0aGUKPj4gZm9sbG93aW5nIGNvbW1p
dDoKPj4KPj4gY29tbWl0IGUwNTZhMWI1YjY3YjRlNGJmYWQwMGJmMTQzYWIxNGY2MzQ3Nzc3MDUK
Pj4gQXV0aG9yOiBBZHJpYW4gSHVudGVyIDxhZHJpYW4uaHVudGVyQGludGVsLmNvbT4KPj4gRGF0
ZTogICBUdWUgSnVuIDI4IDE3OjE2OjAyIDIwMTEgKzAzMDAKPj4KPj4gICAgIG1tYzogcXVldWU6
IGxldCBob3N0IGNvbnRyb2xsZXJzIHNwZWNpZnkgbWF4aW11bSBkaXNjYXJkIHRpbWVvdXQKPj4K
Pj4gICAgIFNvbWUgaG9zdCBjb250cm9sbGVycyB3aWxsIG5vdCBvcGVyYXRlIHdpdGhvdXQgYSBo
YXJkd2FyZQo+PiAgICAgdGltZW91dCB0aGF0IGlzIGxpbWl0ZWQgaW4gdmFsdWUuICBIb3dldmVy
IGxhcmdlIGRpc2NhcmRzCj4+ICAgICByZXF1aXJlIGxhcmdlIHRpbWVvdXRzLCBzbyB0aGVyZSBu
ZWVkcyB0byBiZSBhIHdheSB0bwo+PiAgICAgc3BlY2lmeSB0aGUgbWF4aW11bSBkaXNjYXJkIHNp
emUuCj4+Cj4+ICAgICBBIGhvc3QgY29udHJvbGxlciBkcml2ZXIgbWF5IG5vdyBzcGVjaWZ5IHRo
ZSBtYXhpbXVtIGRpc2NhcmQKPj4gICAgIHRpbWVvdXQgcG9zc2libGUgc28gdGhhdCBtYXhfZGlz
Y2FyZF9zZWN0b3JzIGNhbiBiZSBjYWxjdWxhdGVkLgo+Pgo+PiAgICAgSG93ZXZlciwgZm9yIGVN
TUMgd2hlbiB0aGUgSGlnaCBDYXBhY2l0eSBFcmFzZSBHcm91cCBTaXplCj4+ICAgICBpcyBub3Qg
aW4gdXNlLCB0aGUgdGltZW91dCBjYWxjdWxhdGlvbiBkZXBlbmRzIG9uIGNsb2NrCj4+ICAgICBy
YXRlIHdoaWNoIG1heSBjaGFuZ2UuICBGb3IgdGhhdCBjYXNlIFByZWZlcnJlZCBFcmFzZSBTaXpl
Cj4+ICAgICBpcyB1c2VkIGluc3RlYWQuCj4+Cj4+ICAgICBTaWduZWQtb2ZmLWJ5OiBBZHJpYW4g
SHVudGVyIDxhZHJpYW4uaHVudGVyQGludGVsLmNvbT4KPj4gICAgIFNpZ25lZC1vZmYtYnk6IENo
cmlzIEJhbGwgPGNqYkBsYXB0b3Aub3JnPgo+Pgo+Pgo+PiBIaSBBZHJpYW4gYW5kIENocmlzLAo+
Pgo+PiBJIGFtIG5vdCBmYW1pbGlhciB3aXRoIG1tYyBkcml2ZXIsIHRoZXJlZm9yZSBJIHdvbid0
IHByb3ZpZGUgYSBxdWljayBmaXgKPj4gbGlrZSB0aGlzICh3aGljaCBtaWdodCBwcm9iYWJseSB3
cm9uZyksCj4+IC0tLSBhL2RyaXZlcnMvbW1jL2NvcmUvcXVldWUuYwo+PiArKysgYi9kcml2ZXJz
L21tYy9jb3JlL3F1ZXVlLmMKPj4gQEAgLTE5MCw3ICsxOTAsNyBAQCBzdGF0aWMgdm9pZCBtbWNf
cXVldWVfc2V0dXBfZGlzY2FyZChzdHJ1Y3QKPj4gcmVxdWVzdF9xdWV1ZSAqcSwKPj4gICAgICAg
ICBxLT5saW1pdHMuZGlzY2FyZF9ncmFudWxhcml0eSA9IGNhcmQtPnByZWZfZXJhc2UgPDwgOTsK
Pj4gICAgICAgICAvKiBncmFudWxhcml0eSBtdXN0IG5vdCBiZSBncmVhdGVyIHRoYW4gbWF4LiBk
aXNjYXJkICovCj4+ICAgICAgICAgaWYgKGNhcmQtPnByZWZfZXJhc2UgPiBtYXhfZGlzY2FyZCkK
Pj4gLSAgICAgICAgICAgICAgIHEtPmxpbWl0cy5kaXNjYXJkX2dyYW51bGFyaXR5ID0gMDsKPj4g
KyAgICAgICAgICAgICAgIHEtPmxpbWl0cy5kaXNjYXJkX2dyYW51bGFyaXR5ID0gU0VDVE9SX1NJ
WkU7Cj4+ICAgICAgICAgaWYgKG1tY19jYW5fc2VjdXJlX2VyYXNlX3RyaW0oY2FyZCkpCj4+ICAg
ICAgICAgICAgICAgICBibGtfcXVldWVfZmxhZ19zZXQoUVVFVUVfRkxBR19TRUNFUkFTRSwgcSk7
Cj4+ICB9Cj4+Cj4+Cj4+IEl0IGlzIGltcHJvcGVyIGZvciBhIGRldmljZSBkcml2ZXIgdG8gZGVj
bGFyZSB0byBzdXBwb3J0IERJU0NBUkQgYnV0IHNldAo+PiBxdWV1ZSdzIGRpc2NhcmRfZ3JhbnVs
YXJpdHkgYXMgMC4KPj4KPj4gQ291bGQgeW91IHBsZWFzZSB0byB0YWtlIGEgbG9vayBmb3IgbW1j
X3F1ZXVlX3NldHVwX2Rpc2NhcmQoKSA/Cj4gCj4gVGhpcyBzaG91bGQgYmUgT0suCgpPSyBUaGVu
IEkgd2lsbCBwb3N0IGEgZml4IGFuZCBDQyB5b3UuIFRoYW5rIGZvciB0aGUgcmV2aWV3LgoKQ29s
eSBMaQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
