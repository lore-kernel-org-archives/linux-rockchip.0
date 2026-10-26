Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DFF606A321
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 00:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4eFPdjiQ;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=HhLY1O7u
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dK6NWRDnd0ijnU44YxnZ5ISAgiALliEAo4yHSFw92CY=; b=4eFPdjiQFpcKtMHtgFzGdyMDrD
	ulaM2wniLOvUbwI98nUPRlPVWJcHaMZIb4ZLA68/JXVnDg2uWlzBBQrtWmI/xQomlsEDYIcKVg6xi
	ZmLtsn6g9PpXUeVlSggq7wbhJdDFNfBFfVPW+5nCiZIM1VykTRHbHmGSYxzN6ZH1UtCPB4BLSWL4M
	L0t9Eciltw1Ykd41RjNpGHaYi9r3eCI5LRHIdXITh0zkf3zs5vW+XHcX3+dQqSn2q+wRprKAIPhl5
	IMkIj457wq2hiVlWYTJdE8cJTjoaY0YlIg85NQx5WJwRqvRdgEgAKythUaqKRgfXlmsvkf3BMxzXV
	0b/ypVPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xL8f3-00000001WsI-0p2M;
	Mon, 26 Oct 2026 00:34:01 +0000
Received: from mail-m1075.netease.com ([154.81.10.75])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xL8ez-00000001Wro-18MU;
	Mon, 26 Oct 2026 00:33:59 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 52470fe96;
	Mon, 26 Oct 2026 08:33:41 +0800 (GMT+08:00)
