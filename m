Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 762D2C5AD49
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jun 2025 19:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzKonYjTXTKEQpr7u4TVv3yjosr6VyeGvZ23nbVucUg=; b=nwjhgdnx+o1RFA
	lxOKpNXtIzXDkiWykC19sbd/bUn1+srVKep8LTGc38ypx09go7ScLClcRtk0woc1RpOFNFT7gAgO3
	ecsMT5Pws0L1SSnuICPV+DoFretP0Ga3GlkcVUs6SLl0+/nPpcKwPosUvI85k+Drh3rp6Zh/b1xh6
	C6cRGxPadx7pfEjmcH39uMadMBGNhuao1G80T71yALq3wZJKlVuVAX4GMPiwqtOhb+pB9Cz1999z+
	Tjxp4fzZwuAazRG7l/3UB801uFNYOy237sHfVocWdDcyMUmQgZ2uL/ZU/dmtcgH2RG0YuDsnSUNnQ
	E5kJ+TKvdW8jSX/XsRVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMAQB-00000008OTy-406E;
	Mon, 02 Jun 2025 19:02:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMAPy-00000008OP2-1jbg;
	Mon, 02 Jun 2025 19:01:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=SPw9tHv+YFqDOgHItgDh6WWYcZqPEA6GRstSGC7FvMw=; b=ZbiIOWWrqz4Xo+xhj4MkrCq550
	Ab4dft5PIpkhNivF6xz0iT41AGSWYazCmEw52oUzY7yke177u5Jn17ClfKLKgG86ri9LUrUqJfOno
	Pn8EjwT7yFIYPwULfA5k8jmbuEcqPmanrMBT6HWnehBEexpPbTctIyfSzqURX979tYqk8d8ZxaeAD
	jl7R9E9YJwLs5A++pG9KovRDmiemI6nsgopOBXLBY6wp5Qz1gt6cS9JxgKLJ/+G7HdDvCllOuAHm5
	DiccjOKDXbLRNQCJsqtSXDCl/3Kw+ALRxQJGiewJj2UNSwAU0dVdGWerCn7sT4gW0/MUXsK05vjRb
	UIfpB2rw==;
Received: from i53875a2b.versanet.de ([83.135.90.43] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uMAPg-0001RE-Cy; Mon, 02 Jun 2025 21:01:36 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>,
 William Breathitt Gray <wbg@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v2 3/7] bitfield: introduce HI16_WE bitfield prep macros
Date: Mon, 02 Jun 2025 21:01:35 +0200
Message-ID: <6139278.alqRGMn8q6@diego>
In-Reply-To: <20250602-rk3576-pwm-v2-3-a6434b0ce60c@collabora.com>
References: <20250602-rk3576-pwm-v2-0-a6434b0ce60c@collabora.com>
 <20250602-rk3576-pwm-v2-3-a6434b0ce60c@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_120154_476632_C6221AFF 
