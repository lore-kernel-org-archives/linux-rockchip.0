Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4CD8C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Feb 2022 11:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5oqwXUhI0en7Syc/C3W8e9/CycKsK/F9UpMT0d+2oy0=; b=1DEAaDLD/v8iID90YNFVjbQJCb
	CwDG3Ys221/tnqMP3eH9OKoINGYGKW/446LMBtEN+c6VxZdgWPnt8swpn7RHXfVLp611VM79WlGpV
	aWtQqCFMZ0t4oG4HaBXGjmQ+PPzPWz2sEJUTuhKBO9ZT1cxSVVDCmflICMG9GtDY3zgsxFP/TLJv3
	8wUwAEcR6Q9wm8eqjdMmaZNZtV1uog49GwBRyb1Mge8TtKfhnXyMkHYX3YpOMXkloGWcoJRj0wO4j
	IYNsr6Fx6oqhjYHZYKeRE1sh/YJL7mGL82Lb4FlnAW43DSbuuoppcwW1UUDt34nF73lP2efm2UVnW
	hHBjE8nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH21e-009xjO-Qd; Mon, 07 Feb 2022 11:17:42 +0000
Received: from pscan.eu ([31.193.140.172] helo=mail.pscan.uk)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH21b-009xil-Ks
 for linux-rockchip@lists.infradead.org; Mon, 07 Feb 2022 11:17:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=pscan.uk;
 s=2016050301; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+u7W/0zcXkjFid9xfenITYtFKL3+eRjvoZ2seANAAmA=; b=U17FfTLr3++rWcG9o+GLiNjLER
 1VpVNYbWJHy3Mjggl7wxXNICmlQLNr5hzJbQHwKzhQ0ukZu34gPJtOy8vR/Ixpbfv2g9nR1FLcwss
 Xm92//ZLTP8E6wuJx6UtSA1RvhjBjZqKlwjDqI1hK9kt2cYpi50eXAugsnKWop8LHL3w=;
Received: from host86-151-200-4.range86-151.btcentralplus.com ([86.151.200.4]
 helo=[192.168.1.77])
 by mail.pscan.eu with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
 (Exim 4.94.2 (FreeBSD)) (envelope-from <subs@pscan.uk>)
 id 1nH0xx-000EEB-MF
 for linux-rockchip@lists.infradead.org; Mon, 07 Feb 2022 10:09:49 +0000
Message-ID: <cd5fd459-cccd-3ba8-2eb8-162e3150a2ef@pscan.uk>
Date: Mon, 7 Feb 2022 11:17:31 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: how to cross compile 4.19 BSP?
To: linux-rockchip@lists.infradead.org
References: <d33c78f6-2f27-35d2-4ac1-2124edf8cd66@pscan.uk>
 <52eb0090-844e-d41d-a716-f735fc133b04@pscan.uk>
From: Philip C <subs@pscan.uk>
In-Reply-To: <52eb0090-844e-d41d-a716-f735fc133b04@pscan.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_031739_725423_BF010C4A 
X-CRM114-Status: GOOD (  24.89  )
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

