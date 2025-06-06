Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6E4FC5B543
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jun 2025 03:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oD8aaO9y+uChtxg00kgnj99lZDpMYoHuKe1efrnhuno=; b=jtlNNkEy06LP+M
	PL647W+drCvOSgG4M08oup8q3gvhBKWY2qXlAMPgjIcYntcmgIIT9Zm75pwANSZqR0jwbNFAZHv4A
	dNnLDjOv2QhWFO+DU299Ulr0L/03ppxzrg4E2N5AWuJ7l5zMw+BVtqH7GtzLeufXdsv4UaBFlXSA/
	A4k/1JP8WOcM4Ca1aAERqv1XTF6mCEie6FjeuKetLZzMtk1dErB8B7dMLCQQnYZuge42cTFu+X/31
	41BK9v7wtAKOvxaqHL+fW/NF4UlT5Hpaoar9BT+sG74+ArfbJKWwHpejLbUSiOA8zQZE+hQnWna0J
	aRmmqS0+3MKsxtq1CeLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNNjw-0000000H252-2fK4;
	Fri, 06 Jun 2025 03:27:32 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNNjt-0000000H24S-30pY;
	Fri, 06 Jun 2025 03:27:31 +0000
X-UUID: 24be5cc4428611f0b29709d653e92f7d-20250606
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:b5740708-e9d2-4d9f-87c8-2456abc1d479,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:6493067,CLOUDID:bf5a24c28619cba9b3ca4c7f565fe913,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:nil,Content:0|52,EDM:
	-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 24be5cc4428611f0b29709d653e92f7d-20250606
Received: from node4.com.cn [(10.44.16.170)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA)
	with ESMTP id 163200506; Fri, 06 Jun 2025 11:27:15 +0800
Received: from node4.com.cn (localhost [127.0.0.1])
	by node4.com.cn (NSMail) with SMTP id 93A3416001A01;
	Fri,  6 Jun 2025 11:27:15 +0800 (CST)
X-ns-mid: postfix-68426013-513704641
Received: from [10.42.13.56] (unknown [10.42.13.56])
	by node4.com.cn (NSMail) with ESMTPA id 00CC516001CC7;
	Fri,  6 Jun 2025 03:27:13 +0000 (UTC)
Message-ID: <3f589ddf-e421-494f-85e5-1adebd19d03a@kylinos.cn>
Date: Fri, 6 Jun 2025 11:27:13 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ASOC: rockchip: Use helper function
 devm_clk_get_enabled()
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1749006565.git.xiaopei01@kylinos.cn>
 <3b3d8f60e553af09a51b501b8ff5406fa5e898dd.1749006565.git.xiaopei01@kylinos.cn>
 <24654754.ouqheUzb2q@workhorse>
From: Pei Xiao <xiaopei01@kylinos.cn>
In-Reply-To: <24654754.ouqheUzb2q@workhorse>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_202730_062511_936835BE 
X-CRM114-Status: GOOD (  14.29  )
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

