Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD433EC8743
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Sep 2023 16:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdaJ81IPkmpnIBe95MkzfPenH7rE2qAp7tIddXjfV1Y=; b=L0YeLiu6hwEaJG
	aXH/VIeYX1aDwsRGsLzQARWhYg+3b0At55MWoTCGzNc5Kcrl0xCs1iaT9b7sgfpxBDTlb/SsXod2z
	54uWll9z0wkd31+zL3sv9mAGu1PyJiLBKanotJOJs1y2mJUW++44PTVC9et1zzraP6nU/AVRToQYP
	dy5P2Cs/swFRpQWCFBmuPMxBwFX9M9JaxwRV5R+moRDIuOXiov9EhQruRkRZ54B+AkGD2dZEhV7bj
	OCet+RefrmwyCqxxKnDjnmPsogyLzTvWqbtghyzV2CKMpdCtwjElS9fG8zj+H+I6M2SJ+rESg72iT
	Qoouq/83JT4f7sG4p/2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeIAW-00CQ4Z-2Z;
	Thu, 07 Sep 2023 16:47:48 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeIAS-00CQ3d-2Q;
	Thu, 07 Sep 2023 16:47:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ECB891042;
	Thu,  7 Sep 2023 09:48:17 -0700 (PDT)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2540E3F67D;
	Thu,  7 Sep 2023 09:47:38 -0700 (PDT)
Message-ID: <b34a6196-6c24-a664-611b-6055480880ee@arm.com>
Date: Thu, 7 Sep 2023 17:47:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: rockchip: Add io domain
 properties
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 kernel@pengutronix.de, Michael Riesch <michael.riesch@wolfvision.net>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-3-s.hauer@pengutronix.de>
 <b4017947-9e16-7d97-a7b1-3e6964a1f7a9@arm.com>
 <5166ca75-5454-8f64-4f61-fcc0f7a4c235@theobroma-systems.com>
 <20230906101909.GB492117@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230906101909.GB492117@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_094744_882527_4BAB8E45 
X-CRM114-Status: GOOD (  25.89  )
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

