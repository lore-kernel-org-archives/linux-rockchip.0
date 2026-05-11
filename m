Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE85ECD37BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 20:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtB96lOilx1u2utDzEPCZfqQpOhncs7akYBBw0bCVd0=; b=cLrh51FjymJ2SY
	e1J0y53fB7ps2mnj7eIVbGRcuJar8q8BHiHPhyue9ee7r8UyUUIRUy8voWCOGkpPQJu/6gaKsa2mC
	5rk6LLurK7573djWjSvd+gU0pnHM8ZH9DK/GNZFLJ87mXjOCBASS+x6+XVxQDmDnjXBflz+LiMxpE
	82Khu6pkQcpFYcGRKxVeCXQGC62ysZbYXJNvLqrHRIohM8FhC8mM+H4dl8ditTiSOVRW8Y51CcUTz
	8xvh5SPOoVEYMfk8PGsYJmezSLdlEtFTY4yKXd8WJTP7IjlMDTPbIOCYhHNhuYU12ooNP8wOuW6Aq
	nplUIpAvNkKA0be+rbqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMXRl-0000000Ejim-2VXz;
	Mon, 11 May 2026 20:41:49 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMXRf-0000000EjhW-19fD
	for linux-rockchip@lists.infradead.org;
	Mon, 11 May 2026 20:41:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1778532101;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xDfLIv6tiWpmACcsMnlD5yn+pQeqBizpoJHnp+m+Mek=;
	b=J5BjjX6BWmkvVStnPPEJnJ0dpkln2l9LC7c7EkwUk9MiwKsoEFOCFOpOnr53maUczpjNPs
	omxafssGgLLGafekPODPMMr8GFx45GXlWDN3n8bvDTJ87G43mMbtIXG43vCYiKYilQHzON
	O8hijnVC8dd3dIq1Eckwlz3oW1xpXxE=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-191-eCRtTRYDPt-7jF0_JKEpAg-1; Mon, 11 May 2026 16:41:40 -0400
X-MC-Unique: eCRtTRYDPt-7jF0_JKEpAg-1
X-Mimecast-MFC-AGG-ID: eCRtTRYDPt-7jF0_JKEpAg_1778532099
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8b55b5aa8c7so105299156d6.0
        for <linux-rockchip@lists.infradead.org>; Mon, 11 May 2026 13:41:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778532099; x=1779136899;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xDfLIv6tiWpmACcsMnlD5yn+pQeqBizpoJHnp+m+Mek=;
        b=hphunst3KkB2TRY4gAV7XM5Uf2jc1mL/a9ddxEdhCDp1PBd7D/H1X1TUAuKBAmaDW+
         WFSsQnQDPAUXKwR3Y6POXzXgBUaifqJixV8CoH3xjCuFQsRUE+E93BL9Y2H591utMcfX
         Gd2CzQZLK0Cp3/vgl/GbTghOoWN2LB1UISMSyFzpgdJOLCUopcpW7bk9ZMrbt15iviPY
         My5HaueMXUfd+2gxq9PC3X1hvLzzqLNn7Mh7uz9L0LEIq+UGSbJxkrwD8K3X/8N57w8F
         wfwd/NP72y5BLrjcCNuyOHiYDXFQsUWgG+Mm7GOkbMF39A5fS0hpW7M4ZEYKrvv1mgBU
         dBSA==
X-Forwarded-Encrypted: i=1; AFNElJ/CINCf708zfw1albZrtNvxZCFEeuhk4xpLutaiiM7zexqUn0DEDIIksVsjRzkn7Tbvrb4mT6L9IT3iziP5Nw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwDFMum6JHWMTCr0Zi7UzIzjZhSkGYL/+KiPont3ydP1hsQi7eg
	c2k4f/968XYHm4rEu4A7iOaJid17YlPI8ow70iQmZ8XQboNWQ2nA64rQifU5U8YmIonCIY1yODW
	/2CDcPOATuusU0pWhHE3MgYDvtZlbR7u18OR03RD4gZj/N03psRtcbEqIYP8tHCI16P31ekygfw
	==
