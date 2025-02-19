Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 040EAC021AA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Feb 2025 01:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqlJTBmAI/bugYpQgggzDUUHVsC8DGk6YGWCgB2mGWo=; b=qpYnIYFnj05PG8
	Bxj3DGSGzs2KnKp1GvGDaN93Im4CceLnI1jSg5z4vD6fXl99zsoEzavi7YYsXHrCe+bzfWGyM2OiR
	1P71h50GiQLI0zfO9F9jdzNcBW5/RJOtg6cc9x2pWYU9s4mfD5MtQdma1Gd0hY+zMhDQ09+u4MOLT
	OGXLQWyMoaSEe6InsFLvjvs7rqFEEvzgjdjcCvettqT43NqIHpGMM4bZ+VbXaKPupxpETdZbO+Kzg
	r3p7kKFNRZ6M8ZqlDPyPjWITsTCcdONALN3J3v9bCg6+HhY5iI7Jfj/I4P7RYdAAPBnINpwzWDwDb
	J5oNt04sgwrw7GvTwPhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkYUH-0000000ASfM-3cto;
	Wed, 19 Feb 2025 01:02:53 +0000
Received: from mail-m1973183.qiye.163.com ([220.197.31.83])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkYRq-0000000ARxk-1WIu
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Feb 2025 01:00:23 +0000
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id b77902a0;
	Wed, 19 Feb 2025 09:00:17 +0800 (GMT+08:00)
Message-ID: <08a7b3ab-3e2d-4d69-8f8d-4dbd5a26fd3e@rock-chips.com>
Date: Wed, 19 Feb 2025 09:00:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Steven Price <steven.price@arm.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, "Rafael J . Wysocki"
 <rafael@kernel.org>, "Martin K . Petersen" <martin.petersen@oracle.com>,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v7 4/7] pmdomain: rockchip: Add smc call to inform
 firmware
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <2579724.BzM5BlMlMQ@diego> <321804ef-f852-47cf-afd7-723666ec8f62@arm.com>
 <5649637.F8r316W7xa@diego>
 <fa184920-e1f5-4eee-894a-f617e6d8e817@rock-chips.com>
 <CAPDyKFqPZcQOqEbyfy8uC-SO8vx1f=Ck-fPSqvXqiS1H-JJsrA@mail.gmail.com>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAPDyKFqPZcQOqEbyfy8uC-SO8vx1f=Ck-fPSqvXqiS1H-JJsrA@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk5JQlZOHkgfQkhITk5CSRpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a951bb84ac409cckunmb77902a0
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTI6DBw4OTIQESoINR9KLz1R
	LTQwFExVSlVKTEhCQklNQ0pCT0tLVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhKSE83Bg++
DKIM-Signature: a=rsa-sha256;
	b=OBVW2tm2D14VPgSiPRBJ/M2WRg/7HyhOBYNUlzM54xUxZ0kavmmKUKojM8uWWCsCC2smCjEROfQSp+zvSwGJLRg9jNoVoN5FewFncUgkz1LMzBIa09sBRbUzL5AXQOD9EwwPWfoBEW7hLSvuGJW/R+nBMI4ydsZOpALPlbud8RE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=/2XJbqtRuXbaGBHrU7SLlVzjvIwfrBq5BanTrFmG6AU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_170022_559738_CC18CC81 
