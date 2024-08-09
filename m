Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DAB9C52D71
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 05:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiHalFRFvWVJikBBXx144+lvh78APr4alp6UnH0ZX9Q=; b=aaF3yIfZaBYyWq
	U7sDSoH42ZAi2PMvZF6c50I3Sy01DWhwU0R91deUh3oiCiCFVU2rOro9nvXYRrbWjJyycyMobYLfr
	H8LnH898PxxDdiOJhQpqMCy3KVvduWlGY7gz9MH8It5ZU8G8lFy4VvInmzT4fXCakHFPV28KohEwW
	4DnlfL4Qf0V4PVBMXZyVnNOGAQUVAWZLwVaVFuJK4/zKdKS3WTeDe/UDB+ufy9IJigdP1NVzCJsz/
	Flzr+o47COeWYzb8sPZsnttMLhQxz4QXnCCaV6xPbBeQG0VovxKK7jur0drZHdntFkESA6HQVH7x0
	zcru9Kbe/VDKLvDa0HRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scIRJ-0000000AKN6-46T6;
	Fri, 09 Aug 2024 05:45:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scIQ5-0000000AK5d-05hl
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Aug 2024 05:44:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 71D71615E6;
	Fri,  9 Aug 2024 05:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FF67C32782;
	Fri,  9 Aug 2024 05:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723182248;
	bh=ce1dczaiqaHq/b4u6sE/IFDSyphVayC0ApbaS3hZQ30=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kE8bmLk/lJ6ygH9ZN0lMzWivl4SgsAqma4mSHhFN6/3cUtdhEx/rb7UU8vhHiSSnz
	 Z6jvgFXGnR045cUUf2u5h5Uycwx100JZFrKsjNf1Bx69pYOMUrx9HrEjsNK6jszINI
	 Z78ki7MLPa7rRH1bmz7iofHooDbciTHMc7f3a/hMYidh9/hmXZY6+BdXutCafveUt6
	 IrG/rt1WYkn9qUNpzUfgvAhVAcR/zaj7pw1IEa3Rtn6RjW+cmP+f+UByydh+J4LMfv
	 QSkUBcoGsbyuGpXQQqT7DUbZGkaWPqt0UqdbWe6ckcgR1zOtGRWGY0oFn0gFwQv0Du
	 wZxaGTTw5Wl8Q==
Message-ID: <4de61c50-0f84-40b6-8993-d4e82cf54be0@kernel.org>
Date: Fri, 9 Aug 2024 07:44:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] scsi: ufs: rockchip: init support for UFS
To: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>,
 YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <1723089163-28983-1-git-send-email-shawn.lin@rock-chips.com>
 <1723089163-28983-4-git-send-email-shawn.lin@rock-chips.com>
 <93a16a4a-6a12-446f-bfc9-e8aa907e0598@kernel.org>
 <a8305f20-ea58-40b5-93f6-2c44f151219c@rock-chips.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <a8305f20-ea58-40b5-93f6-2c44f151219c@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_224409_186841_4E44CBA8 
X-CRM114-Status: GOOD (  28.18  )
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

