Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADE29C28B28
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Mar 2025 18:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAPLS9nqxOl676HDKggCoPfc/uz1s94K/NdqN5zOho0=; b=NcD8dUKGgPzb+A
	7GeuU/UW6sDGpxzaznoVhtSKGR+kdcfbzP8prQOjLL7tTePKVwo6zzi6Sx+TIRV+t46EwbKAaAkoB
	9Q/6GLLVddU28uiiJxjwQnNHwwxnUsR6QKZ4R3ih2DY7jYIhDFADghOg4tM6Uo/AbZHyJfYJ/Iw66
	mZGwXbuOD4EHbCcycavc36TYwGNhIYf30HtQ1cwlfmPjHukKKzW2Xav8Dw4OMdng9hMcX4Cgx5sjL
	b+mTdP2z0oQ4r13CWfcpZ/qZPt5ZQ16fCf2f+g4amN0lqzwdFJHVU6ptTgcBY2LO5rtxepZm7kSFj
	p89gLlnuZzlM0vhjAOfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttWSk-0000000GiHW-2LZT;
	Sat, 15 Mar 2025 18:42:22 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttWR3-0000000Gi5m-2SSO;
	Sat, 15 Mar 2025 18:40:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C49CEA48B36;
	Sat, 15 Mar 2025 18:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E57AC4CEE5;
	Sat, 15 Mar 2025 18:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742064036;
	bh=00RmH4uBlvkSbz6rfOkjFvbEmq2n+WwmAs6qZnlIY2E=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qYKTwSu+jSfZi4orffYnERK0ro+MZCC0aG9Ccz6itSm5oeGfBdat6ovAVDBtyfOVE
	 kNyMg8vS7cl0TAlVD4aXWOq+qlX9kZLGhfggeTQMfqpDYLps3E2+gpSVEge6rI1ki0
	 VZ6S4+vxVXVOI6CGOr0iuqi9vDd23lcOyARxOoGVlewz7RU/kToieksHnvPD3cEP4S
	 znpU2Oo4YkLJuAT4aev1rsB0g2TmGJvjDUZp7JKjmUN4LKcMFVmWVAaFCAEjTYTmND
	 FXP5K6wrEiKmS3m4hzH3NrPKRvY1k5OXVlKbrKGAgXQzdmVzirvxoGJLrOWqRl8/Pu
	 TlnQ0FKNps/XA==
Date: Sat, 15 Mar 2025 18:40:28 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Simon Xue <xxm@rock-chips.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Shreeya Patel
 <shreeya.patel@collabora.com>, linux-iio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iio: adc: rockchip: Fix clock initialization sequence
Message-ID: <20250315184028.46053659@jic23-huawei>
In-Reply-To: <10623626.nUPlyArG6x@phil>
References: <20250312062016.137821-1-xxm@rock-chips.com>
	<10623626.nUPlyArG6x@phil>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.48; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250315_114037_703878_30E8396D 
X-CRM114-Status: GOOD (  19.45  )
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

