Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E2FDCD68F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 07:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFP/Smw4pUdJIzLmDWu6D+K59xWl4MmOmwY/2M/9bKE=; b=sNLon/lU5itn+b
	kuWz8Gg1aaYKYw1ngkYf2094BK7sMi8/uSVQDcGuVZcLPJ4hj3yLwbB4nwDH1YtVirZd8ul36x7QK
	7mpE81kHo8wNG/WHjrUWbbeS0j6svdnzTkSxl3cgRqK2ts+BWpGbxIuw93veTGbadpPUn9Po4AXKe
	pY3o/krZ/2hLsCYNIjxiOTcFMbrDjmZrSVIJLuhZFoYfGenubiTAHPMjaUWRduodn4eQUgCxY8Psy
	onjMPir4kYvpQLO+pv7Vp5p8ApVXrATWOTlqMnaObydal9uKL6BqLErUCaXRvHVX2kRBitI8AyryD
	y20csLNelhP/6/WNy4ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qq73t-00CgsJ-1r;
	Tue, 10 Oct 2023 07:21:49 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qq73q-00CgrZ-1i
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Oct 2023 07:21:47 +0000
Received: from ideasonboard.com (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 596E33D6;
	Tue, 10 Oct 2023 09:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1696922500;
	bh=1cyXPcG1hvJgf3dDnfetJVDrY9Kmi4/216HZOH9llbQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V4G8z3ahN+sUfwQQnWk54kGwqiF6j48AChfW3Mztl8anv9KIc2XADnSDc19LS0nBk
	 5yIjz6tc7isOGU3C/6fpksSyZJeYImZtE1tSsQxaTac5aatGiBpa8OOTk48mTFwCj5
	 B7i4pzemiyq9urppvArbUF7Z2TuIfvtDawN+HL+4=
Date: Tue, 10 Oct 2023 09:21:39 +0200
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: linux-rockchip@lists.infradead.org, 
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Nicholas Roth <nicholas@rothemail.net>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	"open list:OMNIVISION OV8858 SENSOR DRIVER" <linux-media@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] media: i2c: ov8858: Don't set fwnode in the driver
Message-ID: <xlw4t6xxq64pbloppn73gh624s3ji2773tmeigxk5cmwy6b2u3@5vofchxdwox2>
References: <20231010070747.1781612-1-megi@xff.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231010070747.1781612-1-megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_002146_734963_7C84721C 
X-CRM114-Status: GOOD (  18.43  )
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

