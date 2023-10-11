Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03D9ECD6E53
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 09:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOcH25mdnU2gWX8vRCr5BD6/fLV8c1l6fB4hpYhrDMo=; b=TxsezGQ2vUDraf
	vqvpWF/MZyyX4tPbyss4dzmc96TU/VtpDh5j9QSLgY1HxH2+26KNAM0WCeHuvfpHtXmQHgE/FyrAB
	7GkVSYRDHr3RgkiP4I6ylZcidlU37HgABLF6L7cTfST/YoOJLOF/Q1Pasivyc/la7bPwi0qTXYMcf
	9P7PtuuEryupTw/ClA++ZKMApmyPrAyLRPxI+sfrFxC+66fitduhlCectmFEQYzodH1Ia/wmxmEUf
	Mvj9cVsGh949iHQd4ueY/QPu1qw+RQvE7t9e6FrdTWQWCW+efXOKohogWbBvZTpU6SAYTi8JtHWTU
	wk/R/q0pc+BBWSWZT2vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqVeE-00FMB4-2N;
	Wed, 11 Oct 2023 09:36:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqVe8-00FM94-1N;
	Wed, 11 Oct 2023 09:36:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C4E3E61B74;
	Wed, 11 Oct 2023 09:36:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21E86C433CD;
	Wed, 11 Oct 2023 09:36:47 +0000 (UTC)
Message-ID: <07237b8b-ecd2-4717-8eda-101e52edf60c@xs4all.nl>
Date: Wed, 11 Oct 2023 11:36:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 11/54] media: videobuf2: Access vb2_queue bufs array
 through helper functions
Content-Language: en-US, nl
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
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
 <954315b8-3e5c-4583-a904-d20fbd21aa3f@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <954315b8-3e5c-4583-a904-d20fbd21aa3f@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_023652_507680_88137937 
X-CRM114-Status: GOOD (  15.23  )
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

T24gMTEvMTAvMjAyMyAxMTozMiwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMTEv
MTAvMjAyMyDDoCAxMDo0NCwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6Cj4+IE9uIDAzLzEwLzIw
MjMgMTA6MDYsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4gVGhpcyBwYXRjaCBhZGRzIDIg
aGVscGVycyBmdW5jdGlvbnMgdG8gYWRkIGFuZCByZW1vdmUgdmIyIGJ1ZmZlcnMKPj4+IGZyb20g
YSBxdWV1ZS4gV2l0aCB0aGVzZSAyIGFuZCB2YjJfZ2V0X2J1ZmZlcigpLCBidWZzIGZpZWxkIG9m
Cj4+PiBzdHJ1Y3QgdmIyX3F1ZXVlIGJlY29tZXMgbGlrZSBhIHByaXZhdGUgbWVtYmVyIG9mIHRo
ZSBzdHJ1Y3R1cmUuCj4+Pgo+Pj4gQWZ0ZXIgZWFjaCBjYWxsIHRvIHZiMl9nZXRfYnVmZmVyKCkg
d2UgbmVlZCB0byBiZSBzdXJlIHRoYXQgd2UgZ2V0Cj4+PiBhIHZhbGlkIHBvaW50ZXIgc28gY2hl
Y2sgdGhlIHJldHVybiB2YWx1ZSBvZiBhbGwgb2YgdGhlbS4KPj4gVGhpcyBuZWVkcyB0byBiZSBl
eHRlbmRlZDogY2hlY2tpbmcgdGhlIHJldHVybmVkIHBvaW50ZXIgaXMgYSBwcmVwYXJhdGlvbgo+
PiBmb3Igd2hlbiBidWZmZXJzIGNhbiBiZSBkZWxldGVkLiBBcyBpdCBpcyByaWdodCBub3csIGNo
ZWNraW5nIGZvciBhCj4+IE5VTEwgcG9pbnRlciBpc24ndCBuZWVkZWQuCj4+Cj4+IEkgd29uZGVy
IGlmIGl0IGlzbid0IGJldHRlciB0byBkcm9wIHRob3NlIGNoZWNrcyBhbmQgaW5zdGVhZCBhcHBs
eSB0aGVtCj4+IGF0IHRoZSB0YWlsIGVuZCBvZiB0aGlzIHNlcmllcyB3aGVuIHRoZSBhY3R1YWwg
d29yayBvbiBkZWxldGluZyBidWZmZXJzCj4+IHN0YXJ0cyAoYmVmb3JlIHBhdGNoIDQ5LCBJIHRo
aW5rKS4KPiAKPiBJIHRoaW5rIHRoYXQgY2hlY2tpbmcgdmIyX2dldF9idWZmZXIoKSByZXR1cm4g
dmFsdWUgd2hpbGUgcmVtb3ZpbmcgZGlyZWN0Cj4gY2FsbCB0byBxdWV1ZSBidWZmZXJzIGFycmF5
IGRvZXNuJ3QgaHVydCBoZXJlLgo+IEl0IGlzIGFsc28gbmVlZGVkIHRvIGRvIHRoYXQgYmVmb3Jl
ICJtZWRpYTogdmlkZW9idWYyOiBBZGQgaGVscGVyIHRvIGdldCBxdWV1ZSBudW1iZXIgb2YgYnVm
ZmVycyIgcGF0Y2guCgpJZiB3ZSBjb252ZXJ0IHRoZSBkcml2ZXJzIGZpcnN0LCB0aGVuIHRoZXJl
IGlzIChJIHRoaW5rKSBubyBuZWVkIHRvCnNwbGl0IHRoaXMgcGF0Y2ggaW4gdHdvIHBhcnRzLCBz
aW5jZSB0aGVuIHRoaXMgcGF0Y2ggaXMgcGFydCBvZiBhIG11Y2gKc2hvcnRlciBzZXJpZXMgYW5k
IGl0IGlzIHN1ZmZpY2llbnQgdG8ganVzdCBtZW50aW9uIGluIHRoZSBjb21taXQgbG9nCnRoYXQg
dGhlIHBvaW50ZXIgY2hlY2tzIHByZXBhcmUgZm9yIGRlbGV0aW5nIGJ1ZmZlcnMuCgpSZWdhcmRz
LAoKCUhhbnMKCj4gCj4gUmVnYXJkcywKPiBCZW5qYW1pbgo+IAo+Pgo+PiBSZWdhcmRzLAo+Pgo+
PiDCoMKgwqDCoEhhbnMKPj4KPj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxi
ZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+Pj4gLS0tCj4+PiDCoCAuLi4vbWVkaWEv
Y29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jwqDCoCB8IDE1MSArKysrKysrKysrKysr
LS0tLS0KPj4+IMKgIC4uLi9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi12NGwyLmPC
oMKgIHzCoCA1MSArKysrLS0KPj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgMTQ2IGluc2VydGlvbnMo
KyksIDU2IGRlbGV0aW9ucygtKQo+PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
