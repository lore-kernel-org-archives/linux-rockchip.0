Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BCB9CF6D2C
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 14:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mumlkAFyJEg5QvtjVSu+w9fC9+yJa7UtmhSJQ6Zx2OU=; b=SRHqILm2ZjOmzL
	vrEg38STeAzb2cXVdC7+fC3a9Cvjju4oQ9SVjtH4xq2obN5rmSr/RbT9njhvR3hPrbOQ0u96me0wa
	Waej1wpU20ws5XcRIN4hN/L6/GRW+kTMHhoUFmIFXtosVTzrgMHqEYQPTvoxqHTz4vdk7P3bc9aAE
	eaofgIgAIF6o62mugvWgMfeLWHW0NwISyeAxaWxeP1sIZtLMKfipzy23TciQAhPWxx2rdmtq+J0gh
	z94KHhlYf9tjID0+tU3see0SYb+teUtoEW8wXcNC0JOwX1I1i/sq46PKDoNr2VpWmavf7CVX6lR/6
	Xc5b7ylmWGnYwdKx1GZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sw0P7-00000006P4z-3vFU;
	Wed, 02 Oct 2024 14:32:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sw0Mc-00000006ONp-3UPx;
	Wed, 02 Oct 2024 14:30:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 670415C2832;
	Wed,  2 Oct 2024 14:29:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FEC9C4CECD;
	Wed,  2 Oct 2024 14:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727879401;
	bh=IUfxm32tVmmOfVDOlQoXOqb9lUBiGHe/gcVKrRhCn1A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gb8/eZYVDFhHJKakbJ8WlEWhFR95OE73ArjCjV28CVojPFO+O3gvDbkES7n5AREVi
	 XA4sCe1Ck9E7RTxW3wZrI88j9lW4FmyPQDLAnitliVTNQi1G7o3y+g0YuJTOunILum
	 uZ3PYAa00MZ4NRMgi/8Gi8d5jWwcPxBepQBVUb3EHb8GlVWtHhOs6n86C1DWl81+l+
	 VE56BhJ/T8fW49awBNztf62zepKIZz7GAhh8gXUTnC/UeRh8zk+Ebzk1vEaWDno3r8
	 qWN73CFF618npbKqlQ2a0dWnXIXgp90uSQIiUc814c4H1UmUgvf08zUQbPDmJRm3Jw
	 gYaiJEfetPirw==
Date: Wed, 2 Oct 2024 16:29:54 +0200
From: Benjamin Tissoires <bentiss@kernel.org>
To: Lee Jones <lee@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, jikos@kernel.org, jic23@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jdelvare@suse.com, 
	linux@roeck-us.net, srinivas.pandruvada@linux.intel.com, dmitry.torokhov@gmail.com, 
	pavel@ucw.cz, ukleinek@debian.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-input@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v8 1/9] HID: hid-sensor-hub: don't use stale
 platform-data on remove
Message-ID: <xwfsbi7qrl47owvcozlw3fhg2zvlxo4itlhqulcvs46f56hxrc@fsvgfsaqoy7q>
References: <20240908210803.3339919-1-heiko@sntech.de>
 <20240908210803.3339919-2-heiko@sntech.de>
 <20241002135850.GE7504@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241002135850.GE7504@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_073002_991958_DAB72587 
X-CRM114-Status: GOOD (  29.93  )
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

