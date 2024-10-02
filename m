Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 085F1CF6D2C
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 14:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvORFGvPO4HyFF+Jees7qhpkXlvbhb2Ibf+pARJVzGY=; b=h+piGHPUYoWv5s
	wM4sWt1lzPdnyqB6MoPntfgLRG7zEdCFkATnw79Wi+7gIYjs1TdZWRDJLY9wm1+sXYIpEOjtqjH5T
	xp1JIkc72oJEWVRLHAjQIXJ+fhkOxxnMwbZCpZoSwewVklAHg1u5OKrQ9SpcxxrHqedmLd32X7mU9
	Lx2RoecDshuPnw5CFTxjoKmqljyVDndFYM6R7rJVCnfANk0YLXCDWY8702HtzxYEUkZlT8i4fJNM7
	8QcZSfMHjQmZPZEcbEItpPrixMv9MuxyCYEU2kjZTsxEEPplg8MFBqxWH0sQ8Khus5htRWGgO6MhZ
	2cvNyqsJqWCQBTbBL+Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svztp-00000006Gil-29Jb;
	Wed, 02 Oct 2024 14:00:17 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svzsY-00000006GGg-0htZ;
	Wed, 02 Oct 2024 13:58:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 10A9CA43D27;
	Wed,  2 Oct 2024 13:58:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36C46C4CECE;
	Wed,  2 Oct 2024 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727877537;
	bh=kzEysxO2ap3NSntJagiOFBlB2EHYbnQ40iQCb2oIRLU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HbNL0Frbukj+51wQmYmNT6WV9aa9aA7MwmnkV/9lK15Rew25r0gaXhEnWPjft7UUj
	 c2fmQLNBp9Sb7TTKMl1QwGaMmDkKl2kndMXJu8Bi69C00FJe2BTcGaGhX2LgdmH1to
	 8JCPci0I5M+QiemOaMrcsv1OW+14RM6tEYmTz3pghoDGC6puORnZY/owGG2us1ADvI
	 c+5E9McgeP2F1lLr2fsheVIn9H/RgE48Ms4aiRl/DkQxYk0brod3WpW0LZTg5AZZSV
	 WPmiUSkEca5NEorG4Gw8yZc+sfbpPRFzVANINoqd6zwhH2Uyz0TxCdHA1dX4MFmGYB
	 r8+IHxoUnSQ3g==
Date: Wed, 2 Oct 2024 14:58:50 +0100
From: Lee Jones <lee@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: jikos@kernel.org, jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
	srinivas.pandruvada@linux.intel.com, bentiss@kernel.org,
	dmitry.torokhov@gmail.com, pavel@ucw.cz, ukleinek@debian.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v8 1/9] HID: hid-sensor-hub: don't use stale
 platform-data on remove
Message-ID: <20241002135850.GE7504@google.com>
References: <20240908210803.3339919-1-heiko@sntech.de>
 <20240908210803.3339919-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240908210803.3339919-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_065858_368892_147F2F85 
X-CRM114-Status: GOOD (  27.56  )
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

