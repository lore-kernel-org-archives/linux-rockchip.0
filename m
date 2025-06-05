Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D09B3C5B555
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 01:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMcRHKLwv2R66Io70B/nBMxRYSC2ugpehlGyl7kl/Uw=; b=I25zQINK5CZxwW
	8eNPpf9Z9ZFJhF+5fkHld+6VIZSLnhiqhDvUQ43jy0aug6NzlCKy8B5aO1C8McgRnUt3k7/iV/xN3
	ew/Il4YdmA6fWkuGt3GCrlhyLQ6N6xlk5P9rLYUh4oN0Mpcwp1lPHW3smdB6MWQPm64o4zu+856MJ
	Iwhum4UiuksEtmbE51fyWBZEFI23zXWP+/OLC563fRUQt5cS+b1NOhslU49IjVATa5Nvn3ucDsKBu
	MDuHtmhIeGyY0ZLbk/JHGpPRDzqCLZFBj83cOcx2TkqTkX1nHclMw4wOmjFVUrQtRQ0kXKvV6Maeq
	7Uce5QwepEr231hT+kug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMzsg-0000000EYB7-0Eo6;
	Thu, 05 Jun 2025 01:58:58 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMzrs-0000000EY3l-3BXf;
	Thu, 05 Jun 2025 01:58:10 +0000
X-UUID: 7f6d354041b011f0b29709d653e92f7d-20250605
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:fd0b5c91-f519-4ec9-892f-9d599c009841,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:fdcaecf91da6615da2a4ee37ccdfa291,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|52,EDM:
	-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 7f6d354041b011f0b29709d653e92f7d-20250605
