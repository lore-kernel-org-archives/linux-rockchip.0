Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80856CA1016
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 08:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WHFOAW6lQkugZcIADpTci/8Go7OIwoZzzoF5ymrwxI=; b=cmet6X3YmGetD0
	DZqzlF1r0uaiK1dfB1dk0Hqb38vf5EkcKNWq5oaNfrleg+FvZwPVX+mZ+xaDNao34FTaVI9X3ZF6Z
	kMQ4wCrADzVFx0rSmaFFrUcfrWb6ZYk5fkEh30gtmM8A0C68ZGZyTIe2RJY8luFkAODWfkleA+jRP
	9GPoD7hxeKH9Ucj4M27NIvOQLCBXgBTIaWqO+yp2iuwDFrMF/Pbc1K+ksrIUNKlg25+XzmEjHMGve
	WqxWpV0qJbq0AE9Wi/7+CS4zaHyRQYeBdZYMJFLwbUXrbd2HI76iR13p6p6VGdAo5tcc8YBURarQk
	VNVpsyMxEUNg7PfRTc7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwd5R-00000001wbY-1ZkZ;
	Thu, 11 Sep 2025 08:55:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwd5O-00000001wZa-3AxX;
	Thu, 11 Sep 2025 08:55:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=XJUXPxCcIdLyjtfU8oLHAw5Mz9mWtXhRUXrgxmlyQhc=; b=0xaqUZmpSGMQIauSG4v6OVj8wQ
	nJBIJCrzyCZnP+OiqdAhDNBV2UZaxsXE1tmicZyPcqv+ZIsLDMz1abLeXGBzuJphRChOLxz0kYAnT
	19z9Fp4PcdDQg0UcdQhT7pGyfHvYZFYrUfv6t0UxmJSZoTpT1Rwmk+cnoSnvFxnDW59RTiIjyeBge
	2ANVCgC9Z190tSoopNSXKZ3kdWBiDw6ITGvr8vUbH+Np0VZAz2YXd6bSR9bUnnnwhAEA8kiEFzlES
	204E4h4Zj/ENbZyWSZrPLWxXNSyu4aXaMXWaUCqglQoGZGviuz8If38m2Qm8kshvJTR4Yj6bUo8GZ
	jgytAELg==;
Received: from i53875b0e.versanet.de ([83.135.91.14] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uwd5K-0008SP-Jd; Thu, 11 Sep 2025 10:55:18 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yao Zi <ziyao@disroot.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH 1/1] phy: rockchip: naneng-combphy: use existing DT property check
 for rk3528
Date: Thu, 11 Sep 2025 10:55:17 +0200
Message-ID: <2049032.8hb0ThOEGa@diego>
In-Reply-To: <20250910122000.951100-1-amadeus@jmu.edu.cn>
References: <20250910122000.951100-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_015522_802398_BEAD4AA8 
X-CRM114-Status: GOOD (  16.81  )
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

