Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58B23E77188
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Dec 2024 17:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nbwXLos56dYzCdOe3Ofk5dbZn4bL5ekRSzAw4mjR0P4=; b=XNptidVbkZqJtAOMeaqRytT7IR
	viks/pIEODYVoSZIc2SZY+h2lyvmVS2e2y1BQyLf0W8A6oNUw9OhUUm6bKi78/Hy8HufVw0pNOsYI
	kYSPD86ksg0IlgKg/TXpOFQv7KgFgVWifmCwqJFJ6z9Wx9kg7y83u0WtDklgYzCH1UJHC8evGfU1J
	FDrFFeMsYFX/aVBhBiBht4NmSf+iFHjnVMjas8E/+TXFYO5Q55FPcuwlxA5pgAl/Za0gDWgSkaf8s
	Zzx3aTg+0LLatnvrHRU4VAEsQdouM1TA4hRWOqW1b9kK3B1NFtDz6u+VVeYMpFvbZGgK4T/LnOfdv
	Ku36Nljw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPQ8r-00000008dgh-0KP4;
	Sun, 22 Dec 2024 17:53:25 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPQ2G-00000008d3z-1lqT
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Dec 2024 17:46:37 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734889592;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ErMbVbPCDW7ngNvl87w1yb4T3zK/u9GamAsi4JosXm8=;
	b=PiIQGtOKLREfP9gvAz7TFNOIuzbtU+9wbT47upcUqEPJzr2VSuKF/s+W870r9L92HzHUwi
	dc+yKoKWIYGmWJAiG3ZlG28KEJh2FNo4+Z6/YuOQnXA9UR7N0aB/1SiTnmqjtlfVxAdAYL
	n62e9/5MpDlU4WEZvn6e1ZDPxE6dEJq37/lakWhAq7+wIV9omaUGhZiWL168jipkXav0FX
	NtpPaLEIaqukIiwaE2e+pIDlStDAfrlIsingeodLxI6H1fumry9T5qftan6Kjmb20h1SOV
	DUteFHKpPBR1zovvhnI7UJYwoRQb8JyByewV62c8AYV/oXK3abuPEeaekzHgjg==
Date: Sun, 22 Dec 2024 18:46:31 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 04/12] arm64: dts: rockchip: Rename regulator for
 pcie2x1l2 for Radxa ROCK 5C
In-Reply-To: <90eafe45-7863-4c1d-b1e5-55a4fe32c806@kernel.org>
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-5-naoki@radxa.com>
 <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
 <47B1D9F5B9EC2A94+55e35302-64c6-4651-8f27-416723b8218b@radxa.com>
 <57C678CDC48F30E6+634c520a-a0b8-478f-9b5b-8b746aa5ab9c@radxa.com>
 <99e54beb-fa4b-4d51-9ab7-b35cc61dc164@kernel.org>
 <F023D8BD1C0C2248+234bbc41-2871-49a9-be98-4475e4e6da49@radxa.com>
 <90eafe45-7863-4c1d-b1e5-55a4fe32c806@kernel.org>
Message-ID: <44ba02e34d7bf6a6657894802a87b690@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241222_094636_761222_202EDF85 
X-CRM114-Status: GOOD (  19.43  )
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

