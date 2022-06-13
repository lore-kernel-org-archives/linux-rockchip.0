Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F3A5CCA47D
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 18:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btw47w+4F5l8i9WxlqX1PFr0xJlqxSwOWKKo6m5lEpE=; b=csKrinrPP47Jdy
	8FidsuPqLedNaxyGZ7tp6PbNz4sCAdYWBJ05OnJ4DyOBT76bfHJb/67kE8JoWtFFEUjIPW1zoGmyN
	eNj324Fp14sbU9rYiK3l+C3WoCxLutqBrjW6BR7+8UTU2XN+nhLzPTg88knECjmnrP0uMl8JZDNXw
	v9d5brNCGQJ9dgG+eUHMvIFKomjtZ34r68Gjj4V5pork1SXja1BZxyyKSzrYf5Cf3HoQ6jU5usKCu
	osXB7I34NamNQg1ATohRAQp+kVH0Y/REXLpVzs5acnr5O7kYaCS3BLAc8TX3Bp7StuCI1KTJM64CM
	uXxhZTyhLC/NJW5JNqRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0od5-00589D-Uh; Mon, 13 Jun 2022 18:17:35 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0od2-00587g-QS; Mon, 13 Jun 2022 18:17:34 +0000
Received: by mail-ed1-x536.google.com with SMTP id v25so8326696eda.6;
        Mon, 13 Jun 2022 11:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=04TdR76m0s+utzyAIg4+tjqhY/fa77Y2+5Qo2pJbp30=;
        b=ixWl1Vcyq/rsWbO+AUe8+lAesQZCwvLltHgldPMIDXk+HX3Fron25eAX1GOOayhNju
         QB4Vm0HqM0g863YOq74/eVmhyOIQFU0WHyqQH05WEwvIcAY+mNY/jSIU3eVsqbMabWu9
         oL4x4MzGDWWZtUH4s4sMqLny6+6kdPgW54q9TgYcOhbjpHNBlMtG0nFEHm1pGa4oaBr9
         Q25ZKshkRyBlLm/fNvnNf7IXWwTCm1yb06tfy5c2ZKLmddiKeBlWhOWNykaDyAKYvaLy
         5R9+9TC+eKDyCdpZ7tXT3iQ0B37ix1InWZ23I5NwFyMOV50aXR0Mie7q00IXkfQ0YHa3
         AvZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=04TdR76m0s+utzyAIg4+tjqhY/fa77Y2+5Qo2pJbp30=;
        b=7EA0Pl0OTU0jqW9xGQ0JoSnVx1iHjhl3Mstq7DPTPnhsM9BmPVWCG8+QWgzqrqnfBt
         YN3MLUX1TcbfL4brm+DF+le/Rt2CRsdpNmyo52fwwUlaOAmXMXYM7EYLxcujTW57jOT/
         knKEmjOt8+WrddjBwJ5ujpZzcQeTDF92kw4bLpGJghAEX8U5hB0a8qWJ2ffrocuvKLZO
         2usVz1ATVZRI/SB3Vg2/QOolrlXqgRd86o4qDASf4sgaL2ZZqvimGnj7EUs4eFkW/KUO
         nBVvYzii89y3ZZIt2GamxnseRagbz5wCTRZMyBXOiSE54sSp9etRXQoU/I7QBsd0Pbrs
         RFbg==
X-Gm-Message-State: AOAM532yq89h7PVPpp2IGJFA1QehFXAFtMCMSR9UQTcLE5kuFYRom3DR
	ljtqa8mrz8U74ekik2fPp0M=
X-Google-Smtp-Source: ABdhPJyJfjpFJHiSXK9jnFkPNEEH+e/FB0EhCEk05XpAU9FqMrJeJbdJzkSOyRGzo5XaqodpkvLzug==
X-Received: by 2002:a05:6402:e88:b0:434:d7de:8d0b with SMTP id h8-20020a0564020e8800b00434d7de8d0bmr1151160eda.149.1655144250007;
        Mon, 13 Jun 2022 11:17:30 -0700 (PDT)
