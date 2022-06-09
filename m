Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B236FC43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jun 2022 09:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=veW1TfKxWjB9ls1rJdospN9BOgyrBDwLZaQ8Y3Fr4qg=; b=uM2gf87HUMgTli
	zPwRWRlBBh/tjFQMU6E0oZIUdOfAA6iBP++jWggq5PuSBr0PKfBgYocDCYe9FrJ/cXT0OQoO+6OuG
	XlKV2a1yMcdmFoLpIybXYaSghpY85+rwQCgWcFtx3hLyv7BGsgbZPBdrpD9QUFSsJnrQ4Cn7pxX5X
	KdyAG5Jgha7wI2VW9p9BYu9Q/shN92Hh4x9CMW7SjoX7qKVuHH8mmnztZ0xTyxO88BVdDShIaTkh+
	Fso6LOKhRqSz1DPExEnKVVjKuClD7RNnJxU2R9qdMhV5lsE3LtHQQCKnhCA5pFqPs6r6phK8W/Ins
	ZTmvoM4tLGPISfBoOalA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzE1f-000U9U-RF; Thu, 09 Jun 2022 09:00:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDpD-000NJM-Qe
	for linux-rockchip@lists.infradead.org; Thu, 09 Jun 2022 08:47:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8962C619AC;
	Thu,  9 Jun 2022 08:47:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50939C34114;
	Thu,  9 Jun 2022 08:47:28 +0000 (UTC)
Message-ID: <afafa5db-cf2c-4e4d-7003-2e7d35658a99@xs4all.nl>
Date: Thu, 9 Jun 2022 10:47:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH] media: hantro: fix compatible string deprecation warning
Content-Language: en-US
To: Robin Murphy <robin.murphy@arm.com>,
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20220517143521.1670663-1-martin.kepplinger@puri.sm>
 <0da188fa-efd8-62d0-2ea6-5a8e0c286cb5@arm.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <0da188fa-efd8-62d0-2ea6-5a8e0c286cb5@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_014731_965184_CEA670B6 
X-CRM114-Status: GOOD (  20.86  )
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

SGkgTWFydGluLAoKT24gNS8xNy8yMiAxODo0NiwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIw
MjItMDUtMTcgMTU6MzUsIE1hcnRpbiBLZXBwbGluZ2VyIHdyb3RlOgo+PiBvZl9kZXZpY2VfaXNf
Y29tcGF0aWJsZSgpIGluIHRoZSBlbmQgdXNlcyBzdHJsZW4gb2YgdGhlIHN0cmluZwo+PiBmb3Ig
Y29tcGFyaXNvbiwgc28gaW4gdGhpcyBjYXNlLCB0aGUgY29uZGl0aW9uIGlzIHRydWUgZXZlbiBp
Zgo+PiB0aGUgcmVxdWVzdGVkIHN0cmluZyAibnhwLGlteDhtcS12cHUtZzEiIGlzIGJlaW5nIHVz
ZWQuIFRoZSBmaXJzdAo+PiBjaGFycyBjb250YWluaW5nICJueHAsaW14OG1xLXZwdSIgYXJlIHRo
ZSBzYW1lLgo+IAo+IEhhdmUgeW91IHNlZW4gdGhpcyBnbyB3cm9uZyBpbiBwcmFjdGljZT8gQUZB
SUNTLCB1bmxlc3MgeW91J3JlIG9uIFNQQVJDLCB3aGljaCBzZWVtcyBzb21ld2hhdCB1bmxpa2Vs
eSBmb3IgYW4gaS5NWDggcGVyaXBoZXJhbCwgb2ZfY29tcGF0X2NtcCgpIHNob3VsZCBtYXAgdG8g
c3RyY2FzZWNtcCgpLCB3aGljaCBzaG91bGQgZG8gdGhlIHJpZ2h0IHRoaW5nIDovCgpSb2JpbiBp
cyBjb3JyZWN0LCB0aGUgZXhpc3RpbmcgY29kZSBpcyBmaW5lIGZvciBhbGwgYnV0IFNQQVJDLCB3
aGljaAp3b24ndCBiZSB1c2luZyB0aGlzIGRyaXZlci4KCkknbSByZWplY3RpbmcgdGhpcyBwYXRj
aC4KClJlZ2FyZHMsCgoJSGFucwoKPiAKPiBSb2Jpbi4KPiAKPj4gRml4IHRoaXMgYnkgZW5jb2Rp
bmcgd2hhdCB0aGUgY29tbWVudCBzYXlzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXJ0aW4gS2Vw
cGxpbmdlciA8bWFydGluLmtlcHBsaW5nZXJAcHVyaS5zbT4KPj4gLS0tCj4+Cj4+IFRoaXMgaXMg
bW9yZSBvZiBhIGJ1Z3JlcG9ydCBhcyB0aGUgc29sdXRpb24gZG9lc24ndCBsb29rIHZlcnkgZWxl
Z2FudAo+PiB0byBtZS4gSSdtIGhhcHB5IGZvciBhZHZpY2UuCj4+Cj4+IHRoYW5rcywKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1hcnRp
bgo+Pgo+Pgo+PiDCoCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyB8
IDcgKysrKy0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9o
YW50cm9fZHJ2LmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+
PiBpbmRleCBhYzIzMmI1Zjc4MjUuLjAxNGZhYjYzN2RmMCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPj4gKysrIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMKPj4gQEAgLTkyMywxMCArOTIzLDExIEBAIHN0
YXRpYyBpbnQgaGFudHJvX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+IMKg
IMKgwqDCoMKgwqAgLyoKPj4gwqDCoMKgwqDCoMKgICogU3VwcG9ydCBmb3IgbnhwLGlteDhtcS12
cHUgaXMga2VwdCBmb3IgYmFja3dhcmRzIGNvbXBhdGliaWxpdHkKPj4gLcKgwqDCoMKgICogYnV0
IGl0J3MgZGVwcmVjYXRlZC4gUGxlYXNlIHVwZGF0ZSB5b3VyIERUUyBmaWxlIHRvIHVzZQo+PiAt
wqDCoMKgwqAgKiBueHAsaW14OG1xLXZwdS1nMSBvciBueHAsaW14OG1xLXZwdS1nMiBpbnN0ZWFk
Lgo+PiArwqDCoMKgwqAgKiBidXQgaXQncyBkZXByZWNhdGVkLgo+PiDCoMKgwqDCoMKgwqAgKi8K
Pj4gLcKgwqDCoCBpZiAob2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUocGRldi0+ZGV2Lm9mX25vZGUs
ICJueHAsaW14OG1xLXZwdSIpKQo+PiArwqDCoMKgIGlmICgob2ZfZGV2aWNlX2lzX2NvbXBhdGli
bGUocGRldi0+ZGV2Lm9mX25vZGUsICJueHAsaW14OG1xLXZwdSIpKSAmJgo+PiArwqDCoMKgwqDC
oMKgwqAgKCFvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShwZGV2LT5kZXYub2Zfbm9kZSwgIm54cCxp
bXg4bXEtdnB1LWcxIikpICYmCj4+ICvCoMKgwqDCoMKgwqDCoCAoIW9mX2RldmljZV9pc19jb21w
YXRpYmxlKHBkZXYtPmRldi5vZl9ub2RlLCAibnhwLGlteDhtcS12cHUtZzIiKSkpCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCBkZXZfd2FybigmcGRldi0+ZGV2LCAiJXMgY29tcGF0aWJsZSBpcyBkZXBy
ZWNhdGVkXG4iLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1hdGNoLT5jb21wYXRp
YmxlKTsKPj4gwqAgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
