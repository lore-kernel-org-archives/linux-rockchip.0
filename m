Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02095107760D
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 19:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tiVmUMiVaJN5oHGZ9++W91e8apUaY6OABXCOuTRB/NI=; b=jx/AuRW1IBVu/I
	R60/Qucg+ccVIdgFX1lD+qCDRJ89TlHx5B/8HnCbZwLz5Jsh+aTV0/SIf+GQCxVOq+Oa2ROC//0MK
	c/pCrVcJOD6NFdbgoCAELpc2ALrqa21v833Es0NunyUgkuJEDAw+WVy8qrlj3FhaPopAoS1jHm8Bn
	nMOWmkeJLWBoKuUmBXWBw2gm7aWVXMpdPt9qwR7CgGUcj1KLuE3RiYECPMwMsNRgUW0MkQMZNu0L+
	nMzySvX1tKyyS33vpIzIAPOvGDCxSqVw89Cz6xlm+pLUf/T5EB7qit2GNUp4yRvotz2//DHRV89hM
	TMEoQUpyKAPzLzXYrSmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2waw-00000009Esp-3UyV;
	Wed, 18 Mar 2026 19:30:18 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2wat-00000009Es4-49ve
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Mar 2026 19:30:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1773862212; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=cNcdhXgkyPAGZHAW9rMHvUva+G1af9eWvZykYLY2gQqVwxJfib3A1YeC2JLq3yUbJI1g0Hc55wrjlIPK0K2dgnmb7/l+SsmEqaNnyPl86HoRZ6pW4lPrLmS5dnpns9flxEOOlroKpVtnfvZRiFdkJPtnYzqW5ipTpDfKEiJZSII=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1773862212; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=AoHyond7xNgQSW9EJSh2IxOLr5RUuJoKHFWAxfuSNEc=; 
	b=OtKilQGSfADbe/1dFepbWOd5EWgA+lAXGUUKNfnRiFoVxqv2K7iVyd4dFczie89who0fJojnyzjWQBp6CbZ64CRmLXmKdC/g/uTWy8BZDP1bOnR7nToSnCjIA/asH4TVJpaq7cc7rYohaH872oO5n5x8DlXJ2gZjzAEJqaQqAg0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1773862212;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:From:From:To:To:Cc:Cc:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=AoHyond7xNgQSW9EJSh2IxOLr5RUuJoKHFWAxfuSNEc=;
	b=lTn6OW5LosCLZKFxGF7loosMjYiuFz33Xeb3mavomlA9F2ScUuou+Z/JC05zoLF/
	AuYftLYOGAS/5iWXvqcEskyc2hHqt92f4GOmZY6sLOZlMQRnR+kRDAHXVp5I9r97p5J
	/nvKprGQEaq/abtpbkJ91vm3WPaeNZxdudsvpDp4=
Received: by mx.zohomail.com with SMTPS id 1773862210582440.3353042997378;
	Wed, 18 Mar 2026 12:30:10 -0700 (PDT)
Message-ID: <18888de2-d294-41f3-b37f-e74b34209728@collabora.com>
Date: Wed, 18 Mar 2026 22:30:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: hdmirx: snps, rk: Fix EDID injection with proper
 HPD toggle on RK3588
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Ross Cawston <ross@r-sc.ca>, linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 ezequiel@collabora.com, benjamin.gaignard@collabora.com
References: <20260209061654.54757-1-ross@r-sc.ca>
 <476df663-2391-46ef-a5ae-2000bb418d73@collabora.com>
Content-Language: en-US
In-Reply-To: <476df663-2391-46ef-a5ae-2000bb418d73@collabora.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_123016_090894_1DE4DDD4 
X-CRM114-Status: GOOD (  19.69  )
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