CuWcqCAyMDI1LzYvNSAwMTo0MiwgTmljb2xhcyBGcmF0dGFyb2xpIOWGmemBkzoKPiBPbiBXZWRu
ZXNkYXksIDQgSnVuZSAyMDI1IDA1OjEzOjMwIENlbnRyYWwgRXVyb3BlYW4gU3VtbWVyIFRpbWUg
UGVpIFhpYW8gd3JvdGU6Cj4+IFNpbmNlIGNvbW1pdCA3ZWY5NjUxZTk3OTIgKCJjbGs6IFByb3Zp
ZGUgbmV3IGRldm1fY2xrIGhlbHBlcnMgZm9yIHByZXBhcmVkCj4+IGFuZCBlbmFibGVkIGNsb2Nr
cyIpLCBkZXZtX2Nsa19nZXQoKSBhbmQgY2xrX3ByZXBhcmVfZW5hYmxlKCkgY2FuIG5vdyBiZQo+
PiByZXBsYWNlZCBieSBkZXZtX2Nsa19nZXRfZW5hYmxlZCgpIHdoZW4gZHJpdmVyIGVuYWJsZXMg
dGhlIGNsb2NrcyBmb3IgdGhlCj4+IHdob2xlIGxpZmV0aW1lIG9mIHRoZSBkZXZpY2UuIE1vcmVv
dmVyLCBpdCBpcyBubyBsb25nZXIgbmVjZXNzYXJ5IHRvCj4+IHVucHJlcGFyZSBhbmQgZGlzYWJs
ZSB0aGUgY2xvY2tzIGV4cGxpY2l0bHkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFBlaSBYaWFvIDx4
aWFvcGVpMDFAa3lsaW5vcy5jbj4KPj4gLS0tCj4+ICBzb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2No
aXBfc2FpLmMgfCA4ICstLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDcgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9j
a2NoaXBfc2FpLmMgYi9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBfc2FpLmMKPj4gaW5kZXgg
NzliMDQ3NzBkYTFjLi4yZWM2NzU3MDg2ODEgMTAwNjQ0Cj4+IC0tLSBhL3NvdW5kL3NvYy9yb2Nr
Y2hpcC9yb2NrY2hpcF9zYWkuYwo+PiArKysgYi9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2NoaXBf
c2FpLmMKPj4gQEAgLTE0NDgsMTYgKzE0NDgsMTIgQEAgc3RhdGljIGludCByb2NrY2hpcF9zYWlf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4gIAkJCQkgICAgICJGYWlsZWQg
dG8gZ2V0IG1jbGtcbiIpOwo+PiAgCX0KPj4gIAo+PiAtCXNhaS0+aGNsayA9IGRldm1fY2xrX2dl
dCgmcGRldi0+ZGV2LCAiaGNsayIpOwo+PiArCXNhaS0+aGNsayA9IGRldm1fY2xrX2dldF9lbmFi
bGVkKCZwZGV2LT5kZXYsICJoY2xrIik7Cj4+ICAJaWYgKElTX0VSUihzYWktPmhjbGspKSB7Cj4+
ICAJCXJldHVybiBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIoc2FpLT5oY2xrKSwK
Pj4gIAkJCQkgICAgICJGYWlsZWQgdG8gZ2V0IGhjbGtcbiIpOwo+PiAgCX0KPj4gIAo+PiAtCXJl
dCA9IGNsa19wcmVwYXJlX2VuYWJsZShzYWktPmhjbGspOwo+PiAtCWlmIChyZXQpCj4+IC0JCXJl
dHVybiBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIHJldCwgIkZhaWxlZCB0byBlbmFibGUgaGNs
a1xuIik7Cj4+IC0KPj4gIAlyZWdtYXBfcmVhZChzYWktPnJlZ21hcCwgU0FJX1ZFUlNJT04sICZz
YWktPnZlcnNpb24pOwo+PiAgCj4+ICAJcmV0ID0gcm9ja2NoaXBfc2FpX2luaXRfZGFpKHNhaSwg
cmVzLCAmZGFpKTsKPj4gQEAgLTE1MTIsOCArMTUwOCw2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBf
c2FpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICAJaWYgKHBtX3J1bnRp
bWVfcHV0KCZwZGV2LT5kZXYpKQo+PiAgCQlyb2NrY2hpcF9zYWlfcnVudGltZV9zdXNwZW5kKCZw
ZGV2LT5kZXYpOwo+PiAgZXJyX2Rpc2FibGVfaGNsazoKPj4gLQljbGtfZGlzYWJsZV91bnByZXBh
cmUoc2FpLT5oY2xrKTsKPj4gLQo+PiAgCXJldHVybiByZXQ7Cj4+ICB9Cj4+ICAKPj4KPiBQbGVh
c2UgZ2V0IHJpZCBvZiB0aGUgZXJyX2Rpc2FibGVfaGNsayBsYWJlbCwgYW5kIGNoYW5nZSB0aGUK
Pgo+ICAgICBnb3RvIGVycl9kaXNhYmxlX2hjbGs7Cj4KPiBpbiB0aGUgcmVzdW1lIGZhaWx1cmUg
Y29uZGl0aW9uIHRvIGEgCj4KPiAgICAgcmV0dXJuIHJldDsKTWF5IEkgYXNrLCBjb3VsZCB3ZSB1
c2UgdGhlwqBkZXZfZXJyX3Byb2JlwqBmdW5jdGlvbiBpbnN0ZWFkPwoKcmV0dXJuIGRldl9lcnJf
cHJvYmUoJnBkZXYtPmRldiwgcmV0LCAiRmFpbGVkIHRvIGluaXRpYWxpemUgREFJXG4iKTsKCgpA
QCAtMTQ0MSwyOCArMTQ0MSwyMiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3NhaV9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIkZhaWxlZCB0byBnZXQg
bWNsa1xuIik7CsKgwqDCoMKgwqDCoMKgIH0KwqAKLcKgwqDCoMKgwqDCoCBzYWktPmhjbGsgPSBk
ZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgImhjbGsiKTsKK8KgwqDCoMKgwqDCoCBzYWktPmhjbGsg
PSBkZXZtX2Nsa19nZXRfZW5hYmxlZCgmcGRldi0+ZGV2LCAiaGNsayIpOwrCoMKgwqDCoMKgwqDC
oCBpZiAoSVNfRVJSKHNhaS0+aGNsaykpIHsKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldHVybiBkZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIFBUUl9FUlIoc2FpLT5oY2xrKSwKwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICJGYWlsZWQgdG8gZ2V0IGhjbGtcbiIpOwrCoMKgwqDCoMKgwqDCoCB9CsKg
Ci3CoMKgwqDCoMKgwqAgcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHNhaS0+aGNsayk7Ci3CoMKg
wqDCoMKgwqAgaWYgKHJldCkKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGRl
dl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgcmV0LCAiRmFpbGVkIHRvIGVuYWJsZSBoY2xrXG4iKTsK
LQrCoMKgwqDCoMKgwqDCoCByZWdtYXBfcmVhZChzYWktPnJlZ21hcCwgU0FJX1ZFUlNJT04sICZz
YWktPnZlcnNpb24pOwrCoArCoMKgwqDCoMKgwqDCoCByZXQgPSByb2NrY2hpcF9zYWlfaW5pdF9k
YWkoc2FpLCByZXMsICZkYWkpOwrCoMKgwqDCoMKgwqDCoCBpZiAocmV0KSB7Ci3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGRldl9lcnIoJnBkZXYtPmRldiwgIkZhaWxlZCB0byBpbml0aWFs
aXplIERBSTogJWRcbiIsIHJldCk7Ci3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8g
ZXJyX2Rpc2FibGVfaGNsazsKK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGRl
dl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgcmV0LCAiRmFpbGVkIHRvIGluaXRpYWxpemUgREFJXG4i
KTsKwqDCoMKgwqDCoMKgwqAgfQrCoArCoMKgwqDCoMKgwqDCoCByZXQgPSByb2NrY2hpcF9zYWlf
cGFyc2VfcGF0aHMoc2FpLCBub2RlKTsKwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkgewotwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKCZwZGV2LT5kZXYsICJGYWlsZWQgdG8gcGFy
c2UgcGF0aHM6ICVkXG4iLCByZXQpOwotwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3Rv
IGVycl9kaXNhYmxlX2hjbGs7CivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBk
ZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIHJldCwgIkZhaWxlZCB0byBwYXJzZSBwYXRoc1xuIik7
CsKgwqDCoMKgwqDCoMKgIH0KwqAKwqDCoMKgwqDCoMKgwqAgLyoKQEAgLTE0NzUsOCArMTQ2OSw3
IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfc2FpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCsKgwqDCoMKgwqDCoMKgIHBtX3J1bnRpbWVfZ2V0X25vcmVzdW1lKCZwZGV2LT5kZXYp
OwrCoMKgwqDCoMKgwqDCoCByZXQgPSByb2NrY2hpcF9zYWlfcnVudGltZV9yZXN1bWUoJnBkZXYt
PmRldik7CsKgwqDCoMKgwqDCoMKgIGlmIChyZXQpIHsKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZGV2X2VycigmcGRldi0+ZGV2LCAiRmFpbGVkIHRvIHJlc3VtZSBkZXZpY2U6ICVwZVxu
IiwgRVJSX1BUUihyZXQpKTsKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBlcnJf
ZGlzYWJsZV9oY2xrOworwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZGV2X2Vy
cl9wcm9iZSgmcGRldi0+ZGV2LCByZXQsICJGYWlsZWQgdG8gcmVzdW1lIGRldmljZVxuIik7CsKg
wqDCoMKgwqDCoMKgIH0KwqAKwqDCoMKgwqDCoMKgwqAgcmV0ID0gZGV2bV9zbmRfZG1hZW5naW5l
X3BjbV9yZWdpc3RlcigmcGRldi0+ZGV2LCBOVUxMLCAwKTsKQEAgLTE1MDQsOCArMTQ5Nyw2IEBA
IHN0YXRpYyBpbnQgcm9ja2NoaXBfc2FpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCsKgwqDCoMKgwqDCoMKgIC8qIElmIHdlJ3JlICFDT05GSUdfUE0sIHdlIGdldCAtRU5PU1lT
IGFuZCBkaXNhYmxlIG1hbnVhbGx5ICovCsKgwqDCoMKgwqDCoMKgIGlmIChwbV9ydW50aW1lX3B1
dCgmcGRldi0+ZGV2KSkKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJvY2tjaGlwX3Nh
aV9ydW50aW1lX3N1c3BlbmQoJnBkZXYtPmRldik7Ci1lcnJfZGlzYWJsZV9oY2xrOgotwqDCoMKg
wqDCoMKgIGNsa19kaXNhYmxlX3VucHJlcGFyZShzYWktPmhjbGspOwrCoArCoMKgwqDCoMKgwqDC
oCByZXR1cm4gcmV0OwrCoH0KCnRoYW5rcyEKClBlaS4KCj4gT3RoZXIgdGhhbiB0aGF0LCBwYXRj
aCB0ZXN0ZWQgdG8gYmUgd29ya2luZyBmaW5lLgo+Cj4gS2luZCByZWdhcmRzLAo+IE5pY29sYXMg
RnJhdHRhcm9saQo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
