Return-Path: <SRS0=3Wd+=LX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-20.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D90CEC11F67
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 15:42:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 97EBB61DCB
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 15:42:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 97EBB61DCB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7qzmwEs3PsX4HQskJEG4r2mdLKbyjjjZokJgjoATqYM=; b=WQf3DRUATBr7c6deuT+tcjbeul
	j1hTNVhbV59T4TBRuiAnnOBqlbJzu/F3iOY1hFEKk7luRxn5UcTSbodsI9dgnbJJwlY0fJwv4bSYK
	omQ8O89JHYN1fLNXWmGXcyyjaDct2EGynWH3gyrqBliP1OuzXECJ+sF6rOiqnnkvpd9yYQfZ6P4Qo
	oiGzCyqhD/V86VYpCP4pdYjC8oL0VXtBH8pd2E3HaX4D6/SlqhsaeHTHG17FJWrcwxBZJuGb+oh7O
	tfZyXwVhGiqkDvryVKVAOsuNgczyojf1mma/1CM8a8beCIr/PrWvVhZ+Qzsc19bSXuCf+Ac/z/R1o
	1e3SgPvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyFsa-00BW2P-MZ; Tue, 29 Jun 2021 15:42:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyFsN-00BW0r-Ai; Tue, 29 Jun 2021 15:42:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 932A26D;
 Tue, 29 Jun 2021 08:42:12 -0700 (PDT)
