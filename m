Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A24ACD4F24
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 14:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGkJzjsW3YY2/+oNpslsiLBmU32Xze9MsYbMPbp1EWc=; b=4U67NDOuAyOMB5
	LaUEYIlAXg8+0Lynj1PbLFQHUzkVrye06cqWgC9Dy2U71sLw4EYrF8/a4vOP+JyKJWAEDUmb87HvZ
	k2awv3tqPLoxjIPe4FgqyIUWtEhhP587Vs9OEEFOXqOfprBK3f2li/EgPmefDDEdM6VXNz2mKZC3L
	L2plTfjSWcbY0T/NzCiUApWLP/P0S24FrWOJDQfUpD8dadrwzaq3W8CxuTIAq8cefRbLVTWM1UzyL
	BdurdzTM47ymvSMrPJe9sSCes1a1DW4Cx3sw5FzPFbPeNFYOU87us/mHFxDh6b7fMIp9qwCZf5MlO
	/JSuFQeXpXzYAT/9GYig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMnsZ-0000000GzZr-4BtT;
	Tue, 12 May 2026 14:14:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMnsU-0000000GzYV-33Ge
	for linux-rockchip@lists.infradead.org;
	Tue, 12 May 2026 14:14:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wMnsJ-0003VA-2A; Tue, 12 May 2026 16:14:19 +0200
Message-ID: <2138b7ee-641f-4727-bcaa-f16dc9982a90@pengutronix.de>
Date: Tue, 12 May 2026 16:14:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 06/29] media: rockchip: rga: fix too small buffer size
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 sebastian.reichel@collabora.com
References: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
 <20260428-spu-rga3-v5-6-eb7f5d019d86@pengutronix.de>
 <7cf0950e51e4917a0b4d565f71b1e8f2a41e4bbe.camel@ndufresne.ca>
Content-Language: en-US
From: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <7cf0950e51e4917a0b4d565f71b1e8f2a41e4bbe.camel@ndufresne.ca>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_071430_765985_DA862926 
X-CRM114-Status: GOOD (  18.06  )
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