T24gT2N0IDAyIDIwMjQsIExlZSBKb25lcyB3cm90ZToKPiBJbnRlbnRpb25hbCB0b3AtcG9zdCEK
PiAKPiBKdXN0IHRoaXMgcGF0Y2ggdG8gYmUgcmV2aWV3ZWQgbm93Lgo+IAo+IEFueSBvZiB0aGUg
SElEIHBlb3BsZSBhcm91bmQ/CgpTdXJlLgoKPiAKPiA+IFRoZSBoaWQtc2Vuc29yLWh1YiBjcmVh
dGVzIHRoZSBpbmRpdmlkdWFsIGRldmljZSBzdHJ1Y3RzIGFuZCB0cmFuc2ZlcnMgdGhlbQo+ID4g
dG8gdGhlIGNyZWF0ZWQgbWZkIHBsYXRmb3JtLWRldmljZXMgdmlhIHRoZSBwbGF0Zm9ybV9kYXRh
IGluIHRoZSBtZmRfY2VsbC4KPiA+IAo+ID4gQmVmb3JlIGNvbW1pdCBlNjUxYTFkYTQ0MmEgKCJI
SUQ6IGhpZC1zZW5zb3ItaHViOiBBbGxvdyBwYXJhbGxlbCBzeW5jaHJvbm91cyByZWFkcyIpCj4g
PiB0aGUgc2Vuc29yLWh1YiB3YXMgbWFuYWdpbmcgYWNjZXNzIGNlbnRyYWxseSwgd2l0aCBvbmUg
ImNvbXBsZXRpb24iIGluIHRoZQo+ID4gaHViJ3MgZGF0YSBzdHJ1Y3R1cmUsIHdoaWNoIG5lZWRl
ZCB0byBiZSBmaW5pc2hlZCBvbiByZW1vdmFsIGF0IHRoZSBsYXRlc3QuCj4gPiAKPiA+IFRoZSBt
ZW50aW9uZWQgY29tbWl0IHRoZW4gbW92ZWQgdGhpcyBjZW50cmFsIG1hbmFnZW1lbnQgdG8gZWFj
aCBoaWQgc2Vuc29yCj4gPiBkZXZpY2UsIHJlc3VsdGluZyBvbiBhIGNvbXBsZXRpb24gaW4gZWFj
aCBzdHJ1Y3QgaGlkX3NlbnNvcl9odWJfZGV2aWNlLgo+ID4gVGhlIHJlbW92ZSBwcm9jZWR1cmUg
d2FzIGFkYXB0ZWQgdG8gZ28gdGhyb3VnaCBhbGwgc2Vuc29yIGRldmljZXMgYW5kCj4gPiBmaW5p
c2ggYW55IHBlbmRpbmcgImNvbXBsZXRpb24iLgo+ID4gCj4gPiBXaGF0IHRoaXMgZGlkbid0IHRh
a2UgaW50byBhY2NvdW50IHdhcywgcGxhdGZvcm1fZGV2aWNlX2FkZF9kYXRhKCkgdGhhdCBpcwo+
ID4gdXNlZCBieSBtZmRfYWRke19ob3RwbHVnfV9kZXZpY2VzKCkgZG9lcyBhIGttZW1kdXAgb24g
dGhlIHN1Ym1pdHRlZAo+ID4gcGxhdGZvcm0tZGF0YS4gU28gdGhlIGRhdGEgdGhlIHBsYXRmb3Jt
LWRldmljZSBnZXRzIGlzIGEgY29weSBvZiB0aGUKPiA+IG9yaWdpbmFsIGRhdGEsIG1lYW5pbmcg
dGhhdCB0aGUgZGV2aWNlIHdvcmtlZCBvbiBhIGRpZmZlcmVudCBjb21wbGV0aW9uCj4gPiB0aGFu
IHdoYXQgc2Vuc29yX2h1Yl9yZW1vdmUoKSBjdXJyZW50bHkgd2FudHMgdG8gYWNjZXNzLgo+ID4g
Cj4gPiBUbyBmaXggdGhhdCwgdXNlIGRldmljZV9mb3JfZWFjaF9jaGlsZCgpIHRvIGdvIHRocm91
Z2ggZWFjaCBjaGlsZC1kZXZpY2UKPiA+IHNpbWlsYXIgdG8gaG93IG1mZF9yZW1vdmVfZGV2aWNl
cygpIHVucmVnaXN0ZXJzIHRoZSBkZXZpY2VzIGxhdGVyIGFuZAo+ID4gd2l0aCB0aGF0IGdldCB0
aGUgbGl2ZSBwbGF0Zm9ybV9kYXRhIHRvIGZpbmFsaXplIHRoZSBjb3JyZWN0IGNvbXBsZXRpb24u
Cj4gPiAKPiA+IEZpeGVzOiBlNjUxYTFkYTQ0MmEgKCJISUQ6IGhpZC1zZW5zb3ItaHViOiBBbGxv
dyBwYXJhbGxlbCBzeW5jaHJvbm91cyByZWFkcyIpCgpUaGF0IGNvbW1pdCB3YXMgaW5jbHVkZWQg
aW4gdjQuMS4gRG9uJ3Qgd2Ugd2FudCB0byBjYyBzdGFibGUgaGVyZSBhcwp3ZWxsPwoKQmVzaWRl
cyB0aGF0LCB3aXRoIHRoZSBsaW1pdGVkIGtub3dsZWRnZSBJIGhhdmUgb2YgTUZEcyBhbmQgdGhl
IGNvbW1pdApkZXNjcmlwdGlvbiBhYm92ZSwgdGhpcyBpczoKQWNrZWQtYnk6IEJlbmphbWluIFRp
c3NvaXJlcyA8YmVudGlzc0BrZXJuZWwub3JnPgoKQ2hlZXJzLApCZW5qYW1pbgoKPiA+IFNpZ25l
ZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gPiAtLS0KPiA+ICBk
cml2ZXJzL2hpZC9oaWQtc2Vuc29yLWh1Yi5jIHwgMjEgKysrKysrKysrKysrKystLS0tLS0tCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gPiAK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2hpZC9oaWQtc2Vuc29yLWh1Yi5jIGIvZHJpdmVycy9o
aWQvaGlkLXNlbnNvci1odWIuYwo+ID4gaW5kZXggMjZlOTNhMzMxYTUxLi4zY2QwMGFmYTQ1M2Eg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2hpZC9oaWQtc2Vuc29yLWh1Yi5jCj4gPiArKysgYi9k
cml2ZXJzL2hpZC9oaWQtc2Vuc29yLWh1Yi5jCj4gPiBAQCAtNzMwLDIzICs3MzAsMzAgQEAgc3Rh
dGljIGludCBzZW5zb3JfaHViX3Byb2JlKHN0cnVjdCBoaWRfZGV2aWNlICpoZGV2LAo+ID4gIAly
ZXR1cm4gcmV0Owo+ID4gIH0KPiA+ICAKPiA+ICtzdGF0aWMgaW50IHNlbnNvcl9odWJfZmluYWxp
emVfcGVuZGluZ19mbihzdHJ1Y3QgZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEpCj4gPiArewo+ID4g
KwlzdHJ1Y3QgaGlkX3NlbnNvcl9odWJfZGV2aWNlICpoc2RldiA9IGRldi0+cGxhdGZvcm1fZGF0
YTsKPiA+ICsKPiA+ICsJaWYgKGhzZGV2LT5wZW5kaW5nLnN0YXR1cykKPiA+ICsJCWNvbXBsZXRl
KCZoc2Rldi0+cGVuZGluZy5yZWFkeSk7Cj4gPiArCj4gPiArCXJldHVybiAwOwo+ID4gK30KPiA+
ICsKPiA+ICBzdGF0aWMgdm9pZCBzZW5zb3JfaHViX3JlbW92ZShzdHJ1Y3QgaGlkX2RldmljZSAq
aGRldikKPiA+ICB7Cj4gPiAgCXN0cnVjdCBzZW5zb3JfaHViX2RhdGEgKmRhdGEgPSBoaWRfZ2V0
X2RydmRhdGEoaGRldik7Cj4gPiAgCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gPiAtCWludCBpOwo+
ID4gIAo+ID4gIAloaWRfZGJnKGhkZXYsICIgaGFyZHdhcmUgcmVtb3ZlZFxuIik7Cj4gPiAgCWhp
ZF9od19jbG9zZShoZGV2KTsKPiA+ICAJaGlkX2h3X3N0b3AoaGRldik7Cj4gPiArCj4gPiAgCXNw
aW5fbG9ja19pcnFzYXZlKCZkYXRhLT5sb2NrLCBmbGFncyk7Cj4gPiAtCWZvciAoaSA9IDA7IGkg
PCBkYXRhLT5oaWRfc2Vuc29yX2NsaWVudF9jbnQ7ICsraSkgewo+ID4gLQkJc3RydWN0IGhpZF9z
ZW5zb3JfaHViX2RldmljZSAqaHNkZXYgPQo+ID4gLQkJCWRhdGEtPmhpZF9zZW5zb3JfaHViX2Ns
aWVudF9kZXZzW2ldLnBsYXRmb3JtX2RhdGE7Cj4gPiAtCQlpZiAoaHNkZXYtPnBlbmRpbmcuc3Rh
dHVzKQo+ID4gLQkJCWNvbXBsZXRlKCZoc2Rldi0+cGVuZGluZy5yZWFkeSk7Cj4gPiAtCX0KPiA+
ICsJZGV2aWNlX2Zvcl9lYWNoX2NoaWxkKCZoZGV2LT5kZXYsIE5VTEwsCj4gPiArCQkJICAgICAg
c2Vuc29yX2h1Yl9maW5hbGl6ZV9wZW5kaW5nX2ZuKTsKPiA+ICAJc3Bpbl91bmxvY2tfaXJxcmVz
dG9yZSgmZGF0YS0+bG9jaywgZmxhZ3MpOwo+ID4gKwo+ID4gIAltZmRfcmVtb3ZlX2RldmljZXMo
JmhkZXYtPmRldik7Cj4gPiAgCW11dGV4X2Rlc3Ryb3koJmRhdGEtPm11dGV4KTsKPiA+ICB9Cj4g
PiAtLSAKPiA+IDIuNDMuMAo+ID4gCj4gCj4gLS0gCj4gTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
