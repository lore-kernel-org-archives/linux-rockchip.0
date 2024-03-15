Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFC76C54E67
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 11:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJn9DG4oH51aBtJzLsciyucVDlfGWAWUg68++39qFHI=; b=X0eAXofNk3slWh
	OHwVQYojyhNWIBC3hi5nsLr64M7ekOikpwVL5YlpqXqUTdWxc7lv0MW6CEsbyo9TnrtcsMvhbE0yM
	ER9gFPw3gFKxSXTdWmk9QHV84/Y4pt11IiaAsMFDBHQjmRCvCKp4OwJdFLPzUpB6rkXorZHeY7+Zi
	EIV2ZgCLz6JEBqgWiOprJl3GuOr5dfBHG34gW73yv01nTSdY8X2UIKP+62FUTyFqb/lkjjH04oMUi
	5FzAjl+7RR/TsZ/DVnBXuPhnALW7aviXWVzSJSGhpj2f1XvBcK4EslQSMwoPu9bjVdIxcyEcdB2WJ
	tNwuzUBL3wNFmA3fs9Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl5Up-0000000HZai-10TU;
	Fri, 15 Mar 2024 11:13:07 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl5Uk-0000000HZXh-3LQw;
	Fri, 15 Mar 2024 11:13:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710501179;
	bh=0CXDKtVLaMZDoZYYFTaEKJbdWnIjyLWhv+rAJccVjpA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=fIY2rkPWBdmvDpr0Wom4qFXXVpArrafGToPCZp2XjR+O80luPezh2WtvoB3kopjKr
	 oQM1rDX8QxVgnC0rE+1xABQXLuPNKswAqJj66NifFvNwa7+MgV8MFzCOjplUqw4rtK
	 dEcaa0n2ZT6NGPO+E+gTfBvySKTndwpcEVLH/JKUis2SjV3g5J9V77IBHmQrhpQWb+
	 mQYhWbyUb4wHLO17kp868XgQqVt09ivekV05vVdtlW0zGjNvMIUe7NyOfzj+XOCdor
	 mrCBuo4qHQPe6Dhk7W5kjWq0ieFwu5eLMYdbRxilEedc385U9pBLiK71caXIr5efUX
	 mJqVSIf0ziBLg==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1EF11378210F;
	Fri, 15 Mar 2024 11:12:54 +0000 (UTC)
Message-ID: <af5b6e38-306d-ae79-42af-88e6e9a32cff@collabora.com>
Date: Fri, 15 Mar 2024 16:42:52 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 03/11] drm/ci: uprev IGT and update testlist
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
 <20240306030649.60269-4-vignesh.raman@collabora.com>
 <4f927c99-9ea2-424e-85a7-bd05d0817dab@collabora.com>
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <4f927c99-9ea2-424e-85a7-bd05d0817dab@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_041303_105806_D71D6F63 
X-CRM114-Status: GOOD (  19.01  )
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

