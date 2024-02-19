Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62282C48BC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 09:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ce2Zb3sT5LBeQqvJ7VpPw2+EAtjp94ZaVRtKlIRSaqc=; b=FJ7dBpGl7wfOfEfMy2lTfj1aQi
	F/9GROnxzjzKrPm+PDOkIc/h5uSmSggfu1tsyX48G0iMuUGTd532KrDNmba6WuwtNrdYk9QCpPmHj
	aXE7dEH4FeztzmjPKJ6mBjfDU/RcOwLAc2Ie967agxnqkAd0IttzeMUHFqQ9iYZLxE8zvZZ0kty0O
	1k88S+JsXCIW3HoxxcekyvjwCv9rhZHWkX8cz3WzJ8x4X0LtIz5m02v8XnqLlqHDJ53itWiB+t7rv
	VWufKED9qTD2nV4fNCqOgPukMhcnFUmAOdpEMh7Aeau37y9oIKpsP+mULMWK98R56XPbyrNE9DjpS
	Z3VWLe5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbzYl-00000009iNS-3sTW;
	Mon, 19 Feb 2024 09:03:35 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbzYi-00000009iME-1uvr;
	Mon, 19 Feb 2024 09:03:33 +0000
Received: from [192.168.1.102] (unknown [103.86.18.199])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id AD68A183;
	Mon, 19 Feb 2024 10:03:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708333402;
	bh=9N9JTATGue0lSrwB0YkyG4L8xvvl/c/Kp9BnJrpO4FQ=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=qtGV317qIx71HN77jzgzM1hT4bFDAScyOC+DWe70QgG1TtNW3329gWqf0GBrZ9yqM
	 xV1JOTpX/FYwkOQBncMu0+9eHLSIq0PtqMjaWleV/s770VrrZglCVmrFsKq9qt+JBi
	 XkYVEi58+/Y32KAJrIPbeQhn7GoXjnf1D9OAArs8=
Message-ID: <b500676e-431f-40fc-868b-9f9bb359a109@ideasonboard.com>
Date: Mon, 19 Feb 2024 14:33:21 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: rkisp1: Allow higher input resolution
To: Adam Ford <aford173@gmail.com>, =?UTF-8?Q?Ond=C5=99ej_Jirman?=
 <megi@xff.cz>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-kernel@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>,
 "open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>,
 "open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Paul Elder <paul.elder@ideasonboard.com>
References: <20240217185202.1754750-1-megi@xff.cz>
 <20240218205908.GA12766@pendragon.ideasonboard.com>
 <pftafukuzq7qzbhlvwtmeg3mburnttylgy4246timlghtrdgx4@r6munvmj6oqt>
 <CAHCN7x+zi3WxnY-mxZFKePs1cS=-DprEmh_CnypJ4XK7xBzjMQ@mail.gmail.com>
Content-Language: en-US
From: Umang Jain <umang.jain@ideasonboard.com>
In-Reply-To: <CAHCN7x+zi3WxnY-mxZFKePs1cS=-DprEmh_CnypJ4XK7xBzjMQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_010332_661867_AAE3278D 
X-CRM114-Status: GOOD (  20.24  )
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

