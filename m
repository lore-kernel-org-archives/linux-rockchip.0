Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CF41D778B0
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 20:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qrg99z5E3p5E2tvOQoML/Cy8eCJiacZkFOEsVqQ7aG4=; b=BRbt+/dQB5W2Bp
	J3bRwCpPA5sjmM/aRWesAA7XNgANB7FelbllTDBLsgpQvoABwFjXACU+J9MVqEtUvw1JqseHT2rNR
	56VUJjJGVDVgpBfbxv2yF3dZw62jlz4bwAo1n3XouJ8Zez47/Is88mVpZ0wXoxgVhMlHhE922U1Yh
	MNlfvJGMtUhCzcFj/9RFT1vyv4/DUiGvXwlbsqEmD4cLAz6jdwFVlvyzuxaoR8RhyKfr2IwBeGAlc
	ftcFYtShB1VD45TE6URRUvBS1FJULKpM9XvPLQ3+QlNWx1MPdLbJ9FP+WFAQEQ47WCjW6SyabmApx
	sIa3yk7U0wRTVR1KvBYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjOEJ-00000009Ult-1GIL;
	Fri, 23 Jan 2026 20:58:07 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjOEF-00000009UlM-3Vzz;
	Fri, 23 Jan 2026 20:58:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 122ED1476;
	Fri, 23 Jan 2026 12:57:48 -0800 (PST)
Received: from [10.57.51.35] (unknown [10.57.51.35])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C2A1B3F632;
	Fri, 23 Jan 2026 12:57:52 -0800 (PST)
Message-ID: <e9fd0005-bfbb-4052-8c2a-9200eb0b60ac@arm.com>
Date: Fri, 23 Jan 2026 20:57:50 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] gpio: rockchip: mark the GPIO controller as sleeping
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
 Linus Walleij <linusw@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>
References: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com>
 <aWGSQYCXP4R08koQ@venus>
 <CAMRc=Mf0tRxRrh7tn5OaDn3a47N_qvUcjO=zqbTi-GhY-Y9hOg@mail.gmail.com>
 <447e8d5a-916b-4d58-b39c-3467c152379c@arm.com>
 <CAMRc=Md0h5b=N9CqV-9L9sOtCNbiL1-y6RE0x4+w9HYXE8=pEQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <CAMRc=Md0h5b=N9CqV-9L9sOtCNbiL1-y6RE0x4+w9HYXE8=pEQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_125804_009447_6D8EB6FD 
X-CRM114-Status: GOOD (  19.82  )
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

