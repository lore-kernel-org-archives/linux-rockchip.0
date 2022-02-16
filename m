Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6517C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Feb 2022 21:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xywog+UZgH+E/tCn9x5n5HI8IpfypW7qSnqD40jayvQ=; b=IdeaaJn0te0I0N
	myvn2CUjIw5+JrUnzEmwDFjQRaKybrgN9BZDUUcqdPwvOcQU9Dc2ucibhS3e3P5sQGqkzJd9c8VNx
	d4c5q0iWlAqwYggCRZqAYN8h8fEiuGgHPdZPAi5kiw3JKysnL9W+gxEyhaWI+4JAT2nl+2kXxt0W+
	1d/iEayy9pwh/JukRY1YNrHfZQJuQxB39U+bJlSmfjigsQz+IGVAc9HqIy9zyuOnAFe2LHiLgJWFR
	brSatZba+uRKb+WSuIVnN+niNW/RtPB/IXJbpHJxDqNhCJeIHErd1y7xX6rqmLWHJOmcY4KakGEt1
	5kny8+ynd+o/63Q/BOxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKRx3-008Phk-51; Wed, 16 Feb 2022 21:35:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKRwz-008Pgj-4Q
 for linux-rockchip@lists.infradead.org; Wed, 16 Feb 2022 21:35:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B86C0D6E;
 Wed, 16 Feb 2022 13:34:59 -0800 (PST)
Received: from [10.57.40.147] (unknown [10.57.40.147])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 706D33F70D;
 Wed, 16 Feb 2022 13:34:58 -0800 (PST)
Message-ID: <4b88f0f1-7422-7beb-2f7a-563f1f4b3360@arm.com>
Date: Wed, 16 Feb 2022 21:34:52 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH] arm64: dts: rockchip: Correct clock-output-names for rk817
Content-Language: en-GB
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 devicetree@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc: robh+dt@kernel.org, jon.lin@rock-chips.com,
 linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>
References: <20220216165837.4721-1-macroalpha82@gmail.com>
 <44462609.a43xROnmBz@diego>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <44462609.a43xROnmBz@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220216_133501_241393_36A6C7D6 
X-CRM114-Status: GOOD (  22.49  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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

T24gMjAyMi0wMi0xNiAyMDo0MiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGksCj4gCj4gQW0g
TWl0dHdvY2gsIDE2LiBGZWJydWFyIDIwMjIsIDE3OjU4OjM3IENFVCBzY2hyaWViIENocmlzIE1v
cmdhbjoKPj4gRnJvbTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPj4K
Pj4gQWNjb3JkaW5nIHRvIHRoZSBkYXRhc2hlZXQgZm9yIHRoZSByazgxNyB0aGVyZSBpcyBvbmx5
IGEgc2luZ2xlIG91dHB1dAo+PiBjbG9jayBmb3IgdGhlIFBNSUMuIEkgZG9uJ3QgYmVsaWV2ZSB0
aGlzIGlzIGNhdXNpbmcgYW55IGhhcm0gdGhvdWdoCj4+IGFuZCB0ZXN0aW5nIHRoaXMgY2hhbmdl
IGRvZXNuJ3QgYXBwZWFyIHRvIGhhdmUgYW55IG5vdGljZWFibGUgZWZmZWN0cy4KPiAKPiBobW0s
IGxvb2tpbmcgYXQgdGhlIGdvMidzIHNjaGVtYXRpY3MsIEknZCBkaXNhZ3JlZToKPiAKPiAtIHll
cywgdGhlIHJrODE3IGhhcyBvbmx5IG9uZSBjbG9jayBvdXRwdXQKPiAtIGJ1dCBubywgaXQgaXMg
dXNlZCBmb3IgdGhlIGNsa291dF8zMmsgc2lnbmFsLCB3aGljaCBnZXRzIHBpcGVkIGJhY2sgaW50
bwo+ICAgIHRoZSBTb0MuIEFzIHRoYXQgY2xvY2sgZHluYW1pY2FsbHkgYXBwZWFycyBhdCBzb21l
IHVuc3BlY2lmaWVkIHBvaW50Cj4gICAgd2hlbiB0aGUgcms4MTcgcHJvYmVzLCB0aGUgY2xvY2sg
Y29udHJvbGxlciBleHBlY3RzIGl0IHRvIGJlIG5hbWVkCj4gICAgeGluMzJrIHRvIGJpbmQgaW50
byBpdHMgY2xvY2stdHJlZS4KPiAKPiBUaGUgZHJpdmVyIChkcml2ZXJzL2Nsay9jbGstcms4MDgu
YykgcmVhbGx5IHB1dHMgdGhhdCByazgxNy1jbGszMmsgYXQKPiBwb3NpdGlvbiAyIGJ1dCBJJ20g
bm90IHN1cmUgaWYgdGhhdCBzaW1wbHkgcGFwZXJzIG92ZXIgc29tZSBpbXBsZW1lbnRhdGlvbgoK
SW5kZWVkIGl0IGFwcGVhcnMgdG8gYmUgYSBoYW5nb3ZlciBmcm9tIFJLODA4IHdoZXJlIENMSzMy
S09VVDEgaXMgCmFsd2F5cy1vbiBhbmQgQ0xLMzJLT1VUMiBpcyB0aGUgc3dpdGNoYWJsZSBvbmUu
IEl0J3MgZXZlbiBtb3JlIG9idmlvdXMgCm9uIFJLODA1IHdoaWNoIHN0aWxsIHNoYXJlcyB0aGUg
b3JpZ2luYWwgY29udHJvbCByZWdpc3RlciBsYXlvdXQuCgpSb2Jpbi4KCj4gCj4gCj4gSGVpa28K
PiAKPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNv
bT4KPj4gLS0tCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjYtb2Ryb2lk
LWdvMi5kdHMgfCAyICstCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzMyNi1vZHJvaWQtZ28yLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
MzI2LW9kcm9pZC1nbzIuZHRzCj4+IGluZGV4IGVhMDY5NWI1MWVjZC4uNWIyM2U2MDc4NzZlIDEw
MDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyNi1vZHJvaWQt
Z28yLmR0cwo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyNi1vZHJv
aWQtZ28yLmR0cwo+PiBAQCAtMjk2LDcgKzI5Niw3IEBAIHJrODE3OiBwbWljQDIwIHsKPj4gICAJ
CXJlZyA9IDwweDIwPjsKPj4gICAJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8wPjsKPj4gICAJ
CWludGVycnVwdHMgPSA8UktfUEIyIElSUV9UWVBFX0xFVkVMX0xPVz47Cj4+IC0JCWNsb2NrLW91
dHB1dC1uYW1lcyA9ICJyazgwOC1jbGtvdXQxIiwgInhpbjMyayI7Cj4+ICsJCWNsb2NrLW91dHB1
dC1uYW1lcyA9ICJyazgwOC1jbGtvdXQxIjsKPj4gICAJCWNsb2NrLW5hbWVzID0gIm1jbGsiOwo+
PiAgIAkJY2xvY2tzID0gPCZjcnUgU0NMS19JMlMxX09VVD47Cj4+ICAgCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+Pgo+IAo+IAo+IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4g
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
