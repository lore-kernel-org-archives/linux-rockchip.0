Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17648C61DA4
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Feb 2023 15:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osk1B4Hme6Oxv59Wimds9FsFuvwTStyMT8aFEMSWxL4=; b=4LbVQOG3Jaz0GA
	bihDc0CYBRBKT713LmvgKdtiLYDjkx11r7H5y8/LCSekvP9HA7VNxMwPz6MazARYSJZN/35WHFO7v
	BmDR9pMTK9jc4XMNnfM6g5fQbJ9e64dM2wlM8JjFefAMRCGs6TlHRO8v8Y73/uKFDpv9YyQBmz4J1
	mkeE1nhnORL+2pvWQm2hCG8NMYPZ6sV63WbetteEcm507Zz7vyu36BOpdEKahxbbR/F+Y3nXKkl5U
	xlxKb+1z0PXyY27+cRIPbbHVAiOxz6LUBZ6+zlULQQA/OPWOsp+kN2y52SqLLL2QiqCUgwOPH61ER
	Ajv8Uwsaf2HEmoYDA8zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTlIw-001l8P-9S; Sun, 19 Feb 2023 15:08:42 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTlIu-001l7C-Ar
	for linux-rockchip@lists.infradead.org; Sun, 19 Feb 2023 15:08:41 +0000
Received: by mail-lj1-x22c.google.com with SMTP id o5so643947ljp.2
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Feb 2023 07:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dSBge9mIuTlc4vzvyJj2lqtZNbusVps3AymwUTX05O0=;
        b=Rg8Mi4g0jIhYFY8bF3M1CocgMhbf6Jwd+9Lp7p32VUgd7WYBmWl362prsopmEmz1v6
         gqUlrYhOfRNmHMg5UgzkHwFHX0wLorFG4amGbldvxSgrJqX0aWbuMeEav8XyZOYByyFS
         sftmzfqzI7Zv3gE8NjBNZn/RAlXVaaEKjkQmDpAMd1HuweVBrY5WslRAO4lYhmc1jL9d
         ag6MECnD+FYGONxykSkOT4969YmF1bbjmdixwolttdyrtQI8KZplRvOh1pxnyZAMrl72
         LdNUIL5hHMgBpxGyj0ZlEUjDk8nDuSYRDcT41p6Afbbi19aLJ7fGntrcROk7D4fEgsc/
         ttLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dSBge9mIuTlc4vzvyJj2lqtZNbusVps3AymwUTX05O0=;
        b=7JJ2VaLEzX4mCrhJFIrX/Whggr+N+adBjg76MG2mgah70ZSO2iPccHTCsvithmEg6Y
         qdisBMBDC7Z8trN4VWx9m4sYMLBXTld8oWZOE0b1qVyFAiaeyLBMIM7CQ9cUcDPHSPov
         cUkMHSxKgjWWyE7Oju701nipBOoltsLCycuCSy/p2kdmYrRCre3brGeAzKTJqvHH+Dfq
         V5iTc2UG7TVGSBp+Eh3s7KMZGd8FDIvKrgVMhR9j/feh4WZSWlUGsrQHt5K9P6ubSxQO
         k3kaSwUJjNriCiKgoLNYypzI7Wac4STqnCP9R13yKHlWTJvA62cLlEV/PPKAOrx3FDYw
         GQqw==
X-Gm-Message-State: AO0yUKV3VSu03QeKoiNzXEuDQHSdAqCxHtPHvaJWn3+Mxf/MQ2iXHMfx
	OU7WvN4t1/vDohG+62h6Pvp42g==
X-Google-Smtp-Source: AK7set9giO9XVeahsn5If/QkM7Bceqee8m29SoUZWhwnHzM4iwAul8hcSgT6JpcSwcRdV6dUhBPZ6w==
X-Received: by 2002:a2e:be93:0:b0:28b:9582:2bb with SMTP id a19-20020a2ebe93000000b0028b958202bbmr559114ljr.44.1676819318825;
        Sun, 19 Feb 2023 07:08:38 -0800 (PST)
Received: from localhost (h-46-59-89-207.A463.priv.bahnhof.se. [46.59.89.207])
        by smtp.gmail.com with ESMTPSA id u12-20020ac24c2c000000b004b567e1f8e5sm1267703lfq.125.2023.02.19.07.08.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Feb 2023 07:08:38 -0800 (PST)
Date: Sun, 19 Feb 2023 16:08:37 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: rafael@kernel.org, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	ye xingchen <ye.xingchen@zte.com.cn>,
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>,
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	"open list:RENESAS R-CAR THERMAL DRIVERS" <linux-renesas-soc@vger.kernel.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v1 04/17] thermal/hwmon: Do not set no_hwmon before
 calling thermal_add_hwmon_sysfs()
Message-ID: <Y/I7dZiHqT0xH7tC@oden.dyn.berto.se>
References: <20230219143657.241542-1-daniel.lezcano@linaro.org>
 <20230219143657.241542-5-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230219143657.241542-5-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230219_070840_451621_C78F3D4A 
X-CRM114-Status: GOOD (  20.75  )
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