SW50ZW50aW9uYWwgdG9wLXBvc3QhCgpKdXN0IHRoaXMgcGF0Y2ggdG8gYmUgcmV2aWV3ZWQgbm93
LgoKQW55IG9mIHRoZSBISUQgcGVvcGxlIGFyb3VuZD8KCj4gVGhlIGhpZC1zZW5zb3ItaHViIGNy
ZWF0ZXMgdGhlIGluZGl2aWR1YWwgZGV2aWNlIHN0cnVjdHMgYW5kIHRyYW5zZmVycyB0aGVtCj4g
dG8gdGhlIGNyZWF0ZWQgbWZkIHBsYXRmb3JtLWRldmljZXMgdmlhIHRoZSBwbGF0Zm9ybV9kYXRh
IGluIHRoZSBtZmRfY2VsbC4KPiAKPiBCZWZvcmUgY29tbWl0IGU2NTFhMWRhNDQyYSAoIkhJRDog
aGlkLXNlbnNvci1odWI6IEFsbG93IHBhcmFsbGVsIHN5bmNocm9ub3VzIHJlYWRzIikKPiB0aGUg
c2Vuc29yLWh1YiB3YXMgbWFuYWdpbmcgYWNjZXNzIGNlbnRyYWxseSwgd2l0aCBvbmUgImNvbXBs
ZXRpb24iIGluIHRoZQo+IGh1YidzIGRhdGEgc3RydWN0dXJlLCB3aGljaCBuZWVkZWQgdG8gYmUg
ZmluaXNoZWQgb24gcmVtb3ZhbCBhdCB0aGUgbGF0ZXN0Lgo+IAo+IFRoZSBtZW50aW9uZWQgY29t
bWl0IHRoZW4gbW92ZWQgdGhpcyBjZW50cmFsIG1hbmFnZW1lbnQgdG8gZWFjaCBoaWQgc2Vuc29y
Cj4gZGV2aWNlLCByZXN1bHRpbmcgb24gYSBjb21wbGV0aW9uIGluIGVhY2ggc3RydWN0IGhpZF9z
ZW5zb3JfaHViX2RldmljZS4KPiBUaGUgcmVtb3ZlIHByb2NlZHVyZSB3YXMgYWRhcHRlZCB0byBn
byB0aHJvdWdoIGFsbCBzZW5zb3IgZGV2aWNlcyBhbmQKPiBmaW5pc2ggYW55IHBlbmRpbmcgImNv
bXBsZXRpb24iLgo+IAo+IFdoYXQgdGhpcyBkaWRuJ3QgdGFrZSBpbnRvIGFjY291bnQgd2FzLCBw
bGF0Zm9ybV9kZXZpY2VfYWRkX2RhdGEoKSB0aGF0IGlzCj4gdXNlZCBieSBtZmRfYWRke19ob3Rw
bHVnfV9kZXZpY2VzKCkgZG9lcyBhIGttZW1kdXAgb24gdGhlIHN1Ym1pdHRlZAo+IHBsYXRmb3Jt
LWRhdGEuIFNvIHRoZSBkYXRhIHRoZSBwbGF0Zm9ybS1kZXZpY2UgZ2V0cyBpcyBhIGNvcHkgb2Yg
dGhlCj4gb3JpZ2luYWwgZGF0YSwgbWVhbmluZyB0aGF0IHRoZSBkZXZpY2Ugd29ya2VkIG9uIGEg
ZGlmZmVyZW50IGNvbXBsZXRpb24KPiB0aGFuIHdoYXQgc2Vuc29yX2h1Yl9yZW1vdmUoKSBjdXJy
ZW50bHkgd2FudHMgdG8gYWNjZXNzLgo+IAo+IFRvIGZpeCB0aGF0LCB1c2UgZGV2aWNlX2Zvcl9l
YWNoX2NoaWxkKCkgdG8gZ28gdGhyb3VnaCBlYWNoIGNoaWxkLWRldmljZQo+IHNpbWlsYXIgdG8g
aG93IG1mZF9yZW1vdmVfZGV2aWNlcygpIHVucmVnaXN0ZXJzIHRoZSBkZXZpY2VzIGxhdGVyIGFu
ZAo+IHdpdGggdGhhdCBnZXQgdGhlIGxpdmUgcGxhdGZvcm1fZGF0YSB0byBmaW5hbGl6ZSB0aGUg
Y29ycmVjdCBjb21wbGV0aW9uLgo+IAo+IEZpeGVzOiBlNjUxYTFkYTQ0MmEgKCJISUQ6IGhpZC1z
ZW5zb3ItaHViOiBBbGxvdyBwYXJhbGxlbCBzeW5jaHJvbm91cyByZWFkcyIpCj4gU2lnbmVkLW9m
Zi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiAtLS0KPiAgZHJpdmVycy9o
aWQvaGlkLXNlbnNvci1odWIuYyB8IDIxICsrKysrKysrKysrKysrLS0tLS0tLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9oaWQvaGlkLXNlbnNvci1odWIuYyBiL2RyaXZlcnMvaGlkL2hpZC1zZW5zb3It
aHViLmMKPiBpbmRleCAyNmU5M2EzMzFhNTEuLjNjZDAwYWZhNDUzYSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2hpZC9oaWQtc2Vuc29yLWh1Yi5jCj4gKysrIGIvZHJpdmVycy9oaWQvaGlkLXNlbnNv
ci1odWIuYwo+IEBAIC03MzAsMjMgKzczMCwzMCBAQCBzdGF0aWMgaW50IHNlbnNvcl9odWJfcHJv
YmUoc3RydWN0IGhpZF9kZXZpY2UgKmhkZXYsCj4gIAlyZXR1cm4gcmV0Owo+ICB9Cj4gIAo+ICtz
dGF0aWMgaW50IHNlbnNvcl9odWJfZmluYWxpemVfcGVuZGluZ19mbihzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHZvaWQgKmRhdGEpCj4gK3sKPiArCXN0cnVjdCBoaWRfc2Vuc29yX2h1Yl9kZXZpY2UgKmhz
ZGV2ID0gZGV2LT5wbGF0Zm9ybV9kYXRhOwo+ICsKPiArCWlmIChoc2Rldi0+cGVuZGluZy5zdGF0
dXMpCj4gKwkJY29tcGxldGUoJmhzZGV2LT5wZW5kaW5nLnJlYWR5KTsKPiArCj4gKwlyZXR1cm4g
MDsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQgc2Vuc29yX2h1Yl9yZW1vdmUoc3RydWN0IGhpZF9k
ZXZpY2UgKmhkZXYpCj4gIHsKPiAgCXN0cnVjdCBzZW5zb3JfaHViX2RhdGEgKmRhdGEgPSBoaWRf
Z2V0X2RydmRhdGEoaGRldik7Cj4gIAl1bnNpZ25lZCBsb25nIGZsYWdzOwo+IC0JaW50IGk7Cj4g
IAo+ICAJaGlkX2RiZyhoZGV2LCAiIGhhcmR3YXJlIHJlbW92ZWRcbiIpOwo+ICAJaGlkX2h3X2Ns
b3NlKGhkZXYpOwo+ICAJaGlkX2h3X3N0b3AoaGRldik7Cj4gKwo+ICAJc3Bpbl9sb2NrX2lycXNh
dmUoJmRhdGEtPmxvY2ssIGZsYWdzKTsKPiAtCWZvciAoaSA9IDA7IGkgPCBkYXRhLT5oaWRfc2Vu
c29yX2NsaWVudF9jbnQ7ICsraSkgewo+IC0JCXN0cnVjdCBoaWRfc2Vuc29yX2h1Yl9kZXZpY2Ug
KmhzZGV2ID0KPiAtCQkJZGF0YS0+aGlkX3NlbnNvcl9odWJfY2xpZW50X2RldnNbaV0ucGxhdGZv
cm1fZGF0YTsKPiAtCQlpZiAoaHNkZXYtPnBlbmRpbmcuc3RhdHVzKQo+IC0JCQljb21wbGV0ZSgm
aHNkZXYtPnBlbmRpbmcucmVhZHkpOwo+IC0JfQo+ICsJZGV2aWNlX2Zvcl9lYWNoX2NoaWxkKCZo
ZGV2LT5kZXYsIE5VTEwsCj4gKwkJCSAgICAgIHNlbnNvcl9odWJfZmluYWxpemVfcGVuZGluZ19m
bik7Cj4gIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkYXRhLT5sb2NrLCBmbGFncyk7Cj4gKwo+
ICAJbWZkX3JlbW92ZV9kZXZpY2VzKCZoZGV2LT5kZXYpOwo+ICAJbXV0ZXhfZGVzdHJveSgmZGF0
YS0+bXV0ZXgpOwo+ICB9Cj4gLS0gCj4gMi40My4wCj4gCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzm
lq9dCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