X-Gm-Gg: Acq92OFY4hzf3N4AsvGbNjL7aDsJF9Lapsxs819yfXGVbFLtrJdZIyfTod1i3UTka7k
	OI8yW9MR73oa+L8UNYHn0SKtfp5+U2MKkQgkslcr56l/3EcF3CyclBCpr8v7DLgob6DqDfVxwRR
	kY/0CKugay6cwChNXqWLM9DRyz/u8rC5nJiwgbRttoSXh8w9G0XWL6bRrYLNP+CSP2t2v8+y5mx
	YwCmfAKShwBYgWmFTJQsFjZlYECKFva7a24rhgX3mHoMwVE/QXIaC86Is8SZbG4JUz2S2+G4K8/
	XZvHe+TmkJnt81urT4/fcwQmUvDOVLgNomGEAwml9B6GFGqK9ko62KH/hOIR59P3aW36emnY54J
	syLY17e5UcQZGaueGiJ5NCjGwCGubyHVZt5MshXXYi+LtIkxsP3KhPw7S
X-Received: by 2002:a05:6214:3c8c:b0:8ba:942:3e38 with SMTP id 6a1803df08f44-8c661e86acdmr4794236d6.19.1778532099475;
        Mon, 11 May 2026 13:41:39 -0700 (PDT)
X-Received: by 2002:a05:6214:3c8c:b0:8ba:942:3e38 with SMTP id 6a1803df08f44-8c661e86acdmr4793766d6.19.1778532098935;
        Mon, 11 May 2026 13:41:38 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8bf3b0c4c9dsm108806616d6.5.2026.05.11.13.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 13:41:38 -0700 (PDT)
Date: Mon, 11 May 2026 16:41:36 -0400
From: Brian Masney <bmasney@redhat.com>
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH] clk: rockchip: Use flexible array for clock table
Message-ID: <agI_ANymmPyyWxuE@redhat.com>
References: <20260511032252.361906-1-rosenp@gmail.com>
 <agH-ivEdw12_3OJz@redhat.com>
 <CAKxU2N-nEx-=KFh9djQRGZVTR_HJTSrJYzAa8NR+4QcNvbkxqw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKxU2N-nEx-=KFh9djQRGZVTR_HJTSrJYzAa8NR+4QcNvbkxqw@mail.gmail.com>
