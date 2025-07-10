Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A43EC83F1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 12:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dLZ9dfaM2rHwKb6xtsvhpui9kZ6eikICRVBKn8q7M0A=; b=E4W6YG/xK4WzGg
	ZVGGe916aMxWs/C/zqOahksO0jX40QjLPa8xcvWD+VDdrZuY+i+ihDg+Y+J60HFmfVPS8D+7dabRH
	MMdnNBDKdhkjJMRuTWaMBVplRSWJ+cD1SOuSa14t2fW5zS0crIa6HyIC7Ncglf938kI7n314s31/d
	I9TwHpkzgwgNpvB8aDQSvRtaxMRc24ytOPO5omAb4r2uChjP62sMHBPUVXmQBlzmeX59JEM7Q96m6
	BB1tXJE3Y2iKNd7PW1Bfsd94Z4/XITAwhk4vb9QkkYQK45861E9Cw77B1wv41jCkE6O2TtI/7G0bn
	0ZLX8hf1ciArCd/oOB5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZql8-0000000Bpk0-0g2H;
	Thu, 10 Jul 2025 12:52:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZpIW-0000000BcRb-2Gyz;
	Thu, 10 Jul 2025 11:18:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OGWfNBdHoVHP4kTvUQ6WShWEYkHdudkm5fWMOhkJyS0=; b=RqUHNqOoepFa2HPuBXfxAAL/Ay
	w+6aKfzuDz1B9FST9JjSIXn3Od+Rb0LSLbwwXDzxu33q9bDydHWA+DjJIJG7hh7cgXS9v1ne1u6HN
	qWMijKFV+y776h2PEsTo+lXj1P4RMgtCdKAVUADIlKrZVwSg+cQMD/F9AiPiUnlP91GRVcJG1x9bF
	mvuzg7ZUBFh+cImic3a1tp8uiWQTxgIWpG2fy1kIWjxvxqqOoZlpN3NiaSZ4XGFCKdNYYLRJQJ8BV
	w5MCSFtaMrsA/7kPYyZNudLxiyE+BAZUvrY/QEayUR/K2RsQNu2f7G3cEyh9eK3dfkUwFzkIt+s4p
	Fxa35FNw==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZpIM-0004Ra-84; Thu, 10 Jul 2025 13:18:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v6 3/7] thermal: rockchip: Support RK3576 SoC in the thermal
 driver
Date: Thu, 10 Jul 2025 13:18:29 +0200
Message-ID: <4039995.ElGaqSPkdT@phil>
In-Reply-To: <20250610-rk3576-tsadc-upstream-v6-3-b6e9efbf1015@collabora.com>
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
 <20250610-rk3576-tsadc-upstream-v6-3-b6e9efbf1015@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_041840_578104_3D59E442 
