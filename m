Return-Path: <SRS0=Ahoz=DF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12DAEC4727D
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2020 02:39:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6E30722262
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2020 02:39:44 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="kKHH57x3"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6E30722262
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RYd4t/EBrbycUJnvr+Fg9l6KEMV4sD2YCeatcdc0JXE=; b=kKHH57x3qWSxWd3k1ki8nZbGG
	mZWvignL+mMAKk2lXzeLxKjQeoDr87+T1t/ajUi9EKVMsmdtfMaJPuUxkQOc1X1eszGqHLSkKXXQp
	HRPOv7X5GpLRo6cRXuwvOKFVRb5isYUhuFUPaQ5Dd2+y9EmJd5SxlPTvEnOX1NsUejJtSN33McceV
	sclzbuVmtPJrpF89KOaVReQG2BtKt+QaA1itBt2VLpEz2Mis9h5OGKYMQ89pkAfI2eXAVrWdGksEX
	WQKLgE5MBvor17QcAZaPzDCVi2KdLENih6yl/kuccS89v+No4WQBdj6Xq/J/T5/Mc/ahxGGGPDfl/
	QRzGQDmGw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMj4k-0002gN-Nx; Mon, 28 Sep 2020 02:39:38 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMj4h-0002fK-In
 for linux-rockchip@lists.infradead.org; Mon, 28 Sep 2020 02:39:37 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id AF9C48DB;
 Mon, 28 Sep 2020 10:39:27 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P30218T139798257841920S1601260765340666_; 
 Mon, 28 Sep 2020 10:39:26 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <47f977115a4613f570ce365caf24e8be>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: jagan@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 0/7] rockchip: Add Engicam PX30.Core support
To: Suniel Mahesh <sunil@amarulasolutions.com>,
 philipp.tomsich@theobroma-systems.com, sjg@chromium.org