T24gMjAyNi0wMS0yMyA3OjI3IHBtLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+IE9uIEZy
aSwgSmFuIDIzLCAyMDI2IGF0IDI6MjfigK9QTSBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBh
cm0uY29tPiB3cm90ZToKPj4KPj4+Pgo+Pj4+IEl0J3Mgbm90IGEgYmlnIGlzc3VlIGZvciB0aGUg
aGRtaXJ4IGRyaXZlciBzcGVjaWZpY2FsbHksIGJ1dCBJIHdvbmRlcgo+Pj4+IGhvdyBtYW55IG1v
cmUgKGxlc3Mgb2Z0ZW4gdGVzdGVkKSByb2NrY2hpcCBkcml2ZXJzIHVzZSBHUElPcyBmcm9tIHRo
ZWlyCj4+Pj4gSVJRIGhhbmRsZXIuCj4+Cj4+IFllYWgsIHNlZW1zIHRoaXMgZmluYWxseSByZWFj
aGVkIG15IGRpc3RybyBrZXJuZWwgYW5kIG5vdyB0aGUga2VybmVsIGxvZwo+PiBvbiBvbmUgb2Yg
bXkgYm9hcmRzIGlzIHRvdGFsbHkgZmxvb2RlZCBmcm9tIGdwaW9faXJfcmVjdl9pcnEoKQo+PiAo
bGVnaXRpbWF0ZWx5KSBjYWxsaW5nIGdwaW9fZ2V0X3ZhbHVlKCkuLi4gdGhhdCdzIG5vdCByZWFs
bHkgT0sgOi8KPj4KPiAKPiBUaGlzIGhhcyBhbHdheXMgYmVlbiBhIHNsZWVwaW5nIGRyaXZlci4g
VGhlIGRyaXZlciBkb2VzIG5vdCBrbm93IHRoZQo+IGZpcm13YXJlIGNvbmZpZ3VyYXRpb24gaXQn
bGwgYmUgcGFzc2VkIGFuZCAtIGFzIEkgZXhwbGFpbmVkIGFib3ZlIC0KPiBkZXBlbmRpbmcgb24g
dGhlIGxvb2t1cCBmbGFncywgd2UgbWF5IGNhbGwgLmRpcmVjdGlvbl9vdXRwdXQoKSBhbmQKPiBk
ZXNjZW5kIGludG8gcGluY3RybCB3aGljaCB1c2VzIG11dGV4ZXMuIElkZWFsbHksIHdlJ2QgbWFr
ZQo+IEdQSU8tZmFjaW5nIHBpbmN0cmwgb3BlcmF0aW9ucyBub3Qgc2xlZXBpbmcgYnV0IHRoaXMg
aXMgYSBsb25nLXRpbWUKPiBwcm9qZWN0IGFuZCBxdWl0ZSBjb21wbGV4LiBUZWxsaW5nIHRoZSBH
UElPIGNvcmUgdGhhdCBpdCBjYW5ub3Qgc2xlZXAKPiBpcyBzaW1wbHkgaW5jb3JyZWN0IC0gZXZl
biBpZiBpdCB3b3JrZWQgZm9yIHRoaXMgcGFydGljdWxhciB1c2UtY2FzZSAtCj4gYW5kIGhhcyBh
biBpbXBhY3Qgb24gcGF0aHMgd2UncmUgY2hvb3NpbmcuCj4gCj4gQ2FuIHRoZSBHUElPIHJlYWRp
bmcgaW4gdGhlIGdwaW8taXItcmVjdiBkcml2ZXIgYmUgZG9uZSBmcm9tIGEKPiBoaWdoLXByaW9y
aXR5IHdvcmtxdWV1ZSBieSBhbnkgY2hhbmNlPyBPciBjYW4gd2UgbWFrZSBpdCBhIHRocmVhZGVk
Cj4gaW50ZXJydXB0PwoKcm9ja2NoaXBfZ3Bpb19nZXQoKSBpcyBlc3NlbnRpYWxseSBub3RoaW5n
IGJ1dCBhIHJlYWRsKCksIHBsZWFzZSBleHBsYWluIApob3cgdGhhdCBjb3VsZCBzbGVlcD8gU2F5
aW5nIHRoYXQgY291bnRsZXNzIGluLXRyZWUgYW5kIG91dC1vZi10cmVlIAphcmJpdHJhcnkgR1BJ
TyBjb25zdW1lciBkcml2ZXJzIHNob3VsZCBwb2ludGxlc3NseSByZWZhY3RvciBqdXN0IHRvIAph
dm9pZCB0aGUgR1BJTyBjb3JlIHNwZXdpbmcgc3B1cmlvdXMgV0FSTigpcyBpcyBub3QgcmVhc29u
YWJsZS4KCkkgYXBwcmVjaWF0ZSB0aGVyZSBhcmUgY2FzZXMgd2hlcmUgdGhlIHdhcm5pbmcgbW9z
dCBkZWZpbml0ZWx5ICppcyogCnJlbGV2YW50LCB3aGljaCBpcyB3aHkgSSBwaWNrZWQgdXAgdGhp
cyBkaXNjdXNzaW9uIHJhdGhlciB0aGFuIHByb3Bvc2luZyAKYSByZXZlcnQsIGV2ZW4gdGhvdWdo
IHRoZSBkb2N1bWVudGF0aW9uIHNheXM6CgogICogQGNhbl9zbGVlcDogZmxhZyBtdXN0IGJlIHNl
dCBpZmYgZ2V0KCkvc2V0KCkgbWV0aG9kcyBzbGVlcCwgYXMgdGhleQoKd2hlcmUgc2luY2UgbmVp
dGhlciByb2NrY2hpcF9ncGlvX2dldCgpIG5vciByb2NrY2hpcF9ncGlvX3NldCgpIAp0aGVtc2Vs
dmVzIHNsZWVwLCBhcHBhcmVudGx5IHRoaXMgZmxhZyBtdXN0ICpub3QqIGJlIHNldC4gSXQncyAK
aXJyZWxldmFudCB0aGF0IGEgaGlnaGVyLWxldmVsIGdwaW9kX3NldF92YWx1ZSgpIGludm9jYXRp
b24gbWlnaHQgZW5kIHVwIApjYWxsaW5nIC5zZXRfZGlyZWN0aW9uIGJlZm9yZSBpdCBnZXRzIGFz
IGZhciBhcyBjYWxsaW5nIC5zZXQgLSB0aGF0J3MgCm5vdCB0aGUgZ3Bpb19jaGlwJ3MgZmF1bHQs
IGFuZCBncGlvbGliIGtub3dzIGV4YWN0bHkgd2hhdCBpdCdzIGRvaW5nLgoKV2hhdCBJJ20gZ2V0
dGluZyBhdCBpcyB0aGF0IGdldHRpbmcsIGFuZCBldmVuIChkaXJlY3RseSkgc2V0dGluZyBhIApH
UElPJ3MgdmFsdWUgY2FuIHJlYXNvbmFibHkgYmUgZXhwZWN0ZWQgdG8gYmUgbW9yZSBjb21tb24g
YW5kIGFwcGxpY2FibGUgCmluIGEgd2lkZXIgcmFuZ2Ugb2YgY2lyY3Vtc3RhbmNlcyB0aGFuIGNo
YW5naW5nIGl0cyBjb25maWd1cmF0aW9uLCBzbyAKdGhlIGZvcm1lciBzaG91bGQgbm90IGJlIHVu
ZmFpcmx5IHBlbmFsaXNlZCBiZWNhdXNlIG9mIHRoZSBsYXR0ZXIuIFRoaXMgCmNhc2UgaXMgY2xl
YXJseSBkaXN0aW5jdCBmcm9tIGV4dGVybmFsIEdQSU8gZXhwYW5kZXJzIG9uIGJ1c2VzIHRoYXQg
CmZ1bmRhbWVudGFsbHkgY2FuJ3QgZ3VhcmFudGVlIGZhc3QgbWVtb3J5LW1hcHBlZCBhY2Nlc3Mg
YXQgYWxsLCBzbyAKdHJ5aW5nIHRvIGNvbmZsYXRlIGl0IHVuZGVyIHRoZSBzYW1lIGZsYWcgZG9l
c24ndCBmaXQsIGFuZCB0aGF0IG5lZWRzIApmaXhpbmcgQVNBUCwgYmVmb3JlIHRoZSByZXZlcnRz
ICpkbyogc3RhcnQgcGlsaW5nIGluLiBNYXliZSB0aGF0IGp1c3QgCm1lYW5zIHNvbWUgbmV3IGRp
cl9jYW5fc2xlZXAgb3IgbW9yZSBhYnN0cmFjdCBkaXJfbmVlZHNfcGluY3RybCBmbGFnIAptaWdo
dCBzdWZmaWNlLCBtYXliZSBpdCdzIHNvbWV0aGluZyBtb3JlIGludm9sdmVkOyBJIGRvbid0IHJl
YWxseSBrbm93LCAKYW5kIEkgZG9uJ3QgaGF2ZSB0aGUgYmFuZHdpZHRoIHRvIHRha2UgdGhpcyBv
biBteXNlbGYuCgpUaGFua3MsClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
