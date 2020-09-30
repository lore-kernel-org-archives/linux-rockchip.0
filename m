Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BD59C4727C
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 01:58:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6128C2145D
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 01:58:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DA6190mu"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6128C2145D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ioK+1buj6WRaKAp48zwkTSLaOWI7T3BLBWl4PpI9kF8=; b=DA6190muv46BNdlwyQD0wK48/
	4TjkQ4FeECCkkCaWuNap5VTXnvsmvhjKi7uT0zOf7zclrUY7/TUegAiJ3Sy/+rNJRa5pI3oQ1T8A2
	odLUUVurDmzSTiXoeMne/9pIR322N0+xZ0LJhEr4Dxla8e7Vt83/Qnk8CEV/hkC22ObmI037+aKhB
	6WK/JdJmYR1pn8/XXuEVDzSI7zvIlrIaURtXWjtvusMEVIZpFpDvSP8iCWThcpwDSRgQIpJJMXX7K
	fdhiS2thGWIxjQPhMKQqwwIcn3Y/8mvJux9Y0GC/4MVSNCkhXx4zbF3eDFTmpfrElZcBl6ikUWe03
	IY2zTrXcg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNRNo-0002Yy-DC; Wed, 30 Sep 2020 01:58:16 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNRNl-0002YZ-Rz
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 01:58:15 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id CE5BDAF99;
 Wed, 30 Sep 2020 01:58:10 +0000 (UTC)
Subject: Re: [BUG] discard_granularity is 0 on rk3399-gru-kevin
To: Vicente Bergas <vicencb@gmail.com>
References: <2438c500-eb41-4ae2-b890-83d287ad3bcd@gmail.com>
 <32986577-b2c2-98ac-1a30-28790414b25d@suse.de>
 <ba57d7a8-bafc-e06e-8ed2-87db4ff96904@suse.de>
 <8f461da7-1a49-4288-8b06-020ddaa3dcc6@gmail.com>
From: Coly Li <colyli@suse.de>
Autocrypt: addr=colyli@suse.de; keydata=
 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
Message-ID: <6e409897-db13-0786-8dc0-4efd0c81175e@suse.de>
Date: Wed, 30 Sep 2020 09:58:03 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <8f461da7-1a49-4288-8b06-020ddaa3dcc6@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200929_215814_130697_262C451B 
X-CRM114-Status: GOOD (  21.96  )
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
 "Darrick J. Wong" <darrick.wong@oracle.com>, adrian.hunter@intel.com,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Hannes Reinecke <hare@suse.de>,
 cjb@laptop.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMC85LzMwIDA4OjA3LCBWaWNlbnRlIEJlcmdhcyB3cm90ZToKPiBPbiBNb25kYXksIFNl
