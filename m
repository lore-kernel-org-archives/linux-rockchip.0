Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 892B2ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 01:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=AwvlGoPv3wBskYwzI2CMTJDTc3XMqf+SKCb9e7/HMZ4=; b=mYf1NC2VhRuFQx
	1r5Xui4GtuM6ysyD81tpRs1X357fwK9jg/mJ6pLrMjjap25u4TD79IZF79GekY8w1Xok3zYnvSmd1
	LfPRQCpDTFYcVvevLqLgHjutRUPAe8GDkBiypY9rz1kS3670NTnrcUBfDCZugm0nuf8OtmGrEyMno
	MbcxFN/kphPfX0EHz0WY/GRnAm822uOQEHI7uxHtjg3l6Kvqpl3gPHEAbDyRDaOC8fanGNg8xK048
	5W1id1jRCpx0epXInPgEBvrt5c4J364/xsTSeS/aC4TeCyqARJx4BeJvb10NS6D3L0oGAst6GPVTv
	I4c4gZv+YdFce6I6Xg4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXuPN-00GxFr-0c; Tue, 13 Sep 2022 01:08:13 +0000
Received: from mail-m11883.qiye.163.com ([115.236.118.83])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXuPJ-00Gx5M-IH
	for linux-rockchip@lists.infradead.org; Tue, 13 Sep 2022 01:08:11 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11883.qiye.163.com (Hmail) with ESMTPA id 57F5F8401A2;
	Tue, 13 Sep 2022 09:07:51 +0800 (CST)
Date: Tue, 13 Sep 2022 09:07:51 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	linus.walleij <linus.walleij@linaro.org>, 
	"Bartosz Golaszewski" <brgl@bgdev.pl>, 
	linux-gpio <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: Re: [PATCH 6/6] gpio: rockchip: support acpi
References: <20220909090558.3609190-1-jay.xu@rock-chips.com>, 
	<20220909090558.3609190-7-jay.xu@rock-chips.com>, 
	<YxsV735hZmzr1xPp@smile.fi.intel.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022091309075125735265@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSx0YVh1KTkMfS01OGEhMSFUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6My46Qgw6IT0qLiodMSMJPRY9
	L0swCyxVSlVKTU1IS0hKSUxKQ09MVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU9NT0k3Bg++
X-HM-Tid: 0a83346360512eb8kusn57f5f8401a2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_180809_788607_01E421F0 
X-CRM114-Status: GOOD (  17.02  )
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

