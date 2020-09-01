Return-Path: <SRS0=U2ba=CK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F0D6C433E2
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 12:25:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 32B72204EC
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2020 12:25:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ITTsip9I"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 32B72204EC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gMbHd6eDJ8efbAVW15myHQHC5ShF67J2wIadWRI5aEY=; b=ITTsip9IdMvRpsU1Z+VWZ4u1E
	guP0tqnCjPYBfu/OkgCiXC+HD7SBHF0hrvvg7EC3Xy1AeMVpiMlMoB/OvjmlwemZKSFE/+flbTcXL
	T/i6vxLKQ53DQcp73TQX5wWTMvETykFxWysdCsEXL8ZvbzNkda52y959QGHvPm4QSMYIOSEh2KZyi
	y1obRuXVicLkbiGSgUvF3nsTAEQBTpjQJYdbB1E3gVdcTo8WRHzD0ttbBvmlz85xI4BGWbDXvHhmE
	kJRneZksrBNBxniuOgfvJX3Cccg39EfTUEpo30RbV/AuigCv8phsFmnhfzwFjbDECf9ZD3Zl06EDX
	iF3A6MJmg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kD5Lg-0003n0-8s; Tue, 01 Sep 2020 12:25:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kD5Lc-0003mJ-FS; Tue, 01 Sep 2020 12:25:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 671891FB;
 Tue,  1 Sep 2020 05:25:07 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D0D03F68F;
 Tue,  1 Sep 2020 05:25:06 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable HDMI sound nodes for
 rk3328-rock64
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 Heiko Stuebner <heiko@sntech.de>
References: <20200802154231.2639186-1-katsuhiro@katsuster.net>
 <7880329.2VsnZ9RgxX@phil>
 <0e1c3467-0ba0-6b82-4227-40959f0c4b0e@katsuster.net>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <cca43999-fd73-2a71-a4f8-894a44f03032@arm.com>