cHRlbWJlciAyOCwgMjAyMCA3OjAyOjAwIEFNIENFU1QsIENvbHkgTGkgd3JvdGU6Cj4+IE9uIDIw
MjAvOS8yOCAxMToxNSwgQ29seSBMaSB3cm90ZToKPj4+IE9uIDIwMjAvOS8yOCAwNDoyOSwgVmlj
ZW50ZSBCZXJnYXMgd3JvdGU6Cj4+Pj4gSGksCj4+Pj4gc2luY2UgcmVjZW50bHkgdGhlIHJrMzM5
OS1ncnUta2V2aW4gaXMgcmVwb3J0aW5nIHRoZSB0cmFjZSBiZWxvdy4KPj4+PiBUaGUgaXNzdWUg
aGFzIGJlZW4gdW5jb3ZlcmVkIGJ5Cj4+Pj4gwqBiMzVmZDc0MjJjMmY4ZTA0NDk2ZjVhNzcwYmQ0
ZTFhMjA1NDE0YjNmCj4+Pj4gwqBibG9jazogY2hlY2sgcXVldWUncyBsaW1pdHMuZGlzY2FyZF9n
cmFudWxhcml0eSBpbiAuLi4KPj4+Cj4+PiBIaSBWaWNlbnRlLAo+Pj4KPj4+IFRoYW5rcyBmb3Ig
dGhlIGluZm9ybWF0aW9uLiBJdCBzZWVtcyB0aGUgZGV2aWNlIHdpdGggZjJmcyBkZWNsYXJlcyB0
bwo+Pj4gc3VwcG9ydCBESVNDQVJEIGJ1dCBkb24ndCBpbml0aWFsaXplIGRpc2NhcmRfZ3JhbnVs
YXJpdHkgZm9yIGl0cyBxdWV1ZS4KPj4+Cj4+PiBDYW4gSSBrbm93IHdoaWNoIGJsb2NrIGRyaXZl
ciBpcyB1bmRlciBmMmZzID8KPiAKPiBIaSBDb2x5LCB5ZXMsIGkgY29uZmlybSBpdCBpcyB0aGUg
bW1jIGRyaXZlci4KCkxldCdzIHdhaXQgZm9yIE1NQyBkZXZlbG9wZXJzIHRvIHJlc3BvbnNlIGZp
cnN0bHkuCgpUaGFua3MuCgoKQ29seSBMaQoKPiAKPj4gTWF5YmUgaXQgaXMgdGhlIG1tYyBkcml2
ZXIuIEEgemVybyB2YWx1ZSBkaXNjYXJkX2dyYW51bGFyaXR5IGlzIGZyb20gdGhlCj4+IGZvbGxv
d2luZyBjb21taXQ6Cj4+Cj4+IGNvbW1pdCBlMDU2YTFiNWI2N2I0ZTRiZmFkMDBiZjE0M2FiMTRm
NjM0Nzc3NzA1Cj4+IEF1dGhvcjogQWRyaWFuIEh1bnRlciA8YWRyaWFuLmh1bnRlckBpbnRlbC5j
b20+Cj4+IERhdGU6wqDCoCBUdWUgSnVuIDI4IDE3OjE2OjAyIDIwMTEgKzAzMDAKPj4KPj4gwqDC
oMKgIG1tYzogcXVldWU6IGxldCBob3N0IGNvbnRyb2xsZXJzIHNwZWNpZnkgbWF4aW11bSBkaXNj
YXJkIHRpbWVvdXQKPj4KPj4gwqDCoMKgIFNvbWUgaG9zdCBjb250cm9sbGVycyB3aWxsIG5vdCBv
cGVyYXRlIHdpdGhvdXQgYSBoYXJkd2FyZQo+PiDCoMKgwqAgdGltZW91dCB0aGF0IGlzIGxpbWl0
ZWQgaW4gdmFsdWUuwqAgSG93ZXZlciBsYXJnZSBkaXNjYXJkcwo+PiDCoMKgwqAgcmVxdWlyZSBs
YXJnZSB0aW1lb3V0cywgc28gdGhlcmUgbmVlZHMgdG8gYmUgYSB3YXkgdG8KPj4gwqDCoMKgIHNw
ZWNpZnkgdGhlIG1heGltdW0gZGlzY2FyZCBzaXplLgo+Pgo+PiDCoMKgwqAgQSBob3N0IGNvbnRy
b2xsZXIgZHJpdmVyIG1heSBub3cgc3BlY2lmeSB0aGUgbWF4aW11bSBkaXNjYXJkCj4+IMKgwqDC
oCB0aW1lb3V0IHBvc3NpYmxlIHNvIHRoYXQgbWF4X2Rpc2NhcmRfc2VjdG9ycyBjYW4gYmUgY2Fs
Y3VsYXRlZC4KPj4KPj4gwqDCoMKgIEhvd2V2ZXIsIGZvciBlTU1DIHdoZW4gdGhlIEhpZ2ggQ2Fw
YWNpdHkgRXJhc2UgR3JvdXAgU2l6ZQo+PiDCoMKgwqAgaXMgbm90IGluIHVzZSwgdGhlIHRpbWVv
dXQgY2FsY3VsYXRpb24gZGVwZW5kcyBvbiBjbG9jawo+PiDCoMKgwqAgcmF0ZSB3aGljaCBtYXkg
Y2hhbmdlLsKgIEZvciB0aGF0IGNhc2UgUHJlZmVycmVkIEVyYXNlIFNpemUKPj4gwqDCoMKgIGlz
IHVzZWQgaW5zdGVhZC4KPj4KPj4gwqDCoMKgIFNpZ25lZC1vZmYtYnk6IEFkcmlhbiBIdW50ZXIg
PGFkcmlhbi5odW50ZXJAaW50ZWwuY29tPgo+PiDCoMKgwqAgU2lnbmVkLW9mZi1ieTogQ2hyaXMg
QmFsbCA8Y2piQGxhcHRvcC5vcmc+Cj4+Cj4+Cj4+IEhpIEFkcmlhbiBhbmQgQ2hyaXMsCj4+Cj4+
IEkgYW0gbm90IGZhbWlsaWFyIHdpdGggbW1jIGRyaXZlciwgdGhlcmVmb3JlIEkgd29uJ3QgcHJv
dmlkZSBhIHF1aWNrIGZpeAo+PiBsaWtlIHRoaXMgKHdoaWNoIG1pZ2h0IHByb2JhYmx5IHdyb25n
KSwKPj4gLS0tIGEvZHJpdmVycy9tbWMvY29yZS9xdWV1ZS5jCj4+ICsrKyBiL2RyaXZlcnMvbW1j
L2NvcmUvcXVldWUuYwo+PiBAQCAtMTkwLDcgKzE5MCw3IEBAIHN0YXRpYyB2b2lkIG1tY19xdWV1
ZV9zZXR1cF9kaXNjYXJkKHN0cnVjdAo+PiByZXF1ZXN0X3F1ZXVlICpxLAo+PiDCoMKgwqDCoMKg
wqDCoCBxLT5saW1pdHMuZGlzY2FyZF9ncmFudWxhcml0eSA9IGNhcmQtPnByZWZfZXJhc2UgPDwg
OTsKPj4gwqDCoMKgwqDCoMKgwqAgLyogZ3JhbnVsYXJpdHkgbXVzdCBub3QgYmUgZ3JlYXRlciB0
aGFuIG1heC4gZGlzY2FyZCAqLwo+PiDCoMKgwqDCoMKgwqDCoCBpZiAoY2FyZC0+cHJlZl9lcmFz
ZSA+IG1heF9kaXNjYXJkKQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBxLT5saW1p
dHMuZGlzY2FyZF9ncmFudWxhcml0eSA9IDA7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHEtPmxpbWl0cy5kaXNjYXJkX2dyYW51bGFyaXR5ID0gU0VDVE9SX1NJWkU7Cj4+IMKgwqDC
oMKgwqDCoMKgIGlmIChtbWNfY2FuX3NlY3VyZV9lcmFzZV90cmltKGNhcmQpKQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmxrX3F1ZXVlX2ZsYWdfc2V0KFFVRVVFX0ZMQUdfU0VD
RVJBU0UsIHEpOwo+PiDCoH0KPj4KPj4KPj4gSXQgaXMgaW1wcm9wZXIgZm9yIGEgZGV2aWNlIGRy
aXZlciB0byBkZWNsYXJlIHRvIHN1cHBvcnQgRElTQ0FSRCBidXQgc2V0Cj4+IHF1ZXVlJ3MgZGlz
Y2FyZF9ncmFudWxhcml0eSBhcyAwLgo+Pgo+PiBDb3VsZCB5b3UgcGxlYXNlIHRvIHRha2UgYSBs
b29rIGZvciBtbWNfcXVldWVfc2V0dXBfZGlzY2FyZCgpID8KPj4KPj4gVGhhbmtzIGluIGFkdmFu
Y2UuCj4+Cj4+IENvbHkgTGkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
