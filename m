Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6C8CC4727E
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 09:24:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3201320C09
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 09:24:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="OzUDasXv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3201320C09
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9rfX+7Ftxzbm9PcyVaUoI6xK7VSOeFR2LLe8A/eAzAM=; b=OzUDasXvwVo2KDY9QNG3uUE/6
	G8kFUQXgN1Fl0K1e3rC7Y1HmkegEAKexWxgdVK4PTeIbyyNumNlcGiNlPLsann2p0e3882KBteHcI
	zqmUV+28m1djULi7OwQvxhkChavdRJOnrSSugP3xINXi9ljPWHVRgxjuvYs16OMPYmDvJrLEG3yN/
	jqeIivOiet/qmXq44+kn6sTRPxrsDVcYRJCRTICjda5AgH/Ba5SDMAyOCWchriUXP1u7Mn7CkJqf4
	gHyIhtEEyb2OGPJ+xrPTAFv5BnzVTdWrWkzjHllfsDCZz8+BxyMxRMh7jaw8FHpV+eDwyG7e8FOuu
	+MLkoGcaA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKeX9-0007pN-5f; Tue, 22 Sep 2020 09:24:23 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKeWy-0007kk-8o
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 09:24:15 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 62346A68;
 Tue, 22 Sep 2020 17:24:04 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.39] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P1667T140083434874624S1600766643869388_; 
 Tue, 22 Sep 2020 17:24:04 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3d1b9ba311f8b2689ef786b578f4e2f9>
X-RL-SENDER: algea.cao@rock-chips.com
X-SENDER: algea.cao@rock-chips.com
X-LOGIN-NAME: algea.cao@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_1/3=5d_drm=3a_rockchip=3a_hdmi=3a_remove_v?=
 =?UTF-8?B?b3BfY3J0Y19tb2RlX2ZpeHVwIHRvIGZpeCBjbG9jayBoYW5kbGluZ+OAkOivtw==?=
 =?UTF-8?B?5rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcythbmR5Lnlh?=
 =?UTF-8?B?bj1yb2NrLWNoaXBzLmNvbUBsaXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
To: Andy Yan <andy.yan@rock-chips.com>, Vicente Bergas <vicencb@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org
References: <20200921181803.1160-1-vicencb@gmail.com>
 <20200921181803.1160-2-vicencb@gmail.com>
 <76b8f420-2afb-eba9-5c98-6f10762c4b37@rock-chips.com>
