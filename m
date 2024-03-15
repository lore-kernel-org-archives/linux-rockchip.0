Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75516C54E67
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 11:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBPeforl1dZXvMdZ3NktOJxuzYs+c04h6hAUDINe4gk=; b=rZmcr/0teyoWB/
	d1WhP5dX7l+mXi5TYZrna0zes16+GA/HbHOhO+ECYdmokoYrbIk8o/d+bXfyzqJ0z/wxI0hjnlf0F
	e4x70CzFwBtu4SUgbiQlXHSe41qbAS+uxznZhk9RamrBwfmb3RJxS9Xp5CPxoNOzZwMuB7aikAB2w
	xuObyH/EC3TJuaG5uRPGSvGHnj9praZgKNTGZjMIr4Teem0r+5NqMg2He7MMdcZiZZwrZNb2OU7UU
	DLNv3oyoAe7ssLsPgdBNcUSjznyK5+Jrx3UN34YPQvwp37sjrOoWCrtvliy5zP769gaZCpzpuiYW/
	cTxWJ24AK5F/V+zAZrjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl5a6-000000000Ab-2B7P;
	Fri, 15 Mar 2024 11:18:34 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl5a2-0000000009B-20di;
	Fri, 15 Mar 2024 11:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710501509;
	bh=3jAxlkMS2UWb35oBck4irZ8AXTG1g/crD+E/7tbIdFo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=wOCFsgeAbfgoyN81XVt5eyBvSartapUpl06usVO450bohkUaTdtmLXLk7GR9J3LrI
	 WRhvtfnUACBEHFVwT/lFW33jWeZO5ZojLljvka9yzUm+0YhQhfUQHRYVyAbQpjNr9U
	 4kCNVfXgl8w4sAey6ccVW3MfW8IssAm0jOX2rTVJPKfpiXviwOF44tK5+rQnnKht7J
	 DvgYsGrGwRvyUu6wI3ZHh6kGLBAWVPRcgXmZZJwHs2f8nvS/4GjavdtnP+Jt0KpF7U
	 4rg7xGBGAyPaRFiLpMbg7vEoPFqmYwCm/FiSqKtzC1qXETkIZcEct2wgbKIWXmxJ10
	 vOsWbaMwSqihA==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1D762378105A;
	Fri, 15 Mar 2024 11:18:24 +0000 (UTC)
Message-ID: <f53c716d-6d11-13f6-0ecf-ec02f4debcfa@collabora.com>
Date: Fri, 15 Mar 2024 16:48:23 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 09/11] drm/ci: rockchip: Refactor existing rockchip
 jobs
Content-Language: en-US
To: Helen Koike <helen.koike@collabora.com>, dri-devel@lists.freedesktop.org
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
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <098d2345-df99-4ad2-bc1c-9641662ed9bd@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_041830_981950_C412347A 
X-CRM114-Status: GOOD (  24.37  )
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

