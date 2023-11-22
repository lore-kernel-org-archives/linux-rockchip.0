Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30C15C61D9B
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 14:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MQFMSbNbUojk0xCVlLRJq2dNsqAFnduzhBVrmQQkLjs=; b=yt7JWk4uB3L38m4yUj/6gXl5Jv
	PJhoPbjznGlyJiRBm+qtUlPvzU5Fq1JObuwzxBW+2JrVzA/QchqIBCV5otUTHiPsae+IhijJ0CSbj
	GCV3MAwxV3o7OBGUInwtA1VBmeBJdxHayVa8lEAJIr1GO8rtggU6a2KiRval+52iILMNoX7fNrVaf
	RWZ5v9q6Npe3AxgVmO8U2XggCXXd0EvmHmECUteFJIIItjan+Km/EMFG/PpoJSKUnY7IqLgmKm1wg
	30TGZc2kKGEh9xgJatA3SD5yJfJTxeBG95xIzSiz4cDUnpVH4u0yjDgJRH4KLW4NPmU0uiHNng64V
	2oXhc6/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5oRb-0028Hl-0g;
	Wed, 22 Nov 2023 14:43:11 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5oRH-00284b-2w;
	Wed, 22 Nov 2023 14:42:55 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1700664166;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=n9l7CzXN6LlS38rZFFq0Nxp8PK7NYDm9aN5Wn+Z/Buw=;
	b=x7SQ/I1HOiWc0cwQ6er9JxVxd2di1ktX2ld6tiwKekdklOtdP54pycvx1s1KAVhfCqW8l6
	t/Y88WRMV20TDY6M4PWiDDHKuWXTh/o5K/9QKplNCSBk0NkOuo8ZkUqFO2cDjC4v3QNQuU
	BwShho8epg3KI/PenQJo79YnPUu+R5FsDbEhsGaGkkCZXxko8ucAKfY1trKhy7YQjxBAL4
	BTtM9VWeoaMsWlb7MqndqTur+5yM39vgYLrKyvgk/hsyd6RN8H5cQz82mq6Shd+ZQfQnTj
	GkqNjDCurBsMM2KsjG+Z6g7/s3ejsd+j727Gtm81FLFE0bqKtMSaw+fL3L7cqg==
Date: Wed, 22 Nov 2023 15:42:46 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: Michal Simek <michal.simek@amd.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>, wens@kernel.org, =?UTF-8?Q?Rafa?=
 =?UTF-8?Q?=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>, Arnd Bergmann
 <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Konrad Dybcio <konrad.dybcio@linaro.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>, Olof Johansson
 <olof@lixom.net>, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
In-Reply-To: <CAL_JsqKkOjBHrJ0WELq3JnJDqgtA=mdF+EtAxHSCGqZMQ9tuSQ@mail.gmail.com>
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com>
 <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
 <CAGb2v64Vf5dDwq=KTrxwc=+w+0KUD2KVPMjmHg68Y_yukES5dQ@mail.gmail.com>
 <7232a48b-b9ad-44b5-ae6a-d12dad70b3c4@linaro.org>
 <58a9caacc1226c7c3a2bdfe73ef1791f@manjaro.org>
 <cc4c789c-b595-41eb-b543-9e03549c6e61@amd.com>
 <CAMuHMdWm-gRPHeHyuX3_eR+9chJEw3iiZwCNBnoiRPHzoMAs6w@mail.gmail.com>
 <808270d3-2274-4fb7-a397-38538503b67c@amd.com>
 <CAL_JsqKkOjBHrJ0WELq3JnJDqgtA=mdF+EtAxHSCGqZMQ9tuSQ@mail.gmail.com>
Message-ID: <f9dcdd519c0bbd29838a75113fef0645@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_064252_558048_BB10A989 
X-CRM114-Status: GOOD (  28.33  )
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

