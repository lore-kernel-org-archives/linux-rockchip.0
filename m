Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A51C0C54E67
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 12:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMtD9Zn47ZZVoyonLFeZ98lyep6+ZFn7hAX4HHKdfNQ=; b=Zl9NggLMu+NjLS
	zJd5tmWofotDc5ADp9m/GVYtGyRXt4LCzdirisjZLP0vFNGynVh361SHBmzcDVip30/4pmTwslRM3
	fJuZf1Ip+sjzcMdDMgJ/0Z4NyfSyifvnA3CrFCthuAF5klbCOifI9HSWlhxNt9+zWSJOeJi8V3Mnw
	GSOZ2B2/+OnMe4JfS9WwI7P0iC+0YFZJjgFKAVOrsqNaR6fsuXp9Wb8eSjbWalwZWc+gitkGy5l5t
	j5OogAssKBJ13lG6vdJMcCJ2FpxfXzoRCARrkETVv5Kxxh0sIeuetDdQvVZ4/+r3EArSPs2ypwOkp
	W30Yaq4jdf7fzCucMfjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6GK-000000007EC-0J8Y;
	Fri, 15 Mar 2024 12:02:12 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl6GH-000000007DD-0q0f;
	Fri, 15 Mar 2024 12:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710504128;
	bh=OtLFV54AJAjMDblqkVAwHk31mrIpvs9hCe+qbqa6st0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=myQxTOcD/FfQvyq0VJdG+KHbNtlK3TN0MTbM8M44bMsJlsgbinPJEXz/jCWDRL1PU
	 focHWdjD9QDjGIRpQlNqFI4k/lVmGIBS+tRV5APngLHW82Pm9fhgbQMS2tOD6AE1pP
	 seN2B4/Cjq8eBc1W+Tc2pyNrC1APKfg6fyc2T7DYFkszdbQ9ljIFzQ3HWz3nzkRRe+
	 Oujf/PSTY0GzSDFXArl60Jk6NGqWm0KxhzG/aZ+Rv6ZEj8OaSu2ygJGpHgTqH17nBr
	 qSsf9upQs/hcuTx8BR7SDwnR4Q0A1Wsq9pjKB2euYnAayAr4ueIxmQFsK0pnLm8XEa
	 YbQtABFGH5NQQ==
Received: from [100.95.196.25] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: koike)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D34E2378105A;
	Fri, 15 Mar 2024 12:02:02 +0000 (UTC)
Message-ID: <aba60de7-63a2-4009-bdfd-4d86cec464be@collabora.com>
Date: Fri, 15 Mar 2024 09:02:02 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/11] drm/ci: rockchip: Refactor existing rockchip
 jobs
Content-Language: en-US
To: Vignesh Raman <vignesh.raman@collabora.com>,
 dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 emma@anholt.net, robdclark@gmail.com, david.heidelberg@collabora.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 hamohammed.sa@gmail.com, rodrigosiqueiramelo@gmail.com,
 melissa.srw@gmail.com, mairacanal@riseup.net, mcanal@igalia.com,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240306030649.60269-1-vignesh.raman@collabora.com>
 <20240306030649.60269-10-vignesh.raman@collabora.com>
 <098d2345-df99-4ad2-bc1c-9641662ed9bd@collabora.com>
 <f53c716d-6d11-13f6-0ecf-ec02f4debcfa@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
In-Reply-To: <f53c716d-6d11-13f6-0ecf-ec02f4debcfa@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_050209_400603_DEF107AC 
X-CRM114-Status: GOOD (  20.07  )
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