SGkgSGVsZW4sCgpPbiAwNy8wMy8yNCAxOTozMiwgSGVsZW4gS29pa2Ugd3JvdGU6Cj4gCj4gCj4g
T24gMDYvMDMvMjAyNCAwMDowNiwgVmlnbmVzaCBSYW1hbiB3cm90ZToKPj4gRm9yIHJvY2tjaGlw
IHJrMzI4OCBhbmQgcmszMzk5LCB0aGUgZGlzcGxheSBkcml2ZXIgaXMgcm9ja2NoaXAuCj4+IEN1
cnJlbnRseSwgaW4gZHJtLWNpIGZvciByb2NrY2hpcCwgb25seSB0aGUgZGlzcGxheSBkcml2ZXIg
aXMKPj4gdGVzdGVkLiBSZWZhY3RvciB0aGUgZXhpc3Rpbmcgcm9ja2NoaXAgam9icyBzbyB0aGF0
IGdwdSBkcml2ZXIKPj4gdGVzdGluZyBqb2JzIGNhbiBiZSBhZGRlZCBsYXRlciBhbmQgdXBkYXRl
IHhmYWlscyBhY2NvcmRpbmdseS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogVmlnbmVzaCBSYW1hbiA8
dmlnbmVzaC5yYW1hbkBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4KPj4gdjI6Cj4+IMKgwqAgLSBS
ZWZhY3RvciB0aGUgcGF0Y2ggdG8gcmVuYW1lIGpvYiB0byBpbmRpY2F0ZSBkaXNwbGF5IGRyaXZl
ciB0ZXN0aW5nLAo+PiDCoMKgwqDCoCByZW5hbWUgdGhlIGV4aXN0aW5nIHhmYWlsIGZpbGVzLgo+
Pgo+PiB2MzoKPj4gwqDCoCAtIEFkZCB0aGUgam9iIG5hbWUgaW4gR1BVX1ZFUlNJT04gYW5kIHVz
ZSBpdCBmb3IgeGZhaWwgZmlsZSBuYW1lcwo+PiDCoMKgwqDCoCBpbnN0ZWFkIG9mIHVzaW5nIERS
SVZFUl9OQU1FLiBBbHNvIHVwZGF0ZSB4ZmFpbHMuCj4+Cj4+IHY0Ogo+PiDCoMKgIC0gUmVtb3Zl
IHRoZSBkaXNwbGF5IHN1ZmZpeCBpbiBqb2IgYW5kIHJlbmFtZSB4ZmFpbHMgYWNjb3JkaW5nbHku
Cj4+IMKgwqDCoMKgIFJlbW92ZSB0aGUgY2hhbmdlIGFkZGluZyBqb2IgbmFtZSBpbiBHUFVfVkVS
U0lPTi4KPj4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDM2ICsrKysrKysrLS0tLQo+PiDCoCAuLi4v
ZHJtL2NpL3hmYWlscy9yb2NrY2hpcC1yazMyODgtZmFpbHMudHh0wqDCoCB8IDU4ICsrKysrKy0t
LS0tLS0tLS0tLS0KPj4gwqAgLi4uL2RybS9jaS94ZmFpbHMvcm9ja2NoaXAtcmszMjg4LWZsYWtl
cy50eHTCoCB8IDIwICsrKysrKysKPj4gwqAgLi4uL2RybS9jaS94ZmFpbHMvcm9ja2NoaXAtcmsz
Mjg4LXNraXBzLnR4dMKgwqAgfCA1NCArKy0tLS0tLS0tLS0tLS0tLQo+PiDCoCAuLi4vZHJtL2Np
L3hmYWlscy9yb2NrY2hpcC1yazMzOTktZmFpbHMudHh0wqDCoCB8IDM4ICsrKysrKy0tLS0tLQo+
PiDCoCAuLi4vZHJtL2NpL3hmYWlscy9yb2NrY2hpcC1yazMzOTktZmxha2VzLnR4dMKgIHwgMjgg
KysrKysrKy0tCj4+IMKgIC4uLi9kcm0vY2kveGZhaWxzL3JvY2tjaGlwLXJrMzM5OS1za2lwcy50
eHTCoMKgIHzCoCA1ICstCj4+IMKgIDcgZmlsZXMgY2hhbmdlZCwgMTEwIGluc2VydGlvbnMoKyks
IDEyOSBkZWxldGlvbnMoLSkKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2Ry
bS9jaS94ZmFpbHMvcm9ja2NoaXAtcmszMjg4LWZsYWtlcy50eHQKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbCBiL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0Lnlt
bAo+PiBpbmRleCA2YWU2Mzk4YjNkODguLjgzMWU1ODBlNmRmZCAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2NpL3Rlc3QueW1sCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0
LnltbAo+PiBAQCAtMTUzLDMzICsxNTMsNDUgQEAgbXNtOnNkbTg0NToKPj4gwqDCoMKgIHNjcmlw
dDoKPj4gwqDCoMKgwqDCoCAtIC4vaW5zdGFsbC9iYXJlLW1ldGFsL2Nyb3Mtc2Vydm8uc2gKPj4g
LXJvY2tjaGlwOnJrMzI4ODoKPj4gLcKgIGV4dGVuZHM6Cj4+IC3CoMKgwqAgLSAubGF2YS1pZ3Q6
YXJtMzIKPj4gKy5yb2NrY2hpcDoKPj4gwqDCoMKgIHN0YWdlOiByb2NrY2hpcAo+PiDCoMKgwqAg
dmFyaWFibGVzOgo+PiAtwqDCoMKgIERSSVZFUl9OQU1FOiByb2NrY2hpcAo+IAo+IExvb2tzIGxp
a2UgaXQgbWFrZSBzZW5zZSB0byBrZWVwIERSSVZFUl9OQU1FIGhlcmUsIG5vPwo+IAo+PiAtwqDC
oMKgIERFVklDRV9UWVBFOiByazMyODgtdmV5cm9uLWphcQo+PiDCoMKgwqDCoMKgIERUQjogJHtE
RVZJQ0VfVFlQRX0KPj4gwqDCoMKgwqDCoCBCT09UX01FVEhPRDogZGVwdGhjaGFyZ2UKPj4gKwo+
PiArLnJrMzI4ODoKPj4gK8KgIGV4dGVuZHM6Cj4+ICvCoMKgwqAgLSAubGF2YS1pZ3Q6YXJtMzIK
Pj4gK8KgwqDCoCAtIC5yb2NrY2hpcAo+IAo+IE1heWJlLCBpbnN0ZWFkIG9mIGV4dGVuZGluZyAu
cm9ja2NoaXAgaGVyZSwgbWFrZSAucm9ja2NoaXAgdGllZCB0byB0aGUgCj4gRFJJVkVSX05BTUUg
YW5kIC5yazMyODggdGllZCB0byB0aGUgR1BVX1ZFUlNJT04sIGFuZCBvbiByb2NrY2hpcDpyazMy
ODggCj4geW91IGNhbiBleHRlbmQgYm90aCAucm9ja2NoaXAgYW5kIC5yazMyODgsIHdoYXQgZG8g
eW91IHRoaW5rPwo+IFNvIHJvY2tjaGlwOnJrMzM5OSB5b3UgY2FuIGV4dGVuZCAucm9ja2NoaXAg
YW5kIC5yazMzOTkuCj4gCj4gYW5kIGluIHRoZSBwYW5mcm9zdCBvbmUgeW91IGNhbiBoYXZlIGEg
LnBhbmZyb3N0ICh0aGF0IGNhbiBleHRlbmQgCj4gLnJvY2tjaGlwIGlmIHRoZXkgYXJlIHRoZSBz
YW1lIGRlZmluaXRpb24pLgo+IAo+IEkgZmVlbCBpdCBiZWNvbWVzIGxlc3MgY29uZnVzaW5nLCB3
aGF0IGRvIHlvdSB0aGluaz8KPiAKPiBJIHdvdWxkIGV2ZW4gYWRkIHNvbWUgcHJlZml4IG9yIHN1
ZmZpeCB0byBtYWtlIGl0IGxlc3MgY29uZnVzaW5nLCBsaWtlIAo+IC5kcml2ZXItcm9ja2NoaXAg
YW5kIC5ncHUtcmszMjg4IGZvciBpbnN0YW5jZSwgbWFraW5nIGl0IGEgYml0IG1vcmUgCj4gaW50
dWl0aXZlIGFuZCBoZWxwaW5nIG91ciBmdXR1cmUgc2VsdmVzIDopCgpUaGFua3MgZm9yIHRoZSBz
dWdnZXN0aW9uLiBUaGlzIGNhbiBiZSBkb25lLiBTaG91bGQgd2UgZG8gaXQgb25seQpmb3Igcm9j
a2NoaXAgam9icyBvciBvdGhlcnMgYWxzbyAobWVzb24sIG1lZGlhdGVrKSA/Cgo+IAo+PiArwqAg
dmFyaWFibGVzOgo+PiArwqDCoMKgIERFVklDRV9UWVBFOiByazMyODgtdmV5cm9uLWphcQo+PiDC
oMKgwqDCoMKgIEtFUk5FTF9JTUFHRV9UWVBFOiAiemltYWdlIgo+PiAtwqDCoMKgIEdQVV9WRVJT
SU9OOiByazMyODgKPiAKPiBMb29rcyBsaWtlIGl0IG1ha2Ugc2Vuc2UgdG8ga2VlcCBHUFVfVkVS
U0lPTiBoZXJlLCBubz8gU2FtZSBjb21tZW50IGZvciAKPiAucmszMzk5LgpZZXMsIHdpbGwgZml4
IHRoaXMuCgpSZWdhcmRzLApWaWduZXNoCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