SGkgQW5keQoKLS0tLS0tLS0tLS0tLS0KamF5Lnh1QHJvY2stY2hpcHMuY29tCj5PbiBGcmksIFNl
cCAwOSwgMjAyMiBhdCAwNTowNTo1OFBNICswODAwLCBKaWFucXVuIFh1IHdyb3RlOgo+PiBUaGUg
Z3BpbyBkcml2ZXIgZm9yIHJvY2tjaGlwIGdwaW8gY29udHJvbGxlciBpcyBzZXBlcmF0ZWQgZnJv
bSByb2NrY2hpcAo+PiBwaW5jdHJsIGRyaXZlciwgYXQgdGhlIGZpcnN0IHZlcnNpb24sIGl0IGtl
ZXBzIHRoaW5ncyBvcmlnaW5hbCB0byBtYWtlCj4+IHRoZSBwYXRjaCBlYXN5IHRvIGJlIHJldmll
d2VkLCBzdWNoIGFzIHRoZSBncGlvIGRyaXZlciBtdXN0IHdvcmsgd2l0aAo+PiB0aGUgcGluY3Ry
bCBkdCBub2RlIHRvIGJlIGl0cyBwYXJlbnQgbm9kZS4KPj4KPj4gVGhpcyBwYXRjaCB3YW50cyB0
byBmaXggZHJpdmVyIHRvIHN1cHBvcnQgYWNwaSBzaW5jZSBncGlvIGNvbnRyb2xsZXIKPj4gc2hv
dWxkIHdvcmsgd2VsbCBkdXJpbmcgYWNwaSBpcyBlbmFibGVkLiBCdXQgZHVyaW5nIHVwc3RyZWFt
LCBkcml2ZXIgaXMKPj4gYmV0dGVyIHRvIGZpeCBvdGhlciB0aGluZyB0b2dldGhlciBpbmNsdWRl
czoKPj7CoCAtIGFkZCAnY2xvY2stbmFtZXMnIHRvIGFsbG93IGRyaXZlciB0byBnZXQgY2xvY2tz
IGJ5IGRldm1fY2xrX2dldCgpLgo+PsKgIC0gZ2V0IGlvIHJlc291cmNlIGFuZCBpcnEgYnkgcGxh
dGZvcm0gY29tbW9uIGFwaXMuCj4+wqAgLSB1c2UgZndub2RlIGluc3RlYWQgb2Ygb2Zfbm9kZSBm
cm9tIGRldmljZSBzdHJ1Y3R1cmUuCj4KPlRoZSBkZXBlbmRlbmN5IHBhdGNoIGlzIHRoZSBwYXJ0
IG9mIGFub3RoZXIgc2VyaWVzLiBEdW5ubyB3aGF0IHdpbGwgaGFwcGVuCj50byB0aGF0IHNlcmll
cy4gSW4gZWl0aGVyIHdheSB3ZSB3b3VsZCBuZWVkIG1haW50YWluZXIncyAoUmFmYWVsKSB0YWcu
IAoKR290IGl0LCB0aGFua3MKPgo+Li4uCj4KPj4gK3N0YXRpYyBpbnQgcm9ja2NoaXBfZ3Bpb19n
ZXRfY2xvY2tzKHN0cnVjdCByb2NrY2hpcF9waW5fYmFuayAqYmFuaykKPj4gK3sKPj4gKwlzdHJ1
Y3QgZGV2aWNlICpkZXYgPSBiYW5rLT5kZXY7Cj4+ICsJc3RydWN0IGZ3bm9kZV9oYW5kbGUgKmZ3
bm9kZSA9IGRldl9md25vZGUoZGV2KTsKPj4gKwlpbnQgcmV0Owo+PiArCj4+ICsJaWYgKCFpc19v
Zl9ub2RlKGZ3bm9kZSkpCj4+ICsJcmV0dXJuIDA7Cj4+ICsKPj4gKwliYW5rLT5jbGsgPSBkZXZt
X2Nsa19nZXQoZGV2LCAiYnVzIik7Cj4+ICsJaWYgKElTX0VSUihiYW5rLT5jbGspKSB7Cj4+ICsJ
ZGV2X2VycihkZXYsICJmYWlsIHRvIGdldCBhcGIgY2xvY2tcbiIpOwo+PiArCXJldHVybiBQVFJf
RVJSKGJhbmstPmNsayk7Cj4+ICsJfQo+Cj4+ICsJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGJh
bmstPmNsayk7Cj4+ICsJaWYgKHJldCA8IDApCj4+ICsJcmV0dXJuIHJldDsKPgo+Tm93LCB5b3Ug
YXJlIG1peGluaWcgZGV2bV8gd2l0aCBub24tZGV2bV8gQVBJcy4gUGVyaGFwcyB5b3Ugd2FudGVk
Cj50byB1c2UgZGV2bV9jbGtfZ2V0X2VuYWJsZWQoKT8gCgpJIHRha2UgYSB0cnkuCj4KPj4gKwli
YW5rLT5kYl9jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAiZGIiKTsKPj4gKwlpZiAoSVNfRVJSKGJh
bmstPmRiX2NsaykpIHsKPj4gKwliYW5rLT5kYl9jbGsgPSBOVUxMOwo+PiArCX0KPj4gKwo+PiAr
CXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShiYW5rLT5kYl9jbGspOwo+PiArCWlmIChyZXQgPCAw
KSB7Cj4+ICsJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGJhbmstPmNsayk7Cj4+ICsJcmV0dXJuIHJl
dDsKPj4gKwl9Cj4+wqAKPj7CoCByZXR1cm4gMDsKPj7CoCB9Cj4KPi4uLgo+Cj4+ICsJaWYgKGlz
X2FjcGlfbm9kZShmd25vZGUpKSB7Cj4+ICsJaWYgKCFhY3BpX2Rldl91aWRfdG9faW50ZWdlcihB
Q1BJX0NPTVBBTklPTihkZXYpLCAmdWlkKSkKPj4gKwliYW5rX2lkID0gKGludCl1aWQ7Cj4KPkl0
IHByb2JhYmx5IG5lZWRzIHRvIGJlCj4KPglpZiAoaXNfYWNwaV9ub2RlKGZ3bm9kZSkpIHsKPgly
ZXQgPSBhY3BpX2Rldl91aWRfdG9faW50ZWdlcihBQ1BJX0NPTVBBTklPTihkZXYpLCAmdWlkKTsK
PglpZiAocmV0KQo+CXJldHVybiByZXQ7Cj4JYmFua19pZCA9IHVpZDsgCkdvdCBpdCwgdGhhbmtz
Cgo+PiArCX0gZWxzZSB7Cj4+ICsJYmFua19pZCA9IG9mX2FsaWFzX2dldF9pZCh0b19vZl9ub2Rl
KGZ3bm9kZSksICJncGlvIik7Cj4+ICsJaWYgKGJhbmtfaWQgPCAwKQo+PiArCWJhbmtfaWQgPSBn
cGlvKys7Cj4+ICsJfQo+Cj4tLQo+V2l0aCBCZXN0IFJlZ2FyZHMsCj5BbmR5IFNoZXZjaGVua28K
Pgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