Received: from kista.localnet (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id x24-20020aa7dad8000000b0042dd482d0c4sm5393678eds.80.2022.06.13.11.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 11:17:29 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: mchehab@kernel.org, hverkuil@xs4all.nl, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, gregkh@linuxfoundation.org, mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, kernel@collabora.com
Subject: Re: Re: Re: [PATCH v6 16/17] media: uapi: Change data_bit_offset definition
Date: Mon, 13 Jun 2022 20:17:27 +0200
Message-ID: <3180718.44csPzL39Z@kista>
In-Reply-To: <11997092.O9o76ZdvQC@kista>
References: <20220527143134.3360174-1-benjamin.gaignard@collabora.com> <c330e3e1-e10c-5930-2d1d-6260cb8d64b8@collabora.com> <11997092.O9o76ZdvQC@kista>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_111732_897762_052FADC7 
X-CRM114-Status: GOOD (  29.17  )
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

RG5lIG5lZGVsamEsIDEyLiBqdW5paiAyMDIyIG9iIDIyOjQwOjI5IENFU1QgamUgSmVybmVqIMWg
a3JhYmVjIG5hcGlzYWwoYSk6Cj4gRG5lIHNyZWRhLCAwMS4ganVuaWogMjAyMiBvYiAxODozMzoy
MiBDRVNUIGplIEJlbmphbWluIEdhaWduYXJkIG5hcGlzYWwoYSk6Cj4gPiAKPiA+IExlIDAxLzA2
LzIwMjIgw6AgMTg6MTcsIEplcm5laiDFoGtyYWJlYyBhIMOpY3JpdCA6Cj4gPiA+IERuZSBuZWRl
bGphLCAyOS4gbWFqIDIwMjIgb2IgMDg6NDU6NTcgQ0VTVCBqZSBKZXJuZWogxaBrcmFiZWMgbmFw
aXNhbChhKToKPiA+ID4+IERuZSBwZXRlaywgMjcuIG1haiAyMDIyIG9iIDE2OjMxOjMzIENFU1Qg
amUgQmVuamFtaW4gR2FpZ25hcmQgCm5hcGlzYWwoYSk6Cj4gPiA+Pj4gJ0YuNy4zLjYuMSBHZW5l
cmFsIHNsaWNlIHNlZ21lbnQgaGVhZGVyIHN5bnRheCcgc2VjdGlvbiBvZiBIRVZDCj4gPiA+Pj4g
c3BlY2lmaWNhdGlvbiBkZXNjcmliZXMgdGhhdCBhIHNsaWNlIGhlYWRlciBhbHdheXMgZW5kIGFs
aWduZWQgb24KPiA+ID4+PiBieXRlIGJvdW5kYXJ5LCB0aGVyZWZvcmUgd2Ugb25seSBuZWVkIHRv
IHByb3ZpZGUgdGhlIGRhdGEgb2Zmc2V0IGluIAo+IGJ5dGVzLgo+ID4gPj4+Cj4gPiA+Pj4gU2ln
bmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9y
YS5jb20+Cj4gPiA+Pj4gLS0tCj4gPiA+Pj4gICBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkv
bWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3QgfCA0ICsrLS0KPiA+ID4+PiAgIGRyaXZlcnMv
c3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYyAgICAgICAgICB8IDIgKy0K
PiA+ID4+PiAgIGluY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8IDQgKystLQo+ID4gPj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCj4gPiA+Pj4KPiA+ID4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0IApiLwo+
ID4gPj4gRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3RybHMtY29k
ZWMucnN0Cj4gPiA+Pj4gaW5kZXggNDhhODgyNWEwMDFiLi4zNzA3OTU4MWM2NjEgMTAwNjQ0Cj4g
PiA+Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQtY3Ry
bHMtY29kZWMucnN0Cj4gPiA+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21l
ZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0Cj4gPiA+Pj4gQEAgLTMwMDgsOCArMzAwOCw4IEBA
IGVudW0gdjRsMl9tcGVnX3ZpZGVvX2hldmNfc2l6ZV9vZl9sZW5ndGhfZmllbGQgLQo+ID4gPj4+
ICAgICAgICAgLSBgYGJpdF9zaXplYGAKPiA+ID4+PiAgICAgICAgIC0gU2l6ZSAoaW4gYml0cykg
b2YgdGhlIGN1cnJlbnQgc2xpY2UgZGF0YS4KPiA+ID4+PiAgICAgICAqIC0gX191MzIKPiA+ID4+
PiAtICAgICAgLSBgYGRhdGFfYml0X29mZnNldGBgCj4gPiA+Pj4gLSAgICAgIC0gT2Zmc2V0IChp
biBiaXRzKSB0byB0aGUgdmlkZW8gZGF0YSBpbiB0aGUgY3VycmVudCBzbGljZSBkYXRhLgo+ID4g
Pj4+ICsgICAgICAtIGBgZGF0YV9ieXRlX29mZnNldGBgCj4gPiA+Pj4gKyAgICAgIC0gT2Zmc2V0
IChpbiBieXRlcykgdG8gdGhlIHZpZGVvIGRhdGEgaW4gdGhlIGN1cnJlbnQgc2xpY2UgZGF0YS4K
PiA+ID4+PiAgICAgICAqIC0gX191MzIKPiA+ID4+PiAgICAgICAgIC0gYGBudW1fZW50cnlfcG9p
bnRfb2Zmc2V0c2BgCj4gPiA+Pj4gICAgICAgICAtIFNwZWNpZmllcyB0aGUgbnVtYmVyIG9mIGVu
dHJ5IHBvaW50IG9mZnNldCBzeW50YXggZWxlbWVudHMgaW4gCj4gdGhlCj4gPiA+PiBzbGljZSBo
ZWFkZXIuCj4gPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9j
ZWRydXMvY2VkcnVzX2gyNjUuYyBiLwpkcml2ZXJzLwo+ID4gPj4gc3RhZ2luZy9tZWRpYS9zdW54
aS9jZWRydXMvY2VkcnVzX2gyNjUuYwo+ID4gPj4+IGluZGV4IDQxMTYwMTk3NTEyNC4uODM1NDU0
MjM5ZjczIDEwMDY0NAo+ID4gPj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9j
ZWRydXMvY2VkcnVzX2gyNjUuYwo+ID4gPj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9z
dW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYwo+ID4gPj4+IEBAIC00MDUsNyArNDA1LDcgQEAgc3Rh
dGljIHZvaWQgY2VkcnVzX2gyNjVfc2V0dXAoc3RydWN0IGNlZHJ1c19jdHggCj4gKmN0eCwKPiA+
ID4+PiAgIAkvKiBJbml0aWFsaXplIGJpdHN0cmVhbSBhY2Nlc3MuICovCj4gPiA+Pj4gICAJY2Vk
cnVzX3dyaXRlKGRldiwgVkVfREVDX0gyNjVfVFJJR0dFUiwKPiA+ID4+IFZFX0RFQ19IMjY1X1RS
SUdHRVJfSU5JVF9TV0RFQyk7Cj4gPiA+Pj4gICAKPiA+ID4+PiAtCWNlZHJ1c19oMjY1X3NraXBf
Yml0cyhkZXYsIHNsaWNlX3BhcmFtcy0+ZGF0YV9iaXRfb2Zmc2V0KTsKPiA+ID4+PiArCWNlZHJ1
c19oMjY1X3NraXBfYml0cyhkZXYsIHNsaWNlX3BhcmFtcy0+ZGF0YV9ieXRlX29mZnNldCAqIDgp
Owo+ID4gPj4gV2hpbGUgaXQncyB0cnVlIHRoYXQgYWN0dWFsIGRhdGEgc3RhcnRzIG9uIDgtYml0
IGFsaWduZWQgYWRkcmVzcywgCkNlZHJ1cyAKPiBmb3IKPiA+ID4+IHNvbWUgcmVhc29uIG5lZWRz
IG9mZnNldCB3aGljaCBwb2ludHMgYXQgdGhlIGVuZCBvZiB0aGUgaGVhZGVyLCBiZWZvcmUKPiA+
ID4+IGFsaWdubWVudC4gVGhlcmUgaXMgdmVyeSBzaW1wbGUgd2F5IHRvIGRldGVybWluZSB0aGF0
LCBidXQgCnVuZm9ydHVuYXRlbHkKPiA+ID4gdGhpcwo+ID4gPj4gbWVhbnMgcmVhZGluZyBzb3Vy
Y2UgYnVmZmVyLgo+ID4gPj4KPiA+ID4+IEluIHNob3J0LCBhYm92ZSBjb2RlIHdvbid0IHdvcmsu
IEknbGwgcHJvdmlkZSBhIGZpeC4KPiA+ID4gUGxlYXNlIGluY2x1ZGUgZm9sbG93aW5nIGZpeCBo
dHRwOi8vaXguaW8vM1o4eCBvdGhlcndpc2UgQ2VkcnVzIHdpbGwgZmFpbCAKPiB0bwo+ID4gPiBk
ZWNvZGUgc2xpY2UuCj4gCj4gRmx1c3RlciB0ZXN0aW5nIHNob3cgdGhhdCB0aGlzIHBhdGNoIGlz
bid0IGNvbXBsZXRlbHkgZmluZS4gSSBhbHNvIGhhdmUgc29tZSAKPiBvdGhlciBpc3N1ZXMsIHdo
aWNoIG5lZWQgY29udHJvbCB2YWx1ZXMgY29tcGFyaXNvbnMuIEl0IHdvdWxkIGJlIGJlc3QsIGlm
IAp5b3UgCj4gY2FuIHdhaXQgdW50aWwgSSBmaW5pc2ggY29tcGFyaXNvbi4gT2xkLCBoYWNraXNo
IEhFVkMgcGF0Y2hlcyBoYXZlIGhpZ2ggCmZsdXN0ZXIgCj4gc2NvcmUgd2hlcmVhcyBuZXcsIGJh
c2VkIG9uIHN0YWJsZSB1QVBJLCBoYXMgbG93IGFuZCBDUFUgYWxzbyBsb2NrcyB1cC4uLgoKRnVy
dGhlciB0ZXN0aW5nIHNob3dlZCB0aGF0IEkgbWFrZSBhIG1pc3Rha2UgaW4gZmZtcGVnIGNvZGUu
IHVBUEkgYW5kIHN1Z2dlc3RlZCAKY2hhbmdlcyBhcmUgZmluZS4gSXQncyBndGcuCgpTb3JyeSBm
b3IgdGhlIGZhbHNlIGFsYXJtIQogCkJlc3QgcmVnYXJkcywKSmVybmVqCgo+IAo+ID4gPgo+ID4g
PiBPdGhlciB0aGFuIGZpeCBpbiBwcmV2aW91cyBlLW1haWwgYW5kIHRoaXMgb25lLCBjb2RlIGxv
b2tzIGdvb2QgYW5kIEknbGwgCmJlCj4gPiA+IGFibGUgdG8gYWRkIG1pc3NpbmcgZnVuY3Rpb25h
bGl0eSB0byBDZWRydXMgd2l0aG91dCBtdWNoIHRyb3VibGUgaW4gCmZvbGxvdyAKPiB1cAo+ID4g
PiBzZXJpZXMuCj4gPiAKPiA+IFRoYW5rcyBmb3IgdGhlIHBhdGNoIGl0IHdpbGwgYmUgaW4gdmVy
c2lvbiA3Lgo+ID4gCj4gPiBSZWdhcmRzLAo+ID4gQmVuamFtaW4KPiA+IAo+ID4gPgo+ID4gPiBC
ZXN0IHJlZ2FyZHMsCj4gPiA+IEplcm5lago+ID4gPgo+ID4gPj4+ICAgCj4gPiA+Pj4gICAJLyog
Qml0c3RyZWFtIHBhcmFtZXRlcnMuICovCj4gPiA+Pj4gICAKPiA+ID4+PiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmggYi9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+
ID4gPj4+IGluZGV4IDlhYmNhMWE3NWJkNC4uOTM2ZmY2OTM5NjdiIDEwMDY0NAo+ID4gPj4+IC0t
LSBhL2luY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oCj4gPiA+Pj4gKysrIGIvaW5jbHVkZS9tZWRp
YS9oZXZjLWN0cmxzLmgKPiA+ID4+PiBAQCAtMzEyLDcgKzMxMiw3IEBAIHN0cnVjdCB2NGwyX2hl
dmNfcHJlZF93ZWlnaHRfdGFibGUgewo+ID4gPj4+ICAgICogVjRMMl9DVFJMX0ZMQUdfRFlOQU1J
Q19BUlJBWSBmbGFnIG11c3QgYmUgc2V0IHdoZW4gdXNpbmcgaXQuCj4gPiA+Pj4gICAgKgo+ID4g
Pj4+ICAgICogQGJpdF9zaXplOiBzaXplIChpbiBiaXRzKSBvZiB0aGUgY3VycmVudCBzbGljZSBk
YXRhCj4gPiA+Pj4gLSAqIEBkYXRhX2JpdF9vZmZzZXQ6IG9mZnNldCAoaW4gYml0cykgdG8gdGhl
IHZpZGVvIGRhdGEgaW4gdGhlIGN1cnJlbnQKPiA+ID4gc2xpY2UKPiA+ID4+IGRhdGEKPiA+ID4+
PiArICogQGRhdGFfYnl0ZV9vZmZzZXQ6IG9mZnNldCAoaW4gYnl0ZXMpIHRvIHRoZSB2aWRlbyBk
YXRhIGluIHRoZSAKY3VycmVudAo+ID4gPj4gc2xpY2UgZGF0YQo+ID4gPj4+ICAgICogQG51bV9l
bnRyeV9wb2ludF9vZmZzZXRzOiBzcGVjaWZpZXMgdGhlIG51bWJlciBvZiBlbnRyeSBwb2ludCBv
ZmZzZXQKPiA+ID4gc3ludGF4Cj4gPiA+Pj4gICAgKgkJCSAgICAgZWxlbWVudHMgaW4gdGhlIHNs
aWNlIGhlYWRlci4KPiA+ID4+PiAgICAqIEBuYWxfdW5pdF90eXBlOiBzcGVjaWZpZXMgdGhlIGNv
ZGluZyB0eXBlIG9mIHRoZSBzbGljZSAoQiwgUCBvciBJKQo+ID4gPj4+IEBAIC0zNTYsNyArMzU2
LDcgQEAgc3RydWN0IHY0bDJfaGV2Y19wcmVkX3dlaWdodF90YWJsZSB7Cj4gPiA+Pj4gICAgKi8K
PiA+ID4+PiAgIHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19zbGljZV9wYXJhbXMgewo+ID4gPj4+ICAg
CV9fdTMyCWJpdF9zaXplOwo+ID4gPj4+IC0JX191MzIJZGF0YV9iaXRfb2Zmc2V0Owo+ID4gPj4+
ICsJX191MzIJZGF0YV9ieXRlX29mZnNldDsKPiA+ID4+PiAgIAlfX3UzMgludW1fZW50cnlfcG9p
bnRfb2Zmc2V0czsKPiA+ID4+PiAgIAkvKiBJU08vSUVDIDIzMDA4LTIsIElUVS1UIFJlYy4gSC4y
NjU6IE5BTCB1bml0IGhlYWRlciAqLwo+ID4gPj4+ICAgCV9fdTgJbmFsX3VuaXRfdHlwZTsKPiA+
ID4+PiAtLSAKPiA+ID4+PiAyLjMyLjAKPiA+ID4+Pgo+ID4gPj4+Cj4gPiA+Pgo+ID4gPj4KPiA+
ID4KPiA+IAo+IAo+IAo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
