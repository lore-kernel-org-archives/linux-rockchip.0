Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B256BCD6E54
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 09:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEB+yOjLdE4yLR1P7RsOC2S4KKQCYfoEPstvoaMwTGU=; b=a2JrzeIj9uOldA
	oV8kYGp1jT2EO4aqkLgBqRyBRyxDOioTAvYDNc38VHylls8rGug1LQLTFIt2sJXhi19/TqJBx8xnG
	pWTMs9bJmxImoj2O76q1iSdqzpaeviNstStemFYI/72EavpKfoSz0x8wVelJP16M515vCRpwd/UeW
	OC1dtIm+SwcVsY0qYDh1FgSmPd8+d8JFjBM/3EoczgwjFPzmfUiVeFu26GDufKCG95hAvmOZXXyvu
	W7/HjrQFlQG1w7DQp3x5XhFTMjEJrJ5TEZp9fuNZB4eM+3ruFYvEhFRVRckf0JRL3Mgvmp9G6wTlV
	R6VvWcQtElLcGhrGbHqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqVZo-00FLYK-2L;
	Wed, 11 Oct 2023 09:32:24 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqVZl-00FLWc-0K;
	Wed, 11 Oct 2023 09:32:22 +0000
Received: from [IPV6:2a01:e0a:120:3210:b4ac:2b31:7a66:8708] (unknown [IPv6:2a01:e0a:120:3210:b4ac:2b31:7a66:8708])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 675CB66072F1;
	Wed, 11 Oct 2023 10:32:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697016735;
	bh=5tBLJiqzOELHvhOEyitYQraoe9MQBCrZ0Va/cYbiJGQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=l7HDeNnyFwiGa8tcEAfmk+SXlkOW9tCJRHAXfwJVRumJnaxWMFC8o4quE1/PV7Cr4
	 PIFAOeJxFE0T7QLRoHdfX/+XqrwL3qmvZNS+veOns4PrCVd4NHZWiK8Qcc4Dw/hw1H
	 C2JBixXqLmarSHTg5PdMEbhSjcCrlmZeUFFEacCefxEl7NEgWfV6w+LmTRmKtMwfTL
	 Q8HspQmkOPgzJZoerILZ+m2mlB4sM3KltcOeZqinhuSoE4xLxuor4Pcz5/YroqkgQq
	 QIu/QdzKLyfG9MsdoP+max2m1xHJLZRApA9Ay6GFxpDarzTo78klgKRRPs6DsFOn2q
	 Jjq4OV2rglTpw==
Message-ID: <954315b8-3e5c-4583-a904-d20fbd21aa3f@collabora.com>
Date: Wed, 11 Oct 2023 11:32:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 11/54] media: videobuf2: Access vb2_queue bufs array
 through helper functions
Content-Language: en-US
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231003080704.43911-1-benjamin.gaignard@collabora.com>
 <20231003080704.43911-12-benjamin.gaignard@collabora.com>
 <bd0ba3d3-444a-4288-910f-4b8a84b90750@xs4all.nl>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <bd0ba3d3-444a-4288-910f-4b8a84b90750@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_023221_350515_3FBE1AE6 
X-CRM114-Status: GOOD (  13.47  )
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

CkxlIDExLzEwLzIwMjMgw6AgMTA6NDQsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDAz
LzEwLzIwMjMgMTA6MDYsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBUaGlzIHBhdGNoIGFk
ZHMgMiBoZWxwZXJzIGZ1bmN0aW9ucyB0byBhZGQgYW5kIHJlbW92ZSB2YjIgYnVmZmVycwo+PiBm
cm9tIGEgcXVldWUuIFdpdGggdGhlc2UgMiBhbmQgdmIyX2dldF9idWZmZXIoKSwgYnVmcyBmaWVs
ZCBvZgo+PiBzdHJ1Y3QgdmIyX3F1ZXVlIGJlY29tZXMgbGlrZSBhIHByaXZhdGUgbWVtYmVyIG9m
IHRoZSBzdHJ1Y3R1cmUuCj4+Cj4+IEFmdGVyIGVhY2ggY2FsbCB0byB2YjJfZ2V0X2J1ZmZlcigp
IHdlIG5lZWQgdG8gYmUgc3VyZSB0aGF0IHdlIGdldAo+PiBhIHZhbGlkIHBvaW50ZXIgc28gY2hl
Y2sgdGhlIHJldHVybiB2YWx1ZSBvZiBhbGwgb2YgdGhlbS4KPiBUaGlzIG5lZWRzIHRvIGJlIGV4
dGVuZGVkOiBjaGVja2luZyB0aGUgcmV0dXJuZWQgcG9pbnRlciBpcyBhIHByZXBhcmF0aW9uCj4g
Zm9yIHdoZW4gYnVmZmVycyBjYW4gYmUgZGVsZXRlZC4gQXMgaXQgaXMgcmlnaHQgbm93LCBjaGVj
a2luZyBmb3IgYQo+IE5VTEwgcG9pbnRlciBpc24ndCBuZWVkZWQuCj4KPiBJIHdvbmRlciBpZiBp
dCBpc24ndCBiZXR0ZXIgdG8gZHJvcCB0aG9zZSBjaGVja3MgYW5kIGluc3RlYWQgYXBwbHkgdGhl
bQo+IGF0IHRoZSB0YWlsIGVuZCBvZiB0aGlzIHNlcmllcyB3aGVuIHRoZSBhY3R1YWwgd29yayBv
biBkZWxldGluZyBidWZmZXJzCj4gc3RhcnRzIChiZWZvcmUgcGF0Y2ggNDksIEkgdGhpbmspLgoK
SSB0aGluayB0aGF0IGNoZWNraW5nIHZiMl9nZXRfYnVmZmVyKCkgcmV0dXJuIHZhbHVlIHdoaWxl
IHJlbW92aW5nIGRpcmVjdApjYWxsIHRvIHF1ZXVlIGJ1ZmZlcnMgYXJyYXkgZG9lc24ndCBodXJ0
IGhlcmUuCkl0IGlzIGFsc28gbmVlZGVkIHRvIGRvIHRoYXQgYmVmb3JlICJtZWRpYTogdmlkZW9i
dWYyOiBBZGQgaGVscGVyIHRvIGdldCBxdWV1ZSBudW1iZXIgb2YgYnVmZmVycyIgcGF0Y2guCgpS
ZWdhcmRzLApCZW5qYW1pbgoKPgo+IFJlZ2FyZHMsCj4KPiAJSGFucwo+Cj4+IFNpZ25lZC1vZmYt
Ynk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+
PiAtLS0KPj4gICAuLi4vbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jICAg
fCAxNTEgKysrKysrKysrKysrKy0tLS0tCj4+ICAgLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIv
dmlkZW9idWYyLXY0bDIuYyAgIHwgIDUxICsrKystLQo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTQ2
IGluc2VydGlvbnMoKyksIDU2IGRlbGV0aW9ucygtKQo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
