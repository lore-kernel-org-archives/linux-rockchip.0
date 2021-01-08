Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E132DC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 12:12:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 91C8B207D0
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 12:12:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 91C8B207D0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZWgIjfdriyWqCwfP9b5gHiLIlWD/fuaOletFmxaJJqU=; b=2Ox7ZbPY09NIkxXrztQ/6Xz7R
	XPZ0PK2Ccgj2fYniTqbpPaBdndhJL4rJmukN4dI5ZzSLOlBVVY5yKfMOW8MGo6u1GP5wYqV65CkJc
	AghomAplmtix+ZEhTKVJFwvyWUGMqbo3kUbGV/07H2h9U2f1ydc+nYa7pZJcsSrTTEhqVafbji6AO
	CSHDqqB7m1/LiRfaR0VeUmouG2Zo3I21Ci0B1cj8tbN8cc5nvf05L+3a0/h6YFcHV3FlLZxcFWGBb
	zjUzBGveVrwu5PdNeEXnk1Wupm+O62QHZm874Qy9TukFaOF2lZSq3tngDRgnp1/eoTW0Sw0aTToes
	dm00504jA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxqd3-0005Bf-4s; Fri, 08 Jan 2021 12:12:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxqZ9-0003Ox-0f; Fri, 08 Jan 2021 12:08:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 2FD3A1F46A17
Message-ID: <77cd8b30fdee2900c18dc304c82c4ccc1a14518c.camel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix vopl iommu irq on px30
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Date: Fri, 08 Jan 2021 09:08:16 -0300
In-Reply-To: <20210108110627.3231226-1-heiko@sntech.de>
References: <20210108110627.3231226-1-heiko@sntech.de>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_070827_233020_D9345B7A 
X-CRM114-Status: GOOD (  15.41  )
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
Cc: paul.kocialkowski@bootlin.com, Sandy Huang <hjc@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiBGcmksIDIwMjEtMDEtMDggYXQgMTI6MDYgKzAxMDAsIEhlaWtvIFN0dWVi
bmVyIHdyb3RlOgo+IEZyb206IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+Cj4gCj4g
VGhlIHZvcC1tbXUgc2hhcmVzIHRoZSBpcnEgd2l0aCBpdHMgbWF0Y2hlZCB2b3AgYnV0IG5vdCB0
aGUgdnB1Lgo+IAo+IEZpeGVzOiA3MDUzZTA2YjE0MjIgKCJhcm02NDogZHRzOiByb2NrY2hpcDog
YWRkIGNvcmUgZHRzaSBmaWxlIGZvciBQWDMwIFNvQ3MiKQo+IFNpZ25lZC1vZmYtYnk6IFNhbmR5
IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4KClJldmlld2VkLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1
aWVsQGNvbGxhYm9yYS5jb20+CgpUaGFua3MsCkV6ZXF1aWVsCgo+IC0tLQo+IMKgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLmR0c2kgfCAyICstCj4gwqAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3B4MzAuZHRzaQo+IGluZGV4IDM5YjU0MDkzZDg1OC4uNGY3NjI5NjhmNzVmIDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC5kdHNpCj4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLmR0c2kKPiBAQCAtMTExMCw3ICsxMTEwLDcg
QEAgdm9wbF9vdXRfbHZkczogZW5kcG9pbnRAMSB7Cj4gwqDCoMKgwqDCoMKgwqDCoHZvcGxfbW11
OiBpb21tdUBmZjQ3MGYwMCB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb21w
YXRpYmxlID0gInJvY2tjaGlwLGlvbW11IjsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJlZyA9IDwweDAgMHhmZjQ3MGYwMCAweDAgMHgxMDA+Owo+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNzkgSVJRX1RZUEVfTEVWRUxfSElH
SD47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVycnVwdHMgPSA8R0lDX1NQ
SSA3OCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGludGVycnVwdC1uYW1lcyA9ICJ2b3BsX21tdSI7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBjbG9ja3MgPSA8JmNydSBBQ0xLX1ZPUEw+LCA8JmNydSBIQ0xLX1ZPUEw+Owo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2xvY2stbmFtZXMgPSAiYWNsayIsICJp
ZmFjZSI7CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
