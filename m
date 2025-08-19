Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54576CA0EF5
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 18:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHFm7qV1GyCJSY2+ob15Wg3VU55HvWMuhbUnrFJaUA8=; b=LB6C2Huw1qlnaM
	RTVOz+UxIh1EqAdW0C1gNeDjBlIzHpj3M6fSz0w0oLHjqzxHUZby2DlZSQOO2E8b9EijT9P0dVBLx
	yLTMWhi2PjiiiI11xryMN7iaTVCdIwwIxFtmcEvzwA3gfi7XrtsB+wdkGiH1VmxCK+cnsMyh2i477
	BaQ6VI4csyzGJIN8kcLf9g4I8HRAR7hpFEs7ymER0DWm9p4hjF5D8BfvkkFRPLBdcktlcTODgP4AR
	3Se7Twvgl6BgNjOVk+gKiLxHsbnRlCu0DUFMp8M9xvb/CnBzI6T8X5wdEWUfjoBdiv8RhYh6ZCcJM
	psVayD78AD3YVaxW2m6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoQrj-0000000BF3r-00na;
	Tue, 19 Aug 2025 18:15:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoN5h-0000000Aico-3SeR;
	Tue, 19 Aug 2025 14:13:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=VOR0hONBCgnAOtPlpEiq+Hxh37W5wGpYCr6vX3T4P00=; b=XVIqOrWxqTmSb28RvJYOVuGYmg
	67/e+ta6Ry26Qu1pDepLc0M0XbcGJJbN04Iz+ck5hYvFsyztw8GtEmkuSq5UvFdAL4SY0ezWIRFCB
	yQEWGRKzHuUYSiFYNjMK0ntHgNAuoZl4qE2fdNU04GgaHBNdcdPwuMgNZ8B615SDFhNRY6738P9ip
	KjO80Q63+tqhS3azRamJg69vB+03we7mXlRmAYczSXF+6oo00e4/FtEd5HTGyfEaTopJV0/hwvT5c
	bQ4I8zYacojs5B1rnBfUifGfSk3Ty7fc6xRFvpk8js/5SN7eIgLzZINHuHIe/4Nufu2VbXIil5yTm
	dPw5uWkw==;
Received: from i53875a31.versanet.de ([83.135.90.49] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uoN5Z-0002JI-VN; Tue, 19 Aug 2025 16:13:26 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH] thermal: rockchip: shut up GRF warning
Date: Tue, 19 Aug 2025 16:13:25 +0200
Message-ID: <11865312.F0gNSz5aLb@diego>
In-Reply-To: <ciuhfx4u6xs2g43hn7nzjfmhaakfip6ndcpftuvg3kgzf52zkt@3vyvcjflmtqm>
References: <20250818-thermal-rockchip-grf-warning-v1-1-134152c97097@kernel.org>
 <2c7301cd-9c86-47fd-8b79-05f3e1a89e47@arm.com>
 <ciuhfx4u6xs2g43hn7nzjfmhaakfip6ndcpftuvg3kgzf52zkt@3vyvcjflmtqm>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_071333_865050_D64C44EE 
X-CRM114-Status: GOOD (  22.98  )
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

