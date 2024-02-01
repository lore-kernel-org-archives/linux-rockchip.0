Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F931C4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 17:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/W0QJ8r6aXFWlJu/oz2pPxrbSL+LvwPPRCDNHZ2VU4A=; b=rbfONid2YP8tM7VITjHVXVN9na
	hkJFv4jf/bDi/RVw61LD3IYSiTX+VFPjAXciStwmbCk1Mp3b7z5MYSdK0EgMcyGT/7HNWV8B3pdL3
	pSRV93VlBT425UDZA7HMMSRn/zcczt2ipOQX3KuiP5ShFXuJqFpJcmuRwg+s2tiADjAW7BL65upmc
	GPgl1tdO7b1esg7tIkPM7bntkqyi5md5wY1cnybxBEZYoW6Yoc+1EcgPzoQ+cipJf8lFAzPp+xFZt
	SFHALO4+p1SuG/cd1lE1MBtzMvdoAAc5wZXRr6ktx8STdpcqSTH/cAYstoCv2Ar2XT9AY8r31JF5J
	rJUd42nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVaxG-00000008okN-354H;
	Thu, 01 Feb 2024 17:34:26 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVaxC-00000008oit-2nkX;
	Thu, 01 Feb 2024 17:34:24 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706808859;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=I62Ngu6mHUbbEd5/PKgWiEzJpbocaOMuoLyyq/u6R8M=;
	b=WkY/V6+2VLAsUER854fHTV0ijhfmJSzor5H6LK4YNxI2Z9+7CpORaMMz4uetnzSEQDFxJh
	ICEh9Du6iegkMwDanyR4V2Ro7ptplD8sOZ5Q2QRz5+hm56aeH/RRiiw1T9oz92eQgEk6V2
	6yf38wMVwANtCJWVwN9gKD5++gVglcvUuM/ruqcLnd4EdV9QxvBQ0wJRNa9gsOBn4uZBYx
	w7Th5wyqr+dIbLpSXTkeN+LClphsGIXgt0ZHfsuKPUg9IiIYJDLBuruSSXwBX5K6QjphIk
	aSFprWQ9gT96w8UldfAYuWcueWJHdHrOfqBAEXd35XKhm0x/5WnV55Er7R+aMA==
Date: Thu, 01 Feb 2024 18:34:18 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: wens@kernel.org
Cc: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: enable temperature driven
 fan control on Rock 5B
In-Reply-To: <CAGb2v65--rgb2FqmG_0-w1-jUL0odqKXxiZJ-XPYA4uomfYmaQ@mail.gmail.com>
References: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
 <20240130-rk-dts-additions-v2-2-c6222c4c78df@gmail.com>
 <CAGb2v65--rgb2FqmG_0-w1-jUL0odqKXxiZJ-XPYA4uomfYmaQ@mail.gmail.com>
Message-ID: <5e3e12d65e4919372e7fb02d56202393@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_093423_334337_59AA98FD 
X-CRM114-Status: GOOD (  16.88  )
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