X-CRM114-Status: GOOD (  15.09  )
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
Cc: Ye Zhang <ye.zhang@rock-chips.com>, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRGllbnN0YWcsIDEwLiBKdW5pIDIwMjUsIDE0OjMyOjM5IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IEZyb206IFllIFpoYW5nIDx5
ZS56aGFuZ0Byb2NrLWNoaXBzLmNvbT4KPiAKPiBUaGUgUkszNTc2IFNvQyBoYXMgc2l4IFRTLUFE
QyBjaGFubmVsczogVE9QLCBCSUdfQ09SRSwgTElUVExFX0NPUkUsCj4gRERSLCBOUFUgYW5kIEdQ
VS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBZZSBaaGFuZyA8eWUuemhhbmdAcm9jay1jaGlwcy5jb20+
Cj4gW3BvcnRlZCB0byBtYWlubGluZSwgcmV3b3JkZWQgY29tbWl0IG1lc3NhZ2VdCj4gU2lnbmVk
LW9mZi1ieTogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3Jh
LmNvbT4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKTmlj
ZSB0aGF0IGl0IGRvZXMgbm90IG5lZWQgaW50cm9kdWNlIGFub3RoZXIgdGVtcGVyYXR1cmUgdGFi
bGUuCgo+IC0tLQo+ICBkcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jIHwgMjYgKysr
KysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMo
KykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyBi
L2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiBpbmRleCA0MGM3ZDIzNGMzZWY5
OWY2OWRkOGRiNGQ4YzQ3ZjlkNDkzYzA1ODNkLi44OWUzMTgwNjY3ZTJhOGYwZWY1NTQyYjBkYjRk
OWUxOWEyMWEyNGQzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVy
bWFsLmMKPiArKysgYi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gQEAgLTEy
ODQsNiArMTI4NCwyOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAg
cmszNTY4X3RzYWRjX2RhdGEgPSB7Cj4gIAl9LAo+ICB9Owo+ICAKPiArc3RhdGljIGNvbnN0IHN0
cnVjdCByb2NrY2hpcF90c2FkY19jaGlwIHJrMzU3Nl90c2FkY19kYXRhID0gewo+ICsJLyogdG9w
LCBiaWdfY29yZSwgbGl0dGxlX2NvcmUsIGRkciwgbnB1LCBncHUgKi8KPiArCS5jaG5fb2Zmc2V0
ID0gMCwKPiArCS5jaG5fbnVtID0gNiwgLyogc2l4IGNoYW5uZWxzIGZvciB0c2FkYyAqLwo+ICsJ
LnRzaHV0X21vZGUgPSBUU0hVVF9NT0RFX0dQSU8sIC8qIGRlZmF1bHQgVFNIVVQgdmlhIEdQSU8g
Z2l2ZSBQTUlDICovCj4gKwkudHNodXRfcG9sYXJpdHkgPSBUU0hVVF9MT1dfQUNUSVZFLCAvKiBk
ZWZhdWx0IFRTSFVUIExPVyBBQ1RJVkUgKi8KPiArCS50c2h1dF90ZW1wID0gOTUwMDAsCj4gKwku
aW5pdGlhbGl6ZSA9IHJrX3RzYWRjdjhfaW5pdGlhbGl6ZSwKPiArCS5pcnFfYWNrID0gcmtfdHNh
ZGN2NF9pcnFfYWNrLAo+ICsJLmNvbnRyb2wgPSBya190c2FkY3Y0X2NvbnRyb2wsCj4gKwkuZ2V0
X3RlbXAgPSBya190c2FkY3Y0X2dldF90ZW1wLAo+ICsJLnNldF9hbGFybV90ZW1wID0gcmtfdHNh
ZGN2M19hbGFybV90ZW1wLAo+ICsJLnNldF90c2h1dF90ZW1wID0gcmtfdHNhZGN2M190c2h1dF90
ZW1wLAo+ICsJLnNldF90c2h1dF9tb2RlID0gcmtfdHNhZGN2NF90c2h1dF9tb2RlLAo+ICsJLnRh
YmxlID0gewo+ICsJCS5pZCA9IHJrMzU4OF9jb2RlX3RhYmxlLAo+ICsJCS5sZW5ndGggPSBBUlJB
WV9TSVpFKHJrMzU4OF9jb2RlX3RhYmxlKSwKPiArCQkuZGF0YV9tYXNrID0gVFNBRENWNF9EQVRB
X01BU0ssCj4gKwkJLm1vZGUgPSBBRENfSU5DUkVNRU5ULAo+ICsJfSwKPiArfTsKPiArCj4gIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCByazM1ODhfdHNhZGNfZGF0YSA9
IHsKPiAgCS8qIHRvcCwgYmlnX2NvcmUwLCBiaWdfY29yZTEsIGxpdHRsZV9jb3JlLCBjZW50ZXIs
IGdwdSwgbnB1ICovCj4gIAkuY2huX29mZnNldCA9IDAsCj4gQEAgLTEzNDIsNiArMTM2NCwxMCBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBvZl9yb2NrY2hpcF90aGVybWFsX21h
dGNoW10gPSB7Cj4gIAkJLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LXRzYWRjIiwKPiAg
CQkuZGF0YSA9ICh2b2lkICopJnJrMzU2OF90c2FkY19kYXRhLAo+ICAJfSwKPiArCXsKPiArCQku
Y29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NzYtdHNhZGMiLAo+ICsJCS5kYXRhID0gKHZvaWQg
KikmcmszNTc2X3RzYWRjX2RhdGEsCj4gKwl9LAo+ICAJewo+ICAJCS5jb21wYXRpYmxlID0gInJv
Y2tjaGlwLHJrMzU4OC10c2FkYyIsCj4gIAkJLmRhdGEgPSAodm9pZCAqKSZyazM1ODhfdHNhZGNf
ZGF0YSwKPiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
