Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 662D3C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 12:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=460FQoV+Bvet4vOjm8VOS4/MUJckYg6Wthi8VyvNxeQ=; b=FSFNtSABBw902k
	kz8OqvogWTBTliQFTY0SYKDPI+028r00HKcLeSdHp1iZtii25wBFLpxrh9Uo0/WxXVRZ0dnGf/5Sz
	wml2I2P+urfFp9E4Sb+oGO2L3MbduuQdUuncO+yxfAFGdlSF4wPPZPoCAjMjkGK7Zfj1CfbZNfqJL
	XwcVMxstRBNifm1zuMerVZL7mQRDXiHJMJcKom+Yr1i/sQ5GVgwlx5ri6/3FGlbgp2Kwj+D4CsNdx
	HLFTE9yVJT+goWfKOiHzk2mGKH+AFY5Mh2A3EZx7N+f5gQfHpVaJKjXrP1jzQRreBaCp4pbeXMumV
	zqc11jgh0yYz7MPT1Bjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRv5o-008TYi-9Y; Wed, 09 Mar 2022 12:07:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRv5X-008TRC-AX; Wed, 09 Mar 2022 12:06:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C0ED1688;
 Wed,  9 Mar 2022 04:06:41 -0800 (PST)
Received: from [10.57.41.254] (unknown [10.57.41.254])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 86B123FA4D;
 Wed,  9 Mar 2022 04:06:38 -0800 (PST)
Message-ID: <8b902216-fd82-fb2c-1849-d613caa0a763@arm.com>
Date: Wed, 9 Mar 2022 12:06:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-GB
To: "elaine.zhang" <zhangqing@rock-chips.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 =?UTF-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>,
 huangtao <huangtao@rock-chips.com>, devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?B?5pON55Ge5p2w?= <algea.cao@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 pgwipeout <pgwipeout@gmail.com>, hjc <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, =?UTF-8?B?5p2o5Yev?=
 <Kever.yang@rock-chips.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel <kernel@pengutronix.de>, Dmitry Osipenko <digetx@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
References: <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
 <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
 <20220225131154.GE19585@pengutronix.de>
 <20220228141921.GN19585@pengutronix.de>
 <5184ecf2-8734-3121-cbbc-5dcfcf0d02f8@arm.com>
 <20220302112528.GV19585@pengutronix.de>
 <20220304142235.GL22780@pengutronix.de>
 <9ea0134e-aac7-60e1-5c58-ae31b4e1c422@collabora.com>
 <035f2dfd-bf35-abca-32bf-2be85cc88f8a@rock-chips.com>
 <20220309094139198367142@rock-chips.com>
 <20220309081810.GH405@pengutronix.de>
 <206d079d-5591-984d-cccc-dc5baa3db249@rock-chips.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <206d079d-5591-984d-cccc-dc5baa3db249@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_040643_483699_503F3034 
X-CRM114-Status: GOOD (  25.88  )
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