SGVsbG8gQ2hlbi1ZdSwKCk9uIDIwMjQtMDItMDEgMTU6MjYsIENoZW4tWXUgVHNhaSB3cm90ZToK
PiBPbiBXZWQsIEphbiAzMSwgMjAyNCBhdCAyOjIy4oCvQU0gQWxleGV5IENoYXJrb3YgPGFsY2hh
cmtAZ21haWwuY29tPiAKPiB3cm90ZToKPj4gCj4+IFRoaXMgZW5hYmxlcyB0aGVybWFsIG1vbml0
b3Jpbmcgb24gUmFkeGEgUm9jayA1QiBhbmQgbGlua3MgdGhlIFBXTQo+PiBmYW4gYXMgYW4gYWN0
aXZlIGNvb2xpbmcgZGV2aWNlIG1hbmFnZWQgYXV0b21hdGljYWxseSBieSB0aGUgdGhlcm1hbAo+
PiBzdWJzeXN0ZW0sIHdpdGggYSB0YXJnZXQgU29DIHRlbXBlcmF0dXJlIG9mIDY1QyBhbmQgYSBt
aW5pbXVtLXNwaW4KPj4gaW50ZXJ2YWwgZnJvbSA1NUMgdG8gNjVDIHRvIGVuc3VyZSBhaXJmbG93
IHdoZW4gdGhlIHN5c3RlbSBnZXRzIHdhcm0KPj4gCj4+IEFja2VkLWJ5OiBEYW5pZWwgTGV6Y2Fu
byA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KPj4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENo
YXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPgo+PiAtLS0KPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIHwgMzQgCj4+ICsrKysrKysrKysrKysrKysrKysr
KysrKy0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4+IAo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
cm9jay01Yi5kdHMgCj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9j
ay01Yi5kdHMKPj4gaW5kZXggYTBlMzAzYzNhMWRjLi5iNDg1ZWRlZWY4NzYgMTAwNjQ0Cj4+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4+IEBA
IC01Miw3ICs1Miw3IEBAIGxlZF9yZ2JfYiB7Cj4+IAo+PiAgICAgICAgIGZhbjogcHdtLWZhbiB7
Cj4+ICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInB3bS1mYW4iOwo+PiAtICAgICAgICAg
ICAgICAgY29vbGluZy1sZXZlbHMgPSA8MCA5NSAxNDUgMTk1IDI1NT47Cj4+ICsgICAgICAgICAg
ICAgICBjb29saW5nLWxldmVscyA9IDwwIDEyMCAxNTAgMTgwIDIxMCAyNDAgMjU1PjsKPj4gICAg
ICAgICAgICAgICAgIGZhbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+PiAgICAgICAgICAgICAg
ICAgcHdtcyA9IDwmcHdtMSAwIDUwMDAwIDA+Owo+PiAgICAgICAgICAgICAgICAgI2Nvb2xpbmct
Y2VsbHMgPSA8Mj47Cj4+IEBAIC0xNzMsNiArMTczLDM0IEBAICZjcHVfbDMgewo+PiAgICAgICAg
IGNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfbGl0X3MwPjsKPj4gIH07Cj4+IAo+PiArJnBhY2thZ2Vf
dGhlcm1hbCB7Cj4+ICsgICAgICAgcG9sbGluZy1kZWxheSA9IDwxMDAwPjsKPj4gKwo+PiArICAg
ICAgIHRyaXBzIHsKPj4gKyAgICAgICAgICAgICAgIHBhY2thZ2VfZmFuMDogcGFja2FnZS1mYW4w
IHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgdGVtcGVyYXR1cmUgPSA8NTUwMDA+Owo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+Owo+PiArICAgICAgICAg
ICAgICAgICAgICAgICB0eXBlID0gImFjdGl2ZSI7Cj4+ICsgICAgICAgICAgICAgICB9Owo+PiAr
ICAgICAgICAgICAgICAgcGFja2FnZV9mYW4xOiBwYWNrYWdlLWZhbjEgewo+PiArICAgICAgICAg
ICAgICAgICAgICAgICB0ZW1wZXJhdHVyZSA9IDw2NTAwMD47Cj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGh5c3RlcmVzaXMgPSA8MjAwMD47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHR5
cGUgPSAiYWN0aXZlIjsKPj4gKyAgICAgICAgICAgICAgIH07Cj4+ICsgICAgICAgfTsKPj4gKwo+
PiArICAgICAgIGNvb2xpbmctbWFwcyB7Cj4+ICsgICAgICAgICAgICAgICBtYXAwIHsKPj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgdHJpcCA9IDwmcGFja2FnZV9mYW4wPjsKPj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgY29vbGluZy1kZXZpY2UgPSA8JmZhbiBUSEVSTUFMX05PX0xJTUlUIDE+
Owo+PiArICAgICAgICAgICAgICAgfTsKPj4gKyAgICAgICAgICAgICAgIG1hcDEgewo+PiArICAg
ICAgICAgICAgICAgICAgICAgICB0cmlwID0gPCZwYWNrYWdlX2ZhbjE+Owo+PiArICAgICAgICAg
ICAgICAgICAgICAgICBjb29saW5nLWRldmljZSA9IDwmZmFuIDEgVEhFUk1BTF9OT19MSU1JVD47
Cj4+ICsgICAgICAgICAgICAgICB9Owo+PiArICAgICAgIH07Cj4+ICt9Owo+PiArCj4+ICAmaTJj
MCB7Cj4+ICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gICAgICAgICBwaW5j
dHJsLTAgPSA8JmkyYzBtMl94ZmVyPjsKPj4gQEAgLTczMSw2ICs3NTksMTAgQEAgcmVndWxhdG9y
LXN0YXRlLW1lbSB7Cj4+ICAgICAgICAgfTsKPj4gIH07Cj4+IAo+PiArJnRzYWRjIHsKPj4gKyAg
ICAgICBzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiArCj4gCj4gSXMgdGhlcmUgYW55IHJlYXNv
biB0aGlzIGNhbid0IGJlIGVuYWJsZWQgYnkgZGVmYXVsdCBpbiB0aGUgLmR0c2kgZmlsZT8KPiBU
aGUgdGhlcm1hbCBzZW5zb3IgZG9lc24ndCBkZXBlbmQgb24gYW55dGhpbmcgZXh0ZXJuYWwsIHNv
IHRoZXJlIHNob3VsZAo+IGJlIG5vIHJlYXNvbiB0byBwdXNoIHRoaXMgZG93biB0byB0aGUgYm9h
cmQgbGV2ZWwuCgpBY3R1YWxseSwgdGhlcmUgaXMgYSByZWFzb24uICBEaWZmZXJlbnQgYm9hcmRz
IGNhbiBoYW5kbGUgdGhlIGNyaXRpY2FsCm92ZXJoZWF0aW5nIGRpZmZlcmVudGx5LCBieSBsZXR0
aW5nIHRoZSBDUlUgb3IgdGhlIFBNSUMgaGFuZGxlIGl0LiAgVGhpcwp3YXMgYWxzbyB0aGUgY2Fz
ZSBmb3IgdGhlIFJLMzM5OS4KClBsZWFzZSwgaGF2ZSBhIGxvb2sgYXQgdGhlIGZvbGxvd2luZyBE
VCBwcm9wZXJ0aWVzLCB3aGljaCBhcmUgY29uc3VtZWQKYnkgZHJpdmVycy90aGVybWFsL3JvY2tj
aGlwX3RoZXJtYWwuYzoKICAgLSAicm9ja2NoaXAsaHctdHNodXQtbW9kZSIKICAgLSAicm9ja2No
aXAsaHctdHNodXQtcG9sYXJpdHkiCgpTZWUgYWxzbyBwYWdlIDEsMzcyIG9mIHRoZSBSSzM1ODgg
VFJNIHYxLjAuCgpUaGlzIGhhcyBhbHNvIHJlbWluZGVkIG1lIHRvIGNoZWNrIGhvdyBpcyB0aGUg
Um9jayA1QiBhY3R1YWxseSB3aXJlZCwKanVzdCB0byBtYWtlIHN1cmUuICBXZSBhY3R1YWxseSBu
ZWVkIHRvIHByb3ZpZGUgdGhlIHR3byBEVCBwcm9wZXJ0aWVzCmxpc3RlZCBhYm92ZSwgYXQgbGVh
c3QgdG8gYXZvaWQgZW1pdHRpbmcgdGhlIHdhcm5pbmdzLgoKPj4gICZ1YXJ0MiB7Cj4+ICAgICAg
ICAgcGluY3RybC0wID0gPCZ1YXJ0Mm0wX3hmZXI+Owo+PiAgICAgICAgIHN0YXR1cyA9ICJva2F5
IjsKPj4gCj4+IC0tCj4+IDIuNDMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