T24gMDYvMDkvMjAyMyAxMToxOSBhbSwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IE9uIFdlZCwgU2Vw
IDA2LCAyMDIzIGF0IDEwOjIwOjI2QU0gKzAyMDAsIFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+PiBT
YXNjaGEsIFJvYmluLAo+Pgo+PiBPbiA5LzUvMjMgMTE6MDMsIFJvYmluIE11cnBoeSB3cm90ZToK
Pj4+IFtZb3UgZG9uJ3Qgb2Z0ZW4gZ2V0IGVtYWlsIGZyb20gcm9iaW4ubXVycGh5QGFybS5jb20u
IExlYXJuIHdoeSB0aGlzIGlzCj4+PiBpbXBvcnRhbnQgYXQgaHR0cHM6Ly9ha2EubXMvTGVhcm5B
Ym91dFNlbmRlcklkZW50aWZpY2F0aW9uIF0KPj4+Cj4+Pj4gK8Ovwr/Fk8Ovwr/Fk8Ovwr/Fk8Ov
wr/Fk8Ovwr/Fk8Ovwr/Fk8Ovwr/FkyB0eXBlOiBib29sZWFuCj4+Pj4gK8Ovwr/Fk8Ovwr/Fk8Ov
wr/Fk8Ovwr/Fk8Ovwr/Fk8Ovwr/Fk8Ovwr/FkyBkZXNjcmlwdGlvbjoKPj4+PiArw6/Cv8WTw6/C
v8WTw6/Cv8WTw6/Cv8WTw6/Cv8WTw6/Cv8WTw6/Cv8WTw6/Cv8WTw6/Cv8WTIElmIHRydWUgYXNz
dW1lIHRoYXQgdGhlIGlvIGRvbWFpbiBuZWVkZWQgZm9yIHRoaXMgcGluCj4+Pj4gZ3JvdXAgaGFz
IGJlZW4KPj4+PiArw6/Cv8WTw6/Cv8WTw6/Cv8WTw6/Cv8WTw6/Cv8WTw6/Cv8WTw6/Cv8WTw6/C
v8WTw6/Cv8WTIGNvbmZpZ3VyZWQgY29ycmVjdGx5IGJ5IHRoZSBib290bG9hZGVyLiBUaGlzIGlz
IG5lZWRlZCB0bwo+Pj4+IGJyZWFrIGN5Y2xpYwo+Pj4+ICvDr8K/xZPDr8K/xZPDr8K/xZPDr8K/
xZPDr8K/xZPDr8K/xZPDr8K/xZPDr8K/xZPDr8K/xZMgZGVwZW5kZW5jaWVzIGludHJvZHVjZWQg
d2hlbiBhIGlvIGRvbWFpbiBuZWVkcyBhCj4+Pj4gcmVndWxhdG9yIHRoYXQgY2FuIGJlCj4+Pj4g
K8Ovwr/Fk8Ovwr/Fk8Ovwr/Fk8Ovwr/Fk8Ovwr/Fk8Ovwr/Fk8Ovwr/Fk8Ovwr/Fk8Ovwr/FkyBh
Y2Nlc3NlZCB0aHJvdWdoIHBpbnMgY29uZmlndXJlZCBoZXJlLgo+Pj4KPj4+IFRoaXMgaXMgZGVz
Y3JpYmluZyBhIExpbnV4IGltcGxlbWVudGF0aW9uIGRldGFpbCwgbm90IHRoZSBiaW5kaW5nCj4+
PiBpdHNlbGYuIFRoZXJlJ3Mgbm8gdGVjaG5pY2FsIHJlYXNvbiBhIERUIGNvbnN1bWVyIGNvdWxk
bid0IGFscmVhZHkKPj4+IGZpZ3VyZSB0aGlzIG11Y2ggb3V0IGZyb20gdGhlIGV4aXN0aW5nIHRv
cG9sb2d5IChieSBvYnNlcnZpbmcgdGhhdCB0aGUKPj4+IHBpbmN0cmwgY29uc3VtZXIgaXMgYSBn
cmFuZHBhcmVudCBvZiB0aGUgSS9PIGRvbWFpbidzIHN1cHBseSkuCj4+Pgo+Pgo+PiBJIGFtIGd1
ZXNzaW5nIHlvdSdyZSBzdWdnZXN0aW5nIHRvIGhhdmUgc29tZSBjb21wbGV4IGhhbmRsaW5nIGlu
IHRoZSBkcml2ZXIKPj4gdG8gZGV0ZWN0IHRob3NlIGN5Y2xpYyBkZXBlbmRlbmNpZXMgYW5kIGln
bm9yZSB0aGUgSU8gZG9tYWluIGRlcGVuZGVuY3kgZm9yCj4+IHRoZSBwaW5jdHJsIHBpbnMgd2hl
cmUgdGhpcyBoYXBwZW5zPwo+IAo+IEkgaGF2ZW4ndCByZWFkIHRoaXMgYXMgYSBzdWdnZXN0aW9u
LCBidXQgb25seSBhcyBhbiBhcmd1bWVudCB0byBtYWtlIGl0Cj4gY2xlYXIgdGhhdCBJIHNob3Vs
ZCBkZXNjcmliZSB0aGUgYmluZGluZyByYXRoZXIgdGhhbiBhbnRpY2lwYXRpbmcKPiBob3cgaXQg
c2hvdWxkIGJlIHVzZWQuCj4gCj4gSSBtYXkgaGF2ZSBtaXN1bmRlcnN0b29kIGl0IHRob3VnaC4K
CkluZGVlZCBpdCB3YXMgbW9yZSBhYm91dCB0aGUgZGVmaW5pdGlvbiBpdHNlbGYgLSBhbiBleHRy
YSBwcm9wZXJ0eSBpc24ndCAKKm5lZWRlZCogdG8gYnJlYWsgdGhlIGN5Y2xlIHNpbmNlIHRoZSBj
eWNsZSBpcyBhbHJlYWR5IGZ1bGx5IGRlc2NyaWJlZCAKaW4gRFQsIHNvIGFueW9uZSB3aG8gY2Fu
IHBhcnNlIHBhcmVudHMgYW5kIHBoYW5kbGVzIGFscmVhZHkgaGFzIApzdWZmaWNpZW50IGluZm9y
bWF0aW9uIHRvIGRldGVjdCBpdCBhbmQgYnJlYWsgaXQgYXQgYW55IHBvaW50IHRoZXkgCmNob29z
ZS4gSG93ZXZlciwgYXMgbWVudGlvbmVkIHN1YnNlcXVlbnRseSwgYnJlYWtpbmcgdGhlIGN5Y2xl
IGFsb25lIAppc24ndCBlbm91Z2ggdG8gZ3VhcmFudGVlIHRoYXQgdGhpbmdzIHdpbGwgYWN0dWFs
bHkgd29yayBpbiBnZW5lcmFsLgoKQUZBSUNTIHdoYXQgd2UgZnVuZGFtZW50YWxseSBuZWVkIHRv
IGtub3cgaXMgdGhlIGluaXRpYWwgdm9sdGFnZSBvZiB0aGUgCnN1cHBseSByZWd1bGF0b3IsIHRv
IGJlIGFibGUgdG8gc2hvcnQtY2lyY3VpdCByZXF1aXJpbmcgdGhlIEkvTyBkb21haW4gCmluIG9y
ZGVyIHRvIHF1ZXJ5IGl0IGZyb20gdGhlIHJlZ3VsYXRvciBpdHNlbGYsIGFuZCBpbnN0ZWFkIGp1
c3QgCmluaXRpYWxpc2UgdGhlIEkvTyBkb21haW4gZGlyZWN0bHkuIEhvd2V2ZXIgdGhhdCB3b3Vs
ZCBzdGlsbCByZXByZXNlbnQgYSAKYnVuY2ggb2YgZmlkZGx5IGV4dHJhIERUIHBhcnNpbmcsIHNv
IGZvciBwcmFjdGljYWwgcHVycG9zZXMgaXQgc2VlbXMgCnJlYXNvbmFibGUgdG8gdGhlbiBzaG9y
dC1jdXQgdGhhdCBpbnRvIGRpcmVjdGx5IGRlc2NyaWJpbmcgdGhlIGluaXRpYWwgCnNldHRpbmcg
b2YgdGhlIEkvTyBkb21haW4gb24gdGhlIG5vZGUgaXRzZWxmLCBzdWNoIHRoYXQgdGhlIGNvbnN1
bWVyIG9mIAp0aGUgYmluZGluZyBjYW4gZWFzaWx5IGhhbmRsZSBpdCBhbGwgaW4gYSBzZWxmLWNv
bnRhaW5lZCBtYW5uZXIuCgpDaGVlcnMsClJvYmluCgo+PiBPbmUgb2YgdGhlIGlzc3VlcyB3ZSdy
ZSBoYXZpbmcgaGVyZSB0b28gaXMgdGhhdCB3ZSBsb3NlIGdyYW51bGFyaXR5LiBUaGVyZQo+PiBh
cmUgbXVsdGlwbGUgZG9tYWlucyBpbnNpZGUgYW4gSU8gZG9tYWluIGRldmljZSBhbmQgaGVyZSB3
ZSBtYWtlIHRoZSB3aG9sZQo+PiBwaW5jdHJsIGRldmljZSBkZXBlbmQgb24gYWxsIGRvbWFpbnMg
ZnJvbSBvbmUgSU8gZG9tYWluIGRldmljZSAodGhlcmUgY2FuIGJlCj4+IG11bHRpcGxlIG9uZXMp
IHdoaWxlIGl0IGlzIGZhY3R1YWxseSAob24gdGhlIEhXIGxldmVsKSBvbmx5IGRlcGVuZGVudCBv
biBvbmUKPj4gZG9tYWluLiBDb25zaWRlcmluZyAoaWYgSSByZW1lbWJlciBjb3JyZWN0bHkpIEhl
aWtvIGhpZ2hseSBzdWdnZXN0ZWQgd2UKPj4gdGhpbmsgYWJvdXQgYWRkaW5nIGNoaWxkIG5vZGVz
IHRvIHRoZSBJTyBkb21haW4gZGV2aWNlcyB0byBoYXZlIGEgRFQgbm9kZQo+PiBwZXIgZG9tYWlu
IGluIHRoZSBJTyBkb21haW4gZGV2aWNlLCBob3cgd291bGQgdGhpcyB3b3JrIHdpdGggdGhlIHN1
Z2dlc3RlZAo+PiBEVCBiaW5kaW5nPwo+IAo+IEkgc3RhcnRlZCBpbXBsZW1lbnRpbmcgdGhhdC4g
SSBoYXZlIG1vdmVkIHRoZSBJTyBkb21haW5zIGludG8gc3Vibm9kZXMKPiBvZiB0aGUgSU8gZG9t
YWluIGNvbnRyb2xsZXIgYW5kIHN0YXJ0ZWQgYWRkaW5nIHBoYW5kbGVzIGZyb20gdGhlIHBpbgo+
IGdyb3VwcyBpbiByazM1NjgtcGluY3RybC5kdHNpIHRvIHRoZSBjb3JyZXNwb25kaW5nIElPIGRv
bWFpbnMuIEFmdGVyIGEKPiBjb3VwbGUgb2YgaG91cnMgSSBoYWQgcGhhbmRsZXMgZm9yIGFyb3Vu
ZCBhIHF1YXJ0ZXIgb2YgdGhlIGV4aXN0aW5nCj4gZ3JvdXBzIG9mIG9ubHkgb25lIFNvQywgc28g
ZG9pbmcgdGhpcyBmb3IgYWxsIFNvQ3Mgd291bGQgcmVhbGx5IGJlIGEKPiBjdW1iZXJzb21lIGpv
Yi4KPiAKPiBJbiB0aGUgZW5kIEkgcmVhbGl6ZWQgdGhpcyBkb2Vzbid0IHNvbHZlIGFueSBwcm9i
bGVtLiBBbHNvIGFkZGluZyB0aGUKPiBwcm9wZXJ0aWVzIEkgc3VnZ2VzdGVkIGRvZXNuJ3QgcHJl
dmVudCB1cyBmcm9tIGFkZGluZyB0aGUgbW9yZSBzcGVjaWZpYwo+IGRlcGVuZGVuY2llcyBmcm9t
IHRoZSBwaW5zIHRvIHRoZWlyIGFjdHVhbCBJTyBkb21haW5zIGxhdGVyLgo+IAo+IFNhc2NoYQo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
