Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47267C4727F
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 10:49:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EBDD020789
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 10:49:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="0sGhnmsY"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EBDD020789
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cbOIZjMzWXyTRNTWstb6N1bD7g8mADG3o3cQDHW1+l8=; b=0sGhnmsYgoAHgvoc95ictd1cY
	L4T3+SULMO/KYLhdQ3Sskod8RNKfwGVBzw7rDaSMFbmuIPs2MB3zRlx0OtEHdR21KcicPFmgHCnhD
	itiz5l/NL/aoUZ+mTrHeqE6c1+HhE+1Lc3NTb1tBzikBC0BT1bWci+TMZM+tptFFvIvnCu6YtQiyi
	GrrIlsQOoUE1O94ZBvLvbPGqBvQ0p3FE+jYZXI9kXqCOQHyphq54Bt2FV7jgq2KsTOCPqzdTAbj/M
	3u/NjOvOiFp1F2IkWApCFIaORvGjuGQULBQYTZmM9vW1bxjoGGG+FvhWb92DhAxnooVpJJTE88tJ3
	U/Rpn3Uyw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNZfn-0003uD-Nt; Wed, 30 Sep 2020 10:49:23 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNZfl-0003pv-EE
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 10:49:22 +0000
IronPort-SDR: rZCpRAoSJCGY2mVapnKll0wq3zL08PMENuFtXh3nT5V6Z6sdFX8maC8Pur/1S9TDKBe+FjDXkg
 R63gzyoVVaHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="161638593"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="161638593"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 03:49:13 -0700
IronPort-SDR: TsKFdgTsgr+ChlO3qd3ZuVPjETFCcfg8jX3vNKMTCOxqnmcKFIbdJ+jwbrGeK5MMcd069zEojf
 0xeuapz3te9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="457608168"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.190])
 ([10.237.72.190])
 by orsmga004.jf.intel.com with ESMTP; 30 Sep 2020 03:49:10 -0700
Subject: Re: [BUG] discard_granularity is 0 on rk3399-gru-kevin
To: Coly Li <colyli@suse.de>, Vicente Bergas <vicencb@gmail.com>,
 cjb@laptop.org
References: <2438c500-eb41-4ae2-b890-83d287ad3bcd@gmail.com>
 <32986577-b2c2-98ac-1a30-28790414b25d@suse.de>
 <ba57d7a8-bafc-e06e-8ed2-87db4ff96904@suse.de>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <a2b74575-3899-8450-8d11-10d6524cfc41@intel.com>
Date: Wed, 30 Sep 2020 13:48:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ba57d7a8-bafc-e06e-8ed2-87db4ff96904@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_064921_722624_324264AC 
X-CRM114-Status: GOOD (  29.75  )
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
 "Darrick J. Wong" <darrick.wong@oracle.com>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjgvMDkvMjAgODowMiBhbSwgQ29seSBMaSB3cm90ZToKPiBPbiAyMDIwLzkvMjggMTE6MTUs