QW0gRGllbnN0YWcsIDE5LiBBdWd1c3QgMjAyNSwgMTU6NTY6NDIgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBTZWJhc3RpYW4gUmVpY2hlbDoKPiBIZWxsbyBSb2JpbiwKPiAK
PiBPbiBUdWUsIEF1ZyAxOSwgMjAyNSBhdCAwMTo0Mjo0MlBNICswMTAwLCBSb2JpbiBNdXJwaHkg
d3JvdGU6Cj4gPiA+ICsJaWYgKHRoZXJtYWwtPmNoaXAtPmdyZl9tb2RlICE9IEdSRl9OT05FKSB7
Cj4gPiA+ICsJCXRoZXJtYWwtPmdyZiA9IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGUo
bnAsICJyb2NrY2hpcCxncmYiKTsKPiA+ID4gKwkJaWYgKElTX0VSUih0aGVybWFsLT5ncmYpKSB7
Cj4gPiA+ICsJCQlyZXQgPSBQVFJfRVJSKHRoZXJtYWwtPmdyZik7Cj4gPiA+ICsJCQlpZiAodGhl
cm1hbC0+Y2hpcC0+Z3JmX21vZGUgPT0gR1JGX09QVElPTkFMKQo+ID4gPiArCQkJCWRldl93YXJu
KGRldiwgIk1pc3Npbmcgcm9ja2NoaXAsZ3JmIHByb3BlcnR5XG4iKTsKPiA+ID4gKwkJCWVsc2UK
PiA+ID4gKwkJCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIHJldCwgIk1pc3Npbmcgcm9ja2No
aXAsZ3JmIHByb3BlcnR5XG4iKTsKPiA+ID4gKwkJfQo+ID4gPiArCX0KPiA+IAo+ID4gTml0OiBE
b2VzIHRoZSBsb29rdXAgaXRzZWxmIG5lZWQgdG8gYmUgbWFkZSBjb25kaXRpb25hbD8gSSB0aGlu
ayBJJ2QKPiA+IGFsc28gYWdyZWUgdGhhdCB0aGUgIm9wdGlvbmFsIiBtb2RlIHNlZW1zIHN1c3Bl
Y3QsIHNvIHBvdGVudGlhbGx5IGl0Cj4gPiBjb3VsZCBiZSBhIHdob2xlIGxvdCBzaW1wbGVyLCBl
LmcuOgo+ID4gCj4gPiAJdGhlcm1hbC0+Z3JmID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhh
bmRsZShucCwgInJvY2tjaGlwLGdyZiIpOwo+ID4gCWlmIChJU19FUlIodGhlcm1hbC0+Z3JmKSAm
JiB0aGVybWFsLT5jaGlwLT5ncmZfcmVxdWlyZWQpCj4gPiAJCXJldHVybiBkZXZfZXJyX3Byb2Jl
KGRldiwgUFRSX0VSUih0aGVybWFsLT5ncmYpLAo+ID4gCQkJCSAgICAgIk1pc3Npbmcgcm9ja2No
aXAsZ3JmIHByb3BlcnR5XG4iKTsKPiAKPiBJIGNhbWUgdXAgd2l0aCB0aGUgZW51bSwgYmVjYXVz
ZSBJIHRoaW5rIG1vc3QgcGxhdGZvcm1zIGhhdmluZwo+ICJvcHRpb25hbCIgR1JGIHN1cHBvcnQg
YWN0dWFsbHkgcmVxdWlyZSBpdCwgc28gSSB3YW50IHRvIGtlZXAgdGhlCj4gd2FybmluZy4gQXQg
dGhlIHNhbWUgdGltZSBJIGRvbid0IHdhbnQgdG8gbWFyayB0aGVtIGFzIEdSRiByZXF1aXJlZAo+
IGF0IHRoaXMgcG9pbnQsIHNpbmNlIHRoYXQgaXMgcG90ZW50aWFsbHkgYSBEVCBBQkkgYnJlYWsu
IEl0IHJlYWxseQo+IG5lZWRzIHRvIGJlIGNoZWNrZWQgcGVyIHBsYXRmb3JtIGluIHRoZSBUUk0g
YW5kL29yIGJ5IHRlc3Rpbmcgb24KPiByZWFsIEhXLiBXaXRoIHRoaXMgcGF0Y2ggd2UgY2FuIGVh
c2lseSBoYW5kbGUgdGhpcyBwbGF0Zm9ybSBieQo+IHBsYXRmb3JtIGJ5IG1vdmluZyB0aGVtIGZy
b20gR1JGX09QVElPTkFMIHRvIEdSRl9NQU5EQVRPUlkgd2l0aG91dAo+IGFmZmVjdGluZyB0aGUg
dW5jaGVja2VkIHBsYXRmb3Jtcy4gQWxzbyBzd2l0Y2hpbmcgYSBwbGF0Zm9ybSBmcm9tCj4gb3B0
aW9uYWwgdG8gcmVxdWlyZWQgbmVlZHMgdG8gYmUgcmVmbGVjdGVkIGluIHRoZSBEVCBiaW5kaW5n
LiBTbwo+IHRoaXMgaW52b2x2ZXMgYSBsb3Qgb2Ygd29yay4gSSB0aGluayBpdCBtYWtlcyBzZW5z
ZSB0byBjYXJyeSB0aGUKPiBzbGlnaHRseSBjb21wbGV4IGNoZWNrIGluIHRoZSBkcml2ZXIncyBw
cm9iZSByb3V0aW5lIGZvciBub3cuCgpJIGRpZCBnbyBkaWdnaW5nIG5vdyAuLi4gdGhlcmUgYXJl
IDMgdmFyaWFudHMgbWFya2VkIGFzICJvcHRpb25hbCI6CgogIHJrMzM2Nl90c2FkY19kYXRhIC0+
ICByb2NrY2hpcCxyazMzNjYtdHNhZGMKCW5ldmVyIGFkZGVkIGFueSBEVFMKCiAgcmszMzk5X3Rz
YWRjX2RhdGEgLT4gIHJvY2tjaGlwLHJrMzM5OS10c2FkYwoJY29tbWl0IDk1YzI3YmE3YmQ5MiAo
ImFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgdGhlcm1hbCBub2RlcyBmb3IgcmszMzk5IFNvQ3Mi
KQoJYWRkZWQgdGhlIHRzZGFkYyBub2RlIHRvZ2V0aGVyIHdpdGggaXRzIHJvY2tjaGlwLGdyZiBy
ZWZlcmVuY2UKCiAgIHJrMzU2OF90c2FkY19kYXRhICAgcm9ja2NoaXAscmszNTY4LXRzYWRjCglj
b21taXQgMTMzMDg3NWRjMmEzICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCByazM1NjggdHNh
ZGMgbm9kZXMiKQoJYWRkZWQgdGhlIHRzZGFkYyBub2RlIHRvZ2V0aGVyIHdpdGggaXRzIHJvY2tj
aGlwLGdyZiByZWZlcmVuY2UKClNvIG5vbmUgb2YgdGhlIHBsYXRmb3JtcyBoYWQgZXZlciBhIHBo
YXNlIHdoZXJlIHdlIGhhZCB0aGUgdHNhZGMgd2l0aG91dAppdHMgZ3JmLXJlZmVyZW5jZS4gU28g
bWFraW5nIHRoZSBHUkYgbWFuZGF0b3J5IGZvciB0aG9zZSwgd2lsbCBub3QgY3JlYXRlCmJyZWFr
YWdlLiBXZSBjb3VsZCBldmVuIHRpZ2h0ZW4gdGhlIGJpbmRpbmcgdG8gbWFrZSB0aGF0IGV4cGxp
Y2l0LgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