T24gMi8xMy8yNiAxNTo0NiwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+IE9uIDIvOS8yNiAwOTox
NiwgUm9zcyBDYXdzdG9uIHdyb3RlOgo+PiBUaGUgZXhpc3RpbmcgVklESU9DX1NfRURJRCBpbXBs
ZW1lbnRhdGlvbiB3cml0ZXMgRURJRCBkYXRhIGJ1dCBkb2VzIG5vdAo+PiBwcm9wZXJseSB0cmln
Z2VyIHNvdXJjZSByZW5lZ290aWF0aW9uIG9uIFJLMzU4OCBib2FyZHMuIFRoaXMgcmVzdWx0cyBp
bgo+PiBubyB2aXNpYmxlIGNoYW5nZSB0byB0aGUgc291cmNlIGRldmljZSBkZXNwaXRlIHRoZSBp
b2N0bCBzdWNjZWVkaW5nLgo+Pgo+PiBFdmVuIHJlLXBsdWdnaW5nIHRoZSBIRE1JIGNhYmxlIGRv
ZXMgbm90IHRyaWdnZXIgcmVuZWdvdGlhdGlvbiBvbiBwcmV2aW91cwo+PiB2ZXJzaW9ucyBvZiB0
aGUgZHJpdmVyLiBUaGlzIHZlcnNpb24gcmVsaWFibHkgdHJpZ2dlcnMgcmVuZWdvdGlhdGlvbiBv
bgo+PiBFRElEIGluamVjdGlvbiBvbiB0ZXN0ZWQgaGFyZHdhcmUuCj4+Cj4+IEZpeCBieSBtaXJy
b3JpbmcgdGhlIHZlbmRvciBCU1AgYmVoYXZpb3I6Cj4+IC0gRGlzYWJsZSBIRE1JIGFuZCBETUEg
SVJRcyB0byBhdm9pZCByYWNlcy4KPj4gLSBTaW11bGF0ZSBwbHVnb3V0IGlmIDVWIHBvd2VyIGlz
IHByZXNlbnQuCj4+IC0gVG9nZ2xlIEhQRCBsb3cgYmVmb3JlIHdyaXRlLgo+PiAtIFNjaGVkdWxl
IGEgZGVsYXllZCBob3RwbHVnIHdvcmtxdWV1ZSAoMTAwMG1zKSB0byByZS1lbmFibGUgSFBEIGFu
ZAo+PiAgIGZvcmNlIHJlbmVnb3RpYXRpb24uCj4+Cj4+IEJ1bXAgV0FJVF9TSUdOQUxfTE9DS19U
SU1FIGZyb20gMzAwbXMgdG8gNjAwbXMgdG8gZW5zdXJlIGxvY2suCj4+Cj4+IFRoaXMgZW5zdXJl
cyBjdXN0b20gRURJRHMgdGFrZSBlZmZlY3QgcmVsaWFibHksIGFsbG93aW5nIHVzZXJzcGFjZSB0
bwo+PiBmb3JjZSBzcGVjaWZpYyByZXNvbHV0aW9ucy90aW1pbmdzLgo+Pgo+PiBUZXN0ZWQgb24g
T3JhbmdlIFBpIDUgVWx0cmEgYW5kIFJhZHhhIFJvY2sgNUIg4oCUIHNvdXJjZXMgbm93IGNvcnJl
Y3RseQo+PiByZS1kZXRlY3QgYW5kIGxvY2sgdG8gdGhlIG5ldyBFRElEIG1vZGVzLgo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBSb3NzIENhd3N0b24gPHJvc3NAci1zYy5jYT4KPj4KPj4gLS0tCj4+ICBk
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3N5bm9wc3lzL2hkbWlyeC9zbnBzX2hkbWlyeC5jIHwgNDMg
KysrKysrKysrKysrKysrKystLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAzNyBpbnNlcnRpb25z
KCspLCA2IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9zeW5vcHN5cy9oZG1pcngvc25wc19oZG1pcnguYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vc3lub3BzeXMvaGRtaXJ4L3NucHNfaGRtaXJ4LmMKPj4gaW5kZXggYWJjMTIzLi5kZWY0NTYg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3lub3BzeXMvaGRtaXJ4L3Nu
cHNfaGRtaXJ4LmMKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zeW5vcHN5cy9oZG1p
cngvc25wc19oZG1pcnguYwo+PiBAQCAtODgsNiArODgsMTAgQEAKPj4gIAlIRE1JUlhfTlVNX1JT
VCwKPj4gIH07Cj4gCj4gSGVsbG8gUm9zcywKPiAKPiBJIHdhcyBhYmxlIHRvIHJlcHJvZHVjZSB0
aGUgcHJvYmxlbSBhbmQgY29uZmlybSB0aGF0IHRoaXMgcGF0Y2ggZml4ZXMKPiBpdC4gV2lsbCBu
ZWVkIG1vcmUgdGltZSB0byB1bmRlcnN0YW5kIHdoYXQncyBnb2luZyBvbiBhcyBwcmV0dHkgc3Vy
ZQo+IEVESUQgd2FzIHdvcmtpbmcgcHJvcGVybHkgbGFzdCB0aW1lIEkgd2FzIHRlc3RpbmcgaXQs
IHdpbGwgZ2V0IGJhY2sgdG8KPiB5b3UgYWZ0ZXIuCj4gCj4gQlRXLCBrZXJuZWwncyBzb3VyY2Ug
Y29kZSBoYXMgLi9zY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIHRoYXQgeW91Cj4gc2hvdWxkIHVz
ZSBiZWZvcmUgc2VuZGluZyBwYXRjaCB0byBNTCB0byBmaW5kIHJlbGV2YW50IGVtYWlsIHJlY2lw
aWVudHMKPiBvZiB0aGUgcGF0Y2gsIG90aGVyd2lzZSBpdCBtYXkgc3RheSB1bm5vdGljZWQgZm9y
IGEgbG9uZyB0aW1lLgo+IAoKSGksIFJvc3MuIFBsZWFzZSBnaXZlIGEgdGVzdCB0byBbMV0sIGl0
IGZpeGVzIEVESUQgcHJvYmxlbSB3aXRoIG15IHRlc3RpbmcuCgpbMV0KaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtbWVkaWEvMjAyNjAzMTgxOTI2MTkuMzkxMDA2MC0xLWRtaXRyeS5vc2lw
ZW5rb0Bjb2xsYWJvcmEuY29tL1QvI3UKCi0tIApCZXN0IHJlZ2FyZHMsCkRtaXRyeQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
