Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD736C02181
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jan 2025 09:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5bGTkdwIfTDNe+0f/duyQwmrqdwfKp2Dl7N9jeNMbQU=; b=aO4wPkKmjdbzsHXlOLixR41NvY
	L2KyV6tR0CvyOAKPmZVco2OS7zcoG/639XzkHx/6Jk+H2kClgjxJ7PQubCh9eEycXQYC72KQf+2xr
	L3CY93lrK7D3pYHLdcnuzVYbx50Fy9718jfTUnKcOKWu5otmOLbMFtIsoLvH+imO7HX7sQ4PfdcxO
	dqdNO6j5aCsdSTb8E8zjOhf7TQbL09LaKsQe2VdEjkv1G4z7LC6yXLD0seBliLeYQs0r/XfmGT3/M
	dSdyYgYTeX7SsF6wqTaxYnLYncu7k2KrhwsbGAsboseSAdX5o9nquvqjEcPj8BSv6O9Sr/MTqPGBr
	HWrW/68g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taXBT-00000009oQd-0Xgv;
	Wed, 22 Jan 2025 09:38:03 +0000
Received: from mail-m15574.qiye.163.com ([101.71.155.74])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taXBP-00000009oPe-2crp;
	Wed, 22 Jan 2025 09:38:01 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 9675abc2;
	Wed, 22 Jan 2025 17:37:54 +0800 (GMT+08:00)
Message-ID: <ba369b98-9a2a-421a-9251-4db3c1dcedd9@rock-chips.com>
Date: Wed, 22 Jan 2025 17:37:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/20] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
From: Damon Ding <damon.ding@rock-chips.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-13-damon.ding@rock-chips.com>
 <d7zpv6qt52mhny54dejw4yqlp2k2c437op7qmepqe27pufplqk@64xvohrz7h2q>
 <330041c4-aaee-4b41-8ccd-e2807415c709@rock-chips.com>
Content-Language: en-US
In-Reply-To: <330041c4-aaee-4b41-8ccd-e2807415c709@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUhIGlYZTUxCGBgaSUtMTE5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a948d601d8703a3kunm9675abc2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OBQ6CQw5FjISDi8qFTpKNx88
	OAwaFDdVSlVKTEhMTkhDTUxOQkxOVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJQkpINwY+
DKIM-Signature: a=rsa-sha256;
	b=cz1XtlH0WFZV+qfxxgiKI+00+Zhi4vQtANGA9k2JuGnZ9MA5lXD1IKZQY2QU84VWYgvk7IK3u/T3JDDNjjtVXFFs07czupDXqcJOFSRfEhZ6JNmukR2pw1uYdVCsXnRhH7J8jzkP0dQH2H82JAriqKTgAktE/gx4t2jvBYHeh/Y=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=CWIxW9kTl68Z5+0J5bhE6cyWfkVb0EOPaTfIzuCrrMI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_013800_209500_BA9BB54E 