Date: Tue, 1 Sep 2020 13:25:04 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0e1c3467-0ba0-6b82-4227-40959f0c4b0e@katsuster.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200901_082512_581396_C4054647 
X-CRM114-Status: GOOD (  18.81  )
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMC0wOC0zMSAwMjoyNiwgS2F0c3VoaXJvIFN1enVraSB3cm90ZToKPiBPbiAyMDIwLzA4
LzMxIDQ6MTYsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+PiBIaSwKPj4KPj4gQW0gU29ubnRhZywg
Mi4gQXVndXN0IDIwMjAsIDE3OjQyOjMxIENFU1Qgc2NocmllYiBLYXRzdWhpcm8gU3V6dWtpOgo+
Pj4gVGhpcyBwYXRjaCBlbmFibGVzIEhETUkgc291bmQgKEkyUzApIGFuZCBBbmFsb2cgc291bmQg
KEkyUzEpIHdoaWNoCj4+PiBhcmUgZGVmaW5lZCBpbiByazMzMjguZHRzaSwgYW5kIHJlcGxhY2Ug
U1BESUYgbm9kZXMuCj4+Pgo+Pj4gV2UgY2FuIHVzZSBTUERJRiBwYXNzLXRocm91Z2ggd2l0aCBz
dWl0YWJsZSBBTFNBIHNldHRpbmdzIGFuZCBvbgo+Pj4gbXB2IG9yIG90aGVyIG1lZGlhIHBsYXll
cnMuCj4+PiDCoMKgIC0gU2V0dGluZ3M6IAo+Pj4gaHR0cHM6Ly9naXRodWIuY29tL0xpYnJlRUxF
Qy9MaWJyZUVMRUMudHYvYmxvYi9tYXN0ZXIvcHJvamVjdHMvUm9ja2NoaXAvZmlsZXN5c3RlbS91
c3Ivc2hhcmUvYWxzYS9jYXJkcy9TUERJRi5jb25mIAo+Pj4KPj4+IMKgwqAgLSBFeC46IG1wdiBm
b28uYWMzIC0tYXVkaW8tc3BkaWY9YWMzIAo+Pj4gLS1hdWRpby1kZXZpY2U9J2Fsc2EvU1BESUYu
cGNtLmllYzk1OC4wOlNQRElGJwo+Pj4KPj4+IFtXaHkgdXNlIHNpbXBsZS1hdWRpby1jYXJkIGZv
ciBTUERJRj9dCj4+Pgo+Pj4gRm9yIG5ld2x5IGFkZGluZyBub2RlcywgQVNvQyBndXlzIHJlY29t
bWVuZCB0byB1c2UgYXVkaW8tZ3JhcGgtY2FyZC4KPj4+IEJ1dCBhbGwgb3RoZXIgc291bmQgbm9k
ZXMgZm9yIHJrMzMyOCBoYXZlIGFscmVhZHkgYmVlbiBkZWZpbmVkIGJ5Cj4+PiBzaW1wbGUtYXVk
aW8tY2FyZC4gSW4gdGhpcyB0aW1lLCBJIGNob3NlIGZvciBjb25zaXN0ZW50IHNvdW5kIG5vZGVz
Lgo+Pj4KPj4+IFtETUEgYWxsb2NhdGlvbiBwcm9ibGVtXQo+Pj4KPj4+IEFmdGVyIHRoaXMgcGF0
Y2ggaXMgYXBwbGllZCwgVUFSVDIgd2lsbCBmYWlsIHRvIGFsbG9jYXRlIERNQSByZXNvdXJjZXMK
Pj4+IGJ1dCBVQVJUIGRyaXZlciBjYW4gd29yayBmaW5lIHdpdGhvdXQgRE1BLgo+Pj4KPj4+IFRo
aXMgZXJyb3IgaXMgcmVsYXRlZCB0byB0aGUgRE1BQyBvZiByazMzMjggKHBsMzMwIG9yIGNvbXBh
dGlibGUpLgo+Pj4gRE1BQyBjb25uZWN0ZWQgdG8gMTYgRE1BIHNvdXJjZXMuIEVhY2ggc291cmNl
cyBoYXZlIElEIG51bWJlciB0aGF0IGlzCj4+PiBjYWxsZWQgJ1JlcSBudW1iZXInIGluIHJrMzMy
OCBUUk0uIEFmdGVyIHRoaXMgcGF0Y2ggaXMgYXBwbGllZCB0b3RhbCA3Cj4+PiBvZiBETUEgc291
cmNlcyB3aWxsIGJlIGFjdGl2YXRlZCBhcyBmb2xsb3dzOgo+Pj4KPj4+IHwgUmVxIG51bWJlciB8
IFNvdXJjZSB8IFJlcXVpcmVkwqAgfAo+Pj4gfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDC
oMKgwqDCoMKgIHwgY2hhbm5lbHPCoCB8Cj4+PiB8LS0tLS0tLS0tLS0tKy0tLS0tLS0tKy0tLS0t
LS0tLS0tfAo+Pj4gfMKgIDgswqAgOcKgwqDCoMKgIHwgU1BJMMKgwqAgfCAyY2jCoMKgwqDCoMKg
wqAgfAo+Pj4gfCAxMSwgMTLCoMKgwqDCoCB8IEkyUzDCoMKgIHwgMmNowqDCoMKgwqDCoMKgIHwK
Pj4+IHwgMTQsIDE1wqDCoMKgwqAgfCBJMlMxwqDCoCB8IDJjaMKgwqDCoMKgwqDCoCB8Cj4+PiB8
wqDCoMKgwqAgMTDCoMKgwqDCoCB8IFNQRElGwqAgfCAxY2jCoMKgwqDCoMKgwqAgfAo+Pj4gfC0t
LS0tLS0tLS0tLSstLS0tLS0tLSstLS0tLS0tLS0tLXwKPj4+IHzCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHwgVG90YWzCoCB8IDdjaMKgwqDCoMKgwqDCoCB8Cj4+PiB8LS0tLS0tLS0tLS0tKy0tLS0t
LS0tKy0tLS0tLS0tLS0tfAo+Pj4gfMKgIDYswqAgN8KgwqDCoMKgIHwgVUFSVDLCoCB8IDJjaMKg
wqDCoMKgwqDCoCB8IC0+IGNhbm5vdCBnZXQgRE1BIGNoYW5uZWxzCj4+Pgo+Pj4gRHVlIHRvIHJr
MzMyOCBETUFDIHNwZWNpZmljYXRpb24gd2UgY2FuIHVzZSBtYXggOCBjaGFubmVscyBhdCBzYW1l
Cj4+PiB0aW1lLiBJZiBTUEkwL0kyUzAvSTJTMS9TUERJRiB3aWxsIGJlIGFjdGl2YXRlZCBieSB0
aGlzIHBhdGNoLAo+Pj4gcmVxdWlyZWQgRE1BQyBjaGFubmVscyByZWFjaCB0byA3LiBTbyB0aGUg
bGFzdCB0d28gY2hhbm5lbHMgKGZvcgo+Pj4gVUFSVDIpIGNhbm5vdCBnZXQgRE1BIHJlc291cmNl
cy4KPj4KPj4gV291bGRuJ3QgdGhlIGRtYSBhbGxvY2F0aW9uIGRlcGVuZCBvbiB0aGUgcHJvYmUg
b3JkZXJpbmc/Cj4+IE9yIGlzIHRoaXMgcHJlZGV0ZXJtaW5lZCwgc28gdGhhdCBhbHdheXMgdWFy
dDIgbG9vc2VzIGl0cyBkbWFzPwo+Pgo+IAo+IEFoLCBpdCdzIGRlcGVuZHMgb24gcHJvYmUgb3Jk
ZXJpbmcgd2hlbiB1c2VycyB1c2Uga2VybmVsIG1vZHVsZXMuLi4KPiAKPiBJdCdzIGJldHRlciB0
byBkaXNhYmxlIERNQSBjaGFubmVscyBmb3IgVUFSVDIgZm9yIGF2b2lkaW5nIHByb2JsZW0uCj4g
SSdsbCBmaXggYW5kIHJlc2VuZCBwYXRjaC4KCkZXSVcgaXQgc2VlbXMgdGhhdCBzaW5jZSAwODli
NmQzNjU0OTEsIERNQSBpcyBlZmZlY3RpdmVseSBkaXNhYmxlZCBmb3IgClVBUlQyIGFueXdheSAo
dW5sZXNzIHRoZSB1c2VyIGdvZXMgb3V0IG9mIHRoZWlyIHdheSB0byByZXB1cnBvc2UgaXQpLCBz
byAKbWF5YmUgdGhpcyBpcyBubyBsb25nZXIgc3VjaCBhbiBpbW1lZGlhdGUgY29uY2Vybj8KClJv
YmluLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
