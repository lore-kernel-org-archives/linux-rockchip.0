Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B70BC2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 10:13:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1168A238D6
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 10:13:31 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TiSkUiNq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1168A238D6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nq8CPWYPH8E+keV+/K83JRNlAqB9/0cUNtp5jLqBdt4=; b=TiSkUiNqWZrH9CmJEl8Uls2ad
	ONFyrYd0W1VMoWqx+QVCHbc5juOz5nTb6AErF5rGL77x4nD2L7cGa/EadOIzIOpM4f9O64lrmaSQf
	fUlxtH9wu0XreVfDY69q6qxNa6LHEyH0zI50pboc45h1kFFpfhlwO+ql2awDMiLqVMIzUOJoIdvks
	E+e4bD8ICCGe+wLcoTkVwj1zf5wc9hVJMxtRfyszn/s/cxx7/7pU3+ucW5pLt3tiqTsFpGtucs7KX
	bCIEJbALmMEm+PleqqdJQn70fjpuY4l2zvwo8mMa06KNd324dzmFYvyOShQdFzjURKTyX7lsX37Se
	UvfQf9E0A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKfIZ-0006em-V8; Tue, 22 Sep 2020 10:13:24 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKfIN-0006Zs-3s
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 10:13:15 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id CC290974;
 Tue, 22 Sep 2020 18:13:04 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.39] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19669T139950651582208S1600769583305895_; 
 Tue, 22 Sep 2020 18:13:04 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f469c07bda61fd24a13ec089fd1bd8ac>
X-RL-SENDER: algea.cao@rock-chips.com
X-SENDER: algea.cao@rock-chips.com
X-LOGIN-NAME: algea.cao@rock-chips.com
X-FST-TO: dianders@chromium.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_1/3=5d_drm=3a_rockchip=3a_hdmi=3a_remove_v?=
 =?UTF-8?B?b3BfY3J0Y19tb2RlX2ZpeHVwIHRvIGZpeCBjbG9jayBoYW5kbGluZ+OAkOivtw==?=
 =?UTF-8?B?5rOo5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcythbmR5Lnlh?=
 =?UTF-8?B?bj1yb2NrLWNoaXBzLmNvbUBsaXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
To: Vicente Bergas <vicencb@gmail.com>
References: <20200921181803.1160-1-vicencb@gmail.com>
 <20200921181803.1160-2-vicencb@gmail.com>
 <76b8f420-2afb-eba9-5c98-6f10762c4b37@rock-chips.com>
 <1ada2daf-16f3-191f-ccc1-d3d7d0c319fc@rock-chips.com>
 <CAAMcf8Az5AVWNzMHuxXda5WUm4_E5QCwpgb2fVtaT0w2+cQELw@mail.gmail.com>