X-CRM114-Status: GOOD (  16.44  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

5ZyoIDIwMjUvMi8xOCAxOTowNSwgVWxmIEhhbnNzb24g5YaZ6YGTOgo+IE9uIFR1ZSwgMTggRmVi
IDIwMjUgYXQgMDE6NTMsIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90
ZToKPj4KPj4gSGkgSGVpa28sIFN0ZXZlbgo+Pgo+PiDlnKggMjAyNS8yLzE4IDQ6NTAsIEhlaWtv
IFN0w7xibmVyIOWGmemBkzoKPj4+IEFtIE1vbnRhZywgMTcuIEZlYnJ1YXIgMjAyNSwgMTg6MTA6
MzIgTUVaIHNjaHJpZWIgU3RldmVuIFByaWNlOgo+Pj4+IE9uIDE3LzAyLzIwMjUgMTU6MTYsIEhl
aWtvIFN0w7xibmVyIHdyb3RlOgo+Pj4+PiBIaSBTdGV2ZW4sCj4+Pj4+Cj4+Pj4+IEFtIE1vbnRh
ZywgMTcuIEZlYnJ1YXIgMjAyNSwgMTU6NDc6MjEgTUVaIHNjaHJpZWIgU3RldmVuIFByaWNlOgo+
Pj4+Pj4gT24gMDUvMDIvMjAyNSAwNjoxNSwgU2hhd24gTGluIHdyb3RlOgo+Pj4+Pj4+IEluZm9y
bSBmaXJtd2FyZSB0byBrZWVwIHRoZSBwb3dlciBkb21haW4gb24gb3Igb2ZmLgo+Pj4+Pj4+Cj4+
Pj4+Pj4gU3VnZ2VzdGVkLWJ5OiBVbGYgSGFuc3NvbiA8dWxmLmhhbnNzb25AbGluYXJvLm9yZz4K
Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNv
bT4KPj4+Pj4+PiAtLS0KPj4+Pj4+Cj4+Pj4+PiBUaGlzIHBhdGNoIGlzIGNhdXNpbmcgbXkgRmly
ZWZseSBSSzMyODggdG8gZmFpbCB0byBib290LCBpdCBoYW5ncwo+Pj4+Pj4gc2hvcnRseSBhZnRl
ciByZWFjaGluZyB1c2VyIHNwYWNlLCBidXQgdGhlIGJvb3R1cCBtZXNzYWdlcyBpbmNsdWRlIHRo
ZQo+Pj4+Pj4gc3VzcGljaW91cyBsaW5lICJCYWQgbW9kZSBpbiBwcmVmZXRjaCBhYm9ydCBoYW5k
bGVyIGRldGVjdGVkIi4KPj4+Pj4+IEkgc3VzcGVjdCB0aGUgZmlybXdhcmUgb24gdGhpcyBib2Fy
ZCBkb2Vzbid0IHN1cHBvcnQgdGhpcyBuZXcgU01DCj4+Pj4+PiBjb3JyZWN0bHkuIFJldmVydGlu
ZyB0aGlzIHBhdGNoIG9uIHRvcCBvZiBsaW51eC1uZXh0IGdldHMgZXZlcnl0aGluZwo+Pj4+Pj4g
d29ya2luZyBhZ2Fpbi4KPj4+Pj4KPj4+Pj4gSXMgeW91ciBib2FyZCBhY3R1YWxseSBydW5uaW5n
IHNvbWUgdHJ1c3RlZCBmaXJtd2FyZT8KPj4+Pgo+Pj4+IE5vdCBhcyBmYXIgYXMgSSBrbm93Lgo+
Pj4+Cj4+Pj4+IFN0b2NrIHJrMzI4OCBuZXZlciBoYWQgdGYtYSAvIHBzY2kgWzBdLCBJIGRpZCB3
b3JrIG9uIHRoYXQgZm9yIGEgd2hpbGUsCj4+Pj4+IGJ1dCBkb24ndCB0aGluayB0aGF0IGV2ZXIg
dG9vayBvZmYuCj4+Pj4+Cj4+Pj4+IEknbSB3b25kZXJpbmcgd2hvIHRoZSBzbWNjIGNhbGwgaXMg
Y2FsbGluZywgYnV0IGRvbid0IGtub3cgYWJvdXQKPj4+Pj4gYWJvdXQgc21jYyBzdHVmZi4KPj4+
Pgo+Pj4+IEdvb2QgcXVlc3Rpb24gLSBpdCdzIHF1aXRlIHBvc3NpYmxlIHRoaW5ncyBhcmUgYmxv
d2luZyB1cCBqdXN0IGJlY2F1c2UKPj4+PiB0aGVyZSdzIG5vdGhpbmcgdGhlcmUgdG8gaGFuZGxl
IHRoZSBTTUMuIE15IERUQiBpcyBhcyB1cHN0cmVhbToKPj4+Pgo+Pj4+ICAgICAgICAgICBjcHVz
IHsKPj4+PiAgICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwweDAxPjsKPj4+PiAg
ICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwweDAwPjsKPj4+PiAgICAgICAgICAgICAg
ICAgICBlbmFibGUtbWV0aG9kID0gInJvY2tjaGlwLHJrMzA2Ni1zbXAiOwo+Pj4+ICAgICAgICAg
ICAgICAgICAgIHJvY2tjaGlwLHBtdSA9IDwweDA2PjsKPj4+Pgo+Pj4+IEkgaGF2ZW4ndCBpbnZl
c3RpZ2F0ZWQgd2h5IHRoaXMgY29kZSBpcyBhdHRlbXB0aW5nIHRvIGNhbGwgYW4gU01DIG9uCj4+
Pj4gdGhpcyBib2FyZC4KPj4+Cj4+PiBJIGd1ZXNzIHRoZSB3aHkgaXMgZWFzeSwgc29tZXRoaW5n
IHRvIGRvIHdpdGggc3VzcGVuZCA6LSkgLgo+Pj4KPj4+IEkgZGlkIGdvIHRlc3RpbmcgYSBiaXQs
IGJvb3RpbmcgYSByazMyODgtdmV5cm9uIHByb2R1Y2VzIHRoZSBzYW1lIGlzc3VlCj4+PiB5b3Ug
c2F3LCBsaWtlbHkgZHVlIHRvIHRoZSBub24tZXhpc3RlbnQgdHJ1c3RlZC1maXJtd2FyZS4KPj4+
Cj4+PiBPbiB0aGUgYXJtNjQtc2lkZSwgSSB0cmllZCBhIHBsZXRob3JhIG9mIHNvY3MgKyB0ZmEt
dmVyc2lvbnMsCj4+Pgo+Pj4gICAgIHJrMzMyODogdjIuNSB1cHN0cmVhbSg/KS10Zi1hCj4+PiAg
ICAgcmszMzk5OiB2Mi45IHVwc3RyZWFtLXRmLWEKPj4+ICAgICBweDMwOiB2Mi40K3YyLjkgdXBz
dHJlYW0tdGYtYQo+Pj4gICAgIHJrMzU2ODogdjIuMyB2ZW5kb3ItdGYtYQo+Pj4gICAgIHJrMzU4
ODogdjIuMyB2ZW5kb3ItdGYtYQo+Pj4KPj4+IGFuZCBhbGwgcmFuIGp1c3QgZmluZS4KPj4+IFNv
IGl0IHJlYWxseSBsb29rcyBsaWtlIHRoZSBzbWNjIGNhbGwgZ29pbmcgdG8gc29tZSB1bnNldCBs
b2NhdGlvbiBpcwo+Pj4gdGhlIGN1bHByaXQuCj4+Pgo+Pj4gTG9va2luZyBhdCBvdGhlciB1c2Vy
cyBvZiBhcm1fc21jY19zbWMsIG1vc3Qgb2YgdGhlbSBzZWVtIHRvIGJlIGhhbmRsZWQKPj4+IHVu
Z3VhcmRlZCwgYnV0IHNvbWUgb2xkZXIoPykgYXJtMzIgYm9hcmRzIGFjdHVhbGx5IGNoZWNrIHRo
ZWlyIERUcyBmb3IgYW4KPj4+IG9wdGVlIG5vZGUgYmVmb3JlIHRyeWluZyB0aGVpciBzbWMtY2Fs
bC4KPj4+Cj4+PiBJIGd1ZXNzIGluIHRoZSBwbS1kb21haW4gY2FzZSwgd2UgY291bGQganVzdCB3
cmFwIHRoZSBjYWxsIHdpdGg6Cj4+PiAgICAgICAgaWYoYXJtX3NtY2NjXzFfMV9nZXRfY29uZHVp
dCgpICE9IFNNQ0NDX0NPTkRVSVRfTk9ORSkKPj4+Cj4+Cj4+IFRoYW5rcyBmb3IgdGhlIHJlcG9y
dCBhbmQgaGVscGluZyBmaW5kIG91dCB0aGUgY2F1c2UhCj4+Cj4+IEBVbGYsIGlmIHRoZSBzb2x1
dGlvbiBhYm92ZSBzZWVtcyByZWFzb25hYmxlIHRvIHlvdSwgSSBjYW4gY29vayBhIGZpeC11cAo+
PiBwYXRjaC4KPiAKPiBTZWVtcyByZWFzb25hYmxlIHRvIG1lLCB0aGFua3MhCgpUaGFua3MgVWxm
LCBJIGhhdmUgc2VudCBhIGluZGl2aWR1YWwgZml4LXVwIHBhdGNoLgoKPiAKPiBbLi4uXQo+IAo+
IEtpbmQgcmVnYXJkcwo+IFVmZmUKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
