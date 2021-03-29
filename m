Return-Path: <SRS0=3xED=I4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41C04C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Mar 2021 00:15:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CFE536192F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Mar 2021 00:15:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CFE536192F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VIUjbAMv+26F6IJrTGMITDzJS/c/E5YTVRPunOsBliI=; b=LBQCPQUaoSkuML4KGvK76rgbO
	N2cCuMC3PgXRL/GFz28pUBvIFgHqknSwN53T4vOxHDHoP3PEf3LymzaAkgroNQ0mtFsSBY5YzUWzv
	6hwqJKMpJqW6A+SdTBZYlPzvBaDEw/GSKlONR8+mcO+ayctKuKvYXSdnd8Zqa3amYtyzBybf4DkKU
	GkKa26PldCsUNRx4niRD/7LcEImOuI0kAdJbfLraIUxZrhx9Bdn0mpeRjgyMluNz9PrsXLLR4ZKsM
	aoOmeJUm4SYh0WEa/WvUhbMzw+/pnn6L7A9Kk0wge4UOSbLwF8GbqcXaMAlsJupiTei3wlVPV+dGY
	renmyHMkg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR22I-0029JX-DW; Tue, 30 Mar 2021 00:15:10 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQxYG-001FA0-5w; Mon, 29 Mar 2021 19:27:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 577E61F454DE
Message-ID: <3e57b10998f610259d3d9702307ce30b744623a0.camel@collabora.com>
Subject: Re: [PATCH v7 04/13] media: hevc: Add fields and flags for hevc PPS
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net, 
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devel@driverdev.osuosl.org, kernel@collabora.com
Date: Mon, 29 Mar 2021 16:27:31 -0300
In-Reply-To: <20210329065743.11961-5-benjamin.gaignard@collabora.com>
References: <20210329065743.11961-1-benjamin.gaignard@collabora.com>
 <20210329065743.11961-5-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_202752_676201_8F31ADF0 