X-CRM114-Status: GOOD (  24.44  )
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
Cc: devicetree@vger.kernel.org, Leon Romanovsky <leon@kernel.org>, linux-rockchip@lists.infradead.org, linux-iio@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Lee Jones <lee@kernel.org>, linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, linux-gpio@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, Detlev Casanova <detlev.casanova@collabora.com>, Dave Ertman <david.m.ertman@intel.com>, kernel@collabora.com, Ira Weiny <ira.weiny@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTW9udGFnLCAyLiBKdW5pIDIwMjUsIDE4OjE5OjE0IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IEhhcmR3YXJlIG9mIHZhcmlvdXMg
dmVuZG9ycywgYnV0IHZlcnkgbm90YWJseSBSb2NrY2hpcCwgb2Z0ZW4gdXNlcwo+IDMyLWJpdCBy
ZWdpc3RlcnMgd2hlcmUgdGhlIHVwcGVyIDE2LWJpdCBoYWxmIG9mIHRoZSByZWdpc3RlciBpcyBh
Cj4gd3JpdGUtZW5hYmxlIG1hc2sgZm9yIHRoZSBsb3dlciBoYWxmLgo+IAo+IFRoaXMgdHlwZSBv
ZiBoYXJkd2FyZSBzZXR1cCBhbGxvd3MgZm9yIG1vcmUgZ3JhbnVsYXIgY29uY3VycmVudCByZWdp
c3Rlcgo+IHdyaXRlIGFjY2Vzcy4KPiAKPiBPdmVyIHRoZSB5ZWFycywgbWFueSBkcml2ZXJzIGhh
dmUgaGFuZC1yb2xsZWQgdGhlaXIgb3duIHZlcnNpb24gb2YgdGhpcwo+IG1hY3JvLCB1c3VhbGx5
IHdpdGhvdXQgYW55IGNoZWNrcywgb2Z0ZW4gY2FsbGVkIHNvbWV0aGluZyBsaWtlCj4gSElXT1JE
X1VQREFURSBvciBGSUVMRF9QUkVQX0hJV09SRCwgY29tbW9ubHkgd2l0aCBzbGlnaHRseSBkaWZm
ZXJlbnQKPiBzZW1hbnRpY3MgYmV0d2VlbiB0aGVtLgo+IAo+IENsZWFybHkgdGhlcmUgaXMgYSBk
ZW1hbmQgZm9yIHN1Y2ggYSBtYWNybywgYW5kIHRodXMgdGhlIGRlbWFuZCBzaG91bGQKPiBiZSBz
YXRpc2ZpZWQgaW4gYSBjb21tb24gaGVhZGVyIGZpbGUuCj4gCj4gQWRkIHR3byBtYWNyb3M6IEZJ
RUxEX1BSRVBfSEkxNl9XRSwgYW5kIEZJRUxEX1BSRVBfSEkxNl9XRV9DT05TVC4gVGhlCj4gbGF0
dGVyIGlzIGEgdmVyc2lvbiB0aGF0IGNhbiBiZSB1c2VkIGluIGluaXRpYWxpemVycywgbGlrZQo+
IEZJRUxEX1BSRVBfQ09OU1QuIFRoZSBtYWNybyBuYW1lcyBhcmUgY2hvc2VuIHRvIGV4cGxpY2l0
bHkgcmVmZXJlbmNlIHRoZQo+IGFzc3VtZWQgaGFsZi1yZWdpc3RlciB3aWR0aCwgYW5kIGl0cyBm
dW5jdGlvbiwgd2hpbGUgbm90IGNsYXNoaW5nIHdpdGgKPiBhbnkgcG90ZW50aWFsIG90aGVyIG1h
Y3JvcyB0aGF0IGRyaXZlcnMgbWF5IGFscmVhZHkgaGF2ZSBpbXBsZW1lbnRlZAo+IHRoZW1zZWx2
ZXMuCj4gCj4gRnV0dXJlIGRyaXZlcnMgc2hvdWxkIHVzZSB0aGVzZSBtYWNyb3MgaW5zdGVhZCBv
ZiBoYW5kcm9sbGluZyB0aGVpciBvd24sCj4gYW5kIG9sZCBkcml2ZXJzIGNhbiBiZSBwb3J0ZWQg
dG8gdGhlIG5ldyBtYWNyb3MgYXMgdGltZSBhbmQgb3Bwb3J0dW5pdHkKPiBhbGxvd3MuCj4gCj4g
U2lnbmVkLW9mZi1ieTogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29s
bGFib3JhLmNvbT4KPiAtLS0KPiAgaW5jbHVkZS9saW51eC9iaXRmaWVsZC5oIHwgNDcgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5n
ZWQsIDQ3IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9iaXRm
aWVsZC5oIGIvaW5jbHVkZS9saW51eC9iaXRmaWVsZC5oCj4gaW5kZXggNmQ5YTUzZGI1NGI2NmMw
ODMzOTczYzg4MDQ0NGJkMjg5ZDk2NjdiMS4uMmIzZTdjYjkwY2NiNWQ0OGY1MTAxMDRmNjE0NDNi
MDY3NDhiYjdlYiAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2JpdGZpZWxkLmgKPiArKysg
Yi9pbmNsdWRlL2xpbnV4L2JpdGZpZWxkLmgKPiBAQCAtOCw2ICs4LDcgQEAKPiAgI2RlZmluZSBf
TElOVVhfQklURklFTERfSAo+ICAKPiAgI2luY2x1ZGUgPGxpbnV4L2J1aWxkX2J1Zy5oPgo+ICsj
aW5jbHVkZSA8bGludXgvbGltaXRzLmg+Cj4gICNpbmNsdWRlIDxsaW51eC90eXBlY2hlY2suaD4K
PiAgI2luY2x1ZGUgPGFzbS9ieXRlb3JkZXIuaD4KPiAgCj4gQEAgLTE0Miw2ICsxNDMsNTIgQEAK
PiAgCQkoKCh0eXBlb2YoX21hc2spKShfdmFsKSA8PCBfX2JmX3NoZihfbWFzaykpICYgKF9tYXNr
KSkJXAo+ICAJKQo+ICAKPiArLyoqCj4gKyAqIEZJRUxEX1BSRVBfSEkxNl9XRSgpIC0gcHJlcGFy
ZSBhIGJpdGZpZWxkIGVsZW1lbnQgd2l0aCBhIHdyaXRlLWVuYWJsZSBtYXNrCj4gKyAqIEBfbWFz
azogc2hpZnRlZCBtYXNrIGRlZmluaW5nIHRoZSBmaWVsZCdzIGxlbmd0aCBhbmQgcG9zaXRpb24K
PiArICogQF92YWw6ICB2YWx1ZSB0byBwdXQgaW4gdGhlIGZpZWxkCj4gKyAqCj4gKyAqIEZJRUxE
X1BSRVBfSEkxNl9XRSgpIG1hc2tzIGFuZCBzaGlmdHMgdXAgdGhlIHZhbHVlLCBhcyB3ZWxsIGFz
IGJpdHdpc2UgT1JzCj4gKyAqIHRoZSByZXN1bHQgd2l0aCB0aGUgbWFzayBzaGlmdGVkIHVwIGJ5
IDE2Lgo+ICsgKgo+ICsgKiBUaGlzIGlzIHVzZWZ1bCBmb3IgYSBjb21tb24gZGVzaWduIG9mIGhh
cmR3YXJlIHJlZ2lzdGVycyB3aGVyZSB0aGUgdXBwZXIKPiArICogMTYtYml0IGhhbGYgb2YgYSAz
Mi1iaXQgcmVnaXN0ZXIgaXMgdXNlZCBhcyBhIHdyaXRlLWVuYWJsZSBtYXNrLiBJbiBzdWNoIGEK
PiArICogcmVnaXN0ZXIsIGEgYml0IGluIHRoZSBsb3dlciBoYWxmIGlzIG9ubHkgdXBkYXRlZCBp
ZiB0aGUgY29ycmVzcG9uZGluZyBiaXQKPiArICogaW4gdGhlIHVwcGVyIGhhbGYgaXMgaGlnaC4K
PiArICovCj4gKyNkZWZpbmUgRklFTERfUFJFUF9ISTE2X1dFKF9tYXNrLCBfdmFsKQkJCQkJXAo+
ICsJKHsJCQkJCQkJCVwKPiArCQlfX0JGX0ZJRUxEX0NIRUNLKF9tYXNrLCAoKHUxNikgMFUpLCBf
dmFsLAkJXAo+ICsJCQkJICJGSUVMRF9QUkVQX0hJMTZfV0U6ICIpOwkJXAo+ICsJCSgodHlwZW9m
KF9tYXNrKSkoX3ZhbCkgPDwgX19iZl9zaGYoX21hc2spKSAmIChfbWFzaykgfAlcCgpnY2MgaXMg
cXVpdGUgYWRhbWFudCBhYm91dCBzdWdnZXN0aW5nIG1vcmUgcGFyZW50aGVzZXMgaGVyZToKCi4u
L2luY2x1ZGUvbGludXgvYml0ZmllbGQuaDoxNjM6NzA6IHdhcm5pbmc6IHN1Z2dlc3QgcGFyZW50
aGVzZXMgYXJvdW5kIGFyaXRobWV0aWMgaW4gb3BlcmFuZCBvZiDigJh84oCZIFstV3BhcmVudGhl
c2VzXQogIDE2MyB8ICAgICAgICAgICAgICAgICAoKHR5cGVvZihfbWFzaykpKF92YWwpIDw8IF9f
YmZfc2hmKF9tYXNrKSkgJiAoX21hc2spIHwgIFwKICAgICAgfCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCi4uL2lu
Y2x1ZGUvc29jL3JvY2tjaGlwL21mcHdtLmg6MjI1OjQxOiBub3RlOiBpbiBleHBhbnNpb24gb2Yg
bWFjcm8g4oCYRklFTERfUFJFUF9ISTE2X1dF4oCZCiAgMjI1IHwgI2RlZmluZSBQV01WNF9NT0RF
KHYpICAgICAgICAgICAgICAgICAgIEZJRUxEX1BSRVBfSEkxNl9XRShQV01WNF9NT0RFX01BU0ss
ICh2KSkKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+
fn5+fn5+fn5+fn5+fn5+Ci4uL2luY2x1ZGUvc29jL3JvY2tjaGlwL21mcHdtLmg6MjMwOjM0OiBu
b3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYUFdNVjRfTU9EReKAmQogIDIzMCB8ICNkZWZp
bmUgUFdNVjRfQ1RSTF9DT05UX0ZMQUdTICAgKFBXTVY0X01PREUoUFdNVjRfTU9ERV9DT05UKSB8
IFwKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+Ci4u
L2RyaXZlcnMvcHdtL3B3bS1yb2NrY2hpcC12NC5jOjIzNzo1Nzogbm90ZTogaW4gZXhwYW5zaW9u
IG9mIG1hY3JvIOKAmFBXTVY0X0NUUkxfQ09OVF9GTEFHU+KAmQogIDIzNyB8ICAgICAgICAgbWZw
d21fcmVnX3dyaXRlKHBjLT5wd21mLT5iYXNlLCBQV01WNF9SRUdfQ1RSTCwgUFdNVjRfQ1RSTF9D
T05UX0ZMQUdTKTsKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fgoKCkhlaWtvCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