SSBoYXZlIG1hZGUgc29tZSBwcm9ncmVzcy4KClRoZXJlIGlzIGEgY29tcGxldGUgQlNQIGJ1aWxk
IGVudmlyb25tZW50IGF2YWlsYWJsZSBoZXJlIApodHRwOi8vZmlsZXMucGluZTY0Lm9yZy9TREsv
UXVhcnR6NjQvUVVBUlRaNjQtbW9kZWwtQV9CU1AlMjBMaW51eC50YXIuZ3oKCkJ5IHVzaW5nIHRo
ZSBidWlsdCBpbiBzY3JpcHRzICIuL2VudnNldHVwLnNoIiBhbmQgdGhlbiAiLi9idWlsZC5zaCAK
a2VybmVsIiBJIHdhcyBhYmxlIHRvIGNvbXBpbGUgYSA0LjE5LjE2MSBrZXJuZWwgdGhhdCBzdWNj
ZXNzZnVsbHkgYm9vdHMgCm9uIHRoZSBxdWFydHo2NC1hLgoKTmV4dCBJIHN3YXBwZWQgb3V0IHRo
ZSBrZXJuZWwgZGlyZWN0b3J5IGZvciB0aGUgZGV2ZWxvcC00LjE5IG9uZSBvbiAKZ2l0aHViIGFu
ZCBjb21waWxlZCBpdCB1c2luZyB0aGUgc2FtZSBzY3JpcHRzLiAgVGhhdCBhbHNvIGNvbXBpbGVz
IGFuZCAKYm9vdHMgYW5kIGFwcGVhcnMgdG8gYWxzbyBiZSA0LjE5LjE2MQoKTmV4dCBJIHN3YXBw
ZWQgaW4gdGhlIGtlcm5lbCBkaXJlY3Rpb24gZm9yIGRldmVsb3AtNC4xOS1ydDg3IGFuZCB0aGF0
IApvbmUgZmFpbHMgb24gZHJpdmVycy9uZXQvd2lyZWxlc3Mvcm9ja2NoaXBfd2xhbi9ya3dpZmkv
YmNtZGhkL2RoZF9wbm8uYyAKd2l0aCAiLVdlcnJvcj1pbmNvbXBhdGlibGUtcG9pbnRlci10eXBl
cyIuICBJdCBpc24ndCBjbGVhciB0byBtZSB3aGV0aGVyIApkZXZlbG9wLTQuMTktcnQ4NyBpcyBh
IG5ld2VyIGtlcm5lbCB0aGFuIGRldmVsb3AtNC4xOQoKTmV4dCBJIG5lZWQgdG8gZmlndXJlIG91
dCBob3cgdGhlc2Uga2VybmVscyBjb21waWxlIGZyb20gdGhlIGJ1aWxkLnNoIApzY3JpcHRzIGFu
ZCBzZWUgaWYgSSBjYW4gZXh0cmFjdCB3aGF0ZXZlciBpdCBpcyB0aGF0IG1ha2VzIGl0IHdvcmsu
CgpJZiB0aGlzIGlzIHRvbyBhbm5veWluZyAvIHRvbyBvZmYgdG9waWMgZm9yIHRoaXMgbWFpbGlu
ZyBsaXN0IHBsZWFzZSBsZXQgCm1lIGtub3cuCgp0aGFua3MsIFBoaWxpcAoKT24gMDYvMDIvMjAy
MiAxODowOCwgUGhpbGlwIEMgd3JvdGU6Cj4gc29ycnkgZm9sa3MswqAgbXkgRVhQT1JUIHdhcyBt
ZXNzZWQgdXAuCj4gCj4gSSBkb3dubG9hZGVkIGdjYy1hcm0tMTAuMy0yMDIxLjA3LXg4Nl82NC1h
YXJjaDY0LW5vbmUtbGludXgtZ251LnRhci54eiAKPiBhbmQgdW5wYWNrZWQgaXQgYWdhaW4KPiAK
PiBleHBvcnQgQVJDSD1hcm02NAo+IGV4cG9ydCAKPiBDUk9TU19DT01QSUxFPS9ob21lL3BoaWxp
cC9nY2MtYXJtLzEwLjMvZ2NjLWFybS0xMC4zLTIwMjEuMDcteDg2XzY0LWFhcmNoNjQtbm9uZS1s
aW51eC1nbnUvYmluL2FhcmNoNjQtbm9uZS1saW51eC1nbnUtIAo+IAo+IAo+IElmIEkgZG8gbWFr
ZSBtZW51Y29uZmlnIGFuZCBzYXZlIGl0IChzbyBhIGRlZmF1bHQgLmNvbmZpZykgSSBzdGlsbCBm
YWlsIAo+IHdpdGggdGhpczotCj4gCj4gIMKgIENDwqDCoMKgwqDCoCBtbS9wYWdlX2NvdW50ZXIu
bwo+ICDCoCBDQ8KgwqDCoMKgwqAgbW0vbWVtY29udHJvbC5vCj4gbW0vbWVtY29udHJvbC5jOiBJ
biBmdW5jdGlvbiAnbWVtY2dfc3RhdF9zaG93JzoKPiBtbS9tZW1jb250cm9sLmM6MzU0MjoxOiB3
YXJuaW5nOiB0aGUgZnJhbWUgc2l6ZSBvZiAxMDQwIGJ5dGVzIGlzIGxhcmdlciAKPiB0aGFuIDEw
MjQgYnl0ZXMgWy1XZnJhbWUtbGFyZ2VyLXRoYW49XQo+IGVycm9yLCBmb3JiaWRkZW4gd2Fybmlu
ZzptZW1jb250cm9sLmM6MzU0Mgo+ICDCoDM1NDIgfCB9Cj4gIMKgwqDCoMKgwqAgfCBeCj4gbW0v
bWVtY29udHJvbC5jOiBJbiBmdW5jdGlvbiAnbWVtb3J5X3N0YXRfc2hvdyc6Cj4gbW0vbWVtY29u
dHJvbC5jOjU3MDk6MTogd2FybmluZzogdGhlIGZyYW1lIHNpemUgb2YgMTA0MCBieXRlcyBpcyBs
YXJnZXIgCj4gdGhhbiAxMDI0IGJ5dGVzIFstV2ZyYW1lLWxhcmdlci10aGFuPV0KPiBlcnJvciwg
Zm9yYmlkZGVuIHdhcm5pbmc6bWVtY29udHJvbC5jOjU3MDkKPiAgwqA1NzA5IHwgfQo+ICDCoMKg
wqDCoMKgIHwgXgo+IG1ha2VbMV06ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5idWlsZDozMzQ6IG1t
L21lbWNvbnRyb2wub10gRXJyb3IgMQo+IG1ha2U6ICoqKiBbTWFrZWZpbGU6MTE5NDogbW1dIEVy
cm9yIDIKPiAKPiAKPiBPbiAwNi8wMi8yMDIyIDEyOjQ4LCBQaGlsaXAgQyB3cm90ZToKPj4gSSBh
bSBzb3JyeSBpZiB0aGlzIGxpc3QgaXMgbm90IGV4YWN0bHkgdGhlIHJpZ2h0IHBsYWNlIGZvciB0
aGlzIAo+PiBxdWVzdGlvbiwgYnV0IEkgZG9uJ3Qga25vdyB3aGVyZSB0byBhc2suCj4+Cj4+IFVu
dGlsIG1haW5saW5lIHN1cHBvcnRzIHRoZSBEU0kvTENEIG91dHB1dCBJIG5lZWQgc29tZXRoaW5n
IHRoYXQgSSBjYW4gCj4+IHVzZSBmb3IgbXkgcHJvamVjdCBiYXNlZCBvbiBhbiBSSzM1NjYgd2l0
aCBhbiBMQ0Qgc2NyZWVuLgo+Pgo+PiBTbyBJIGhhdmUgYmVlbiB0cnlpbmcgKGFuZCBmYWlsaW5n
KSB0byBjb21waWxlIHRoZSA0LjE5LWRldmVsb3AgYnJhbmNoIAo+PiBvZiBodHRwczovL2dpdGh1
Yi5jb20vcm9ja2NoaXAtbGludXgva2VybmVsCj4+Cj4+IEkgaGF2ZSBiZWVuIHVzaW5nIHRoaXMg
Y3Jvc3MgY29tcGlsZXI6LQo+PiBnY2MtYXJtLTEwLjMtMjAyMS4wNy14ODZfNjQtYWFyY2g2NC1u
b25lLWxpbnV4LWdudQo+Pgo+PiB1c2luZyB0aGVzZSBjb21tYW5kczotCj4+IGV4cG9ydCBBUkNI
PWFybTY0Cj4+IGV4cG9ydCAKPj4gQ1JPU1NfQ09NUElMRT0vaG9tZS9waGlsaXAvZ2NjLWFybS0x
MC4zLTIwMjEuMDcteDg2XzY0LWFhcmNoNjQtbm9uZS1saW51eC1nbnUvYmluL2FhcmNoNjQtbm9u
ZS1saW51eC1nbnUtIAo+Pgo+PiBtYWtlIEltYWdlIG1vZHVsZXMKPj4gbWFrZSBkdGJzCj4+Cj4+
IFRoaXMgd29ya3Mgb24gb3RoZXIga2VybmVscywgYnV0IHdpdGggdGhlIG9mZmljaWFsIGtlcm5l
bCBzb3VyY2UgSSBnZXQgCj4+IG1hbnksIG1hbnkgZXJyb3JzIHdoaWNoIGFyZSBwcm9iYWJseSBi
ZXlvbmQgbXkgYWJpbGl0aWVzIHRvIGZpeC7CoCBGb3IgCj4+IGV4YW1wbGUgSSBjYW4gY29tcGls
ZSBSYWR4YSBUZWFtIDQuMTkga2VybmVscywgYnV0IG15IHByb2plY3QgaXNuJ3QgYSAKPj4gUmFk
eGEgcHJvZHVjdC4KPj4KPj4gVGhyZWUgcXVlc3Rpb25zOi0KPj4KPj4gMS4gU2hvdWxkIEkgYmUg
dXNpbmcgYnJhbmNoIDQuMTktZGV2ZWxvcD8gb3IgNC4xOS1kZXZlbG9wLXJ0ODc/Cj4+IDIuIElz
IHRoZXJlIGEgcGFydGljdWxhciBPUy92ZXJzaW9uIGFuZCBjcm9zcyBjb21waWxlciB0aGF0IEkg
c2hvdWxkIAo+PiBiZSB1c2luZz/CoCBDdXJyZW50bHkgSSBhbSBvbiB1YnVudHUgaGlyc3V0ZSBi
dXQgSSBoYXZlIG5vIHByb2JsZW0gdG8gCj4+IGNoYW5nZSBpdCB0byBzb21ldGhpbmcgZWxzZS4K
Pj4gMy4gSWYgdGhpcyBpc24ndCB0aGUgcmlnaHQgcGxhY2UgdG8gYXNrIHRoZW4gcGxlYXNlIHdo
ZXJlIGlzPwo+Pgo+PiB0aGFua3MsIFBoaWxpcAo+Pgo+Pgo+IAo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