Received: from [10.57.46.146] (unknown [10.57.46.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EA6E03F718;
 Tue, 29 Jun 2021 08:42:10 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: add rock-pi-4 analog audio
To: Adrian Ratiu <adrian.ratiu@collabora.com>, Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, jack@radxa.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Rob Herring <robh+dt@kernel.org>
References: <20210628113033.9145-1-adrian.ratiu@collabora.com>
 <7f806d30-594e-2325-615a-8fee875c83a8@gmail.com>
 <87eeck3e1o.fsf@ryzen9.i-did-not-set--mail-host-address--so-tickle-me>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6a9d976e-22fe-2723-9897-da58b3af456a@arm.com>
Date: Tue, 29 Jun 2021 16:42:05 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <87eeck3e1o.fsf@ryzen9.i-did-not-set--mail-host-address--so-tickle-me>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_084215_532776_CEA9FB49 
X-CRM114-Status: GOOD (  31.33  )
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

T24gMjAyMS0wNi0yOSAxNjowNywgQWRyaWFuIFJhdGl1IHdyb3RlOgo+IEhpIEFsZXgsCj4gCj4g
T24gVHVlLCAyOSBKdW4gMjAyMSwgQWxleCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+IHdyb3Rl
Ogo+PiBIaSBBZHJpYW4sCj4+IEkndmUgc3VibWl0dGVkIHNpbWlsYXIgcGF0Y2ggYWxyZWFkeS4g
SXRzIHBhcnQgb2YgWzFdCj4gCj4gVGhhbmsgeW91IGZvciBwb2ludGluZyBvdXQgeW91ciBwYXRj
aCwgSSB3YXMgbm90IGF3YXJlIG9mIGl0IGFzIGl0IHdhcyAKPiBub3QgbWVyZ2VkIHlldCAoSSB0
ZXN0ZWQgbGF0ZXN0IGxpbnV4LW5leHQpLgo+IAo+IEl0IGlzIGEgZ29vZCBzaWduIHRoYXQgb3Vy
IGNvZGUgaXMgYWxtb3N0IGlkZW50aWNhbCBleGNlcHQgZm9yIHRoZSAKPiBoZWFkcGhvbmUgZGV0
ZWN0IHBpbiB3aGljaCB5b3UgbWVudGlvbi4KPiAKPj4KPj4gVGhlcmUgaXMgbm8gaGVhZHBob25l
IGRldGVjdGlvbiBwaW4gaW4gdGhlIHNjaGVtYXRpY3MsIGJ0dy4KPiAKPiBUaGVyZSBhcmUgdHdv
IHJlYXNvbnMgSSBhZGRlZCBpdDoKPiAKPiAxLiBUaGUgZXM4MzE2IGNvZGVjIGZhaWxlZCB0byBw
cm9iZSgpIGluIG15IHRlc3RpbmcgdW5sZXNzIHRoZSBpcnEgd2FzIAo+IGRlZmluZWQuIFRoYXQg
bWlnaHQgaGF2ZSBiZWVuIGR1ZSB0byBtZSB0ZXN0aW5nIHRoZSBjb2RlYyBkaXJlY3RseSB3aXRo
IAo+IHRoZSBzaW1wbGUgY2FyZCBkcml2ZXIgaW5zdGVhZCBvZiB0aGUgZ3JhcGggZHJpdmVyLgo+
IAo+IFBvaW50IDEgZG9lc24ndCBhcHBlYXIgdG8gYmUgYW4gaXNzdWUgYW55bW9yZSwgdGhlIGNv
ZGVjICsgZ3JhcGggZHJpdmVyIAo+IHByb2JlIGNvcnJlY3RseSBhbmQgYXVkaW8gc3VwcG9zZWRs
eSAoc2VlIGJlbG93KSB3b3JrcyBldmVuIHdpdGhvdXQgdGhlIAo+IGlycS4KPiAKPiAyLiBJIGdv
dCB0aGUgZ3BpbyBiYW5rIDEgcGluIDAgbG9jYXRpb24gZnJvbSB2YXJpb3VzIGhlYWRwaG9uZSBk
ZXRlY3Rpb24gCj4gY29tbWl0cyBpbiB0aGUgdmVuZG9yIHY0LjQga2VybmVsLCBsaWtlIGZvciBl
eGFtcGxlIFsxXS4KPiAKPiBBcmUgeW91IDEwMCUgc3VyZSB0aGVyZSBpcyBubyBocCBkZXRlY3Rp
b24gcGluIHdpcmVkIG9uIHRoZSByb2NrLXBpLTQ/Cj4gRXZlbiBpZiBpdCBtaWdodCBiZSBtaXNz
aW5nIGZyb20gdGhlIHNjaGVtYXRpY3MsIHRoZSB2ZW5kb3IgZHJpdmVyIGNvZGUgCj4gYXBwYXJl
bnRseSBkZWZpbmVzIGFuZCB1c2VzIGl0PwoKRldJVyBhY2NvcmRpbmcgdG8gdGhlIHNjaGVtYXRp
Y3MgaXQgKmlzKiB3aXJlZCB1cCBvbiB0aGUgTW9kZWwgQyBib2FyZCwgCmJ1dCBub3Qgb24gdGhl
IE1vZGVsIEEgb3IgQi4KClJvYmluLgoKPiAgRnJvbSBib290aW5nIHdpdGggdGhlIGlycSBkZWZp
bmVkIEkgZ2V0IHRoZSBmb2xsb3dpbmcgaW4gCj4gL3Byb2MvaW50ZXJydXB0cyBob3dldmVyIEkn
bSBoYXZpbmcgYW4gdW5yZWxhdGVkIGRpZmZpY3VsdHkgdGVzdGluZyAKPiBiZWNhdXNlIHRoZSBh
dWRpbyBjb25uZWN0b3IgbGl0ZXJhbGx5IGJyb2tlIG9mZiB0aGUgYm9hcmQgbGlrZSBpbiBbMl0u
Cj4gOTA6IDHCoCAwwqAgMMKgIDDCoCAwwqAgcm9ja2NoaXBfZ3Bpb19pcnHCoMKgIDAgTGV2ZWzC
oMKgwqDCoCBlczgzMTYKPiAKPiBUZWFtIFJhZHhhIHdhcyB2ZXJ5IG5pY2UgaW4gb2ZmZXJpbmcg
bWUgYSByZXBsYWNlbWVudCBidXQgdW50aWwgdGhhdCAKPiBhcnJpdmVzIEkgY2FuJ3QgdGVzdCB0
aGlzIGFueW1vcmUuCj4gCj4gWzFdIAo+IGh0dHBzOi8vZ2l0aHViLmNvbS9yYWR4YS9rZXJuZWwv
Y29tbWl0L2U5NDVjYWQ1YzNlYzgyZDE3MTc2MDQ2NWQzYzdhODRiYjEwZWQxYjcgCj4gCj4gCj4g
WzJdIGh0dHBzOi8vZm9ydW0ucmFkeGEuY29tL3QvYXVkaW8tamFjay1icm9rZS1vZmYvOTM1Cj4g
Cj4+IFsxXSAKPj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJv
Y2tjaGlwL2NvdmVyLzIwMjEwNjE4MTgxMjU2LjI3OTkyLTEta25hZXJ6Y2hlQGdtYWlsLmNvbS8g
Cj4+Cj4+Cj4+IEJlc3QsCj4+Cj4+IEFsZXgKPj4KPj4gQW0gMjguMDYuMjEgdW0gMTM6MzAgc2No
cmllYiBBZHJpYW4gUmF0aXU6Cj4+PiBUaGlzIGFkZHMgdGhlIG5lY2Vzc2FyeSBwaW5jdHJsIGFu
ZCBub2RlcyB0byBlbmFibGUgdGhlCj4+PiBhbmFsb2cgYXVkaW8gb24gcmszMzk5IHJvY2stcGkt
NCBTQkNzIHVzaW5nIHRoZSBlczgzMTYKPj4+IGNvZGVjIGFuZCB0aGUgYXVkaW8tZ3JhcGgtY2Fy
ZCBkcml2ZXIuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQWRyaWFuIFJhdGl1IDxhZHJpYW4ucmF0
aXVAY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gwqAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2NrLXBpLTQuZHRzacKgwqAgfCAzOCArKysrKysrKysrKysrKysrKysrCj4+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrLXBpLTQuZHRzaSAKPj4+IGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00LmR0c2kKPj4+IGluZGV4
IGIyODg4OGVhOTI2Mi4uNzc3ODFkOTE1MGFjIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00LmR0c2kKPj4+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2stcGktNC5kdHNpCj4+PiBAQCAtMTI4LDYg
KzEyOCwxMiBAQCB2ZGRfbG9nOiB2ZGQtbG9nIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZWd1
bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxNDAwMDAwPjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB2
aW4tc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKPj4+IMKgwqDCoMKgwqAgfTsKPj4+ICsKPj4+ICvC
oMKgwqAgc291bmQgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiYXVkaW8tZ3Jh
cGgtY2FyZCI7Cj4+PiArwqDCoMKgwqDCoMKgwqAgbGFiZWwgPSAicm9ja2NoaXAscmszMzk5IjsK
Pj4+ICvCoMKgwqDCoMKgwqDCoCBkYWlzID0gPCZpMnMwX3AwPjsKPj4+ICvCoMKgwqAgfTsKPj4+
IMKgIH07Cj4+PiDCoCAmY3B1X2wwIHsKPj4+IEBAIC00MjIsNiArNDI4LDI0IEBAICZpMmMxIHsK
Pj4+IMKgwqDCoMKgwqAgaTJjLXNjbC1yaXNpbmctdGltZS1ucyA9IDwzMDA+Owo+Pj4gwqDCoMKg
wqDCoCBpMmMtc2NsLWZhbGxpbmctdGltZS1ucyA9IDwxNT47Cj4+PiDCoMKgwqDCoMKgIHN0YXR1
cyA9ICJva2F5IjsKPj4+ICsKPj4+ICvCoMKgwqAgZXM4MzE2OiBjb2RlY0AxMSB7Cj4+PiArwqDC
oMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJldmVyZXN0LGVzODMxNiI7Cj4+PiArwqDCoMKgwqDC
oMKgwqAgcmVnID0gPDB4MTE+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmY3J1IFND
TEtfSTJTXzhDSF9PVVQ+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIGNsb2NrLW5hbWVzID0gIm1jbGsi
Owo+Pj4gK8KgwqDCoMKgwqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+PiArwqDC
oMKgwqDCoMKgwqAgcGluY3RybC0wID0gPCZocF9kZXRfcGluPjsKPj4+ICvCoMKgwqDCoMKgwqDC
oCBpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvMT47Cj4+PiArwqDCoMKgwqDCoMKgwqAgaW50ZXJy
dXB0cyA9IDxSS19QQTAgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+PiArwqDCoMKgwqDCoMKgwqAg
I3NvdW5kLWRhaS1jZWxscyA9IDwwPjsKPj4+ICsKPj4+ICvCoMKgwqDCoMKgwqDCoCBwb3J0IHsK
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVzODMxNl9wMF8wOiBlbmRwb2ludCB7Cj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlbW90ZS1lbmRwb2ludCA9IDwmaTJzMF9w
MF8wPjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiArwqDCoMKgwqDCoMKgwqAg
fTsKPj4+ICvCoMKgwqAgfTsKPj4+IMKgIH07Cj4+PiDCoCAmaTJjMyB7Cj4+PiBAQCAtNDQxLDYg
KzQ2NSwxNCBAQCAmaTJzMCB7Cj4+PiDCoMKgwqDCoMKgIHJvY2tjaGlwLGNhcHR1cmUtY2hhbm5l
bHMgPSA8Mj47Cj4+PiDCoMKgwqDCoMKgIHJvY2tjaGlwLHBsYXliYWNrLWNoYW5uZWxzID0gPDI+
Owo+Pj4gwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+PiArCj4+PiArwqDCoMKgIGkyczBf
cDA6IHBvcnQgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGkyczBfcDBfMDogZW5kcG9pbnQgewo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGFpLWZvcm1hdCA9ICJpMnMiOwo+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgbWNsay1mcyA9IDwyNTY+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmVtb3RlLWVuZHBvaW50ID0gPCZlczgzMTZfcDBfMD47Cj4+PiArwqDCoMKgwqDCoMKgwqAg
fTsKPj4+ICvCoMKgwqAgfTsKPj4+IMKgIH07Cj4+PiDCoCAmaTJzMSB7Cj4+PiBAQCAtNTU2LDYg
KzU4OCwxMiBAQCB3aWZpX2hvc3Rfd2FrZV9sOiB3aWZpLWhvc3Qtd2FrZS1sIHsKPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJvY2tjaGlwLHBpbnMgPSA8MCBSS19QQTMgUktfRlVOQ19H
UElPICZwY2ZnX3B1bGxfbm9uZT47Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4+IMKgwqDC
oMKgwqAgfTsKPj4+ICsKPj4+ICvCoMKgwqAgZXM4MzE2IHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBo
cF9kZXRfcGluOiBocC1kZXQtcGluIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJvY2tj
aGlwLHBpbnMgPSA8MSBSS19QQTAgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+Owo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIH07Cj4+PiArwqDCoMKgIH07Cj4+PiDCoCB9Owo+Pj4gwqAgJnB3bTIgewo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