T24gMjAyMi0wMy0wOSAwODozNywgZWxhaW5lLnpoYW5nIHdyb3RlOgo+IGhpLAo+IAo+IAo+IOWc
qCAyMDIyLzMvOSDkuIvljYg0OjE4LCBTYXNjaGEgSGF1ZXIg5YaZ6YGTOgo+PiBIaSBFbGFpbmUs
Cj4+Cj4+IE9uIFdlZCwgTWFyIDA5LCAyMDIyIGF0IDA5OjQxOjM5QU0gKzA4MDAsIHpoYW5ncWlu
Z0Byb2NrLWNoaXBzLmNvbSB3cm90ZToKPj4+IMKgwqDCoCBoae+8jGFsbO+8mgo+Pj4gwqDCoMKg
IExldCBtZSBleHBsYWluIHRoZSBjbG9jayBkZXBlbmRlbmN577yaCj4+PiDCoMKgwqAgRnJvbSB0
aGUgY2xvY2sgdHJlZSwgcGNsa192bzAgYW5kIGhjbGtfdm8wIGFyZSBjb21wbGV0ZWx5IAo+Pj4g
aW5kZXBlbmRlbnQKPj4+IMKgwqDCoCBjbG9ja3Mgd2l0aCBkaWZmZXJlbnQgcGFyZW50IGNsb2Nr
cyBhbmQgZGlmZmVyZW50IGNsb2NrIAo+Pj4gZnJlcXVlbmNpZXPjgIIKPj4+IMKgwqDCoCBCdXQg
dGhlIG5pdcKgcGF0aMKgaXMgOgo+Pj4gwqDCoMKgIHBjbGtfdm8gaXMgZGVwZW5kZW50IG9uIGhj
bGtfdm8sIGFuZCB0aGUgcGNsa192byBuaXUgZ29lcyAKPj4+IHRocm91Z2jCoCBoY2xrX3ZvCj4+
PiDCoMKgwqAgbml1Lgo+PiBUaGFua3MsIHRoaXMgaXMgdGhlIGluZm9ybWF0aW9uIHdlIGFyZSBs
b29raW5nIGZvci4gV2hhdCBpcyAiTklVIiBidHc/Cj4+IEkgdGhpbmsgdGhpcyBpcyBldmVuIGRv
Y3VtZW50ZWQgaW4gdGhlIFJlZmVyZW5jZSBNYW51YWwuIFdpdGggdGhlIHJpZ2h0Cj4+IHBvaW50
ZXIgSSBqdXN0IGZvdW5kOgo+IAo+IFRoZSBOSVUgKG5hdGl2ZSBpbnRlcmZhY2UgdW5pdCkKPiAK
PiBZb3UgY2FuIHNlZSAyLjguNihOSVUgQ2xvY2sgZ2F0aW5nIHJlbGlhbmNlKSBpbiBUUk0uCj4g
Cj4+Cj4+PiBBIHBhcnQgb2Ygbml1IGNsb2NrcyBoYXZlIGEgZGVwZW5kZW5jZSBvbiBhbm90aGVy
IG5pdSBjbG9jayBpbiBvcmRlciB0bwo+Pj4gc2hhcmluZyB0aGUgaW50ZXJuYWwgYnVzLiBXaGVu
IHRoZXNlIGNsb2NrcyBhcmUgaW4gdXNlLCBhbm90aGVyIG5pdQo+Pj4gY2xvY2sgbXVzdCBiZSBv
cGVuZWQsIGFuZCBjYW5ub3QgYmUgZ2F0ZWQuwqAgVGhlc2UgY2xvY2tzIGFuZCB0aGUgc3BlY2lh
bAo+Pj4gY2xvY2sgb24gd2hpY2ggdGhleSBhcmUgcmVsaWVkIGFyZSBhcyBmb2xsb3dpbmc6Cj4+
Pgo+Pj4gQ2xvY2tzIHdoaWNoIGhhdmUgZGVwZW5kZW5jecKgwqDCoMKgIFRoZSBjbG9jayB3aGlj
aCBjYW4gbm90IGJlIGdhdGVkCj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4gLi4uCj4+PiBwY2xrX3ZvX25pdSwg
aGNsa192b19zX25pdcKgwqDCoMKgwqDCoCBoY2xrX3ZvX25pdQo+Pj4gLi4uCj4gCj4gWWVhaCwg
dGhlIGRlcGVuZGVuY3kgaXMgdGhpcy4KPiAKPiBJdCBtYXkgYmUgbm90IHZlcnkgZGV0YWlsZWQs
IEkgZG9uJ3QgaGF2ZSBwZXJtaXNzaW9uIHRvIHB1Ymxpc2ggZGV0YWlsZWQgCj4gTklVIGRlc2ln
bnMuCj4gCj4+Cj4+Cj4+PiDCoMKgwqAgVGhlIGNsb2NrIHRyZWUgYW5kIE5JVSBidXMgcGF0aHMg
YXJlIGRlc2lnbmVkIGluZGVwZW5kZW50bHkKPj4+IMKgwqDCoCBTbyB0aGVyZSBhcmUgdGhyZWUg
c29sdXRpb25zIHRvIHRoaXMgcHJvYmxlbToKPj4+IMKgwqDCoCAxLiBEVFMgYWRkcyBhIHJlZmVy
ZW5jZSB0byBIY2xrIHdoaWxlIHJlZmVyZW5jaW5nIFBjbGsuCj4+PiDCoMKgwqAgMiwgVGhlIGRl
cGVuZGVudCBjbG9jayBpcyBhbHdheXMgb24sIHN1Y2ggYXMgSENMS19WTzAswqBidXQgdGhpcyAK
Pj4+IGlzIG5vdAo+Pj4gwqDCoMKgIGZyaWVuZGx5IGZvciB0aGUgc3lzdGVtIHBvd2VyLgo+Pj4g
wqDCoMKgIDMuIENyZWF0ZSBhIG5vbi1jbG9jay10cmVlIHJlZmVyZW5jZS7CoENsay1saW5rLCBm
b3IgZXhhbXBsZSwgd2UgCj4+PiBoYXZlIGFuCj4+PiDCoMKgwqAgaW1wbGVtZW50YXRpb24gaW4g
b3VyIGludGVybmFsIGJyYW5jaCwgYnV0IFVwc3RyZWFtIGlzIG5vdCBzdXJlIAo+Pj4gaG93IHRv
Cj4+PiDCoMKgwqAgcHVzaCBpdC4KPj4gSSB0aG91Z2h0IGFib3V0IHNvbWV0aGluZyBzaW1pbGFy
LiBUaGF0IHdvdWxkIGhlbHAgdXMgaGVyZSBhbmQgb24gaS5NWAo+PiB3ZSBoYXZlIGEgc2ltaWxh
ciBzaXR1YXRpb246IFdlIGhhdmUgb25lIGJpdCB0aGF0IHN3aXRjaGVzIG11bHRpcGxlCj4+IGNs
b2Nrcy4gVGhhdCBhcyB3ZWxsIGNhbm5vdCBiZSBkZXNpZ25lZCBwcm9wZXJseSBpbiB0aGUgY2xv
Y2sgZnJhbWV3b3JrCj4+IGN1cnJlbnRseSwgYnV0IGNvdWxkIGJlIG1vZGVsbGVkIHdpdGggYSBj
b25jZXB0IG9mIGxpbmtlZCBjbG9ja3MuCj4+Cj4+IERvaW5nIHRoaXMgc291bmRzIGxpa2UgcXVp
dGUgYSBiaXQgb2Ygd29yayBhbmQgZGlzY3Vzc2lvbiB0aG91Z2gsIEkKPj4gZG9uJ3QgcmVhbGx5
IGxpa2UgaGF2aW5nIHRoaXMgYXMgYSBkZXBlbmRlbmN5IHRvIG1haW5saW5lIHRoZSBWT1AyCj4+
IGRyaXZlci4gSSB2b3RlIGZvciAxLiBpbiB0aGF0IGNhc2UsIHdlIGNvdWxkIHN0aWxsIGlnbm9y
ZSB0aGUgaGNsayBpbgo+PiBkdHMgbGF0ZXIgd2hlbiB3ZSBoYXZlIGxpbmtlZCBjbG9ja3MuCgpP
SyBzbyBqdXN0IHRvIGNsYXJpZnksIHRoZSBpc3N1ZSBpcyBub3QganVzdCB0aGF0IHRoZSB1cHN0
cmVhbSBjbG9jayAKZHJpdmVyIGRvZXNuJ3QgY3VycmVudGx5IG1vZGVsIHRoZSBOSVUgY2xvY2tz
LCBidXQgdGhhdCBldmVuIGlmIGl0IGRpZCwgCml0IHdvdWxkIHN0aWxsIG5lZWQgdG8gaW1wbGVt
ZW50IHNvbWUgbmV3IG11bHRpLXBhcmVudCBjbG9jayB0eXBlIHRvIAptYW5hZ2UgdGhlIGludGVy
bmFsIGRlcGVuZGVuY3k/IFRoYXQncyBmYWlyIGVub3VnaCAtIEkgZG8gdGhpbmsgdGhhdCAKaW1w
cm92aW5nIHRoZSBjbG9jayBkcml2ZXIgd291bGQgYmUgdGhlIGJlc3QgbG9uZy10ZXJtIGdvYWws
IGJ1dCBmb3IgdGhlIApzY29wZSBvZiB0aGlzIHNlcmllcywgaGF2aW5nIGFuIGludGVyaW0gd29y
a2Fyb3VuZCBkb2VzIHNlZW0gbW9yZSAKcmVhc29uYWJsZSBub3cgdGhhdCB3ZSB1bmRlcnN0YW5k
ICp3aHkqIHdlIG5lZWQgaXQuCgpUaGFua3MsClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