SGkgRGFuaWVsLAoKVGhhbmtzIGZvciB5b3VyIHdvcmsuCgpPbiAyMDIzLTAyLTE5IDE1OjM2OjQ0
ICswMTAwLCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPiBUaGUgdGhlcm1hbC0+dHpwLT5ub19od21v
biBwYXJhbWV0ZXIgaXMgb25seSB1c2VkIHdoZW4gY2FsbGluZwo+IHRoZXJtYWxfem9uZV9kZXZp
Y2VfcmVnaXN0ZXIoKS4KPiAKPiBTZXR0aW5nIGl0IHRvICdmYWxzZScgYmVmb3JlIGNhbGxpbmcg
dGhlcm1hbF9hZGRfaHdtb25fc3lzZnMoKSBoYXMgbm8KPiBlZmZlY3QuCj4gCj4gUmVtb3ZlIHRo
ZSBjYWxsIGFuZCBhZ2FpbiBwcmV2ZW50IHRoZSBkcml2ZXJzIHRvIGFjY2VzcyB0aGUgdGhlcm1h
bAo+IGludGVybmFscy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVs
LmxlemNhbm9AbGluYXJvLm9yZz4KPiAtLS0KPiAgZHJpdmVycy90aGVybWFsL2Jyb2FkY29tL2Jj
bTI3MTFfdGhlcm1hbC5jIHwgMSAtCj4gIGRyaXZlcnMvdGhlcm1hbC9icm9hZGNvbS9iY20yODM1
X3RoZXJtYWwuYyB8IDEgLQo+ICBkcml2ZXJzL3RoZXJtYWwvcmNhcl9nZW4zX3RoZXJtYWwuYyAg
ICAgICAgfCAxIC0KPiAgZHJpdmVycy90aGVybWFsL3JjYXJfdGhlcm1hbC5jICAgICAgICAgICAg
IHwgNSAtLS0tLQoKRm9yIFItQ2FyLAoKUmV2aWV3ZWQtYnk6IE5pa2xhcyBTw7ZkZXJsdW5kIDxu
aWtsYXMuc29kZXJsdW5kK3JlbmVzYXNAcmFnbmF0ZWNoLnNlPgoKPiAgZHJpdmVycy90aGVybWFs
L3JvY2tjaGlwX3RoZXJtYWwuYyAgICAgICAgIHwgMSAtCj4gIGRyaXZlcnMvdGhlcm1hbC9yemcy
bF90aGVybWFsLmMgICAgICAgICAgICB8IDEgLQo+ICA2IGZpbGVzIGNoYW5nZWQsIDEwIGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvYnJvYWRjb20vYmNtMjcx
MV90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvYnJvYWRjb20vYmNtMjcxMV90aGVybWFsLmMK
PiBpbmRleCAxOGIxYTRkOWVjYzcuLjBhNDk5NDM1NDMxYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3RoZXJtYWwvYnJvYWRjb20vYmNtMjcxMV90aGVybWFsLmMKPiArKysgYi9kcml2ZXJzL3RoZXJt
YWwvYnJvYWRjb20vYmNtMjcxMV90aGVybWFsLmMKPiBAQCAtOTgsNyArOTgsNiBAQCBzdGF0aWMg
aW50IGJjbTI3MTFfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICAKPiAgCXByaXYtPnRoZXJtYWwgPSB0aGVybWFsOwo+ICAKPiAtCXRoZXJtYWwtPnR6cC0+bm9f
aHdtb24gPSBmYWxzZTsKPiAgCXJldHVybiB0aGVybWFsX2FkZF9od21vbl9zeXNmcyh0aGVybWFs
KTsKPiAgfQo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL2Jyb2FkY29tL2JjbTI4
MzVfdGhlcm1hbC5jIGIvZHJpdmVycy90aGVybWFsL2Jyb2FkY29tL2JjbTI4MzVfdGhlcm1hbC5j
Cj4gaW5kZXggZGUyZjU3Mzg2M2RhLi44ZWQ3YTgwMTIyYTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy90aGVybWFsL2Jyb2FkY29tL2JjbTI4MzVfdGhlcm1hbC5jCj4gKysrIGIvZHJpdmVycy90aGVy
bWFsL2Jyb2FkY29tL2JjbTI4MzVfdGhlcm1hbC5jCj4gQEAgLTI2Nyw3ICsyNjcsNiBAQCBzdGF0
aWMgaW50IGJjbTI4MzVfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ICAJICogVGhlcm1hbF96b25lIGRvZXNuJ3QgZW5hYmxlIGh3bW9uIGFzIGRlZmF1bHQsCj4g
IAkgKiBlbmFibGUgaXQgaGVyZQo+ICAJICovCj4gLQl0ei0+dHpwLT5ub19od21vbiA9IGZhbHNl
Owo+ICAJZXJyID0gdGhlcm1hbF9hZGRfaHdtb25fc3lzZnModHopOwo+ICAJaWYgKGVycikKPiAg
CQlnb3RvIGVycl90ejsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3JjYXJfZ2VuM190
aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvcmNhcl9nZW4zX3RoZXJtYWwuYwo+IGluZGV4IDhh
ZDcxM2NiNGJmNy4uNGVhOWQ0YmQ4ZTZmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9y
Y2FyX2dlbjNfdGhlcm1hbC5jCj4gKysrIGIvZHJpdmVycy90aGVybWFsL3JjYXJfZ2VuM190aGVy
bWFsLmMKPiBAQCAtNTI3LDcgKzUyNyw2IEBAIHN0YXRpYyBpbnQgcmNhcl9nZW4zX3RoZXJtYWxf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCQl9Cj4gIAkJdHNjLT56b25l
ID0gem9uZTsKPiAgCj4gLQkJdHNjLT56b25lLT50enAtPm5vX2h3bW9uID0gZmFsc2U7Cj4gIAkJ
cmV0ID0gdGhlcm1hbF9hZGRfaHdtb25fc3lzZnModHNjLT56b25lKTsKPiAgCQlpZiAocmV0KQo+
ICAJCQlnb3RvIGVycm9yX3VucmVnaXN0ZXI7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1h
bC9yY2FyX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9yY2FyX3RoZXJtYWwuYwo+IGluZGV4
IDUzOGVkNjczMTU4OS4uOTE5ZjBlMzJkM2M1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1h
bC9yY2FyX3RoZXJtYWwuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9yY2FyX3RoZXJtYWwuYwo+
IEBAIC01MDksMTEgKzUwOSw2IEBAIHN0YXRpYyBpbnQgcmNhcl90aGVybWFsX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAkJfQo+ICAKPiAgCQlpZiAoY2hpcC0+dXNlX29m
X3RoZXJtYWwpIHsKPiAtCQkJLyoKPiAtCQkJICogdGhlcm1hbF96b25lIGRvZXNuJ3QgZW5hYmxl
IGh3bW9uIGFzIGRlZmF1bHQsCj4gLQkJCSAqIGJ1dCwgZW5hYmxlIGl0IGhlcmUgdG8ga2VlcCBj
b21wYXRpYmxlCj4gLQkJCSAqLwo+IC0JCQlwcml2LT56b25lLT50enAtPm5vX2h3bW9uID0gZmFs
c2U7Cj4gIAkJCXJldCA9IHRoZXJtYWxfYWRkX2h3bW9uX3N5c2ZzKHByaXYtPnpvbmUpOwo+ICAJ
CQlpZiAocmV0KQo+ICAJCQkJZ290byBlcnJvcl91bnJlZ2lzdGVyOwo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jIGIvZHJpdmVycy90aGVybWFsL3JvY2tj
aGlwX3RoZXJtYWwuYwo+IGluZGV4IGJkNTkzZWM3MTJlZS4uMzIxMWI3MGM4NWI5IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiArKysgYi9kcml2ZXJz
L3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gQEAgLTE0NTEsNyArMTQ1MSw2IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2
KQo+ICAKPiAgCWZvciAoaSA9IDA7IGkgPCB0aGVybWFsLT5jaGlwLT5jaG5fbnVtOyBpKyspIHsK
PiAgCQlyb2NrY2hpcF90aGVybWFsX3RvZ2dsZV9zZW5zb3IoJnRoZXJtYWwtPnNlbnNvcnNbaV0s
IHRydWUpOwo+IC0JCXRoZXJtYWwtPnNlbnNvcnNbaV0udHpkLT50enAtPm5vX2h3bW9uID0gZmFs
c2U7Cj4gIAkJZXJyb3IgPSB0aGVybWFsX2FkZF9od21vbl9zeXNmcyh0aGVybWFsLT5zZW5zb3Jz
W2ldLnR6ZCk7Cj4gIAkJaWYgKGVycm9yKQo+ICAJCQlkZXZfd2FybigmcGRldi0+ZGV2LAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvcnpnMmxfdGhlcm1hbC5jIGIvZHJpdmVycy90aGVy
bWFsL3J6ZzJsX3RoZXJtYWwuYwo+IGluZGV4IGQzYmEyYTc0ZTQyZC4uYTJmMjFjOTQxY2ZlIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9yemcybF90aGVybWFsLmMKPiArKysgYi9kcml2
ZXJzL3RoZXJtYWwvcnpnMmxfdGhlcm1hbC5jCj4gQEAgLTIxNiw3ICsyMTYsNiBAQCBzdGF0aWMg
aW50IHJ6ZzJsX3RoZXJtYWxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAg
CX0KPiAgCj4gIAlwcml2LT56b25lID0gem9uZTsKPiAtCXByaXYtPnpvbmUtPnR6cC0+bm9faHdt
b24gPSBmYWxzZTsKPiAgCXJldCA9IHRoZXJtYWxfYWRkX2h3bW9uX3N5c2ZzKHByaXYtPnpvbmUp
Owo+ICAJaWYgKHJldCkKPiAgCQlnb3RvIGVycjsKPiAtLSAKPiAyLjM0LjEKPiAKCi0tIApLaW5k
IFJlZ2FyZHMsCk5pa2xhcyBTw7ZkZXJsdW5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