From: crj <algea.cao@rock-chips.com>
Message-ID: <bd2d67ee-4023-ccde-3b2a-e88c3e076d12@rock-chips.com>
Date: Tue, 22 Sep 2020 18:13:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.1
MIME-Version: 1.0
In-Reply-To: <CAAMcf8Az5AVWNzMHuxXda5WUm4_E5QCwpgb2fVtaT0w2+cQELw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_061311_765684_270AD0C4 
X-CRM114-Status: GOOD (  16.45  )
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
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, dianders@chromium.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Andy Yan <andy.yan@rock-chips.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksIERvdWdsYXMKCuWcqCAyMDIwLzkvMjIgMTc6MzEsIFZpY2VudGUgQmVyZ2FzIOWGmemBkzoK
PiBPbiBUdWUsIFNlcCAyMiwgMjAyMCBhdCAxMToyNCBBTSBjcmogPGFsZ2VhLmNhb0Byb2NrLWNo
aXBzLmNvbT4gd3JvdGU6Cj4+IEhlbGxvIFZpY2VudGUsCj4+Cj4+IOWcqCAyMDIwLzkvMjIgMTU6
NDAsIEFuZHkgWWFuIOWGmemBkzoKPj4+IEFkZCBvdXIgSERNSSBkcml2ZXIgb3duZXIgQWxnZWEg
dG8gbGlzdC4KPj4+Cj4+PiBPbiA5LzIyLzIwIDI6MTggQU0sIFZpY2VudGUgQmVyZ2FzIHdyb3Rl
Ogo+Pj4+IFVuZGVyIGNlcnRhaW4gY29uZGl0aW9ucyB2b3BfY3J0Y19tb2RlX2ZpeHVwIHJvdW5k
cyB0aGUgY2xvY2sKPj4KPj4gTWF5IEkgYXNrIHVuZGVyIHdoYXQgY29uZGl0aW9ucyB0aGF0IHRo
ZSBjbG9jayBvZiBIRE1JIHdpbGwKPj4KPj4gYmUgY2hhbmdlZCB0byAxNDg1MDEwMDA/ICBJbiBn
ZW5lcmFsLCB0aGUgZGVzY3JpcHRpb24gb2YgY2xvY2sKPj4KPj4gaW4gRURJRCB3aWxsIG5vdCBi
ZSBkZXRhaWxlZCBiZWxvdyB0aGUgdGhvdXNhbmRzIHBsYWNlLgo+IFRoZXJlIGlzIG5vIGNsb2Nr
IGluIHRoZSBFRElEIHdpdGggMUtIeiByZXNvbHV0aW9uLCB0aGUgY2xvY2sgaXMKPiAxNDg1MDAw
MDAgd2hpY2ggaGFzIDUwMEtIeiByZXNvbHV0aW9uLgo+IEl0IGlzIHRoZSBmdW5jdGlvbiB2b3Bf
Y3J0Y19tb2RlX2ZpeHVwIHRoYXQgZ2V0cyB4eHgwMDAwIGFuZCByZXR1cm5zIHh4eDEwMDAKCkkg
Y2hlY2tlZCB0aGUgY29tbWl0IG1zZyBvZiBjb21taXQgMjg3NDIyYTk1ZmUyICgiZHJtL3JvY2tj
aGlwOiBSb3VuZCB1cCAKX2JlZm9yZV8gZ2l2aW5nIHRvIHRoZSBjbG9jayBmcmFtZXdvcmsiKS4K
ClJvdW5kIHVwIGhkbWkgY2xvY2sgaXMgZm9yIHNvbWUgcGFuZWxzIHdpdGggc3BlY2lhbCBjbG9j
a3MuwqAgQXJlIHRoZXNlIApwYW5lbHMgY2xvY2sgY2FuJ3QgYmUgZGl2aWRlZCBjb3JyZWN0bHkg
Y29tbW9uPwoKPj4+PiAxNDg1MDAwMDAgdG8gMTQ4NTAxMDAwIHdoaWNoIGxlYWRzIHRvIHRoZSBm
b2xsb3dpbmcgZXJyb3I6Cj4+Pj4gZHdoZG1pLXJvY2tjaGlwIGZmOTQwMDAwLmhkbWk6IFBIWSBj
b25maWd1cmF0aW9uIGZhaWxlZCAoY2xvY2sKPj4+PiAxNDg1MDEwMDApCj4+Pj4KPj4+PiBUaGUg
aXNzdWUgd2FzIGZvdW5kIG9uIFJLMzM5OSBib290aW5nIHdpdGggdS1ib290LiBVLWJvb3QgY29u
ZmlndXJlcyB0aGUKPj4+PiBkaXNwbGF5IGF0IDI1NjB4MTQ0MCBhbmQgdGhlbiBsaW51eCBjb21l
cyB1cCB3aXRoIGEgYmxhY2sgc2NyZWVuLgo+Pj4+IEEgd29ya2Fyb3VuZCB3YXMgdG8gdW4tcGx1
ZyBhbmQgcmUtcGx1ZyB0aGUgSERNSSBkaXNwbGF5Lgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTog
VmljZW50ZSBCZXJnYXMgPHZpY2VuY2JAZ21haWwuY29tPgo+Pj4+IFRlc3RlZC1ieTogVmljZW50
ZSBCZXJnYXMgPHZpY2VuY2JAZ21haWwuY29tPgo+Pj4+IC0tLQo+Pj4+ICAgIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgfCA0NSAtLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNDUgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+Pj4+
IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+Pj4+IGluZGV4
IGM4MGY3ZDlmZDEzZi4uZmU4MGRhNjUyOTk0IDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPj4+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4+Pj4gQEAgLTExNDIsNTAgKzExNDIsNiBA
QCBzdGF0aWMgdm9pZCB2b3BfY3J0Y19kaXNhYmxlX3ZibGFuayhzdHJ1Y3QKPj4+PiBkcm1fY3J0
YyAqY3J0YykKPj4+PiAgICAgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdm9wLT5pcnFfbG9j
aywgZmxhZ3MpOwo+Pj4+ICAgIH0KPj4+PiAgICAtc3RhdGljIGJvb2wgdm9wX2NydGNfbW9kZV9m
aXh1cChzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4+Pj4gLSAgICAgICAgICAgICAgICBjb25zdCBz
dHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSwKPj4+PiAtICAgICAgICAgICAgICAgIHN0cnVj
dCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlKQo+Pj4+IC17Cj4+Pj4gLSAgICBzdHJ1
Y3Qgdm9wICp2b3AgPSB0b192b3AoY3J0Yyk7Cj4+Pj4gLSAgICB1bnNpZ25lZCBsb25nIHJhdGU7
Cj4+Pj4gLQo+Pj4+IC0gICAgLyoKPj4+PiAtICAgICAqIENsb2NrIGNyYXppbmVzcy4KPj4+PiAt
ICAgICAqCj4+Pj4gLSAgICAgKiBLZXkgcG9pbnRzOgo+Pj4+IC0gICAgICoKPj4+PiAtICAgICAq
IC0gRFJNIHdvcmtzIGluIGluIGtIei4KPj4+PiAtICAgICAqIC0gQ2xvY2sgZnJhbWV3b3JrIHdv
cmtzIGluIEh6Lgo+Pj4+IC0gICAgICogLSBSb2NrY2hpcCdzIGNsb2NrIGRyaXZlciBwaWNrcyB0
aGUgY2xvY2sgcmF0ZSB0aGF0IGlzIHRoZQo+Pj4+IC0gICAgICogICBzYW1lIF9PUiBMT1dFUl8g
dGhhbiB0aGUgb25lIHJlcXVlc3RlZC4KPj4+PiAtICAgICAqCj4+Pj4gLSAgICAgKiBBY3Rpb24g
cGxhbjoKPj4+PiAtICAgICAqCj4+Pj4gLSAgICAgKiAxLiBXaGVuIERSTSBnaXZlcyB1cyBhIG1v
ZGUsIHdlIHNob3VsZCBhZGQgOTk5IEh6IHRvIGl0Lgo+Pj4+IFRoYXQgd2F5Cj4+Pj4gLSAgICAg
KiAgICBpZiB0aGUgY2xvY2sgd2UgbmVlZCBpcyA2MDAwMDAwMSBIeiAofjYwIE1IeikgYW5kIERS
TQo+Pj4+IHRlbGxzIHVzIHRvCj4+Pj4gLSAgICAgKiAgICBtYWtlIDYwMDAwIGtIeiB0aGVuIHRo
ZSBjbG9jayBmcmFtZXdvcmsgd2lsbCBhY3R1YWxseSBnaXZlIHVzCj4+Pj4gLSAgICAgKiAgICB0
aGUgcmlnaHQgY2xvY2suCj4+Pj4gLSAgICAgKgo+Pj4+IC0gICAgICogICAgTk9URTogaWYgdGhl
IFBMTCAobWF5YmUgdGhyb3VnaCBhIGRpdmlkZXIpIGNvdWxkIGFjdHVhbGx5Cj4+Pj4gbWFrZQo+
Pj4+IC0gICAgICogICAgYSBjbG9jayByYXRlIDk5OSBIeiBoaWdoZXIgaW5zdGVhZCBvZiB0aGUg
b25lIHdlIHdhbnQgdGhlbgo+Pj4+IHRoaXMKPj4+PiAtICAgICAqICAgIGNvdWxkIGJlIGEgcHJv
YmxlbS4gIFVuZm9ydHVuYXRlbHkgdGhlcmUncyBub3QgbXVjaCB3ZSBjYW4gZG8KPj4+PiAtICAg
ICAqICAgIHNpbmNlIGl0J3MgYmFrZWQgaW50byBEUk0gdG8gdXNlIGtIei4gIEl0IHNob3VsZG4n
dCBtYXR0ZXIgaW4KPj4+PiAtICAgICAqICAgIHByYWN0aWNlIHNpbmNlIFJvY2tjaGlwIFBMTHMg
YXJlIGNvbnRyb2xsZWQgYnkgdGFibGVzIGFuZAo+Pj4+IC0gICAgICogICAgZXZlbiBpZiB0aGVy
ZSBpcyBhIGRpdmlkZXIgaW4gdGhlIG1pZGRsZSBJIHdvdWxkbid0IGV4cGVjdAo+Pj4+IFBMTAo+
Pj4+IC0gICAgICogICAgcmF0ZXMgaW4gdGhlIHRhYmxlIHRoYXQgYXJlIGp1c3QgYSBmZXcga0h6
IGRpZmZlcmVudC4KPj4+PiAtICAgICAqCj4+Pj4gLSAgICAgKiAyLiBHZXQgdGhlIGNsb2NrIGZy
YW1ld29yayB0byByb3VuZCB0aGUgcmF0ZSBmb3IgdXMgdG8gdGVsbCB1cwo+Pj4+IC0gICAgICog
ICAgd2hhdCBpdCB3aWxsIGFjdHVhbGx5IG1ha2UuCj4+Pj4gLSAgICAgKgo+Pj4+IC0gICAgICog
My4gU3RvcmUgdGhlIHJvdW5kZWQgdXAgcmF0ZSBzbyB0aGF0IHdlIGRvbid0IG5lZWQgdG8gd29y
cnkKPj4+PiBhYm91dAo+Pj4+IC0gICAgICogICAgdGhpcyBpbiB0aGUgYWN0dWFsIGNsa19zZXRf
cmF0ZSgpLgo+Pj4+IC0gICAgICovCj4+Pj4gLSAgICByYXRlID0gY2xrX3JvdW5kX3JhdGUodm9w
LT5kY2xrLCBhZGp1c3RlZF9tb2RlLT5jbG9jayAqIDEwMDAgKwo+Pj4+IDk5OSk7Cj4+Pj4gLSAg
ICBhZGp1c3RlZF9tb2RlLT5jbG9jayA9IERJVl9ST1VORF9VUChyYXRlLCAxMDAwKTsKPj4+PiAt
Cj4+Pj4gLSAgICByZXR1cm4gdHJ1ZTsKPj4+PiAtfQo+Pj4+IC0KPj4+PiAgICBzdGF0aWMgYm9v
bCB2b3BfZHNwX2x1dF9pc19lbmFibGVkKHN0cnVjdCB2b3AgKnZvcCkKPj4+PiAgICB7Cj4+Pj4g
ICAgICAgIHJldHVybiB2b3BfcmVhZF9yZWcodm9wLCAwLCAmdm9wLT5kYXRhLT5jb21tb24tPmRz
cF9sdXRfZW4pOwo+Pj4+IEBAIC0xNTEyLDcgKzE0NjgsNiBAQCBzdGF0aWMgdm9pZCB2b3BfY3J0
Y19hdG9taWNfZmx1c2goc3RydWN0Cj4+Pj4gZHJtX2NydGMgKmNydGMsCj4+Pj4gICAgfQo+Pj4+
ICAgICAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fY3J0Y19oZWxwZXJfZnVuY3Mgdm9wX2NydGNf
aGVscGVyX2Z1bmNzID0gewo+Pj4+IC0gICAgLm1vZGVfZml4dXAgPSB2b3BfY3J0Y19tb2RlX2Zp
eHVwLAo+Pj4+ICAgICAgICAuYXRvbWljX2NoZWNrID0gdm9wX2NydGNfYXRvbWljX2NoZWNrLAo+
Pj4+ICAgICAgICAuYXRvbWljX2JlZ2luID0gdm9wX2NydGNfYXRvbWljX2JlZ2luLAo+Pj4+ICAg
ICAgICAuYXRvbWljX2ZsdXNoID0gdm9wX2NydGNfYXRvbWljX2ZsdXNoLAo+CgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