T24gV2VkLCAxMiBNYXIgMjAyNSAwODowMDo1NCArMDEwMApIZWlrbyBTdHVlYm5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKCj4gQW0gTWl0dHdvY2gsIDEyLiBNw6RyeiAyMDI1LCAwNzoyMDox
NiBNRVogc2NocmllYiBTaW1vbiBYdWU6Cj4gPiBjbG9ja19zZXRfcmF0ZSBzaG91bGQgYmUgZXhl
Y3V0ZWQgYWZ0ZXIgZGV2bV9jbGtfZ2V0X2VuYWJsZWQuCj4gPiAKPiA+IEZpeGVzOiA5N2FkMTBi
YjI5MDEgKCJpaW86IGFkYzogcm9ja2NoaXBfc2FyYWRjOiBNYWtlIHVzZSBvZiBkZXZtX2Nsa19n
ZXRfZW5hYmxlZCIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBz
LmNvbT4gIAo+IAo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRl
PgpvdWNoLgoKQXBwbGllZCBhbmQgbWFya2VkIGZvciBzdGFibGUuCgpUaGFua3MsCgpKb25hdGhh
bgoKPiAKPiA+IC0tLQo+ID4gIGRyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYyB8IDE3
ICsrKysrKysrLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwg
OSBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy9yb2Nr
Y2hpcF9zYXJhZGMuYyBiL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYwo+ID4gaW5k
ZXggYTI5ZTU0NzU0YzhmLi5hYjRkZTY3ZmIxMzUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2lp
by9hZGMvcm9ja2NoaXBfc2FyYWRjLmMKPiA+ICsrKyBiL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hp
cF9zYXJhZGMuYwo+ID4gQEAgLTQ4MCwxNSArNDgwLDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9z
YXJhZGNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAJaWYgKGluZm8t
PnJlc2V0KQo+ID4gIAkJcm9ja2NoaXBfc2FyYWRjX3Jlc2V0X2NvbnRyb2xsZXIoaW5mby0+cmVz
ZXQpOwo+ID4gIAo+ID4gLQkvKgo+ID4gLQkgKiBVc2UgYSBkZWZhdWx0IHZhbHVlIGZvciB0aGUg
Y29udmVydGVyIGNsb2NrLgo+ID4gLQkgKiBUaGlzIG1heSBiZWNvbWUgdXNlci1jb25maWd1cmFi
bGUgaW4gdGhlIGZ1dHVyZS4KPiA+IC0JICovCj4gPiAtCXJldCA9IGNsa19zZXRfcmF0ZShpbmZv
LT5jbGssIGluZm8tPmRhdGEtPmNsa19yYXRlKTsKPiA+IC0JaWYgKHJldCA8IDApCj4gPiAtCQly
ZXR1cm4gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCByZXQsCj4gPiAtCQkJCSAgICAgImZhaWxl
ZCB0byBzZXQgYWRjIGNsayByYXRlXG4iKTsKPiA+IC0KPiA+ICAJcmV0ID0gcmVndWxhdG9yX2Vu
YWJsZShpbmZvLT52cmVmKTsKPiA+ICAJaWYgKHJldCA8IDApCj4gPiAgCQlyZXR1cm4gZGV2X2Vy
cl9wcm9iZSgmcGRldi0+ZGV2LCByZXQsCj4gPiBAQCAtNTE1LDYgKzUwNiwxNCBAQCBzdGF0aWMg
aW50IHJvY2tjaGlwX3NhcmFkY19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ID4gIAlpZiAoSVNfRVJSKGluZm8tPmNsaykpCj4gPiAgCQlyZXR1cm4gZGV2X2Vycl9wcm9iZSgm
cGRldi0+ZGV2LCBQVFJfRVJSKGluZm8tPmNsayksCj4gPiAgCQkJCSAgICAgImZhaWxlZCB0byBn
ZXQgYWRjIGNsb2NrXG4iKTsKPiA+ICsJLyoKPiA+ICsJICogVXNlIGEgZGVmYXVsdCB2YWx1ZSBm
b3IgdGhlIGNvbnZlcnRlciBjbG9jay4KPiA+ICsJICogVGhpcyBtYXkgYmVjb21lIHVzZXItY29u
ZmlndXJhYmxlIGluIHRoZSBmdXR1cmUuCj4gPiArCSAqLwo+ID4gKwlyZXQgPSBjbGtfc2V0X3Jh
dGUoaW5mby0+Y2xrLCBpbmZvLT5kYXRhLT5jbGtfcmF0ZSk7Cj4gPiArCWlmIChyZXQgPCAwKQo+
ID4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgcmV0LAo+ID4gKwkJCQkgICAg
ICJmYWlsZWQgdG8gc2V0IGFkYyBjbGsgcmF0ZVxuIik7Cj4gPiAgCj4gPiAgCXBsYXRmb3JtX3Nl
dF9kcnZkYXRhKHBkZXYsIGluZGlvX2Rldik7Cj4gPiAgCj4gPiAgIAo+IAo+IAo+IAo+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