IENvbHkgTGkgd3JvdGU6Cj4+IE9uIDIwMjAvOS8yOCAwNDoyOSwgVmljZW50ZSBCZXJnYXMgd3Jv
dGU6Cj4+PiBIaSwKPj4+IHNpbmNlIHJlY2VudGx5IHRoZSByazMzOTktZ3J1LWtldmluIGlzIHJl
cG9ydGluZyB0aGUgdHJhY2UgYmVsb3cuCj4+PiBUaGUgaXNzdWUgaGFzIGJlZW4gdW5jb3ZlcmVk
IGJ5Cj4+PiDCoGIzNWZkNzQyMmMyZjhlMDQ0OTZmNWE3NzBiZDRlMWEyMDU0MTRiM2YKPj4+IMKg
YmxvY2s6IGNoZWNrIHF1ZXVlJ3MgbGltaXRzLmRpc2NhcmRfZ3JhbnVsYXJpdHkgaW4KPj4+IF9f
YmxrZGV2X2lzc3VlX2Rpc2NhcmQoKQo+Pgo+PiBIaSBWaWNlbnRlLAo+Pgo+PiBUaGFua3MgZm9y
IHRoZSBpbmZvcm1hdGlvbi4gSXQgc2VlbXMgdGhlIGRldmljZSB3aXRoIGYyZnMgZGVjbGFyZXMg
dG8KPj4gc3VwcG9ydCBESVNDQVJEIGJ1dCBkb24ndCBpbml0aWFsaXplIGRpc2NhcmRfZ3JhbnVs
YXJpdHkgZm9yIGl0cyBxdWV1ZS4KPj4KPj4gQ2FuIEkga25vdyB3aGljaCBibG9jayBkcml2ZXIg
aXMgdW5kZXIgZjJmcyA/Cj4gCj4gTWF5YmUgaXQgaXMgdGhlIG1tYyBkcml2ZXIuIEEgemVybyB2
YWx1ZSBkaXNjYXJkX2dyYW51bGFyaXR5IGlzIGZyb20gdGhlCj4gZm9sbG93aW5nIGNvbW1pdDoK
PiAKPiBjb21taXQgZTA1NmExYjViNjdiNGU0YmZhZDAwYmYxNDNhYjE0ZjYzNDc3NzcwNQo+IEF1
dGhvcjogQWRyaWFuIEh1bnRlciA8YWRyaWFuLmh1bnRlckBpbnRlbC5jb20+Cj4gRGF0ZTogICBU
dWUgSnVuIDI4IDE3OjE2OjAyIDIwMTEgKzAzMDAKPiAKPiAgICAgbW1jOiBxdWV1ZTogbGV0IGhv
c3QgY29udHJvbGxlcnMgc3BlY2lmeSBtYXhpbXVtIGRpc2NhcmQgdGltZW91dAo+IAo+ICAgICBT
b21lIGhvc3QgY29udHJvbGxlcnMgd2lsbCBub3Qgb3BlcmF0ZSB3aXRob3V0IGEgaGFyZHdhcmUK
PiAgICAgdGltZW91dCB0aGF0IGlzIGxpbWl0ZWQgaW4gdmFsdWUuICBIb3dldmVyIGxhcmdlIGRp
c2NhcmRzCj4gICAgIHJlcXVpcmUgbGFyZ2UgdGltZW91dHMsIHNvIHRoZXJlIG5lZWRzIHRvIGJl
IGEgd2F5IHRvCj4gICAgIHNwZWNpZnkgdGhlIG1heGltdW0gZGlzY2FyZCBzaXplLgo+IAo+ICAg
ICBBIGhvc3QgY29udHJvbGxlciBkcml2ZXIgbWF5IG5vdyBzcGVjaWZ5IHRoZSBtYXhpbXVtIGRp
c2NhcmQKPiAgICAgdGltZW91dCBwb3NzaWJsZSBzbyB0aGF0IG1heF9kaXNjYXJkX3NlY3RvcnMg
Y2FuIGJlIGNhbGN1bGF0ZWQuCj4gCj4gICAgIEhvd2V2ZXIsIGZvciBlTU1DIHdoZW4gdGhlIEhp
Z2ggQ2FwYWNpdHkgRXJhc2UgR3JvdXAgU2l6ZQo+ICAgICBpcyBub3QgaW4gdXNlLCB0aGUgdGlt
ZW91dCBjYWxjdWxhdGlvbiBkZXBlbmRzIG9uIGNsb2NrCj4gICAgIHJhdGUgd2hpY2ggbWF5IGNo
YW5nZS4gIEZvciB0aGF0IGNhc2UgUHJlZmVycmVkIEVyYXNlIFNpemUKPiAgICAgaXMgdXNlZCBp
bnN0ZWFkLgo+IAo+ICAgICBTaWduZWQtb2ZmLWJ5OiBBZHJpYW4gSHVudGVyIDxhZHJpYW4uaHVu
dGVyQGludGVsLmNvbT4KPiAgICAgU2lnbmVkLW9mZi1ieTogQ2hyaXMgQmFsbCA8Y2piQGxhcHRv
cC5vcmc+Cj4gCj4gCj4gSGkgQWRyaWFuIGFuZCBDaHJpcywKPiAKPiBJIGFtIG5vdCBmYW1pbGlh
ciB3aXRoIG1tYyBkcml2ZXIsIHRoZXJlZm9yZSBJIHdvbid0IHByb3ZpZGUgYSBxdWljayBmaXgK
PiBsaWtlIHRoaXMgKHdoaWNoIG1pZ2h0IHByb2JhYmx5IHdyb25nKSwKPiAtLS0gYS9kcml2ZXJz
L21tYy9jb3JlL3F1ZXVlLmMKPiArKysgYi9kcml2ZXJzL21tYy9jb3JlL3F1ZXVlLmMKPiBAQCAt
MTkwLDcgKzE5MCw3IEBAIHN0YXRpYyB2b2lkIG1tY19xdWV1ZV9zZXR1cF9kaXNjYXJkKHN0cnVj
dAo+IHJlcXVlc3RfcXVldWUgKnEsCj4gICAgICAgICBxLT5saW1pdHMuZGlzY2FyZF9ncmFudWxh
cml0eSA9IGNhcmQtPnByZWZfZXJhc2UgPDwgOTsKPiAgICAgICAgIC8qIGdyYW51bGFyaXR5IG11
c3Qgbm90IGJlIGdyZWF0ZXIgdGhhbiBtYXguIGRpc2NhcmQgKi8KPiAgICAgICAgIGlmIChjYXJk
LT5wcmVmX2VyYXNlID4gbWF4X2Rpc2NhcmQpCj4gLSAgICAgICAgICAgICAgIHEtPmxpbWl0cy5k
aXNjYXJkX2dyYW51bGFyaXR5ID0gMDsKPiArICAgICAgICAgICAgICAgcS0+bGltaXRzLmRpc2Nh
cmRfZ3JhbnVsYXJpdHkgPSBTRUNUT1JfU0laRTsKPiAgICAgICAgIGlmIChtbWNfY2FuX3NlY3Vy
ZV9lcmFzZV90cmltKGNhcmQpKQo+ICAgICAgICAgICAgICAgICBibGtfcXVldWVfZmxhZ19zZXQo
UVVFVUVfRkxBR19TRUNFUkFTRSwgcSk7Cj4gIH0KPiAKPiAKPiBJdCBpcyBpbXByb3BlciBmb3Ig
YSBkZXZpY2UgZHJpdmVyIHRvIGRlY2xhcmUgdG8gc3VwcG9ydCBESVNDQVJEIGJ1dCBzZXQKPiBx
dWV1ZSdzIGRpc2NhcmRfZ3JhbnVsYXJpdHkgYXMgMC4KPiAKPiBDb3VsZCB5b3UgcGxlYXNlIHRv
IHRha2UgYSBsb29rIGZvciBtbWNfcXVldWVfc2V0dXBfZGlzY2FyZCgpID8KClRoaXMgc2hvdWxk
IGJlIE9LLgoKPiAKPiBUaGFua3MgaW4gYWR2YW5jZS4KPiAKPiBDb2x5IExpCj4gCj4gCj4+Cj4+
Pgo+Pj4gV0FSTklORzogQ1BVOiAwIFBJRDogMTM1IGF0IF9fYmxrZGV2X2lzc3VlX2Rpc2NhcmQr
MHgyMDAvMHgyOTQKPj4+IENQVTogMCBQSUQ6IDEzNSBDb21tOiBmMmZzX2Rpc2NhcmQtMTcgTm90
IHRhaW50ZWQgNS45LjAtcmM2ICMxCj4+PiBIYXJkd2FyZSBuYW1lOiBHb29nbGUgS2V2aW4gKERU
KQo+Pj4gcHN0YXRlOiAwMDAwMDAwNSAobnpjdiBkYWlmIC1QQU4gLVVBTyBCVFlQRT0tLSkKPj4+
IHBjIDogX19ibGtkZXZfaXNzdWVfZGlzY2FyZCsweDIwMC8weDI5NAo+Pj4gbHIgOiBfX2Jsa2Rl
dl9pc3N1ZV9kaXNjYXJkKzB4NTQvMHgyOTQKPj4+IHNwIDogZmZmZjgwMDAxMWRkM2IxMAo+Pj4g
eDI5OiBmZmZmODAwMDExZGQzYjEwIHgyODogMDAwMDAwMDAwMDAwMDAwMCB4Mjc6IGZmZmY4MDAw
MTFkZDNjYzQgeDI2Ogo+Pj4gZmZmZjgwMDAxMWRkM2UxOCB4MjU6IDAwMDAwMDAwMDAwNGU2OWIg
eDI0OiAwMDAwMDAwMDAwMDAwYzQwIHgyMzoKPj4+IGZmZmYwMDAwZjFkZWFhZjAgeDIyOiBmZmZm
MDAwMGYyODQ5MjAwIHgyMTogMDAwMDAwMDAwMDI3MzRkOCB4MjA6Cj4+PiAwMDAwMDAwMDAwMDAw
MDA4IHgxOTogMDAwMDAwMDAwMDAwMDAwMCB4MTg6IDAwMDAwMDAwMDAwMDAwMDAgeDE3Ogo+Pj4g
MDAwMDAwMDAwMDAwMDAwMCB4MTY6IDAwMDAwMDAwMDAwMDAwMDAgeDE1OiAwMDAwMDAwMDAwMDAw
MDAwIHgxNDoKPj4+IDAwMDAwMDAwMDAwMDAzOTQgeDEzOiAwMDAwMDAwMDAwMDAwMDAwIHgxMjog
MDAwMDAwMDAwMDAwMDAwMCB4MTE6Cj4+PiAwMDAwMDAwMDAwMDAwMDAwIHgxMDogMDAwMDAwMDAw
MDAwMDhiMCB4OSA6IGZmZmY4MDAwMTFkZDNjYjAgeDggOgo+Pj4gMDAwMDAwMDAwMDA0ZTY5YiB4
NyA6IDAwMDAwMDAwMDAwMDAwMDAgeDYgOiBmZmZmMDAwMGYxOTI2NDAwIHg1IDoKPj4+IGZmZmYw
MDAwZjE5NDA4MDAgeDQgOiAwMDAwMDAwMDAwMDAwMDAwIHgzIDogMDAwMDAwMDAwMDAwMGM0MCB4
MiA6Cj4+PiAwMDAwMDAwMDAwMDAwMDA4IHgxIDogMDAwMDAwMDAwMDI3MzRkOCB4MCA6IDAwMDAw
MDAwMDAwMDAwMDAgQ2FsbCB0cmFjZToKPj4+IF9fYmxrZGV2X2lzc3VlX2Rpc2NhcmQrMHgyMDAv
MHgyOTQKPj4+IF9fc3VibWl0X2Rpc2NhcmRfY21kKzB4MTI4LzB4Mzc0Cj4+PiBfX2lzc3VlX2Rp
c2NhcmRfY21kX29yZGVybHkrMHgxODgvMHgyNDQKPj4+IF9faXNzdWVfZGlzY2FyZF9jbWQrMHgy
ZTgvMHgzM2MKPj4+IGlzc3VlX2Rpc2NhcmRfdGhyZWFkKzB4ZTgvMHgyZjAKPj4+IGt0aHJlYWQr
MHgxMWMvMHgxMjAKPj4+IHJldF9mcm9tX2ZvcmsrMHgxMC8weDFjCj4+PiAtLS1bIGVuZCB0cmFj
ZSBlNGM4MDIzZDMzZGZlNzdhIF0tLS0KPj4+IG1tY2JsazFwMjogRXJyb3I6IGRpc2NhcmRfZ3Jh
bnVsYXJpdHkgaXMgMC4KPj4+IG1tY2JsazFwMjogRXJyb3I6IGRpc2NhcmRfZ3JhbnVsYXJpdHkg
aXMgMC4KPj4+IDxsYXN0IG1lc3NhZ2UgcmVwZWF0ZWQgbXVsdGlwbGUgdGltZXM+Cj4+Cj4gCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