SGVsbG8gT25kxZllagoKT24gVHVlLCBPY3QgMTAsIDIwMjMgYXQgMDk6MDc6NDRBTSArMDIwMCwg
T25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+
Cj4KPiBUaGlzIG1ha2VzIHRoZSBkcml2ZXIgd29yayB3aXRoIHRoZSBuZXcgY2hlY2sgaW4KPiB2
NGwyX2FzeW5jX3JlZ2lzdGVyX3N1YmRldigpIHRoYXQgd2FzIGludHJvZHVjZWQgcmVjZW50bHkg
aW4gNi42LXJjMS4KPiBXaXRob3V0IHRoaXMgY2hhbmdlLCBwcm9iZSBmYWlscyB3aXRoOgo+Cj4g
b3Y4ODU4IDEtMDAzNjogRGV0ZWN0ZWQgT1Y4ODU4IHNlbnNvciwgcmV2aXNpb24gMHhiMgo+IG92
ODg1OCAxLTAwMzY6IHN1Yi1kZXZpY2UgZndub2RlIGlzIGFuIGVuZHBvaW50IQo+IG92ODg1OCAx
LTAwMzY6IHY0bDIgYXN5bmMgcmVnaXN0ZXIgc3ViZGV2IGZhaWxlZAo+IG92ODg1ODogcHJvYmUg
b2YgMS0wMDM2IGZhaWxlZCB3aXRoIGVycm9yIC0yMgo+Cj4gVGhpcyBhbHNvIHNpbXBsaWZpZXMg
dGhlIGRyaXZlciBhIGJpdC4KPgo+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lA
eGZmLmN6PgoKUmV2aWV3ZWQtYnk6IEphY29wbyBNb25kaSA8amFjb3BvLm1vbmRpQGlkZWFzb25i
b2FyZC5jb20+CgpUaGFua3MhCgo+IC0tLQo+IHYyOgo+IC0gY2FsbCBmd25vZGVfaGFuZGxlX3B1
dCBlYXJsaWVyIHRvIGF2b2lkIG11bHRpcGxlIGNhbGxzIHRvIGl0IGluCj4gICBlcnJvciBjb2Rl
IHBhdGhzIChzdWdnZXN0ZWQgYnkgSmFjb3BvIE1vbmRpKQo+Cj4gIGRyaXZlcnMvbWVkaWEvaTJj
L292ODg1OC5jIHwgMTAgKystLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCA4IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvaTJjL292
ODg1OC5jIGIvZHJpdmVycy9tZWRpYS9pMmMvb3Y4ODU4LmMKPiBpbmRleCAzYWY2MTI1YTJlZWUu
LjRkOWZkNzZlMmY2MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL2kyYy9vdjg4NTguYwo+
ICsrKyBiL2RyaXZlcnMvbWVkaWEvaTJjL292ODg1OC5jCj4gQEAgLTE4NTAsOSArMTg1MCw5IEBA
IHN0YXRpYyBpbnQgb3Y4ODU4X3BhcnNlX29mKHN0cnVjdCBvdjg4NTggKm92ODg1OCkKPiAgCX0K
Pgo+ICAJcmV0ID0gdjRsMl9md25vZGVfZW5kcG9pbnRfcGFyc2UoZW5kcG9pbnQsICZ2ZXApOwo+
ICsJZndub2RlX2hhbmRsZV9wdXQoZW5kcG9pbnQpOwo+ICAJaWYgKHJldCkgewo+ICAJCWRldl9l
cnIoZGV2LCAiRmFpbGVkIHRvIHBhcnNlIGVuZHBvaW50OiAlZFxuIiwgcmV0KTsKPiAtCQlmd25v
ZGVfaGFuZGxlX3B1dChlbmRwb2ludCk7Cj4gIAkJcmV0dXJuIHJldDsKPiAgCX0KPgo+IEBAIC0x
ODY0LDEyICsxODY0LDkgQEAgc3RhdGljIGludCBvdjg4NThfcGFyc2Vfb2Yoc3RydWN0IG92ODg1
OCAqb3Y4ODU4KQo+ICAJZGVmYXVsdDoKPiAgCQlkZXZfZXJyKGRldiwgIlVuc3VwcG9ydGVkIG51
bWJlciBvZiBkYXRhIGxhbmVzICV1XG4iLAo+ICAJCQlvdjg4NTgtPm51bV9sYW5lcyk7Cj4gLQkJ
Zndub2RlX2hhbmRsZV9wdXQoZW5kcG9pbnQpOwo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAJfQo+
Cj4gLQlvdjg4NTgtPnN1YmRldi5md25vZGUgPSBlbmRwb2ludDsKPiAtCj4gIAlyZXR1cm4gMDsK
PiAgfQo+Cj4gQEAgLTE5MTMsNyArMTkxMCw3IEBAIHN0YXRpYyBpbnQgb3Y4ODU4X3Byb2JlKHN0
cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4KPiAgCXJldCA9IG92ODg1OF9pbml0X2N0cmxzKG92
ODg1OCk7Cj4gIAlpZiAocmV0KQo+IC0JCWdvdG8gZXJyX3B1dF9md25vZGU7Cj4gKwkJcmV0dXJu
IHJldDsKPgo+ICAJc2QgPSAmb3Y4ODU4LT5zdWJkZXY7Cj4gIAlzZC0+ZmxhZ3MgfD0gVjRMMl9T
VUJERVZfRkxfSEFTX0RFVk5PREUgfCBWNEwyX1NVQkRFVl9GTF9IQVNfRVZFTlRTOwo+IEBAIC0x
OTY0LDggKzE5NjEsNiBAQCBzdGF0aWMgaW50IG92ODg1OF9wcm9iZShzdHJ1Y3QgaTJjX2NsaWVu
dCAqY2xpZW50KQo+ICAJbWVkaWFfZW50aXR5X2NsZWFudXAoJnNkLT5lbnRpdHkpOwo+ICBlcnJf
ZnJlZV9oYW5kbGVyOgo+ICAJdjRsMl9jdHJsX2hhbmRsZXJfZnJlZSgmb3Y4ODU4LT5jdHJsX2hh
bmRsZXIpOwo+IC1lcnJfcHV0X2Z3bm9kZToKPiAtCWZ3bm9kZV9oYW5kbGVfcHV0KG92ODg1OC0+
c3ViZGV2LmZ3bm9kZSk7Cj4KPiAgCXJldHVybiByZXQ7Cj4gIH0KPiBAQCAtMTk3OCw3ICsxOTcz
LDYgQEAgc3RhdGljIHZvaWQgb3Y4ODU4X3JlbW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50
KQo+ICAJdjRsMl9hc3luY191bnJlZ2lzdGVyX3N1YmRldihzZCk7Cj4gIAltZWRpYV9lbnRpdHlf
Y2xlYW51cCgmc2QtPmVudGl0eSk7Cj4gIAl2NGwyX2N0cmxfaGFuZGxlcl9mcmVlKCZvdjg4NTgt
PmN0cmxfaGFuZGxlcik7Cj4gLQlmd25vZGVfaGFuZGxlX3B1dChvdjg4NTgtPnN1YmRldi5md25v
ZGUpOwo+Cj4gIAlwbV9ydW50aW1lX2Rpc2FibGUoJmNsaWVudC0+ZGV2KTsKPiAgCWlmICghcG1f
cnVudGltZV9zdGF0dXNfc3VzcGVuZGVkKCZjbGllbnQtPmRldikpCj4gLS0KPiAyLjQyLjAKPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