SGkgSGVsZW4sCgpPbiAwNy8wMy8yNCAxOTowNSwgSGVsZW4gS29pa2Ugd3JvdGU6Cj4gCj4gCj4g
T24gMDYvMDMvMjAyNCAwMDowNiwgVmlnbmVzaCBSYW1hbiB3cm90ZToKPj4gVXByZXYgSUdUIGFu
ZCBhZGQgYW1kLCB2M2QsIHZjNCBhbmQgdmdlbSBzcGVjaWZpYwo+PiB0ZXN0cyB0byB0ZXN0bGlz
dC4gSGF2ZSB0ZXN0bGlzdC50eHQgcGVyIGRyaXZlcgo+PiBhbmQgaW5jbHVkZSBhIGJhc2UgdGVz
dGxpc3Qgc28gdGhhdCB0aGUgZHJpdmVyCj4+IHNwZWNpZmljIHRlc3RzIHdpbGwgcnVuIG9ubHkg
b24gdGhvc2UgaGFyZHdhcmUuCj4+IEFsc28gYWRkIHRlc3RsaXN0cyB0byB0aGUgTUFJTlRBSU5F
UlMgZmlsZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogVmlnbmVzaCBSYW1hbiA8dmlnbmVzaC5yYW1h
bkBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4KPj4gdjM6Cj4+IMKgwqAgLSBOZXcgcGF0Y2ggaW4g
c2VyaWVzIHRvIHVwcmV2IElHVCBhbmQgdXBkYXRlIHRlc3RsaXN0Lgo+Pgo+PiB2NDoKPj4gwqDC
oCAtIEFkZCB0ZXN0bGlzdHMgdG8gdGhlIE1BSU5UQUlORVJTIGZpbGUgYW5kIHJlbW92ZSBhbWRn
cHUgeGZhaWxzIAo+PiBjaGFuZ2VzLgo+Pgo+PiAtLS0KPj4gwqAgTUFJTlRBSU5FUlPCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAx
MSArKwo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vY2kvZ2l0bGFiLWNpLnltbMKgwqDCoMKgwqDCoMKg
wqAgfMKgwqAgMiArLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vY2kvaWd0X3J1bm5lci5zaMKgwqDC
oMKgwqDCoMKgwqAgfMKgIDEyICstCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0bGlzdC1h
bWRncHUudHh0wqDCoCB8IDE1MSArKysrKysrKysrKysrKysrKysrKysrKwo+PiDCoCBkcml2ZXJz
L2dwdS9kcm0vY2kvdGVzdGxpc3QtbXNtLnR4dMKgwqDCoMKgwqAgfMKgIDUwICsrKysrKysrCj4+
IMKgIGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0bGlzdC1wYW5mcm9zdC50eHQgfMKgIDE3ICsrKwo+
PiDCoCBkcml2ZXJzL2dwdS9kcm0vY2kvdGVzdGxpc3QtdjNkLnR4dMKgwqDCoMKgwqAgfMKgIDcz
ICsrKysrKysrKysrCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0bGlzdC12YzQudHh0wqDC
oMKgwqDCoCB8wqAgNDkgKysrKysrKysKPj4gwqAgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3RsaXN0
LnR4dMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgODQgKysrKysrLS0tLS0tLQo+PiDCoCA5IGZpbGVz
IGNoYW5nZWQsIDM5OCBpbnNlcnRpb25zKCspLCA1MSBkZWxldGlvbnMoLSkKPj4gwqAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0bGlzdC1hbWRncHUudHh0Cj4+IMKg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vY2kvdGVzdGxpc3QtbXNtLnR4dAo+
PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3RsaXN0LXBhbmZy
b3N0LnR4dAo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3Rs
aXN0LXYzZC50eHQKPj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9jaS90
ZXN0bGlzdC12YzQudHh0Cj4+Cj4+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlO
RVJTCj4+IGluZGV4IDNiYzdlMTIyYTA5NC4uNGRhNjZjYTkyZjFhIDEwMDY0NAo+PiAtLS0gYS9N
QUlOVEFJTkVSUwo+PiArKysgYi9NQUlOVEFJTkVSUwo+PiBAQCAtMTY2NSw2ICsxNjY1LDggQEAg
TDrCoMKgwqAgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiDCoCBTOsKgwqDCoCBT
dXBwb3J0ZWQKPj4gwqAgVDrCoMKgwqAgZ2l0IGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3Jn
L2RybS9kcm0tbWlzYwo+PiDCoCBGOsKgwqDCoCBEb2N1bWVudGF0aW9uL2dwdS9wYW5mcm9zdC5y
c3QKPj4gK0Y6wqDCoMKgIGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0bGlzdC1wYW5mcm9zdC50eHQK
Pj4gK0Y6wqDCoMKgIGRyaXZlcnMvZ3B1L2RybS9jaS90ZXN0bGlzdC50eHQKPiAKPiBJIHdvbmRl
ciBpZiB3ZSBzaG91bGQgaGF2ZSBib3RoIGhlcmUsIHNpbmNlIHRoZSBzZWNvbmQgaXMgbm90IHVz
ZWQgcmlnaHQ/CgpZZXMsIHdlIG5lZWQgdG8gdXNlIGJvdGggaGVyZS4gdGVzdGxpc3QtcGFuZnJv
c3QudHh0IGluY2x1ZGVzIAp0ZXN0bGlzdC50eHQuIFNvIHdlIGhhdmUgbW92ZWQgdGhlIGRyaXZl
ciBzcGVjaWZpYyB0ZXN0cyB0bwp0ZXN0bGlzdC1wYW5mcm9zdC50eHQgYW5kIGhhdmUgYSBiYXNl
IHRlc3RsaXN0LnR4dC4KCgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2NpL2lndF9y
dW5uZXIuc2ggCj4+IGIvZHJpdmVycy9ncHUvZHJtL2NpL2lndF9ydW5uZXIuc2gKPj4gaW5kZXgg
ZjFhMDhiOWIxNDZmLi43N2NkODFmZTZkMWEgMTAwNzU1Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9jaS9pZ3RfcnVubmVyLnNoCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9jaS9pZ3RfcnVubmVy
LnNoCj4+IEBAIC03NCwxMCArNzQsMjAgQEAgaWYgISBncmVwIC1xICJjb3JlX2dldHZlcnNpb24i
IAo+PiAvaW5zdGFsbC90ZXN0bGlzdC50eHQ7IHRoZW4KPj4gwqAgZmkKPj4gwqAgc2V0ICtlCj4+
ICtpZiBbICIkRFJJVkVSX05BTUUiID0gImFtZGdwdSIgXTsgdGhlbgo+PiArwqDCoMKgIFRFU1Rf
TElTVD0iL2luc3RhbGwvdGVzdGxpc3QtYW1kZ3B1LnR4dCIKPj4gK2VsaWYgWyAiJERSSVZFUl9O
QU1FIiA9ICJtc20iIF07IHRoZW4KPj4gK8KgwqDCoCBURVNUX0xJU1Q9Ii9pbnN0YWxsL3Rlc3Rs
aXN0LW1zbS50eHQiCj4+ICtlbGlmIFsgIiREUklWRVJfTkFNRSIgPSAicGFuZnJvc3QiIF07IHRo
ZW4KPj4gK8KgwqDCoCBURVNUX0xJU1Q9Ii9pbnN0YWxsL3Rlc3RsaXN0LXBhbmZyb3N0LnR4dCIK
Pj4gK2Vsc2UKPj4gK8KgwqDCoCBURVNUX0xJU1Q9Ii9pbnN0YWxsL3Rlc3RsaXN0LnR4dCIKPj4g
K2ZpCj4gCj4gTWF5YmUgc2ltcGxpZnkgdGhpcyB3aXRoOgo+IAo+IFRFU1RfTElTVD0iL2luc3Rh
bGwvdGVzdGxpc3QtJERSSVZFUl9OQU1FLnR4dCIKPiAKPiBpZiBbICEgLWYgIiRURVNUX0xJU1Qi
IF07IHRoZW4KPiAgwqDCoMKgIFRFU1RfTElTVD0iL2luc3RhbGwvdGVzdGxpc3QudHh0Igo+IGZp
CgpZZXMsIHRoaXMgaXMgbXVjaCBiZXR0ZXIuIFRoYW5rcy4KCj4gCj4gQW5vdGhlciBxdWVzdGlv
biBJIGhhdmU6IHNob3VsZG4ndCB0ZXN0bGlzdC0kRFJJVkVSX05BTUUudHh0IGFuZCAKPiB0ZXN0
bGlzdC50eHQgYmUgbWVyZ2VkPyBPciB0aGV5IGFyZSByZWFsbHkgbXV0dWFsbHkgZXhjbHVzaXZl
PwoKV2UgaGF2ZSB0ZXN0bGlzdC0kRFJJVkVSX05BTUUudHh0IHBlciBkcml2ZXIgYW5kIGl0IGlu
Y2x1ZGVzIGEgYmFzZSAKdGVzdGxpc3QudHh0CgpSZWdhcmRzLApWaWduZXNoCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