References: <20200914153634.18121-1-sunil@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <55f45a6d-2ecf-05eb-1883-96ce1d3e5312@rock-chips.com>
Date: Mon, 28 Sep 2020 10:39:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200914153634.18121-1-sunil@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200927_223936_141797_E22C3B70 
X-CRM114-Status: GOOD (  16.91  )
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 jagan@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU3VuaWVsLAoKIMKgwqDCoCBTZWVtcyBsaWtlIHRoZSBjb21tZW50cyBpbiBWMSBkb2VzIG5v
dCBhZGRyZXNzZWQuCgogwqDCoMKgIEFuZCBmb3IgdGhlIERSQU0gc3VwcG9ydCwgYWxsIHRoZSBE
UkFNIHR5cGUgZHJpdmVyIGZvciBQWDMwIGhhcyAKYmVlbiBzdXBwb3J0LCB3aGF0J3MgdGhlIHJl
YXNvbiB5b3UgY2FuJ3QgYWRkCgpEUkFNIHN1cHBvcnQgaW4gVFBMIGZvciB0aGlzIGJvYXJkPwoK
ClRoYW5rcywKCi0gS2V2ZXIKCk9uIDIwMjAvOS8xNCDkuIvljYgxMTozNiwgU3VuaWVsIE1haGVz
aCB3cm90ZToKPiBQWDMwLkNvcmUgaXMgYW4gRURJTU0gU09NIGJhc2VkIG9uIFJvY2tjaGlwIFBY
MzAgZnJvbSBFbmdpY2FtLgo+Cj4gUFgzMC5Db3JlIG5lZWRzIHRvIG1vdW50IG9uIHRvcCBvZiBF
bmdpY2FtIGJhc2Vib2FyZHMgZm9yIGNyZWF0aW5nCj4gY29tcGxldGUgcGxhdGZvcm0gYm9hcmRz
Lgo+Cj4gUG9zc2libGUgYmFzZWJvYXJkcyBhcmUsCj4gLSBFRElNTTIuMiBTdGFydGVyIEtpdAo+
IC0gQy5UT1VDSCAyLjAgMTAuMSIgT3BlbiBGcmFtZQo+Cj4gUmlnaHQgbm93IGJvb3Qgc3VwcG9y
dCBpcyB3b3JraW5nIHZpYSBSb2NrY2hpcCBtaW5pbG9hZGVyLCB3aWxsCj4gdXBkYXRlIHRvIFUt
Qm9vdCBUUEwgb25jZSB0aGUgZGRyIHN1cHBvcnRlZC4KPgo+IE5vdGU6IGR0cyBwYXRjaGVzIGFy
ZSBpbiBMaW51eCBtYWlsaW5nLWxpc3QuCj4KPiBFYXJsaWVyIHBhdGNoIHNlcmllcyBpcyBhdDoK
PiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2plY3QvdWJvb3QvY292ZXIvMjAyMDA3
MjQxMDUxMTkuMTMxMjMtMS1qYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbS8KPgo+IEphZ2FuIFRl
a2kgKDYpOgo+ICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBweDMwOiBBZGQgRW5naWNhbSBFRElN
TTIuMiBTdGFydGVyIEtpdAo+ICAgIHJvY2tjaGlwOiBweDMwOiBBZGQgRVZCX1BYMzAgS2NvbmZp
ZyBoZWxwCj4gICAgcm9ja2NoaXA6IEFkZCBFbmdpY2FtIFBYMzAuQ29yZSBFRElNTTIuMiBTdGFy
dGVyIEtpdAo+ICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBweDMwOiBBZGQgRW5naWNhbSBDLlRP
VUNIIDIuMAo+ICAgIHJvY2tjaGlwOiBBZGQgRW5naWNhbSBQWDMwLkNvcmUgQy5UT1VDSCAyLjAK
PiAgICBkb2M6IHJvY2tjaGlwOiBEb2N1bWVudCBSb2NrY2hpcCBtaW5pbG9hZGVyIGZsYXNoaW5n
Cj4KPiBNaWNoYWVsIFRyaW1hcmNoaSAoMSk6Cj4gICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFk
ZCBFbmdpY2FtIFBYMzAuQ29yZSBTT00KPgo+ICAgYXJjaC9hcm0vZHRzL01ha2VmaWxlICAgICAg
ICAgICAgICAgICAgICAgfCAgIDIgKwo+ICAgYXJjaC9hcm0vZHRzL3B4MzAtZW5naWNhbS1jb21t
b24uZHRzaSAgICAgfCAgMzkgKysrKwo+ICAgYXJjaC9hcm0vZHRzL3B4MzAtZW5naWNhbS1jdG91
Y2gyLmR0c2kgICAgfCAgIDggKwo+ICAgYXJjaC9hcm0vZHRzL3B4MzAtZW5naWNhbS1lZGltbTIu
Mi5kdHNpICAgfCAgIDcgKwo+ICAgYXJjaC9hcm0vZHRzL3B4MzAtcHgzMC1jb3JlLWN0b3VjaDIu
ZHRzICAgfCAgMjIgKysKPiAgIGFyY2gvYXJtL2R0cy9weDMwLXB4MzAtY29yZS1lZGltbTIuMi5k
dHMgIHwgIDIxICsrCj4gICBhcmNoL2FybS9kdHMvcHgzMC1weDMwLWNvcmUuZHRzaSAgICAgICAg
ICB8IDIzMiArKysrKysrKysrKysrKysrKysrKysrCj4gICBhcmNoL2FybS9tYWNoLXJvY2tjaGlw
L3B4MzAvS2NvbmZpZyAgICAgICB8ICAxOCArKwo+ICAgYm9hcmQvcm9ja2NoaXAvZXZiX3B4MzAv
TUFJTlRBSU5FUlMgICAgICAgfCAgMTIgKysKPiAgIGNvbmZpZ3MvcHgzMC1jb3JlLWN0b3VjaDIt
cHgzMF9kZWZjb25maWcgIHwgMTA4ICsrKysrKysrKysKPiAgIGNvbmZpZ3MvcHgzMC1jb3JlLWVk
aW1tMi4yLXB4MzBfZGVmY29uZmlnIHwgMTA4ICsrKysrKysrKysKPiAgIGRvYy9ib2FyZC9yb2Nr
Y2hpcC9yb2NrY2hpcC5yc3QgICAgICAgICAgIHwgIDQwICsrKy0KPiAgIDEyIGZpbGVzIGNoYW5n
ZWQsIDYxNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gICBjcmVhdGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm0vZHRzL3B4MzAtZW5naWNhbS1jb21tb24uZHRzaQo+ICAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGFyY2gvYXJtL2R0cy9weDMwLWVuZ2ljYW0tY3RvdWNoMi5kdHNpCj4gICBjcmVhdGUg
bW9kZSAxMDA2NDQgYXJjaC9hcm0vZHRzL3B4MzAtZW5naWNhbS1lZGltbTIuMi5kdHNpCj4gICBj
cmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vZHRzL3B4MzAtcHgzMC1jb3JlLWN0b3VjaDIuZHRz
Cj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vZHRzL3B4MzAtcHgzMC1jb3JlLWVkaW1t
Mi4yLmR0cwo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2R0cy9weDMwLXB4MzAtY29y
ZS5kdHNpCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgY29uZmlncy9weDMwLWNvcmUtY3RvdWNoMi1w
eDMwX2RlZmNvbmZpZwo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGNvbmZpZ3MvcHgzMC1jb3JlLWVk
aW1tMi4yLXB4MzBfZGVmY29uZmlnCj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