SGkgQWxsLAoKT24gMTkvMDIvMjQgNzozOSBhbSwgQWRhbSBGb3JkIHdyb3RlOgo+IE9uIFN1biwg
RmViIDE4LCAyMDI0IGF0IDM6MDLigK9QTSBPbmTFmWVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+IHdy
b3RlOgo+PiBPbiBTdW4sIEZlYiAxOCwgMjAyNCBhdCAxMDo1OTowOFBNICswMjAwLCBMYXVyZW50
IFBpbmNoYXJ0IHdyb3RlOgo+Pj4gSGkgT25kcmVqLAo+Pj4KPj4+IChDQydpbmcgUGF1bCBhbmQg
VW1hbmcpCj4+Pgo+Pj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCj4+Pgo+Pj4gT24gU2F0LCBG
ZWIgMTcsIDIwMjQgYXQgMDc6NTE6NThQTSArMDEwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4+
Pj4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4+Pj4KPj4+PiBJbiBCU1AgZHJp
dmVyLCBpdCBpcyBhbGxvd2VkLCBhbmQgaXQgd29ya3MgaW4gcHJhY3RpY2UuIFRlc3RlZCBvbgo+
Pj4+IFBpbmVwaG9uZSBQcm8vUkszMzk5IHdpdGggSU1YMjU4IGF0IGZ1bGwgcmVzLgo+Pj4gUGF1
bCwgVW1hbmcsIGRvIEkgcmVjYWxsIGNvcnJlY3RseSB0aGF0IHlvdSBoYXZlIGEgc2ltaWxhciBj
aGFuZ2UgPwo+Pj4gQ291bGQgeW91IHJldmlldyBhbmQgdGVzdCB0aGlzIChlc3BlY2lhbGx5IG9u
IHRoZSBpLk1YOE1QKSA/Cj4+IEl0J3MgYWxzbyBhIGxpbWl0IGZyb20gdGhlIGRhdGFzaGVldCwg
c28gdGhlIGNoYW5nZSBzaG91bGQgbm90IGJlIHRoYXQKPj4gY29udHJvdmVyc2lhbDoKPj4KPj4g
ICAgaHR0cHM6Ly9tZWdvdXMuY29tL2RsL3RtcC9kMmIzMzMwNDNlY2ViYWYzLnBuZwo+Pgo+PiAo
c28gdGhhdCBpdCBkb2Vzbid0IHNvdW5kIGxpa2UgSSBqdXN0IGNvcGllZCB0aGUgQlNQIHZhbHVl
cykKPj4KPiAgRnJvbSB3aGF0IEkgc2VlIGluIHRoZSBpLk1YOE0gUGx1cyByZWZlcmVuY2UgbWFu
dWFsLCBpdCBoYXMgYSBtYXgKPiByZXNvbHV0aW9uIG9mIDQwOTZ4MzA3Miwgc28gaXQgbWlnaHQg
YmUgbmVjZXNzYXJ5IHRvIG1vdmUgdGhpcyBvZmYKClRoaXMgaXMgd2hhdCBJIChhbmQgSSBhc3N1
bWUgUGF1bCB0b28pIGhhdmUgYmVlbiB3b3JraW5nIHdpdGggb24gaS5NWDhNIApQbHVzLiBTbyBp
dCdzIHRoZSBrbm93biBhbmQgdGVzdGVkIHZhbHVlIG9mIG1heCBJU1AgaW5wdXQgZnJvbSBvdXQg
c2lkZS4KPiBmcm9tIGEgI2RlZmluZSBpbnRvIGEgc3RydWN0dXJlIHRoYXQgdmFyaWVzIGJ5IHBy
b2R1Y3QgZmFtaWx5LgoKWWVhaCEKPgo+IGFkYW0KPj4gcmVnYXJkcywKPj4gICAgICAgICAgby4K
Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPj4+PiAt
LS0KPj4+PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1j
b21tb24uaCB8IDQgKystLQo+Pj4+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY29tbW9uLmggYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY29tbW9uLmgKPj4+PiBpbmRleCA0YjZiMjhjMDVi
ODkuLjc0MDk4ZGRiZWViMyAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY29tbW9uLmgKPj4+PiArKysgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtY29tbW9uLmgKPj4+PiBAQCAtMzMsOCAr
MzMsOCBAQCBzdHJ1Y3QgZGVudHJ5Owo+Pj4+ICAgI2RlZmluZSBSS0lTUDFfSVNQX1NEX1NJTksg
ICAgICAgICAgICAgICAgIEJJVCgxKQo+Pj4+Cj4+Pj4gICAvKiBtaW4gYW5kIG1heCB2YWx1ZXMg
Zm9yIHRoZSB3aWR0aHMgYW5kIGhlaWdodHMgb2YgdGhlIGVudGl0aWVzICovCj4+Pj4gLSNkZWZp
bmUgUktJU1AxX0lTUF9NQVhfV0lEVEggICAgICAgICAgICAgICAgICAgICAgIDQwMzIKPj4+PiAt
I2RlZmluZSBSS0lTUDFfSVNQX01BWF9IRUlHSFQgICAgICAgICAgICAgICAgICAgICAgMzAyNAo+
Pj4+ICsjZGVmaW5lIFJLSVNQMV9JU1BfTUFYX1dJRFRIICAgICAgICAgICAgICAgICAgICAgICA0
NDE2Cj4+Pj4gKyNkZWZpbmUgUktJU1AxX0lTUF9NQVhfSEVJR0hUICAgICAgICAgICAgICAgICAg
ICAgIDMzMTIKPj4+PiAgICNkZWZpbmUgUktJU1AxX0lTUF9NSU5fV0lEVEggICAgICAgICAgICAg
ICAgICAgICAgIDMyCj4+Pj4gICAjZGVmaW5lIFJLSVNQMV9JU1BfTUlOX0hFSUdIVCAgICAgICAg
ICAgICAgICAgICAgICAzMgo+Pj4+Cj4+PiAtLQo+Pj4gUmVnYXJkcywKPj4+Cj4+PiBMYXVyZW50
IFBpbmNoYXJ0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