From: crj <algea.cao@rock-chips.com>
Message-ID: <1ada2daf-16f3-191f-ccc1-d3d7d0c319fc@rock-chips.com>
Date: Tue, 22 Sep 2020 17:24:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.1
MIME-Version: 1.0
In-Reply-To: <76b8f420-2afb-eba9-5c98-6f10762c4b37@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_052412_860782_C15A5821 
X-CRM114-Status: GOOD (  15.86  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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

SGVsbG8gVmljZW50ZSwKCuWcqCAyMDIwLzkvMjIgMTU6NDAsIEFuZHkgWWFuIOWGmemBkzoKPiBB
ZGQgb3VyIEhETUkgZHJpdmVyIG93bmVyIEFsZ2VhIHRvIGxpc3QuCj4KPiBPbiA5LzIyLzIwIDI6
MTggQU0sIFZpY2VudGUgQmVyZ2FzIHdyb3RlOgo+PiBVbmRlciBjZXJ0YWluIGNvbmRpdGlvbnMg
dm9wX2NydGNfbW9kZV9maXh1cCByb3VuZHMgdGhlIGNsb2NrCgoKTWF5IEkgYXNrIHVuZGVyIHdo
YXQgY29uZGl0aW9ucyB0aGF0IHRoZSBjbG9jayBvZiBIRE1JIHdpbGwKCmJlIGNoYW5nZWQgdG8g
MTQ4NTAxMDAwP8KgIEluIGdlbmVyYWwsIHRoZSBkZXNjcmlwdGlvbiBvZiBjbG9jawoKaW4gRURJ
RCB3aWxsIG5vdCBiZSBkZXRhaWxlZCBiZWxvdyB0aGUgdGhvdXNhbmRzIHBsYWNlLgoKCj4+Cj4+
IDE0ODUwMDAwMCB0byAxNDg1MDEwMDAgd2hpY2ggbGVhZHMgdG8gdGhlIGZvbGxvd2luZyBlcnJv
cjoKPj4gZHdoZG1pLXJvY2tjaGlwIGZmOTQwMDAwLmhkbWk6IFBIWSBjb25maWd1cmF0aW9uIGZh
aWxlZCAoY2xvY2sgCj4+IDE0ODUwMTAwMCkKPj4KPj4gVGhlIGlzc3VlIHdhcyBmb3VuZCBvbiBS
SzMzOTkgYm9vdGluZyB3aXRoIHUtYm9vdC4gVS1ib290IGNvbmZpZ3VyZXMgdGhlCj4+IGRpc3Bs
YXkgYXQgMjU2MHgxNDQwIGFuZCB0aGVuIGxpbnV4IGNvbWVzIHVwIHdpdGggYSBibGFjayBzY3Jl
ZW4uCj4+IEEgd29ya2Fyb3VuZCB3YXMgdG8gdW4tcGx1ZyBhbmQgcmUtcGx1ZyB0aGUgSERNSSBk
aXNwbGF5Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBWaWNlbnRlIEJlcmdhcyA8dmljZW5jYkBnbWFp
bC5jb20+Cj4+IFRlc3RlZC1ieTogVmljZW50ZSBCZXJnYXMgPHZpY2VuY2JAZ21haWwuY29tPgo+
PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyB8
IDQ1IC0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNDUgZGVsZXRp
b25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcC5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wLmMKPj4gaW5kZXggYzgwZjdkOWZkMTNmLi5mZTgwZGE2NTI5OTQgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+PiBAQCAtMTE0Miw1MCAr
MTE0Miw2IEBAIHN0YXRpYyB2b2lkIHZvcF9jcnRjX2Rpc2FibGVfdmJsYW5rKHN0cnVjdCAKPj4g
ZHJtX2NydGMgKmNydGMpCj4+IMKgwqDCoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdm9w
LT5pcnFfbG9jaywgZmxhZ3MpOwo+PiDCoCB9Cj4+IMKgIC1zdGF0aWMgYm9vbCB2b3BfY3J0Y19t
b2RlX2ZpeHVwKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwKPj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0
ZWRfbW9kZSkKPj4gLXsKPj4gLcKgwqDCoCBzdHJ1Y3Qgdm9wICp2b3AgPSB0b192b3AoY3J0Yyk7
Cj4+IC3CoMKgwqAgdW5zaWduZWQgbG9uZyByYXRlOwo+PiAtCj4+IC3CoMKgwqAgLyoKPj4gLcKg
wqDCoMKgICogQ2xvY2sgY3JhemluZXNzLgo+PiAtwqDCoMKgwqAgKgo+PiAtwqDCoMKgwqAgKiBL
ZXkgcG9pbnRzOgo+PiAtwqDCoMKgwqAgKgo+PiAtwqDCoMKgwqAgKiAtIERSTSB3b3JrcyBpbiBp
biBrSHouCj4+IC3CoMKgwqDCoCAqIC0gQ2xvY2sgZnJhbWV3b3JrIHdvcmtzIGluIEh6Lgo+PiAt
wqDCoMKgwqAgKiAtIFJvY2tjaGlwJ3MgY2xvY2sgZHJpdmVyIHBpY2tzIHRoZSBjbG9jayByYXRl
IHRoYXQgaXMgdGhlCj4+IC3CoMKgwqDCoCAqwqDCoCBzYW1lIF9PUiBMT1dFUl8gdGhhbiB0aGUg
b25lIHJlcXVlc3RlZC4KPj4gLcKgwqDCoMKgICoKPj4gLcKgwqDCoMKgICogQWN0aW9uIHBsYW46
Cj4+IC3CoMKgwqDCoCAqCj4+IC3CoMKgwqDCoCAqIDEuIFdoZW4gRFJNIGdpdmVzIHVzIGEgbW9k
ZSwgd2Ugc2hvdWxkIGFkZCA5OTkgSHogdG8gaXQuwqAgCj4+IFRoYXQgd2F5Cj4+IC3CoMKgwqDC
oCAqwqDCoMKgIGlmIHRoZSBjbG9jayB3ZSBuZWVkIGlzIDYwMDAwMDAxIEh6ICh+NjAgTUh6KSBh
bmQgRFJNIAo+PiB0ZWxscyB1cyB0bwo+PiAtwqDCoMKgwqAgKsKgwqDCoCBtYWtlIDYwMDAwIGtI
eiB0aGVuIHRoZSBjbG9jayBmcmFtZXdvcmsgd2lsbCBhY3R1YWxseSBnaXZlIHVzCj4+IC3CoMKg
wqDCoCAqwqDCoMKgIHRoZSByaWdodCBjbG9jay4KPj4gLcKgwqDCoMKgICoKPj4gLcKgwqDCoMKg
ICrCoMKgwqAgTk9URTogaWYgdGhlIFBMTCAobWF5YmUgdGhyb3VnaCBhIGRpdmlkZXIpIGNvdWxk
IGFjdHVhbGx5IAo+PiBtYWtlCj4+IC3CoMKgwqDCoCAqwqDCoMKgIGEgY2xvY2sgcmF0ZSA5OTkg
SHogaGlnaGVyIGluc3RlYWQgb2YgdGhlIG9uZSB3ZSB3YW50IHRoZW4gCj4+IHRoaXMKPj4gLcKg
wqDCoMKgICrCoMKgwqAgY291bGQgYmUgYSBwcm9ibGVtLsKgIFVuZm9ydHVuYXRlbHkgdGhlcmUn
cyBub3QgbXVjaCB3ZSBjYW4gZG8KPj4gLcKgwqDCoMKgICrCoMKgwqAgc2luY2UgaXQncyBiYWtl
ZCBpbnRvIERSTSB0byB1c2Uga0h6LsKgIEl0IHNob3VsZG4ndCBtYXR0ZXIgaW4KPj4gLcKgwqDC
oMKgICrCoMKgwqAgcHJhY3RpY2Ugc2luY2UgUm9ja2NoaXAgUExMcyBhcmUgY29udHJvbGxlZCBi
eSB0YWJsZXMgYW5kCj4+IC3CoMKgwqDCoCAqwqDCoMKgIGV2ZW4gaWYgdGhlcmUgaXMgYSBkaXZp
ZGVyIGluIHRoZSBtaWRkbGUgSSB3b3VsZG4ndCBleHBlY3QgCj4+IFBMTAo+PiAtwqDCoMKgwqAg
KsKgwqDCoCByYXRlcyBpbiB0aGUgdGFibGUgdGhhdCBhcmUganVzdCBhIGZldyBrSHogZGlmZmVy
ZW50Lgo+PiAtwqDCoMKgwqAgKgo+PiAtwqDCoMKgwqAgKiAyLiBHZXQgdGhlIGNsb2NrIGZyYW1l
d29yayB0byByb3VuZCB0aGUgcmF0ZSBmb3IgdXMgdG8gdGVsbCB1cwo+PiAtwqDCoMKgwqAgKsKg
wqDCoCB3aGF0IGl0IHdpbGwgYWN0dWFsbHkgbWFrZS4KPj4gLcKgwqDCoMKgICoKPj4gLcKgwqDC
oMKgICogMy4gU3RvcmUgdGhlIHJvdW5kZWQgdXAgcmF0ZSBzbyB0aGF0IHdlIGRvbid0IG5lZWQg
dG8gd29ycnkgCj4+IGFib3V0Cj4+IC3CoMKgwqDCoCAqwqDCoMKgIHRoaXMgaW4gdGhlIGFjdHVh
bCBjbGtfc2V0X3JhdGUoKS4KPj4gLcKgwqDCoMKgICovCj4+IC3CoMKgwqAgcmF0ZSA9IGNsa19y
b3VuZF9yYXRlKHZvcC0+ZGNsaywgYWRqdXN0ZWRfbW9kZS0+Y2xvY2sgKiAxMDAwICsgCj4+IDk5
OSk7Cj4+IC3CoMKgwqAgYWRqdXN0ZWRfbW9kZS0+Y2xvY2sgPSBESVZfUk9VTkRfVVAocmF0ZSwg
MTAwMCk7Cj4+IC0KPj4gLcKgwqDCoCByZXR1cm4gdHJ1ZTsKPj4gLX0KPj4gLQo+PiDCoCBzdGF0
aWMgYm9vbCB2b3BfZHNwX2x1dF9pc19lbmFibGVkKHN0cnVjdCB2b3AgKnZvcCkKPj4gwqAgewo+
PiDCoMKgwqDCoMKgIHJldHVybiB2b3BfcmVhZF9yZWcodm9wLCAwLCAmdm9wLT5kYXRhLT5jb21t
b24tPmRzcF9sdXRfZW4pOwo+PiBAQCAtMTUxMiw3ICsxNDY4LDYgQEAgc3RhdGljIHZvaWQgdm9w
X2NydGNfYXRvbWljX2ZsdXNoKHN0cnVjdCAKPj4gZHJtX2NydGMgKmNydGMsCj4+IMKgIH0KPj4g
wqAgwqAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fY3J0Y19oZWxwZXJfZnVuY3Mgdm9wX2NydGNf
aGVscGVyX2Z1bmNzID0gewo+PiAtwqDCoMKgIC5tb2RlX2ZpeHVwID0gdm9wX2NydGNfbW9kZV9m
aXh1cCwKPj4gwqDCoMKgwqDCoCAuYXRvbWljX2NoZWNrID0gdm9wX2NydGNfYXRvbWljX2NoZWNr
LAo+PiDCoMKgwqDCoMKgIC5hdG9taWNfYmVnaW4gPSB2b3BfY3J0Y19hdG9taWNfYmVnaW4sCj4+
IMKgwqDCoMKgwqAgLmF0b21pY19mbHVzaCA9IHZvcF9jcnRjX2F0b21pY19mbHVzaCwKPgo+CgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