QW0gTWl0dHdvY2gsIDEwLiBTZXB0ZW1iZXIgMjAyNSwgMTQ6MjA6MDAgTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBDaHVrdW4gUGFuOgo+IFRoZSBuYW5lbmctY29tYnBoeSBk
cml2ZXIgYWxyZWFkeSBoYXMgRFQgcHJvcGVydHkgY2hlY2tzIGZvcgo+ICJyb2NrY2hpcCxlbmFi
bGUtc3NjIiBhbmQgInJvY2tjaGlwLGV4dC1yZWZjbGsiLCB1c2UgaXQgZm9yCj4gdGhlIHJrMzUy
OF9jb21icGh5X2NmZy4gQWxzbyBhbGlnbmVkIHRoZSBpbmRlbnRhdGlvbiBvZiB0aGUKPiByazM1
MjhfY29tYnBoeV9ncmZjZmdzIHBhcmFtZXRlcnMgKHVzaW5nIHRhYnMpLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IENodWt1biBQYW4gPGFtYWRldXNAam11LmVkdS5jbj4KClJldmlld2VkLWJ5OiBIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKPiAtLS0KPiAgZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMgfCAxMiArKysrKy0tLS0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMg
Yi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+IGlu
ZGV4IGEzZWYxOTgwN2I5ZS4uYWQ2YzhhMTE5NTFiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jCj4gKysrIGIvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMKPiBAQCAtNTE4LDcgKzUx
OCw3IEBAIHN0YXRpYyBpbnQgcmszNTI4X2NvbWJwaHlfY2ZnKHN0cnVjdCByb2NrY2hpcF9jb21i
cGh5X3ByaXYgKnByaXYpCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAl9Cj4gIAo+IC0JaWYgKGRl
dmljZV9wcm9wZXJ0eV9yZWFkX2Jvb2wocHJpdi0+ZGV2LCAicm9ja2NoaXAsZXh0LXJlZmNsayIp
KSB7Cj4gKwlpZiAocHJpdi0+ZXh0X3JlZmNsaykgewo+ICAJCXJvY2tjaGlwX2NvbWJwaHlfcGFy
YW1fd3JpdGUocHJpdi0+cGh5X2dyZiwgJmNmZy0+cGlwZV9jbGtfZXh0LCB0cnVlKTsKPiAgCj4g
IAkJaWYgKHByaXYtPnR5cGUgPT0gUEhZX1RZUEVfUENJRSAmJiByYXRlID09IFJFRl9DTE9DS18x
MDBNSHopIHsKPiBAQCAtNTQzLDExICs1NDMsOSBAQCBzdGF0aWMgaW50IHJrMzUyOF9jb21icGh5
X2NmZyhzdHJ1Y3Qgcm9ja2NoaXBfY29tYnBoeV9wcml2ICpwcml2KQo+ICAJCX0KPiAgCX0KPiAg
Cj4gLQlpZiAocHJpdi0+dHlwZSA9PSBQSFlfVFlQRV9QQ0lFKSB7Cj4gLQkJaWYgKGRldmljZV9w
cm9wZXJ0eV9yZWFkX2Jvb2wocHJpdi0+ZGV2LCAicm9ja2NoaXAsZW5hYmxlLXNzYyIpKQo+IC0J
CQlyb2NrY2hpcF9jb21icGh5X3VwZGF0ZWwocHJpdiwgUkszNTI4X1BIWVJFRzQwX1NTQ19FTiwK
PiAtCQkJCQkJIFJLMzUyOF9QSFlSRUc0MF9TU0NfRU4sIFJLMzUyOF9QSFlSRUc0MCk7Cj4gLQl9
Cj4gKwlpZiAocHJpdi0+dHlwZSA9PSBQSFlfVFlQRV9QQ0lFICYmIHByaXYtPmVuYWJsZV9zc2Mp
Cj4gKwkJcm9ja2NoaXBfY29tYnBoeV91cGRhdGVsKHByaXYsIFJLMzUyOF9QSFlSRUc0MF9TU0Nf
RU4sCj4gKwkJCQkJIFJLMzUyOF9QSFlSRUc0MF9TU0NfRU4sIFJLMzUyOF9QSFlSRUc0MCk7Cj4g
IAo+ICAJcmV0dXJuIDA7Cj4gIH0KPiBAQCAtNTcxLDcgKzU2OSw3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3Qgcm9ja2NoaXBfY29tYnBoeV9ncmZjZmcgcmszNTI4X2NvbWJwaHlfZ3JmY2ZncyA9IHsK
PiAgCS5jb24yX2Zvcl9wY2llCQk9IHsgMHgwMDA4LCAxNSwgMCwgMHgwMCwgMHgxMDEgfSwKPiAg
CS5jb24zX2Zvcl9wY2llCQk9IHsgMHgwMDBjLCAxNSwgMCwgMHgwMCwgMHgwMjAwIH0sCj4gIAkv
KiBwaXBlLWdyZiAqLwo+IC0JLnUzb3RnMF9wb3J0X2VuICAgICAgICAgPSB7IDB4MDA0NCwgMTUs
IDAsIDB4MDE4MSwgMHgxMTAwIH0sCj4gKwkudTNvdGcwX3BvcnRfZW4JCT0geyAweDAwNDQsIDE1
LCAwLCAweDAxODEsIDB4MTEwMCB9LAo+ICB9Owo+ICAKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBy
b2NrY2hpcF9jb21icGh5X2NmZyByazM1MjhfY29tYnBoeV9jZmdzID0gewo+IAoKCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