X-CRM114-Status: GOOD (  15.38  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRG1pdHJ5LAoKT24gMjAyNS8xLzIyIDE2OjE3LCBEYW1vbiBEaW5nIHdyb3RlOgo+IEhpIERt
aXRyeSwKPiAKPiBPbiAyMDI1LzEvOSAyMDo0OCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4g
T24gVGh1LCBKYW4gMDksIDIwMjUgYXQgMTE6Mjc6MTdBTSArMDgwMCwgRGFtb24gRGluZyB3cm90
ZToKPj4+IE1vdmUgZHJtX29mX2ZpbmRfcGFuZWxfb3JfYnJpZGdlKCkgYSBsaXR0bGUgbGF0ZXIg
YW5kIGNvbWJpbmUgaXQgd2l0aAo+Pj4gY29tcG9uZW50X2FkZCgpIGludG8gYSBuZXcgZnVuY3Rp
b24gcm9ja2NoaXBfZHBfbGlua19wYW5lbCgpLiBUaGUgCj4+PiBmdW5jdGlvbgo+Pj4gd2lsbCBz
ZXJ2ZSBhcyBkb25lX3Byb2JpbmcoKSBjYWxsYmFjayBvZiBkZXZtX29mX2RwX2F1eF9wb3B1bGF0
ZV9idXMoKSwKPj4+IGFpZGluZyB0byBzdXBwb3J0IGZvciBvYnRhaW5pbmcgdGhlIGVEUCBwYW5l
bCB2aWEgdGhlIERQIEFVWCBidXMuCj4+Pgo+Pj4gSWYgZmFpbGVkIHRvIGdldCB0aGUgcGFuZWwg
ZnJvbSB0aGUgRFAgQVVYIGJ1cywgaXQgd2lsbCB0aGVuIHRyeSB0aGUgCj4+PiBvdGhlcgo+Pj4g
d2F5IHRvIGdldCBwYW5lbCBpbmZvcm1hdGlvbiB0aHJvdWdoIHRoZSBwbGF0Zm9ybSBidXMuCj4+
Pgo+Pj4gSW4gYWRkaXRpb24sIHVzZSBkZXZfZXJyKCkgaW5zdGVhZCBvZiBkcm1fZXJyKCkgaW4g
cm9ja2NoaXBfZHBfcG93ZXJvbigpCj4+PiAsIHdoaWNoIHdpbGwgYmUgY2FsbGVkIGJlZm9yZSBy
b2NrY2hpcF9kcF9iaW5kKCkuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRGFtb24gRGluZyA8ZGFt
b24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KPj4+Cj4+PiAtLS0KPj4+Cj4+PiBDaGFuZ2VzIGluIHY0
Ogo+Pj4gLSBVc2UgZG9uZV9wcm9iaW5nKCkgdG8gY2FsbCBkcm1fb2ZfZmluZF9wYW5lbF9vcl9i
cmlkZ2UoKSBhbmQKPj4+IMKgwqAgY29tcG9uZW50X2FkZCgpIHdoZW4gZ2V0dGluZyBwYW5lbCBm
cm9tIHRoZSBEUCBBVVggYnVzCj4+Pgo+Pj4gQ2hhbmdlcyBpbiB2NToKPj4+IC0gVXNlIHRoZSBm
dW5jdGlvbnMgZXhwb3J0ZWQgYnkgdGhlIEFuYWxvZ2l4IHNpZGUgdG8gZ2V0IHRoZSBwb2ludGVy
cyBvZgo+Pj4gwqDCoCBzdHJ1Y3QgYW5hbG9naXhfZHBfcGxhdF9kYXRhIGFuZCBzdHJ1Y3QgZHJt
X2RwX2F1eC4KPj4+IC0gVXNlIGRldl9lcnIoKSBpbnN0ZWFkIG9mIGRybV9lcnIoKSBpbiByb2Nr
Y2hpcF9kcF9wb3dlcm9uKCkuCj4+Pgo+Pj4gLS0tCj4+PiDCoCAuLi4vZ3B1L2RybS9yb2NrY2hp
cC9hbmFsb2dpeF9kcC1yb2NrY2hpcC5jwqDCoCB8IDQxICsrKysrKysrKysrKysrLS0tLS0KPj4+
IMKgIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPj4+
Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJv
Y2tjaGlwLmMgYi8gCj4+PiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvYW5hbG9naXhfZHAtcm9j
a2NoaXAuYwo+Pj4gaW5kZXggMDk1N2QzYzVkMzFkLi4zYWUwMWI4NzBmNDkgMTAwNjQ0Cj4+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvYW5hbG9naXhfZHAtcm9ja2NoaXAuYwo+Pj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMKPj4+
IEBAIC0xMjQsMTMgKzEyNCwxMyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2RwX3Bvd2Vyb24oc3Ry
dWN0IAo+Pj4gYW5hbG9naXhfZHBfcGxhdF9kYXRhICpwbGF0X2RhdGEpCj4+PiDCoMKgwqDCoMKg
IHJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShkcC0+cGNsayk7Cj4+PiDCoMKgwqDCoMKgIGlmIChy
ZXQgPCAwKSB7Cj4+PiAtwqDCoMKgwqDCoMKgwqAgZHJtX2VycihkcC0+ZHJtX2RldiwgImZhaWxl
ZCB0byBlbmFibGUgcGNsayAlZFxuIiwgcmV0KTsKPj4+ICvCoMKgwqDCoMKgwqDCoCBkZXZfZXJy
KGRwLT5kZXYsICJmYWlsZWQgdG8gZW5hYmxlIHBjbGsgJWRcbiIsIHJldCk7Cj4+Cj4+Cj4+IHdo
eT8KPj4KPiAKPiBUaGUgJnJvY2tjaGlwX2RwX2RldmljZS5kcm1fZGV2IHdpbGwgYmUgYXNzaWdu
ZWQgaW4gcm9ja2NoaXBfZHBfYmluZCgpLCAKPiB3aGljaCBpcyBjYWxsZWQgYWZ0ZXIgcHJvYmlu
ZyBwcm9jZXNzLiBUaGUgUE0gb3BlcmF0aW9ucyBoYXZlIGJlZW4gCj4gYWR2YW5jZWQgdG8gdGhl
IHByb2JpbmcgZm9yIHRoZSBBVVggdHJhbnNtaXNzaW9uLCBzbyB0aGUgZGV2X2VycigpIG1heSAK
PiBiZSBiZXR0ZXIgdGhhbiBkcm1fZXJyKCkuCj4gCgpVc2luZyBkcm1fLi4uKCkgdW5pZm9ybWx5
IG1heSBiZSBiZXR0ZXIgWzBdLgoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+
Pj4gwqDCoMKgwqDCoCB9Cj4+PiDCoMKgwqDCoMKgIHJldCA9IHJvY2tjaGlwX2RwX3ByZV9pbml0
KGRwKTsKPj4+IMKgwqDCoMKgwqAgaWYgKHJldCA8IDApIHsKPj4+IC3CoMKgwqDCoMKgwqDCoCBk
cm1fZXJyKGRwLT5kcm1fZGV2LCAiZmFpbGVkIHRvIGRwIHByZSBpbml0ICVkXG4iLCByZXQpOwo+
Pj4gK8KgwqDCoMKgwqDCoMKgIGRldl9lcnIoZHAtPmRldiwgImZhaWxlZCB0byBkcCBwcmUgaW5p
dCAlZFxuIiwgcmV0KTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBjbGtfZGlzYWJsZV91bnByZXBh
cmUoZHAtPnBjbGspOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+PiDCoMKg
wqDCoMKgIH0KPj4KCkJlc3QgcmVnYXJkcywKRGFtb24KClswXWh0dHBzOi8vcGF0Y2h3b3JrLmtl
cm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9wYXRjaC8yMDI1MDEwOTAzMjcyNS4xMTAy
NDY1LTYtZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbS8jMjYyMDk4OTEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