SGVsbG8gS3J6eXN6dG9mLAoKT24gMjAyNC0xMi0yMiAwNzoyNywgS3J6eXN6dG9mIEtvemxvd3Nr
aSB3cm90ZToKPiBPbiAyMi8xMi8yMDI0IDA0OjE4LCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+PiBP
biAxMi8yMi8yNCAwNToxNSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+IE9uIDIwLzEy
LzIwMjQgMDc6NTEsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+Pj4gT24gMTIvMTcvMjQgMTA6MTEs
IEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+Pj4+IE9uIDEyLzE2LzI0IDIyOjM4LCBLcnp5c3p0b2Yg
S296bG93c2tpIHdyb3RlOgo+Pj4+Pj4gT24gMTYvMTIvMjAyNCAxMjozMCwgRlVLQVVNSSBOYW9r
aSB3cm90ZToKPj4+Pj4+PiBVc2UgY29uc2lzdGVudCBuYW1lIHdpdGggb3RoZXIgcmVndWxhdG9y
cy4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UuCj4+Pj4+Pj4gCj4+Pj4+Pj4gRml4ZXM6IDNkZGY1Y2Ri
NzdlNiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgUmFkeGEgUk9DSyA1QyIpCj4+Pj4+Pj4g
U2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+Pj4+Pj4+IC0t
LQo+Pj4+Pj4+IENoYW5nZXMgaW4gdjU6Cj4+Pj4+Pj4gLSBSZXdvcmQgY29tbWl0IG1lc3NhZ2UK
Pj4+Pj4+PiBDaGFuZ2VzIGluIHY0Ogo+Pj4+Pj4+IC0gcmV3b3JkIGNvbW1pdCBtZXNzYWdlCj4+
Pj4+Pj4gQ2hhbmdlcyBpbiB2MzoKPj4+Pj4+PiAtIG5vbmUKPj4+Pj4+PiBDaGFuZ2VzIGluIHYy
Ogo+Pj4+Pj4+IC0gbmV3Cj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4gIMKgIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4cy1yb2NrLTVjLmR0cyB8IDYgKysrLS0tCj4+Pj4+Pj4gIMKgIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Pj4+Pj4gCj4+
Pj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1y
b2NrLTVjLmR0cyAKPj4+Pj4+PiBiL2FyY2gvCj4+Pj4+Pj4gYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4cy1yb2NrLTVjLmR0cwo+Pj4+Pj4+IGluZGV4IDg1NTg5ZDFhNmQzYi4uNjFkNzVh
YjUwM2IyIDEwMDY0NAo+Pj4+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4cy1yb2NrLTVjLmR0cwo+Pj4+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4cy1yb2NrLTVjLmR0cwo+Pj4+Pj4+IEBAIC03NiwxMyArNzYsMTMgQEAgcHdt
LWZhbiB7Cj4+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBwd21zID0gPCZwd20zIDAgNjAwMDAg
MD47Cj4+Pj4+Pj4gIMKgwqDCoMKgwqAgfTsKPj4+Pj4+PiAtwqDCoMKgIHBjaWUyeDFsMl8zdjM6
IHJlZ3VsYXRvci1wY2llMngxbDItM3YzIHsKPj4+Pj4+PiArwqDCoMKgIHZjYzN2M19wY2llMngx
bDI6IHJlZ3VsYXRvci12Y2MzdjNfcGNpZTJ4MWwyIHsKPj4+Pj4+IAo+Pj4+Pj4gTm8sIG5laXRo
ZXIgZXhwbGFpbmVkLCBub3IgY29ycmVjdC4gU2VlIERUUyBjb2Rpbmcgc3R5bGUuCj4+Pj4+PiAK
Pj4+Pj4+IFBsZWFzZSB1c2UgbmFtZSBmb3IgYWxsIGZpeGVkIHJlZ3VsYXRvcnMgd2hpY2ggbWF0
Y2hlcyBjdXJyZW50IAo+Pj4+Pj4gZm9ybWF0Cj4+Pj4+PiByZWNvbW1lbmRhdGlvbjogJ3JlZ3Vs
YXRvci1bMC05XXZbMC05XScKPj4+Pj4+IAo+Pj4+Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0Lwo+Pj4+Pj4gdHJlZS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVndWxhdG9yL2ZpeGVkLXJlZ3VsYXRv
ci55YW1sPwo+Pj4+Pj4gaD12Ni4xMS1yYzEjbjQ2Cj4+Pj4+IAo+Pj4+PiAncmVndWxhdG9yLVsw
LTlddlswLTldJyBpcyBwcmVmZXJyZWQsIGJ1dCAncmVndWxhdG9yLVswLTlhLXotXSsnIGlzIAo+
Pj4+PiBhbHNvCj4+Pj4+IHBlcm1pdHRlZCwgcmlnaHQ/Cj4+Pj4+IAo+Pj4+PiBpLmUuIHJlZ3Vs
YXRvci12Y2MzdjNfcGNpZTJ4MWwyIHNob3VsZCBiZSAKPj4+Pj4gcmVndWxhdG9yLXZjYzN2My1w
Y2llMngxbDIKPj4+Pj4gCj4+Pj4+IAo+Pj4+PiBPciwgc2hvdWxkIHdlIHJldmVydCBiZWxvdyBw
YXRjaCBhbmQgdXNlICdyZWd1bGF0b3ItWzAtOV12WzAtOV0nPwo+Pj4+PiAKPj4+Pj4gICDCoGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnLwo+Pj4+PiBhbGwvMGFlNDA0OTMtOTNlOS00MGNkLTljYTkt
OTkwYWUwNjRmMjFhQGdtYWlsLmNvbS8KPj4+Pj4gCj4+Pj4+IElzICdyZWd1bGF0b3ItMHYwJyB2
YWxpZD8KPj4+IAo+Pj4gV2h5IHdvdWxkIGl0IGJlIHZhbGlkPyBDYW4geW91IGhhdmUgcmVndWxh
dG9yIHdpdGggMCB2b2x0cz8KPj4gCj4+IFRoZXJlIG1heSBiZSBhIC5kdHNpIHRoYXQgaXMgc2hh
cmVkIGFjcm9zcyBtdWx0aXBsZSAuZHRzLCBzbyBzb21lCj4+IHJlZ3VsYXRvcnMgbWF5IG5vdCBi
ZSBhYmxlIHRvIHNldCBhIHNwZWNpZmljIHZvbHRhZ2UgaW4gdGhlIC5kdHNpLgo+PiAKPj4gSG93
IHNob3VsZCBJIGRlc2NyaWJlIGl0Pwo+IAo+IEhvdyBmaXhlZCB2b2x0YWdlIHJlZ3VsYXRvciBj
YW4gaGF2ZSBub24tc3BlY2lmaWMgdm9sdGFnZT8gU29ycnksIAo+IHRoYXQncwo+IGltcG9zc2li
bGUuIFNoYXJlZCBEVFNJIHdpdGggYSByZWd1bGF0b3IgbWVhbnMgdGhhdCByZWd1bGF0b3IgaXMg
Cj4gc2hhcmVkLAo+IHNvIGl0IGNhbm5vdCBiZSBmbGV4aWJsZS4KPiAKPj4+Pj4gSXMgJ3JlZ3Vs
YXRvci0xMnYwJyBpbnZhbGlkPwo+Pj4gCj4+PiBSZWFkIHRoZSBiaW5kaW5nLiBJIGdhdmUgeW91
IHZlcnkgc3BlY2lmaWMgbGluay4KPj4gCj4+IDQ2fCAgICAgICAtIGRlc2NyaXB0aW9uOiBQcmVm
ZXJyZWQgbmFtZSBpcyAncmVndWxhdG9yLVswLTlddlswLTldJwo+PiA0N3wgICAgICAgICBwYXR0
ZXJuOiAnXnJlZ3VsYXRvcigtWzAtOV0rdlswLTldK3wtWzAtOWEtei1dKyk/JCcKPj4gCj4+IFRo
ZSAiZGVzY3JpcHRpb24iIGFuZCAicGF0dGVybiIgZG9uJ3QgbWF0Y2guIFdoYXQgeW91IHByb3Zp
ZGVkIGlzIGEgCj4+IGxpbmsKPj4gdG8gdGhlICJkZXNjcmlwdGlvbiIuCj4gCj4gSXQncyBwcmV0
dHkgb2J2aW91cyBzdGlsbC4uLgo+IAo+Pj4+PiBIb3cgc2hvdWxkIHdlIGhhbmRsZSBtdWx0aXBs
ZSAxdjgvM3YzLzV2MCByZWd1bGF0b3JzPwo+Pj4gCj4+PiBKdXN0IGFkZCBzdWZmaXguIEJ1dCB1
c3VhbGx5IG1vcmUgdGhhbiBvbmUgc3VmZml4LCAKPj4+IHZjYyszdjMrcGNpZV8yeDFsMiwKPj4+
IG1lYW5zIHlvdSBjcmVhdGVkIGEgdmVyeSBzcGVjaWZpYyBuYW1lLgo+PiAKPj4gU28gc2hvdWxk
bid0IHdlIHJlZmVyIHRvIHRoZSBzY2hlbWF0aWM/Cj4gCj4gU28gdGhhdCdzIHRoZSBhcmd1bWVu
dCB5b3UgZGVmaW5lIDEwIGZpeGVkLCB1bmNvbnRyb2xsYWJsZSByZWd1bGF0b3JzIAo+IGluCj4g
RFRTPyBXaGF0IGlzIHRoZSBiZW5lZml0IG9mIHRoYXQgZXhhY3RseT8gSnVzdCB1bm5lY2Vzc2Fy
eSBibG9hdCBpbiAKPiBEVFMsCj4gaW4ga2VybmVsIG1lbW9yeSBhbmQgZm9yIHByb2JlIHRpbWU/
CgpJJ20gcXVpdGUgc3VycHJpc2VkIHRvIGhlYXIgeW91IHN1Z2dlc3RpbmcgdGhhdCBzb21lIG9m
IHRoZSBoYXJkd2FyZQpjb21wb25lbnRzIHNob3VsZCBiZSBvbWl0dGVkIGZyb20gYSBib2FyZCBk
dHMoaSkgZmlsZS4gIFJlZ2FyZGxlc3Mgb2YKc29tZSBvZiB0aGUgaGFyZHdhcmUgY29tcG9uZW50
cyBiZWluZyBmaXhlZCBvciBhZGp1c3RhYmxlLCB0aGV5IHNob3VsZAphbGwgYmUgZGVzY3JpYmVk
LCBmb3IgdGhlIHNha2Ugb2YgdHJhbnNjcmliaW5nIHRoZSBib2FyZCBzY2hlbWF0aWMgaW50bwp0
aGUgYm9hcmQgZHRzKGkpIGZpbGVzIGFjY3VyYXRlbHkgYW5kIGNvbXBsZXRlbHkuICBGdXJ0aGVy
bW9yZSwgc29tZQpmaXhlZCBjb21wb25lbnRzIG1heSBhY3R1YWxseSBiZSBuZWVkZWQgaW4gdGhl
IGJvYXJkIGR0cyhpKSBmaWxlczsgZm9yCmV4YW1wbGUsIGEgZml4ZWQgcmVndWxhdG9yIG1heSBi
ZSB0dXJuZWQgb24gYXQgYm9vdCB0aW1lLCBvciB0dXJuZWQgb24KYW5kIG9mZiBhdCBydW50aW1l
LgoKVGVjaG5pY2FsbHksIHdlIGNvdWxkIG9taXQgdGhlIGZpeGVkIHJlZ3VsYXRvcnMgZnJvbSB0
aGUgYm9hcmQgZHRzKGkpCmZpbGVzLCBfb25seV8gaWYgdGhleSBhcmVuJ3QgcG93ZXJlZCBvbiBh
bmQgb2ZmIGF0IGJvb3QgdGltZSBvciBhdApydW50aW1lLCBvZiBjb3Vyc2UsIGJ1dCBtYW55IG1v
cmUgdGhpbmdzIGNvdWxkIHRlY2huaWNhbGx5IGJlIG9taXR0ZWQKYXMgd2VsbCBmcm9tIHRoZSBk
dHMoaSkgZmlsZXMgaWYgd2UnZCBmb2xsb3cgdGhhdCBydWxlLCB3aGljaCB3b3VsZApyZXN1bHQg
aW4gYSBodWdlIHBlci1ib2FyZCBpbmNvbnNpc3RlbmN5LCBsZWFkaW5nIHRvIGEgbWVzcy4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