Received: from node4.com.cn [(10.44.16.170)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 1383227863; Thu, 05 Jun 2025 09:57:55 +0800
Received: from node4.com.cn (localhost [127.0.0.1])
	by node4.com.cn (NSMail) with SMTP id 729B216001A00;
	Thu,  5 Jun 2025 09:57:55 +0800 (CST)
X-ns-mid: postfix-6840F9A3-383599263
Received: from [10.42.13.56] (unknown [10.42.13.56])
	by node4.com.cn (NSMail) with ESMTPA id 08FBB16001CC7;
	Thu,  5 Jun 2025 01:57:54 +0000 (UTC)
Message-ID: <3f668462-ac5f-49fa-bd9d-140d32fc9627@kylinos.cn>
Date: Thu, 5 Jun 2025 09:57:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ASOC: rochchip: Simplify the condition logic in
 rockchip_sai_xfer_stop
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1749006565.git.xiaopei01@kylinos.cn>
 <81c7955216f5cc7565a396e50e5474ec8f6e3017.1749006565.git.xiaopei01@kylinos.cn>
 <5104592.0VBMTVartN@workhorse>
From: Pei Xiao <xiaopei01@kylinos.cn>
In-Reply-To: <5104592.0VBMTVartN@workhorse>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_185809_101253_EAA5CADD 
X-CRM114-Status: GOOD (  18.47  )
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

CuWcqCAyMDI1LzYvNSAwMToyMywgTmljb2xhcyBGcmF0dGFyb2xpIOWGmemBkzoKPiBPbiBXZWRu
ZXNkYXksIDQgSnVuZSAyMDI1IDA1OjEzOjI5IENlbnRyYWwgRXVyb3BlYW4gU3VtbWVyIFRpbWUg
UGVpIFhpYW8gd3JvdGU6Cj4+IGNvY2NpIHdhcm5pbmc6Cj4+IC4vc291bmQvc29jL3JvY2tjaGlw
L3JvY2tjaGlwX3NhaS5jOjM4Nzo4LTEwOgo+PiAJV0FSTklORzogcG9zc2libGUgY29uZGl0aW9u
IHdpdGggbm8gZWZmZWN0IChpZiA9PSBlbHNlKQo+Pgo+PiBTaW1wbGlmeSB0aGUgY29uZGl0aW9u
IGxvZ2ljIGluIHJvY2tjaGlwX3NhaV94ZmVyX3N0b3AoKSBieSByZW1vdmluZyB0aGUKPj4gcmVk
dW5kYW50IFNORFJWX1BDTV9TVFJFQU1fUExBWUJBQ0sgYnJhbmNoLiBUaGUgbW9kaWZpZWQgbG9n
aWMgbm93Ogo+PiAxLiBGb3Igc3RyZWFtIDwgMDogaGFuZGxlcyBib3RoIHBsYXliYWNrIGFuZCBj
YXB0dXJlCj4+IDIuIEZvciBhbGwgb3RoZXIgY2FzZXMgKGJvdGggUExBWUJBQ0sgYW5kIENBUFRV
UkUpOgo+PiAgICBzZXRzIHBsYXliYWNrID0gdHJ1ZSBhbmQgY2FwdHVyZSA9IGZhbHNlCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IFBlaSBYaWFvIDx4aWFvcGVpMDFAa3lsaW5vcy5jbj4KPj4gLS0tCj4+
ICBzb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfc2FpLmMgfCAzIC0tLQo+PiAgMSBmaWxlIGNo
YW5nZWQsIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9zb3VuZC9zb2Mvcm9ja2No
aXAvcm9ja2NoaXBfc2FpLmMgYi9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfc2FpLmMKPj4g
aW5kZXggNjAyZjFkZGZhZDAwLi43OWIwNDc3MGRhMWMgMTAwNjQ0Cj4+IC0tLSBhL3NvdW5kL3Nv
Yy9yb2NrY2hpcC9yb2NrY2hpcF9zYWkuYwo+PiArKysgYi9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9j
a2NoaXBfc2FpLmMKPj4gQEAgLTM4NCw5ICszODQsNiBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9z
YWlfeGZlcl9zdG9wKHN0cnVjdCBya19zYWlfZGV2ICpzYWksIGludCBzdHJlYW0pCj4+ICAJaWYg
KHN0cmVhbSA8IDApIHsKPj4gIAkJcGxheWJhY2sgPSB0cnVlOwo+PiAgCQljYXB0dXJlID0gdHJ1
ZTsKPj4gLQl9IGVsc2UgaWYgKHN0cmVhbSA9PSBTTkRSVl9QQ01fU1RSRUFNX1BMQVlCQUNLKSB7
Cj4+IC0JCXBsYXliYWNrID0gdHJ1ZTsKPj4gLQkJY2FwdHVyZSA9IGZhbHNlOwo+PiAgCX0gZWxz
ZSB7Cj4+ICAJCXBsYXliYWNrID0gdHJ1ZTsKPj4gIAkJY2FwdHVyZSA9IGZhbHNlOwo+Pgo+IFlv
dSBjYW4gcHJvYmFibHkgZ2V0IHJpZCBvZiB0aGUgbG9jYWxzIHBsYXliYWNrIGFuZCBjYXB0dXJl
IGFsdG9nZXRoZXI6Cj4KPiAgICAgc3RhdGljIHZvaWQgcm9ja2NoaXBfc2FpX3hmZXJfc3RvcChz
dHJ1Y3Qgcmtfc2FpX2RldiAqc2FpLCBpbnQgc3RyZWFtKQo+ICAgICB7Cj4gICAgICAgICB1bnNp
Z25lZCBpbnQgbXNrLCB2YWwsIGNscjsKPgo+ICAgICAgICAgbXNrID0gU0FJX1hGRVJfVFhTX01B
U0s7Cj4gICAgICAgICB2YWwgPSBTQUlfWEZFUl9UWFNfRElTOwo+ICAgICAgICAgY2xyID0gU0FJ
X0NMUl9UWEM7Cj4gICAgICAgICAKPiAgICAgICAgIGlmIChzdHJlYW0gPCAwKSB7Cj4gICAgICAg
ICAgICAgbXNrIHw9IFNBSV9YRkVSX1JYU19NQVNLOwo+ICAgICAgICAgICAgIHZhbCB8PSBTQUlf
WEZFUl9SWFNfRElTOwo+ICAgICAgICAgICAgIGNsciB8PSBTQUlfQ0xSX1JYQzsKPiAgICAgICAg
IH0KPgo+ICAgICAgICAgcmVnbWFwX3VwZGF0ZV9iaXRzKHNhaS0+cmVnbWFwLCBTQUlfWEZFUiwg
bXNrLCB2YWwpOwo+ICAgICAgICAgcm9ja2NoaXBfc2FpX3BvbGxfc3RyZWFtX2lkbGUoc2FpLCB0
cnVlLCBzdHJlYW0gPCAwKTsKPgo+ICAgICAgICAgcm9ja2NoaXBfc2FpX2NsZWFyKHNhaSwgY2xy
KTsKPiAgICAgfQo+Cj4gYnV0IHRoaXMgaW4gZ2VuZXJhbCBtYWtlcyBtZSBzdXNwaWNpb3VzIG9m
IHRoZSBpbnRlbnQgb2YgdGhlIGNvZGUgaW4KPiB0aGUgZmlyc3QgcGxhY2UuIFBsYXliYWNrIGFs
d2F5cyBiZWluZyB0cnVlIGFuZCBjYXB0dXJlIG9ubHkgYmVpbmcKPiB0cnVlIGlmIHBsYXliYWNr
IGlzIGFsc28gdHJ1ZSBzZWVtcyBvZGQuIENoZWNraW5nIHRoZSBjYWxsc2l0ZXMgb2YKClllcyxp
dCdzIHZlcnkgb2RkIHRvIG1lIHRvby5TbyBJIHNlbmQgdGhpcyBwYXRjaCB0byBhc2sgZm9yIHlv
dXIgYWR2aWNlLgoKPiB0aGlzIGZ1bmN0aW9uIGNvbmZpcm1zIG15IHN1c3BpY2lvbnMgdGhhdCB3
aGlsZSB0aGlzIGZpeGVzIHRoZSBjb2NjaQo+IHdhcm5pbmcsIGl0IGp1c3QgbWVhbnMgdGhlIGNv
ZGUgaXMgbm93IGludGVudGlvbmFsbHkgYnJva2VuLgo+Cj4gVGhpcyBoZXJlIG1heSBiZSBjbG9z
ZXIgdG8gdGhlIG9yaWdpbmFsIGludGVudDoKPgo+ICAgICBzdGF0aWMgdm9pZCByb2NrY2hpcF9z
YWlfeGZlcl9zdG9wKHN0cnVjdCBya19zYWlfZGV2ICpzYWksIGludCBzdHJlYW0pCj4gICAgIHsK
PiAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgbXNrID0gMCwgdmFsID0gMCwgY2xyID0gMDsKPiAg
ICAgICAgICAgICBib29sIGNhcHR1cmUgPSBzdHJlYW0gPT0gU05EUlZfUENNX1NUUkVBTV9DQVBU
VVJFIHx8IHN0cmVhbSA8IDA7Cj4gICAgICAgICAgICAgLyogY291bGQgYmUgPD0gMCBidXQgd2Ug
ZG9uJ3Qgd2FudCB0byBkZXBlbmQgb24gZW51bSB2YWx1ZXMgKi8KPiAgICAgICAgICAgICBib29s
IHBsYXliYWNrID0gc3RyZWFtID09IFNORFJWX1BDTV9TVFJFQU1fUExBWUJBQ0sgfHwgc3RyZWFt
IDwgMDsKCgpib29sIGludmFsaWQgPcKgIHN0cmVhbSA8IDA7wqAKCmJvb2wgY2FwdHVyZSA9wqAg
c3RyZWFtID09IFNORFJWX1BDTV9TVFJFQU1fQ0FQVFVSRSB8fCBpbnZhbGlkO8KgCgpib29sIHBs
YXliYWNrID0gc3RyZWFtID09IFNORFJWX1BDTV9TVFJFQU1fUExBWUJBQ0sgfHwgaW52YWxpZDsK
CldvdWxkIHRoaXMgbW9kaWZpY2F0aW9uIGJlIGFjY2VwdGFibGU/wqAKCkl0IGNvdWxkIHNob3J0
ZW4gZWFjaCBsaW5lIHNpbmNlIHRoZSBzdHJlYW0gdmFsdWUgb25seSBuZWVkcyB0byBiZSBldmFs
dWF0ZWQgb25jZS4KCj4gICAgICAgICAgICAgaWYgKHBsYXliYWNrKSB7Cj4gICAgICAgICAgICAg
ICAgICAgICBtc2sgfD0gU0FJX1hGRVJfVFhTX01BU0s7Cj4gICAgICAgICAgICAgICAgICAgICB2
YWwgfD0gU0FJX1hGRVJfVFhTX0RJUzsKPiAgICAgICAgICAgICAgICAgICAgIGNsciB8PSBTQUlf
Q0xSX1RYQzsKPiAgICAgICAgICAgICB9Cj4KPiAgICAgICAgICAgICBpZiAoY2FwdHVyZSkgewo+
ICAgICAgICAgICAgICAgICAgICAgbXNrIHw9IFNBSV9YRkVSX1JYU19NQVNLOwo+ICAgICAgICAg
ICAgICAgICAgICAgdmFsIHw9IFNBSV9YRkVSX1JYU19ESVM7Cj4gICAgICAgICAgICAgICAgICAg
ICBjbHIgfD0gU0FJX0NMUl9SWEM7Cj4gICAgICAgICAgICAgfQo+Cj4gICAgICAgICAgICAgcmVn
bWFwX3VwZGF0ZV9iaXRzKHNhaS0+cmVnbWFwLCBTQUlfWEZFUiwgbXNrLCB2YWwpOwo+ICAgICAg
ICAgICAgIHJvY2tjaGlwX3NhaV9wb2xsX3N0cmVhbV9pZGxlKHNhaSwgcGxheWJhY2ssIGNhcHR1
cmUpOwo+Cj4gICAgICAgICAgICAgcm9ja2NoaXBfc2FpX2NsZWFyKHNhaSwgY2xyKTsKPiAgICAg
fQo+Cj4KPiBQbGVhc2UgbGV0IG1lIGtub3cgd2hldGhlciB0aGlzIGxvb2tzIHJpZ2h0IHRvIHlv
dS4KCnRoYW5rc++8gQoKUGVpLgoKPiBLaW5kIHJlZ2FyZHMsCj4gTmljb2xhcyBGcmF0dGFyb2xp
Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