X-CRM114-Status: GOOD (  14.15  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCAyMDIxLTAzLTI5IGF0IDA4OjU3ICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiBBZGQgZmllbGRzIGFuZCBmbGFncyBhcyB0aGV5IGFyZSBkZWZpbmVkIGluCj4gNy40LjMu
My4xICJHZW5lcmFsIHBpY3R1cmUgcGFyYW1ldGVyIHNldCBSQlNQIHNlbWFudGljcyBvZiB0aGUK
PiBILjI2NSBJVFUgc3BlY2lmaWNhdGlvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBH
YWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBF
emVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+IMKgLi4uL3Vz
ZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJscy1jb2RlYy5yc3TCoMKgwqAgfCAxNCArKysr
KysrKysrKysrKwo+IMKgaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmjCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDQgKysrKwo+IMKgMiBmaWxlcyBj
aGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
dXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdCBiL0RvY3VtZW50YXRp
b24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdAo+IGluZGV4IDE4
OGFlZjhlNDBkMC4uOTIzMTRhZWM2NTVhIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vdXNl
cnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdAo+ICsrKyBiL0RvY3VtZW50
YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdAo+IEBAIC0y
OTY3LDYgKzI5NjcsMTIgQEAgZW51bSB2NGwyX21wZWdfdmlkZW9faGV2Y19zaXplX29mX2xlbmd0
aF9maWVsZCAtCj4gwqDCoMKgwqAgKiAtIF9fdTgKPiDCoMKgwqDCoMKgwqAgLSBgYG51bV9leHRy
YV9zbGljZV9oZWFkZXJfYml0c2BgCj4gwqDCoMKgwqDCoMKgIC0KPiArwqDCoMKgICogLSBfX3U4
Cj4gK8KgwqDCoMKgwqAgLSBgYG51bV9yZWZfaWR4X2wwX2RlZmF1bHRfYWN0aXZlX21pbnVzMWBg
Cj4gK8KgwqDCoMKgwqAgLSBTcGVjaWZpZXMgdGhlIGluZmVycmVkIHZhbHVlIG9mIG51bV9yZWZf
aWR4X2wwX2FjdGl2ZV9taW51czEKPiArwqDCoMKgICogLSBfX3U4Cj4gK8KgwqDCoMKgwqAgLSBg
YG51bV9yZWZfaWR4X2wxX2RlZmF1bHRfYWN0aXZlX21pbnVzMWBgCj4gK8KgwqDCoMKgwqAgLSBT
cGVjaWZpZXMgdGhlIGluZmVycmVkIHZhbHVlIG9mIG51bV9yZWZfaWR4X2wxX2FjdGl2ZV9taW51
czEKPiDCoMKgwqDCoCAqIC0gX19zOAo+IMKgwqDCoMKgwqDCoCAtIGBgaW5pdF9xcF9taW51czI2
YGAKPiDCoMKgwqDCoMKgwqAgLQo+IEBAIC0zMDc3LDYgKzMwODMsMTQgQEAgZW51bSB2NGwyX21w
ZWdfdmlkZW9faGV2Y19zaXplX29mX2xlbmd0aF9maWVsZCAtCj4gwqDCoMKgwqAgKiAtIGBgVjRM
Ml9IRVZDX1BQU19GTEFHX1NMSUNFX1NFR01FTlRfSEVBREVSX0VYVEVOU0lPTl9QUkVTRU5UYGAK
PiDCoMKgwqDCoMKgwqAgLSAweDAwMDQwMDAwCj4gwqDCoMKgwqDCoMKgIC0KPiArwqDCoMKgICog
LSBgYFY0TDJfSEVWQ19QUFNfRkxBR19ERUJMT0NLSU5HX0ZJTFRFUl9DT05UUk9MX1BSRVNFTlRg
YAo+ICvCoMKgwqDCoMKgIC0gMHgwMDA4MDAwMAo+ICvCoMKgwqDCoMKgIC0gU3BlY2lmaWVzIHRo
ZSBwcmVzZW5jZSBvZiBkZWJsb2NraW5nIGZpbHRlciBjb250cm9sIHN5bnRheCBlbGVtZW50cyBp
bgo+ICvCoMKgwqDCoMKgwqDCoCB0aGUgUFBTCj4gK8KgwqDCoCAqIC0gYGBWNEwyX0hFVkNfUFBT
X0ZMQUdfVU5JRk9STV9TUEFDSU5HYGAKPiArwqDCoMKgwqDCoCAtIDB4MDAxMDAwMDAKPiArwqDC
oMKgwqDCoCAtIFNwZWNpZmllcyB0aGF0IHRpbGUgY29sdW1uIGJvdW5kYXJpZXMgYW5kIGxpa2V3
aXNlIHRpbGUgcm93IGJvdW5kYXJpZXMKPiArwqDCoMKgwqDCoMKgwqAgYXJlIGRpc3RyaWJ1dGVk
IHVuaWZvcm1seSBhY3Jvc3MgdGhlIHBpY3R1cmUKPiDCoAo+IMKgLi4gcmF3OjogbGF0ZXgKPiDC
oAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaCBiL2luY2x1ZGUvbWVk
aWEvaGV2Yy1jdHJscy5oCj4gaW5kZXggYjRjYjJlZjAyZjE3Li4wMDNmODE5ZWNiMjYgMTAwNjQ0
Cj4gLS0tIGEvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgKPiArKysgYi9pbmNsdWRlL21lZGlh
L2hldmMtY3RybHMuaAo+IEBAIC0xMDAsMTAgKzEwMCwxNCBAQCBzdHJ1Y3QgdjRsMl9jdHJsX2hl
dmNfc3BzIHsKPiDCoCNkZWZpbmUgVjRMMl9IRVZDX1BQU19GTEFHX1BQU19ESVNBQkxFX0RFQkxP
Q0tJTkdfRklMVEVSwqDCoMKgwqDCoMKgwqAoMVVMTCA8PCAxNikKPiDCoCNkZWZpbmUgVjRMMl9I
RVZDX1BQU19GTEFHX0xJU1RTX01PRElGSUNBVElPTl9QUkVTRU5UwqDCoMKgwqDCoMKgwqDCoMKg
wqAoMVVMTCA8PCAxNykKPiDCoCNkZWZpbmUgVjRMMl9IRVZDX1BQU19GTEFHX1NMSUNFX1NFR01F
TlRfSEVBREVSX0VYVEVOU0lPTl9QUkVTRU5UICgxVUxMIDw8IDE4KQo+ICsjZGVmaW5lIFY0TDJf
SEVWQ19QUFNfRkxBR19ERUJMT0NLSU5HX0ZJTFRFUl9DT05UUk9MX1BSRVNFTlTCoMKgwqAoMVVM
TCA8PCAxOSkKPiArI2RlZmluZSBWNEwyX0hFVkNfUFBTX0ZMQUdfVU5JRk9STV9TUEFDSU5HwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKDFVTEwgPDwgMjApCj4gwqAK
PiDCoHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19wcHMgewo+IMKgwqDCoMKgwqDCoMKgwqAvKiBJU08v
SUVDIDIzMDA4LTIsIElUVS1UIFJlYy4gSC4yNjU6IFBpY3R1cmUgcGFyYW1ldGVyIHNldCAqLwo+
IMKgwqDCoMKgwqDCoMKgwqBfX3U4wqDCoMKgwqBudW1fZXh0cmFfc2xpY2VfaGVhZGVyX2JpdHM7
Cj4gK8KgwqDCoMKgwqDCoMKgX191OMKgwqDCoMKgbnVtX3JlZl9pZHhfbDBfZGVmYXVsdF9hY3Rp
dmVfbWludXMxOwo+ICvCoMKgwqDCoMKgwqDCoF9fdTjCoMKgwqDCoG51bV9yZWZfaWR4X2wxX2Rl
ZmF1bHRfYWN0aXZlX21pbnVzMTsKPiDCoMKgwqDCoMKgwqDCoMKgX19zOMKgwqDCoMKgaW5pdF9x
cF9taW51czI2Owo+IMKgwqDCoMKgwqDCoMKgwqBfX3U4wqDCoMKgwqBkaWZmX2N1X3FwX2RlbHRh
X2RlcHRoOwo+IMKgwqDCoMKgwqDCoMKgwqBfX3M4wqDCoMKgwqBwcHNfY2JfcXBfb2Zmc2V0OwoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