CgpPbiAxNS8wMy8yMDI0IDA4OjE4LCBWaWduZXNoIFJhbWFuIHdyb3RlOgo+IEhpIEhlbGVuLAo+
IAo+IE9uIDA3LzAzLzI0IDE5OjMyLCBIZWxlbiBLb2lrZSB3cm90ZToKPj4KPj4KPj4gT24gMDYv
MDMvMjAyNCAwMDowNiwgVmlnbmVzaCBSYW1hbiB3cm90ZToKPj4+IEZvciByb2NrY2hpcCByazMy
ODggYW5kIHJrMzM5OSwgdGhlIGRpc3BsYXkgZHJpdmVyIGlzIHJvY2tjaGlwLgo+Pj4gQ3VycmVu
dGx5LCBpbiBkcm0tY2kgZm9yIHJvY2tjaGlwLCBvbmx5IHRoZSBkaXNwbGF5IGRyaXZlciBpcwo+
Pj4gdGVzdGVkLiBSZWZhY3RvciB0aGUgZXhpc3Rpbmcgcm9ja2NoaXAgam9icyBzbyB0aGF0IGdw
dSBkcml2ZXIKPj4+IHRlc3Rpbmcgam9icyBjYW4gYmUgYWRkZWQgbGF0ZXIgYW5kIHVwZGF0ZSB4
ZmFpbHMgYWNjb3JkaW5nbHkuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogVmlnbmVzaCBSYW1hbiA8
dmlnbmVzaC5yYW1hbkBjb2xsYWJvcmEuY29tPgo+Pj4gLS0tCj4+Pgo+Pj4gdjI6Cj4+PiDCoMKg
IC0gUmVmYWN0b3IgdGhlIHBhdGNoIHRvIHJlbmFtZSBqb2IgdG8gaW5kaWNhdGUgZGlzcGxheSBk
cml2ZXIgCj4+PiB0ZXN0aW5nLAo+Pj4gwqDCoMKgwqAgcmVuYW1lIHRoZSBleGlzdGluZyB4ZmFp
bCBmaWxlcy4KPj4+Cj4+PiB2MzoKPj4+IMKgwqAgLSBBZGQgdGhlIGpvYiBuYW1lIGluIEdQVV9W
RVJTSU9OIGFuZCB1c2UgaXQgZm9yIHhmYWlsIGZpbGUgbmFtZXMKPj4+IMKgwqDCoMKgIGluc3Rl
YWQgb2YgdXNpbmcgRFJJVkVSX05BTUUuIEFsc28gdXBkYXRlIHhmYWlscy4KPj4+Cj4+PiB2NDoK
Pj4+IMKgwqAgLSBSZW1vdmUgdGhlIGRpc3BsYXkgc3VmZml4IGluIGpvYiBhbmQgcmVuYW1lIHhm
YWlscyBhY2NvcmRpbmdseS4KPj4+IMKgwqDCoMKgIFJlbW92ZSB0aGUgY2hhbmdlIGFkZGluZyBq
b2IgbmFtZSBpbiBHUFVfVkVSU0lPTi4KPj4+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvZ3B1L2Ry
bS9jaS90ZXN0LnltbMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDM2ICsr
KysrKysrLS0tLQo+Pj4gwqAgLi4uL2RybS9jaS94ZmFpbHMvcm9ja2NoaXAtcmszMjg4LWZhaWxz
LnR4dMKgwqAgfCA1OCArKysrKystLS0tLS0tLS0tLS0tCj4+PiDCoCAuLi4vZHJtL2NpL3hmYWls
cy9yb2NrY2hpcC1yazMyODgtZmxha2VzLnR4dMKgIHwgMjAgKysrKysrKwo+Pj4gwqAgLi4uL2Ry
bS9jaS94ZmFpbHMvcm9ja2NoaXAtcmszMjg4LXNraXBzLnR4dMKgwqAgfCA1NCArKy0tLS0tLS0t
LS0tLS0tLQo+Pj4gwqAgLi4uL2RybS9jaS94ZmFpbHMvcm9ja2NoaXAtcmszMzk5LWZhaWxzLnR4
dMKgwqAgfCAzOCArKysrKystLS0tLS0KPj4+IMKgIC4uLi9kcm0vY2kveGZhaWxzL3JvY2tjaGlw
LXJrMzM5OS1mbGFrZXMudHh0wqAgfCAyOCArKysrKysrLS0KPj4+IMKgIC4uLi9kcm0vY2kveGZh
aWxzL3JvY2tjaGlwLXJrMzM5OS1za2lwcy50eHTCoMKgIHzCoCA1ICstCj4+PiDCoCA3IGZpbGVz
IGNoYW5nZWQsIDExMCBpbnNlcnRpb25zKCspLCAxMjkgZGVsZXRpb25zKC0pCj4+PiDCoCBjcmVh
dGUgbW9kZSAxMDA2NDQgCj4+PiBkcml2ZXJzL2dwdS9kcm0vY2kveGZhaWxzL3JvY2tjaGlwLXJr
MzI4OC1mbGFrZXMudHh0Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9jaS90
ZXN0LnltbCBiL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbAo+Pj4gaW5kZXggNmFlNjM5OGIz
ZDg4Li44MzFlNTgwZTZkZmQgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vY2kvdGVz
dC55bWwKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbAo+Pj4gQEAgLTE1Mywz
MyArMTUzLDQ1IEBAIG1zbTpzZG04NDU6Cj4+PiDCoMKgwqAgc2NyaXB0Ogo+Pj4gwqDCoMKgwqDC
oCAtIC4vaW5zdGFsbC9iYXJlLW1ldGFsL2Nyb3Mtc2Vydm8uc2gKPj4+IC1yb2NrY2hpcDpyazMy
ODg6Cj4+PiAtwqAgZXh0ZW5kczoKPj4+IC3CoMKgwqAgLSAubGF2YS1pZ3Q6YXJtMzIKPj4+ICsu
cm9ja2NoaXA6Cj4+PiDCoMKgwqAgc3RhZ2U6IHJvY2tjaGlwCj4+PiDCoMKgwqAgdmFyaWFibGVz
Ogo+Pj4gLcKgwqDCoCBEUklWRVJfTkFNRTogcm9ja2NoaXAKPj4KPj4gTG9va3MgbGlrZSBpdCBt
YWtlIHNlbnNlIHRvIGtlZXAgRFJJVkVSX05BTUUgaGVyZSwgbm8/Cj4+Cj4+PiAtwqDCoMKgIERF
VklDRV9UWVBFOiByazMyODgtdmV5cm9uLWphcQo+Pj4gwqDCoMKgwqDCoCBEVEI6ICR7REVWSUNF
X1RZUEV9Cj4+PiDCoMKgwqDCoMKgIEJPT1RfTUVUSE9EOiBkZXB0aGNoYXJnZQo+Pj4gKwo+Pj4g
Ky5yazMyODg6Cj4+PiArwqAgZXh0ZW5kczoKPj4+ICvCoMKgwqAgLSAubGF2YS1pZ3Q6YXJtMzIK
Pj4+ICvCoMKgwqAgLSAucm9ja2NoaXAKPj4KPj4gTWF5YmUsIGluc3RlYWQgb2YgZXh0ZW5kaW5n
IC5yb2NrY2hpcCBoZXJlLCBtYWtlIC5yb2NrY2hpcCB0aWVkIHRvIHRoZSAKPj4gRFJJVkVSX05B
TUUgYW5kIC5yazMyODggdGllZCB0byB0aGUgR1BVX1ZFUlNJT04sIGFuZCBvbiAKPj4gcm9ja2No
aXA6cmszMjg4IHlvdSBjYW4gZXh0ZW5kIGJvdGggLnJvY2tjaGlwIGFuZCAucmszMjg4LCB3aGF0
IGRvIHlvdSAKPj4gdGhpbms/Cj4+IFNvIHJvY2tjaGlwOnJrMzM5OSB5b3UgY2FuIGV4dGVuZCAu
cm9ja2NoaXAgYW5kIC5yazMzOTkuCj4+Cj4+IGFuZCBpbiB0aGUgcGFuZnJvc3Qgb25lIHlvdSBj
YW4gaGF2ZSBhIC5wYW5mcm9zdCAodGhhdCBjYW4gZXh0ZW5kIAo+PiAucm9ja2NoaXAgaWYgdGhl
eSBhcmUgdGhlIHNhbWUgZGVmaW5pdGlvbikuCj4+Cj4+IEkgZmVlbCBpdCBiZWNvbWVzIGxlc3Mg
Y29uZnVzaW5nLCB3aGF0IGRvIHlvdSB0aGluaz8KPj4KPj4gSSB3b3VsZCBldmVuIGFkZCBzb21l
IHByZWZpeCBvciBzdWZmaXggdG8gbWFrZSBpdCBsZXNzIGNvbmZ1c2luZywgbGlrZSAKPj4gLmRy
aXZlci1yb2NrY2hpcCBhbmQgLmdwdS1yazMyODggZm9yIGluc3RhbmNlLCBtYWtpbmcgaXQgYSBi
aXQgbW9yZSAKPj4gaW50dWl0aXZlIGFuZCBoZWxwaW5nIG91ciBmdXR1cmUgc2VsdmVzIDopCj4g
Cj4gVGhhbmtzIGZvciB0aGUgc3VnZ2VzdGlvbi4gVGhpcyBjYW4gYmUgZG9uZS4gU2hvdWxkIHdl
IGRvIGl0IG9ubHkKPiBmb3Igcm9ja2NoaXAgam9icyBvciBvdGhlcnMgYWxzbyAobWVzb24sIG1l
ZGlhdGVrKSA/CgpJIGd1ZXNzIHdlIGNvdWxkIGtlZXAgdGhlIHNhbWUgcGF0dGVyIGZvciBhbGwg
dGhlIG1ha2Ugc2Vuc2UuCgpIZWxlbgoKPiAKPj4KPj4+ICvCoCB2YXJpYWJsZXM6Cj4+PiArwqDC
oMKgIERFVklDRV9UWVBFOiByazMyODgtdmV5cm9uLWphcQo+Pj4gwqDCoMKgwqDCoCBLRVJORUxf
SU1BR0VfVFlQRTogInppbWFnZSIKPj4+IC3CoMKgwqAgR1BVX1ZFUlNJT046IHJrMzI4OAo+Pgo+
PiBMb29rcyBsaWtlIGl0IG1ha2Ugc2Vuc2UgdG8ga2VlcCBHUFVfVkVSU0lPTiBoZXJlLCBubz8g
U2FtZSBjb21tZW50IAo+PiBmb3IgLnJrMzM5OS4KPiBZZXMsIHdpbGwgZml4IHRoaXMuCj4gCj4g
UmVnYXJkcywKPiBWaWduZXNoCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