T24gMDkvMDgvMjAyNCAwMjo1MywgU2hhd24gTGluIHdyb3RlOgo+IOWcqCAyMDI0LzgvOCAxODoz
NiwgS3J6eXN6dG9mIEtvemxvd3NraSDlhpnpgZM6Cj4+IE9uIDA4LzA4LzIwMjQgMDU6NTIsIFNo
YXduIExpbiB3cm90ZToKPj4+IFJLMzU3NiBjb250YWlucyBhIFVGUyBjb250cm9sbGVyLCBhZGQg
aW5pdCBzdXBwb3J0IGZvdCBpdC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNo
YXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4+Cj4+Cj4+IC4uLgo+Pgo+Pj4gKwllcnIgPSBjbGtf
cHJlcGFyZV9lbmFibGUoaG9zdC0+cmVmX291dF9jbGspOwo+Pj4gKwlpZiAoZXJyKQo+Pj4gKwkJ
cmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBlcnIsICJmYWlsZWQgdG8gZW5hYmxlIHJlZiBvdXQg
Y2xvY2tcbiIpOwo+Pj4gKwo+Pj4gKwlob3N0LT5yc3RfZ3BpbyA9IGRldm1fZ3Bpb2RfZ2V0KCZw
ZGV2LT5kZXYsICJyZXNldCIsIEdQSU9EX09VVF9MT1cpOwo+Pj4gKwlpZiAoSVNfRVJSKGhvc3Qt
PnJzdF9ncGlvKSkgewo+Pj4gKwkJZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBQVFJfRVJSKGhv
c3QtPnJzdF9ncGlvKSwKPj4+ICsJCQkJImludmFsaWQgcmVzZXQtZ3Bpb3MgcHJvcGVydHkgaW4g
bm9kZVxuIik7Cj4+PiArCQllcnIgPSBQVFJfRVJSKGhvc3QtPnJzdF9ncGlvKTsKPj4KPj4gTm8u
IExvb2sgYXQgeW91ciBjb2RlIGFib3ZlIC0geW91IGhhdmUgcmV0dXJuIGRldl9lcnJfcHJvYmUs
IHNvIGxvZ2ljYWwKPj4gaXMgdGhhdCB0aGUgc3ludGF4IGlzIGVyciA9IGRldl9lcnJfcHJvYmUu
IERvbid0IG92ZXItY29tcGxpY2F0ZSB0aGUgY29kZS4KPj4KPj4gQW55d2F5LCB0aGlzIGlzIHN1
c3BpY2lvdXMuIFlvdSBhbHJlYWR5IGhhdmUgcmVzZXRzIHdpdGggZm91ciByZXNldHMKPj4gKCEh
ISkgYW5kIHlvdSBjbGFpbSB5b3UgaGF2ZSBmaWZ0aCByZXNldCAtIEdQSU8/IFRoaXMgbG9va3Mg
anVzdCB3cm9uZywKPj4gbGlrZSB5b3UgcmVwcmVzZW50IHNvbWUgcHJvcGVydGllcyB3aGljaCBk
byBub3QgYmVsb25nIGhlcmUuCj4+Cj4gCj4gVGhhbmtzIGZvciB0aGUgZmVhZGJhY2suCj4gCj4g
WWVzLCB3ZSBoYXZlIDQgcmVzZXRzIGZvciBjb250cm9sbGVyLCBhbmQgb25lIGdwaW8gdG8gcmVz
ZXQgdGhlCj4gZGV2aWNlLiBJdCBoYXBwZW5lZCB0byBiZSBjYWxsZWQgcmVzZXQtZ3Bpb3MgaW4g
RFQgYnV0IGNhbiBiZQo+IGFueSBuYW1lIGlmIHlvdSBsaWtlIGl0IHRvIGJlLiBJIGFkZGVkIHJl
c2V0LWdwaW9zIGFzIGEgcmVxdWlyZWQgb25lCj4gbGlzdGVkIGluIGR0LWJpbmRpbmdzIGZpbGUs
IGluIHBhdGNoIDIuCgpUaGVuIGV4cGxhaW4gaW4gdGhlIGJpbmRpbmdzIHdoYXQgdGhpcyByZXNl
dC1ncGlvcyBpcyBmb3IuCj4gCj4gCj4gID4gQWxzbywgd2h5IGRvIHlvdSBsZWF2ZSB0aGUgZGV2
aWNlIGluIHRoZSByZXNldCBzdGF0ZT8gTG9naWNhbCBvbmUKPiBtZWFucwo+ICA+IC0gcmVzZXQg
aXMgYXNzZXJ0ZWQuIFRoaXMgYXBwbGllcyB0byB1ZnNfcm9ja2NoaXBfZGV2aWNlX3Jlc2V0KCkg
YXMgPiAKPiB3ZWxsCj4gID4gLSB0aGF0J3MganVzdCB3cm9uZyBjb2RlLgo+IAo+IAo+IE5vLCBJ
IHRlc3RlZCBpdCBpbiBsaW51eC1uZXQgYW5kIHRoZSBvdXRwdXQgaXMgSElHSCwgYW5kIGxlYXZl
IHRoZQo+IGRldmljZSBpbiBhY3RpdmUgc3RhdGUuCj4gCj4gSW4gZHRzLCB3ZSBhZGQ6Cj4gcmVz
ZXQtZ3Bpb3MgPSA8JmdwaW80IFJLX1BEMCBHUElPX0FDVElWRV9ISUdIPjsKCj8gRG9uJ3QgdXNl
IHJhbmRvbSB2YWx1ZXMsIHdoYXQgaXMgdHlwZSBvZiB0aGUgcmVzZXQgbGluZT8KCj4gCj4gc28g
Z3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKGhvc3QtPnJzdF9ncGlvLCAxKSAtPiBvdXRwdXQgSElH
SCBmb3IKPiBncGlvNF9kMC4gQmFzZWQgb24geW91ciBjb21tZW50LCB3ZSBzaG91bGQgY2hhbmdl
IHRoZSBkdHMgdG8gdXNlCj4gR1BJT19BQ1RJVkVfTE9XIGFuZCB0aGVuIGdwaW9kX3NldF92YWx1
ZV9jYW5zbGVlcO+8iGhvc3QtPnJzdF9ncGlvLCAw77yJCj4gCj4gCj4gQm90aCBjYW4gd29yaywg
aG93ZXZlciBJTU8sIGlzbid0IGxvZ2ljYWwgb25lIG1lYW5zIEhJR0ggbGV2ZWwgaW4gbGluZSAK
PiBtb3JlIGh1bWFuIHJlYWRhYmxlPwoKWW91IG1peCBsb2dpY2FsIGxldmVsIGFuZCBsaW5lIGxl
dmVsLgoKSWYgdGhpcyBpcyByZXNldCBHUElPLCB0aGVuIDEgbWVhbnMgYXNzZXJ0ZWQgc28geW91
ciBjb2RlIGlzIGJvZ3VzLgoKTWF5YmUgdGhlIHRoZSBsaW5lIGlzIGFjdGl2ZSBsb3c/Cgo+IAo+
IAo+IAo+PiBXaGVyZSBpcyB5b3VyIERUUyBzbyB3ZSBjYW4gdmFsaWRhdGUgaXQ/Cj4+Cj4gCj4g
V2lsbCBhZGQgaXQgaW4gdGhlIG5leHQgdmVyc2lvbiwgYXMgbm93IHRoZSByazM1NzYuZHRzaSBp
cyB1bmRlcgo+IHJldmlld2VkIGFuZCBVRlMgbm9kZSB3YXMgbm90IGFkZGVkLiBTbyBJIHdhcyBh
ZnJhaWQgdG8gaW50ZXJmZXJlCj4gd2l0aCB0aGF0IHBhdGNoIGFuZCBqdXN0IHdhbnRlZCB0byBh
ZGQgaW5jcmVtZW50YWwgcGF0Y2ggb25jZQo+IHJrMzU3Ni5kdHNpIGdvdCBtZXJnZWQuCj4gCj4+
IEJlc3QgcmVnYXJkcywKPj4gS3J6eXN6dG9mCj4+CgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