T24gMjAyMy0xMS0yMiAxNTozNCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gV2VkLCBOb3YgMjIs
IDIwMjMgYXQgMTo1N+KAr0FNIE1pY2hhbCBTaW1layA8bWljaGFsLnNpbWVrQGFtZC5jb20+IAo+
IHdyb3RlOgo+PiBPbiAxMS8yMi8yMyAwOTo1MywgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+
PiA+IE9uIFdlZCwgTm92IDIyLCAyMDIzIGF0IDk6NTDigK9BTSBNaWNoYWwgU2ltZWsgPG1pY2hh
bC5zaW1la0BhbWQuY29tPiB3cm90ZToKPj4gPj4gT24gMTEvMjIvMjMgMDk6MjksIERyYWdhbiBT
aW1pYyB3cm90ZToKPj4gPj4+IE9uIDIwMjMtMTEtMjIgMDk6MjEsIEtyenlzenRvZiBLb3psb3dz
a2kgd3JvdGU6Cj4+ID4+Pj4gT24gMjIvMTEvMjAyMyAwOTowOSwgQ2hlbi1ZdSBUc2FpIHdyb3Rl
Ogo+PiA+Pj4+PiBPbiBXZWQsIE5vdiAyMiwgMjAyMyBhdCA0OjA14oCvUE0gS3J6eXN6dG9mIEtv
emxvd3NraQo+PiA+Pj4+PiA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToK
Pj4gPj4+Pj4+Cj4+ID4+Pj4+PiBPbiAyMS8xMS8yMDIzIDE0OjUwLCBSYWZhxYIgTWnFgmVja2kg
d3JvdGU6Cj4+ID4+Pj4+Pj4+ICtPcmRlciBvZiBQcm9wZXJ0aWVzIGluIERldmljZSBOb2RlCj4+
ID4+Pj4+Pj4+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+ID4+Pj4+Pj4+
ICsKPj4gPj4+Pj4+Pj4gK0ZvbGxvd2luZyBvcmRlciBvZiBwcm9wZXJ0aWVzIGluIGRldmljZSBu
b2RlcyBpcyBwcmVmZXJyZWQ6Cj4+ID4+Pj4+Pj4+ICsKPj4gPj4+Pj4+Pj4gKzEuIGNvbXBhdGli
bGUKPj4gPj4+Pj4+Pj4gKzIuIHJlZwo+PiA+Pj4+Pj4+PiArMy4gcmFuZ2VzCj4+ID4+Pj4+Pj4+
ICs0LiBTdGFuZGFyZC9jb21tb24gcHJvcGVydGllcyAoZGVmaW5lZCBieSBjb21tb24gYmluZGlu
Z3MsIGUuZy4gd2l0aG91dAo+PiA+Pj4+Pj4+PiArICAgdmVuZG9yLXByZWZpeGVzKQo+PiA+Pj4+
Pj4+PiArNS4gVmVuZG9yLXNwZWNpZmljIHByb3BlcnRpZXMKPj4gPj4+Pj4+Pj4gKzYuIHN0YXR1
cyAoaWYgYXBwbGljYWJsZSkKPj4gPj4+Pj4+Pj4gKzcuIENoaWxkIG5vZGVzLCB3aGVyZSBlYWNo
IG5vZGUgaXMgcHJlY2VkZWQgd2l0aCBhIGJsYW5rIGxpbmUKPj4gPj4+Pj4+Pj4gKwo+PiA+Pj4+
Pj4+PiArVGhlICJzdGF0dXMiIHByb3BlcnR5IGlzIGJ5IGRlZmF1bHQgIm9rYXkiLCB0aHVzIGl0
IGNhbiBiZSBvbWl0dGVkLgo+PiA+Pj4+Pj4+Cj4+ID4+Pj4+Pj4gSSB0aGluayBpdCB3b3VsZCBy
ZWFsbHkgaGVscCB0byBpbmNsdWRlIHBvc2l0aW9uIG9mICNhZGRyZXNzLWNlbGxzIGFuZAo+PiA+
Pj4+Pj4+ICNzaXplLWNlbGxzIGhlcmUuIEluIHNvbWUgZmlsZXMgSSBzYXcgdGhlbSBhYm92ZSAi
Y29tcGF0aWJsZSIgdGhhdCBzZWVtcwo+PiA+Pj4+Pj4+IHVuaW50dWl0aXZlLiBTb21lIHByZWZl
ciBwdXR0aW5nIHRoZW0gYXQgZW5kIHdoaWNoIEkgdGhpbmsgbWFrZXMgc2Vuc2UKPj4gPj4+Pj4+
PiBhcyB0aGV5IGFmZmVjdCBjaGlsZHJlbiBub2Rlcy4KPj4gPj4+Pj4+Pgo+PiA+Pj4+Pj4+IFdo
YXRldmVyIHlvdSBjaG9vc2UgaXQnZCBiZSBqdXN0IG5pY2UgdG8gaGF2ZSB0aGluZ3MgY29uc2lz
dGVudC4KPj4gPj4+Pj4+Cj4+ID4+Pj4+PiBUaGlzIGlzIGEgc3RhbmRhcmQvY29tbW9uIHByb3Bl
cnR5LCB0aHVzIGl0IGdvZXMgdG8gKDQpIGFib3ZlLgo+PiA+Pj4+Pgo+PiA+Pj4+PiBJdCdzIHBy
b2JhYmx5IGEgbWl4LCBidXQgQUZBSUsgYSBsb3Qgb2YgdGhlIGRldmljZSB0cmVlcyBpbiB0cmVl
IGhhdmUKPj4gPj4+Pj4gIyotY2VsbHMgYWZ0ZXIgInN0YXR1cyIuIEluIHNvbWUgY2FzZXMgdGhl
eSBhcmUgYWRkZWQgaW4gdGhlIGJvYXJkCj4+ID4+Pj4+IC5kdHMgZmlsZXMsIG5vdCB0aGUgY2hp
cC9tb2R1bGUgLmR0c2kgZmlsZXMuCj4+ID4+Pj4KPj4gPj4+PiBFeGlzdGluZyBEVFMgaXMgbm90
IGEgZ29vZCBleGFtcGxlIDopCj4+ID4+Pj4KPj4gPj4+Pj4KPj4gPj4+Pj4gKzEgdGhhdCBpdCBt
YWtlcyBzZW5zZSBhdCB0aGUgZW5kIGFzIHRoZXkgYWZmZWN0IGNoaWxkIG5vZGVzLgo+PiA+Pj4+
Cj4+ID4+Pj4gSSBzdGlsbCBpbnNpc3QgdGhhdCBzdGF0dXMgbXVzdCBiZSB0aGUgbGFzdCwgYmVj
YXVzZToKPj4gPj4+PiAxLiBNYW55IFNvQyBub2RlcyBoYXZlIGFkZHJlc3Mvc2l6ZSBjZWxscyBi
dXQgZG8gbm90IGhhdmUgYW55IGNoaWxkcmVuCj4+ID4+Pj4gKEkyQywgU1BJKSwgc28gd2UgcHV0
IHVzZWxlc3MgaW5mb3JtYXRpb24gYXQgdGhlIGVuZC4KPj4gPj4+PiAyLiBTdGF0dXMgc2hvdWxk
IGJlIHRoZSBmaW5hbCBpbmZvcm1hdGlvbiB0byBzYXkgd2hldGhlciB0aGUgbm9kZSBpcwo+PiA+
Pj4+IHJlYWR5IG9yIGlzIG5vdC4gSSByZWFkIHRoZSBub2RlLCBjaGVjayBwcm9wZXJ0aWVzIGFu
ZCB0aGVuIGxvb2sgYXQgdGhlIGVuZDoKPj4gPj4+PiBhLiBMYWNrIG9mIHN0YXR1cyBtZWFucyBp
dCBpcyByZWFkeS4KPj4gPj4+PiBiLiBzdGF0dXM9ZGlzYWJsZWQgbWVhbnMgZGV2aWNlIHN0aWxs
IG5lZWRzIGJvYXJkIHJlc291cmNlcy9jdXN0b21pemF0aW9uCj4+ID4+Pgo+PiA+Pj4gSSBhZ3Jl
ZSB3aXRoIHRoZSAic3RhdHVzIiBiZWxvbmdpbmcgdG8gdGhlIHZlcnkgZW5kLCBiZWNhdXNlIGl0
J3MgYm90aCBsb2dpY2FsCj4+ID4+PiBhbmQgbXVjaCBtb3JlIHJlYWRhYmxlLiAgQWxzbywgInN0
YXR1cyIgaXMgZXhwZWN0ZWQgdG8gYmUgbW9kaWZpZWQgaW4gdGhlCj4+ID4+PiBkZXBlbmRlbnQg
RFQgZmlsZXMsIHdoaWNoIG1ha2VzIGl0IGtpbmQgb2Ygdm9sYXRpbGUgYW5kIGV2ZW4gbW9yZSBk
ZXNlcnZpbmcgdG8KPj4gPj4+IGJlIHBsYWNlZCBsYXN0Lgo+PiA+Pgo+PiA+PiBJIGFtIGp1c3Qg
Y3VyaW91cyBpZiBoYXZpbmcgc3RhdHVzIHByb3BlcnR5IGF0IHRoZSBlbmQgd29uJ3QgYWZmZWN0
Cj4+ID4+IGV4ZWN1dGlvbi9ib290IHVwIHRpbWUuIE5vdCBzdXJlIGhvdyBpdCBpcyBkb25lIGlu
IExpbnV4IGJ1dCBpbiBVLUJvb3QgYXQgbGVhc3QKPj4gPj4gKHdlIHdhbnQgdG8gaGF2ZSBEVHMg
aW4gc3luYyBiZXR3ZWVuIExpbnV4IGFuZCBVLUJvb3QpIG9mX2ZpbmRfcHJvcGVydHkgaXMKPj4g
Pj4gcHJldHR5IG11Y2ggYmlnIGxvb3Agb3ZlciBhbGwgcHJvcGVydGllcy4gQW5kIHN0YXR1cyBw
cm9wZXJ0eSBkZWZpbmVkIGF0IHRoZSBlbmQKPj4gPj4gbWVhbnMgZ29pbmcgb3ZlciBhbGwgb2Yg
dGhlbSB0byBmaW5kIGl0IG91dCB0byBpZiBkZXZpY2UgaXMgcHJlc2VudC4KPj4gPj4gTm90IHN1
cmUgaWYgTGludXggd29ya3MgaW4gdGhlIHNhbWUgd2F5IGJ1dCBhdCBsZWFzdCBvZl9nZXRfcHJv
cGVydHkgaXMgZG9uZSBpbgo+PiA+PiB0aGUgc2FtZSB3YXkuCj4+ID4KPj4gPiBBcyB0aGUgZGVm
YXVsdCBpcyAib2theSIsIHlvdSBoYXZlIHRvIGxvb3Agb3ZlciBhbGwgcHJvcGVydGllcyBhbnl3
YXkuCj4+IAo+PiBObyBkb3VidCBpZiB5b3UgZG9uJ3QgZGVmaW5lIHN0YXR1cyBwcm9wZXJ0eSB0
aGF0IHlvdSBuZWVkIHRvIGxvb3AgCj4+IG92ZXIgYWxsIG9mCj4+IHRoZW0uIFdlIG5vcm1hbGx5
IGRlc2NyaWJlIHRoZSB3aG9sZSBTT0Mgd2l0aCBwcmV0dHkgbXVjaCBhbGwgSVBzIAo+PiBzdGF0
dXMgPQo+PiBkaXNhYmxlZCBhbmQgdGhlbiBpbiBib2FyZCBmaWxlIHdlIGFyZSBjaGFuZ2luZyBp
dCB0byBva2F5IGJhc2VkIG9uIAo+PiB3aGF0IGl0IGlzCj4+IGFjdHVhbGx5IHdpcmVkIG91dC4K
Pj4gSXQgbWVhbnMgb24gb3VyIHN5c3RlbXMgYWxsIG5vZGVzIGhhdmUgc3RhdHVzIHByb3BlcnRp
ZXMuIElmIHlvdSBoYXZlIAo+PiBpdCBhdAo+PiBmaXJzdCB5b3UgZG9uJ3QgbmVlZCB0byBnbyBv
dmVyIGFsbC4KPiAKPiBPcmRlciBpbiB0aGUgc291cmNlIGFuZCBvcmRlciBpbiB0aGUgT1MgYXJl
IGluZGVwZW5kZW50LiBJZiBjaGVja2luZwo+IHN0YXR1cyBuZWVkcyB0byBiZSBvcHRpbWl6ZWQs
IHRoZW4gd2UgY291bGQganVzdCBwdXQgaXQgZmlyc3QgaW4gdGhlCj4gcHJvcGVydHkgbGlzdCBv
ciBtYWtlIHRoZSBzdGF0ZSBhIGZpZWxkIGluIHN0cnVjdCBkZXZpY2Vfbm9kZS4gQnV0Cj4gcHJv
dmlkZSBzb21lIGRhdGEgdGhhdCBpdCBtYXR0ZXJzIGZpcnN0LgoKVGhhdCdzIGV4YWN0bHkgd2hh
dCBJIHBsYW4gdG8gZG8sIGkuZS4gdG8gcGVyZm9ybSBzb21lIGJlbmNobWFya3MgYmVmb3JlIAph
bmQgYWZ0ZXIsIHRvIHNlZSBkb2VzIGl0IGFjdHVhbGx5IG1hdHRlciB0byB0aGUgcG9pbnQgd2hl
cmUgaW50cm9kdWNpbmcgCnRoZSBjaGFuZ2VzIGlzIHdvcnRoIGl0LgoKPiBJJ3ZlIGhhZCB0aGlz
IGlkZWEgdG8gcmFuZG9taXplIHRoZSBvcmRlciBub2RlcyBhcmUgcHJvY2Vzc2VkIHNvCj4gdGhl
cmUncyBubyByZWxpYW5jZSBvbiB0aGUgRFQgb3JkZXIuIE1heWJlIEkgbmVlZCB0aGUgc2FtZSBv
bgo+IHByb3BlcnRpZXMuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