SGkgTmljb2xhcywKCk9uIDUvOC8yNiAxMToxMSBQTSwgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToK
PiBMZSBtYXJkaSAyOCBhdnJpbCAyMDI2IMOgIDExOjAwICswMjAwLCBTdmVuIFDDvHNjaGVsIGEg
w6ljcml0wqA6Cj4+IEZpeCB0aGUgY29tbWFuZCBidWZmZXIgc2l6ZSBiZWluZyBvbmx5IGEgcXVh
cnRlciBvZiB0aGUgYWN0dWFsIHNpemUuCj4+IFRoZSBSR0FfQ01EQlVGX1NJWkUgbWFjcm8gd2Fz
IHBvdGVudGlhbGx5IGludGVuZGVkIHRvIHNwZWNpZnkgdGhlIGxlbmd0aAo+PiBvZiB0aGUgY21k
YnVmIHUzMiBhcnJheSBwb2ludGVyLiBCdXQgYXMgaXQncyB1c2VkIHRvIHNwZWNpZnkgdGhlIHNp
emUgb2YKPj4gdGhlIGFsbG9jYXRpb24sIHdoaWNoIGlzIGNvdW50ZWQgaW4gYnl0ZXMuIFRoZXJl
Zm9yZSBhZGp1c3QgdGhlIG1hY3JvCj4+IHNpemUgdG8gYnl0ZXMgYXMgaXQgYmV0dGVyIG1hdGNo
ZXMgdGhlIHZhcmlhYmxlIG5hbWUgYW5kIGFkanVzdCBpdCdzCj4+IHVzZXJzIGFjY29yZGluZ2x5
Lgo+Pgo+PiBBcyB0aGUgY29tbWFuZCBidWZmZXIgaXMgcmVsYXRpdmVseSBzbWFsbCwgaXQgcHJv
YmFibHkgZGlkbid0IGNhdXNlZAo+PiBhbiBpc3N1ZSBkdWUgdG8gYmVpbmcgc21hbGxlciB0aGFu
IGEgc2luZ2xlIHBhZ2UuCj4+Cj4+IEZpeGVzOiBmN2U3YjQ4ZTZkNzkgKCJbbWVkaWFdIHJvY2tj
aGlwL3JnYTogdjRsMiBtMm0gc3VwcG9ydCIpCj4+IFNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8c2No
ZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Cj4gUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVm
cmVzbmUgIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cj4KPj4gLS0tCj4+ICDCoGRy
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jIHwgMiArLQo+PiAgwqBk
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuaCB8IDIgKy0KPj4gIMKg
MiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuYyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCj4+IGluZGV4IDQz
ZWQ3NDJhMTY0OTIuLmQxNjE4YmIyNDc1MDEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS1ody5jCj4+IEBAIC00MTQsNyArNDE0LDcgQEAgc3RhdGlj
IHZvaWQgcmdhX2NtZF9zZXQoc3RydWN0IHJnYV9jdHggKmN0eCwKPj4gIMKgewo+PiAgwqAJc3Ry
dWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7Cj4+ICAgCj4+IC0JbWVtc2V0KHJnYS0+
Y21kYnVmX3ZpcnQsIDAsIFJHQV9DTURCVUZfU0laRSAqIDQpOwo+PiArCW1lbXNldChyZ2EtPmNt
ZGJ1Zl92aXJ0LCAwLCBSR0FfQ01EQlVGX1NJWkUpOwo+IFNvIHdlIGhhZCBhIGJ1ZmZlciBvdmVy
cnVuID8KCiBGcm9tIG15IHBvaW50IG9mIHZpZXcsIHllcyBbMV06CgogwqAgwqAgLyogQ3JlYXRl
IENNRCBidWZmZXIgKi8KIMKgIMKgIHJnYS0+Y21kYnVmX3ZpcnQgPSBkbWFfYWxsb2NfYXR0cnMo
cmdhLT5kZXYsIFJHQV9DTURCVUZfU0laRSwKIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgJnJnYS0+Y21kYnVmX3BoeSwgR0ZQX0tFUk5FTCwKIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgRE1BX0FUVFJfV1JJVEVfQ09NQklORSk7CgoKR2l2ZW4gdGhhdCAweDIw
ICogNCBpcyBzbWFsbGVyIHRoYW4gYSBwYWdlLCBpdCBwcm9iYWJseSBkaWRuJ3QgY2F1c2VkIGFu
IAppc3N1ZSBhcyB3ZSBkaWRuJ3Qgd3JpdGUgb3V0IG9mIHRoZSBvbmUgcGFnZSBhbGxvY2F0ZWQu
CgpCdHcuOiBJJ3ZlIG5vdGljZWQgaXQgd2hpbGUgcmVhZGluZyBhIGJpdCBvdmVyIHRoZSBjb21t
ZW50cyBmcm9tIApzYXNoaWtvLmRldiBbMl0uIEknbGwgYWxzbyBhZGQgdGhpcyBsaW5rIGZvciBj
bGFyaXR5IHRvIHRoZSBjb21tZW50IGluIApteSBuZXh0IHNlcmllcyAoc2VlbXMgdG8gYmUgdGhl
IGNvbW1vbiB3YXkgb2YgcmVmZXJyaW5nIHRvIHNhc2hpa28uZGV2KS4KClNpbmNlcmVseQogwqAg
wqAgU3ZlbgoKClsxXSAKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2Nr
Y2hpcC9yZ2EvcmdhLmM/aWQ9NTA4OTdjOTU1OTAyYzkzYWU3MWMzODY5OGFiYjkxMDUyNWViZGM4
OSNuODgwCgpbMl0gCmh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDMyNS1zcHUt
cmdhMy12NC0wLWU5MGVjMWM2MTM1NCU0MHBlbmd1dHJvbml4LmRlP3BhcnQ9MTAKCj4KPiBOaWNv
bGFzCj4KPj4gICAKPj4gIMKgCXJnYV9jbWRfc2V0X3NyY19hZGRyKGN0eCwgc3JjLT5kbWFfZGVz
Y19wYSk7Cj4+ICDCoAkvKgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9yZ2EvcmdhLWh3LmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3Jn
YS9yZ2EtaHcuaAo+PiBpbmRleCBjYzZiZDdmNWIwMzAwLi4yYjg1MzdhNWZkMGQ3IDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuaAo+PiAr
KysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtaHcuaAo+PiBAQCAt
Niw3ICs2LDcgQEAKPj4gIMKgI2lmbmRlZiBfX1JHQV9IV19IX18KPj4gIMKgI2RlZmluZSBfX1JH
QV9IV19IX18KPj4gICAKPj4gLSNkZWZpbmUgUkdBX0NNREJVRl9TSVpFIDB4MjAKPj4gKyNkZWZp
bmUgUkdBX0NNREJVRl9TSVpFIDB4ODAKPj4gICAKPj4gIMKgLyogSGFyZHdhcmUgbGltaXRzICov
Cj4+ICDCoCNkZWZpbmUgTUFYX1dJRFRIIDgxOTIKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