Message-ID: <4b7bd146-93fd-41f8-ad3c-88333adc73b4@rock-chips.com>
Date: Mon, 26 Oct 2026 08:33:41 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, heiko@sntech.de
Subject: Re: [PATCH] arm64: dts: rockchip: Enable Wi-Fi on the NanoPi M5
To: Leonard Lausen <leonard@lausen.nl>
References: <20261025205339.14539-2-leonard@lausen.nl>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261025205339.14539-2-leonard@lausen.nl>
X-HM-Tid: 0aa175a0986703a4kunm2868e8063c52c7
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTBhDVkwdSU4eGRhJQh9IHVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=HhLY1O7uNKLtSMhQOf0XfdncyG4p3WeNQVKSDyPYpEqyPUruh0VpprvnPhn0gk4CXO3hcA3hJNw5rU38d0ohVwU3ZL0PS7eatueMYSoMngTL/INn+AyrJ7myT37A/c/CTUM8wcWx54/IIgwornfCtkF8mFvoqDfT1OCbAJS65DM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=+9VnkTVZa5ILKHrRCMZEXP+36VdKYsWK9GWspe2p5rE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_173357_837826_A792793E 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CgrlnKggMjAyNi8xMC8yNiDmmJ/mnJ/kuIAgNDo1MiwgTGVvbmFyZCBMYXVzZW4g5YaZ6YGTOgo+
IFRoZSBOYW5vUGkgTTUgaGFzIGFuIE0uMiBFLWtleSBzbG90IGZvciBTRElPIFdpLUZpIG1vZHVs
ZXMgc3VjaCBhcyB0aGUKPiBSVEw4ODIyQ1MtYmFzZWQgQUMyMDAuIFRoZSBTRElPIGNvbnRyb2xs
ZXIgaXMgZGlzYWJsZWQgYW5kIHRoZSBtb2R1bGUncwo+IHBvd2VyIHNlcXVlbmNlIGlzIG5vdCBk
ZXNjcmliZWQsIHByZXZlbnRpbmcgdGhlIGNhcmQgZnJvbSBlbnVtZXJhdGluZy4KPiAKPiBFbmFi
bGUgdGhlIGNvbnRyb2xsZXIgaW4gZm91ci1iaXQgU0RSMTA0IG1vZGUgYW5kIGNvbm5lY3QgaXRz
IDMuMyBWIGNhcmQKPiBhbmQgMS44IFYgSS9PIHN1cHBsaWVzLiBEZXNjcmliZSB0aGUgYWN0aXZl
LWxvdyByZXNldCBvbiBHUElPMV9DMiwgdGhlCj4gMjAwIG1zIHBvd2VyLW9uIGRlbGF5IHVzZWQg
YnkgdGhlIHZlbmRvciBkZXZpY2UgdHJlZSwgYW5kIHRoZSBleHRlcm5hbAo+IDMyLjc2OCBrSHog
Y2xvY2sgZnJvbSB0aGUgSFlNODU2MyBSVEMuIEtlZXAgdGhlIGNhcmQgcG93ZXJlZCBkdXJpbmcK
PiBzdXNwZW5kIGFzIHJlcXVpcmVkIGJ5IHRoZSBydHc4OCBTRElPIGRyaXZlci4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBMZW9uYXJkIExhdXNlbiA8bGVvbmFyZEBsYXVzZW4ubmw+Cj4gLS0tCj4gICAu
Li4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LW5hbm9waS1tNS5kdHMgICAgfCAzNCArKysrKysr
KysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKQo+IAo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1uYW5vcGktbTUu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtbmFub3BpLW01LmR0cwo+
IGluZGV4IDNhMzA1NDA4ZmExNmMuLmJmYTE4ZGUxYWUxYWYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtbmFub3BpLW01LmR0cwo+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LW5hbm9waS1tNS5kdHMKPiBAQCAtMjMsNiAr
MjMsNyBAQCBhbGlhc2VzIHsKPiAgIAkJZXRoZXJuZXQwID0gJmdtYWMwOwo+ICAgCQlldGhlcm5l
dDEgPSAmZ21hYzE7Cj4gICAJCW1tYzAgPSAmc2RtbWM7Cj4gKwkJbW1jMSA9ICZzZGlvOwo+ICAg
CX07Cj4gICAKPiAgIAljaG9zZW4gewo+IEBAIC0yMTIsNiArMjEzLDE2IEBAIHZjY18zdjNfczA6
IHJlZ3VsYXRvci12Y2MtM3YzLXMwIHsKPiAgIAkJdmluLXN1cHBseSA9IDwmdmNjXzN2M19zMz47
Cj4gICAJfTsKPiAgIAo+ICsJc2Rpb19wd3JzZXE6IHNkaW8tcHdyc2VxIHsKPiArCQljb21wYXRp
YmxlID0gIm1tYy1wd3JzZXEtc2ltcGxlIjsKPiArCQljbG9ja3MgPSA8Jmh5bTg1NjM+Owo+ICsJ
CWNsb2NrLW5hbWVzID0gImV4dF9jbG9jayI7Cj4gKwkJcGluY3RybC0wID0gPCZ3aWZpX3JlZ19v
bl9oPjsKPiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJCXBvc3QtcG93ZXItb24t
ZGVsYXktbXMgPSA8MjAwPjsKPiArCQlyZXNldC1ncGlvcyA9IDwmZ3BpbzEgUktfUEMyIEdQSU9f
QUNUSVZFX0xPVz47Cj4gKwl9Owo+ICsKPiAgIAlzb3VuZCB7Cj4gICAJCWNvbXBhdGlibGUgPSAi
c2ltcGxlLWF1ZGlvLWNhcmQiOwo+ICAgCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+IEBA
IC04NTUsNiArODY2LDEyIEBAIHBjaWUwX3BlcnN0bjogcGNpZTAtcGVyc3RuIHsKPiAgIAkJfTsK
PiAgIAl9Owo+ICAgCj4gKwlzZGlvLXB3cnNlcSB7Cj4gKwkJd2lmaV9yZWdfb25faDogd2lmaS1y
ZWctb24taCB7Cj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8MSBSS19QQzIgUktfRlVOQ19HUElPICZw
Y2ZnX3B1bGxfbm9uZT47Cj4gKwkJfTsKPiArCX07Cj4gKwo+ICAgCXNkbW1jIHsKPiAgIAkJc2Rt
bWMwX3B3cmVuX2g6IHNkbW1jMC1wd3Jlbi1oIHsKPiAgIAkJCXJvY2tjaGlwLHBpbnMgPSA8MCBS
S19QQjYgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+Owo+IEBAIC04OTAsNiArOTA3LDIzIEBA
ICZzYXJhZGMgewo+ICAgCXN0YXR1cyA9ICJva2F5IjsKPiAgIH07Cj4gICAKPiArJnNkaW8gewo+
ICsJYnVzLXdpZHRoID0gPDQ+Owo+ICsJY2FwLXNkLWhpZ2hzcGVlZDsKPiArCWNhcC1zZGlvLWly
cTsKPiArCWRpc2FibGUtd3A7CgpkaXNhYmxlLXdwIGlzIGZvciBzZCBjYXJkcywgcGxlYXNlIGRy
b3AgaXQuCgo+ICsJa2VlcC1wb3dlci1pbi1zdXNwZW5kOwo+ICsJbW1jLXB3cnNlcSA9IDwmc2Rp
b19wd3JzZXE+Owo+ICsJbm8tbW1jOwo+ICsJbm8tc2Q7Cj4gKwlub24tcmVtb3ZhYmxlOwo+ICsJ
c2QtdWhzLXNkcjEwNDsKPiArCXZtbWMtc3VwcGx5ID0gPCZ2Y2NfM3YzX3MzPjsKPiArCXZxbW1j
LXN1cHBseSA9IDwmdmNjXzF2OF9zMz47Cj4gKwo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+
ICsKPiAgICZzZG1tYyB7Cj4gICAJYnVzLXdpZHRoID0gPDQ+Owo+ICAgCWNhcC1zZC1oaWdoc3Bl
ZWQ7CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