User-Agent: Mutt/2.3.1 (2026-03-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: mKRTPZH6SGfedKFr1K-V_XX8kfpzt8n-b1JmAu-Blm8_1778532099
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_134143_386585_89302F8F 
X-CRM114-Status: GOOD (  23.33  )
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

KyBHdXN0YXZvCgpPbiBNb24sIE1heSAxMSwgMjAyNiBhdCAxMjowODo1NlBNIC0wNzAwLCBSb3Nl
biBQZW5ldiB3cm90ZToKPiBPbiBNb24sIE1heSAxMSwgMjAyNiBhdCA5OjA24oCvQU0gQnJpYW4g
TWFzbmV5IDxibWFzbmV5QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4KPiA+IEhpIFJvc2VuLAo+ID4K
PiA+IE9uIFN1biwgTWF5IDEwLCAyMDI2IGF0IDA4OjIyOjUyUE0gLTA3MDAsIFJvc2VuIFBlbmV2
IHdyb3RlOgo+ID4gPiBTdG9yZSB0aGUgY2xvY2sgbG9va3VwIHRhYmxlIGluIHRoZSBSb2NrY2hp
cCBjbG9jayBwcm92aWRlcgo+ID4gPiBhbGxvY2F0aW9uIGluc3RlYWQgb2YgYWxsb2NhdGluZyBp
dCBzZXBhcmF0ZWx5Lgo+ID4gPgo+ID4gPiBUaGlzIHRpZXMgdGhlIHRhYmxlIGxpZmV0aW1lIGRp
cmVjdGx5IHRvIHRoZSBwcm92aWRlciBhbmQgcmVtb3ZlcyBhCj4gPiA+IHNlcGFyYXRlIGFsbG9j
YXRpb24gZmFpbHVyZSBwYXRoIHdoaWxlIHByZXNlcnZpbmcgdGhlIGNsa19vbmVjZWxsX2RhdGEK
PiA+ID4gbG9va3VwIGludGVyZmFjZS4KPiA+ID4KPiA+ID4gQXNzaXN0ZWQtYnk6IENvZGV4OkdQ
VC01LjUKPiA+ID4gU2lnbmVkLW9mZi1ieTogUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+
Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmMgfCAxNyArKysrLS0t
LS0tLS0tLS0tLQo+ID4gPiAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmggfCAgMiArKwo+ID4g
PiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+ID4g
Pgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmMgYi9kcml2ZXJz
L2Nsay9yb2NrY2hpcC9jbGsuYwo+ID4gPiBpbmRleCBlZThjNzliOTM4ZDMuLmRiYjRiNmYzM2Fi
YiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmMKPiA+ID4gKysr
IGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmMKPiA+ID4gQEAgLTM1OSwyNiArMzU5LDIxIEBA
IHN0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVyICpyb2NrY2hpcF9jbGtfaW5pdF9i
YXNlKAo+ID4gPiAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgbnJfY2xrcywgYm9vbCBoYXNf
bGF0ZV9jbG9ja3MpCj4gPiA+ICB7Cj4gPiA+ICAgICAgIHN0cnVjdCByb2NrY2hpcF9jbGtfcHJv
dmlkZXIgKmN0eDsKPiA+ID4gLSAgICAgc3RydWN0IGNsayAqKmNsa190YWJsZTsKPiA+ID4gICAg
ICAgc3RydWN0IGNsayAqZGVmYXVsdF9jbGtfdmFsOwo+ID4gPiAgICAgICBpbnQgaTsKPiA+ID4K
PiA+ID4gICAgICAgZGVmYXVsdF9jbGtfdmFsID0gRVJSX1BUUihoYXNfbGF0ZV9jbG9ja3MgPyAt
RVBST0JFX0RFRkVSIDogLUVOT0VOVCk7Cj4gPiA+Cj4gPiA+IC0gICAgIGN0eCA9IGt6YWxsb2Nf
b2JqKHN0cnVjdCByb2NrY2hpcF9jbGtfcHJvdmlkZXIpOwo+ID4gPiArICAgICBjdHggPSBremFs
bG9jX2ZsZXgoKmN0eCwgY2xrX3RhYmxlLCBucl9jbGtzKTsKPiA+ID4gICAgICAgaWYgKCFjdHgp
Cj4gPiA+ICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4gPiA+Cj4gPiA+
IC0gICAgIGNsa190YWJsZSA9IGt6YWxsb2Nfb2JqcyhzdHJ1Y3QgY2xrICosIG5yX2Nsa3MpOwo+
ID4gPiAtICAgICBpZiAoIWNsa190YWJsZSkKPiA+ID4gLSAgICAgICAgICAgICBnb3RvIGVycl9m
cmVlOwo+ID4gPiAtCj4gPiA+ICAgICAgIGZvciAoaSA9IDA7IGkgPCBucl9jbGtzOyArK2kpCj4g
PiA+IC0gICAgICAgICAgICAgY2xrX3RhYmxlW2ldID0gZGVmYXVsdF9jbGtfdmFsOwo+ID4gPiAr
ICAgICAgICAgICAgIGN0eC0+Y2xrX3RhYmxlW2ldID0gZGVmYXVsdF9jbGtfdmFsOwo+ID4gPgo+
ID4gPiAtICAgICBjdHgtPnJlZ19iYXNlID0gYmFzZTsKPiA+ID4gLSAgICAgY3R4LT5jbGtfZGF0
YS5jbGtzID0gY2xrX3RhYmxlOwo+ID4gPiAgICAgICBjdHgtPmNsa19kYXRhLmNsa19udW0gPSBu
cl9jbGtzOwo+ID4gPiArICAgICBjdHgtPmNsa19kYXRhLmNsa3MgPSBjdHgtPmNsa190YWJsZTsK
PiA+Cj4gPiBXaGVyZSdzIHRoZSBfX2NvdW50ZWRfYnk/IEFsc28gc3RydWN0IGNsa19vbmVjZWxs
X2RhdGEgaXMgZW1iZWRkZWQKPiA+IGluc2lkZSBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVy
LCBhbmQgSSdtIG5vdCBzdXJlIG9mZmhhbmQgaG93Cj4gPiB0aGF0J2xsIHdvcmsuCj4gTm90IHBy
ZXNlbnQuIF9fY291bnRlZF9ieSBkb2VzIG5vdCB3b3JrIHdpdGggZW1iZWRkZWQgc3RydWN0IG1l
bWJlcnMuCj4gTm8gbmVlZCB0byBhZGQgb25lIElNTy4KCkknbGwgYmUgaG9uZXN0IHRoYXQgSSdt
IG5vdCBzdXJlIHdoYXQncyBjb3JyZWN0IGhlcmUuIEkgYWRkZWQgR3VzdGF2bwpzaW5jZSBJIHNh
dyBjb21tZW50cyBmcm9tIGhpbSBiZWZvcmUgYWJvdXQgdGhlc2UgdHlwZXMgb2YgY2hhbmdlcy4K
CkJyaWFuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
