Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4EE4C678D5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Mar 2023 18:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJMNDW6JH6zj71GHgxcatcShHwQnYjb6g8xlNS73+i8=; b=1g18Yun592mXJQ
	OTzOu9EOnod2aD7saHJ54jo8kIJUxyOHNGbcVjFaB77R3Rs1u4I/tnGjLrLL7ecXb2Xt18DR2NarW
	aQw+Vggn4XdJyUuYTYqskXkRYmdHnNnvHl/cN7a9lFJgQuFpKjQpbxmcUkqN3mM8o4fVbtiGUBZwG
	cjHrPhtbvUT1Tp47ytm/V1Wme9ne2TIZsMnQH7RhUSmxlU9GLhLZM7+cchYIJR4wKEGxdcbvIMkKz
	kVQT6828oXW//NVMR/J9NxKqE6jf3x6yQU8ZqcrRf0dheumZ412zPfA+3x7NmI39ToMViJyk0sKIm
	7yshOSGZTIwalplPiQ9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZyI6-006KhX-0H; Wed, 08 Mar 2023 18:13:30 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZyI3-006Kej-Fp
	for linux-rockchip@lists.infradead.org; Wed, 08 Mar 2023 18:13:29 +0000
Received: by mail-wm1-x32c.google.com with SMTP id m25-20020a7bcb99000000b003e7842b75f2so1698438wmi.3
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Mar 2023 10:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678299204;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lqnDgNByCxKJMz7E61gZ4/wBvcfPmg0KpSzK4NDBPz4=;
        b=NMEnQHT+tczCVbLhYEtQpkzzaIJbbfRVYCrkHLIqR8xKE3iRP7AQIuNlEwHun8qWxI
         GAHgHWszxUdGaOoiPHnRbIwiU6yVkSN8Ruk1TKA0hbf+XUKfeyOXaHkspoK5O6+1n8wq
         6qIoAdJ/C+E+5CuxpW065fQ+ObYvM9RGJ4xwqF4ED8cdyzL/B0a46cSbNYuYuoH+Cu/8
         CbHKvgRQ1IbFpCpSWUUHgEfx1dR1er8IrAMRMtwvsvAy0RfVJSlJTuvBKHZ2mnQNzJ3W
         +Y9zIn9afNaVAK4M8Quc62pRt3TJXFXu2tBEK2rTKWT7o+8O1ZlRFkVvPJs1FWIr4eo+
         GsMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678299204;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lqnDgNByCxKJMz7E61gZ4/wBvcfPmg0KpSzK4NDBPz4=;
        b=vILNgTCCcaH7t+mRgisSn5KcXjDNATU5bhvVz0J3WECsOlVV4IrzcpzSkEovX/knal
         eR0jtZZ6qz6gRr7oPpOAOIcgSZa71oNIfFHISZHBk0dKcCDmNKhZt+kYUY0zR3byXO66
         VcgDVUTLnWVuI9QT0b4sCCymZA1HOI8xyStNoniAVR/FPHhdRzbl/vzuhUPe3AGcXpjn
         6dFaEdfx91GpsDRdzIgSFa3NpxNeQVaUBr2EJ/l7kh7XSJJGkDXC0b/BvUL2oinnZihX
         aEjky7vM3r6Bu5EpiVTx1zrMwPm5o8JEesVQ8D0nQbzjbJb0w4UNfl3VuMvAOfm0JBtI
         QDJw==
X-Gm-Message-State: AO0yUKWHlvO7eJTLTXg+ggMUhXuuCsJueeN/1Za2epegpW1LzONieavS
	wIK/N0utFphHk84vPIa9PTFl55OknF7QV5C4z5g=
X-Google-Smtp-Source: AK7set/eGnfdLqSXO5k6gFPSjXsc2URwOw444gIhoTtUY4ojZeX2D/CyDqsIDbiTRIe+Ndr8X6+uRg==
X-Received: by 2002:a05:600c:198e:b0:3eb:2e27:2d0c with SMTP id t14-20020a05600c198e00b003eb2e272d0cmr13899448wmq.1.1678299203675;
        Wed, 08 Mar 2023 10:13:23 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:4213:ad42:5630:43c4? ([2a05:6e02:1041:c10:4213:ad42:5630:43c4])
        by smtp.googlemail.com with ESMTPSA id r11-20020a05600c458b00b003e20970175dsm162809wmo.32.2023.03.08.10.13.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 10:13:23 -0800 (PST)
Message-ID: <6c13708d-d51a-73b8-bf01-d6893eae2af4@linaro.org>
Date: Wed, 8 Mar 2023 19:13:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [RESEND] [PATCHv3 4/7] thermal: rockchip: Simplify channel id
 logic
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230308112253.15659-1-sebastian.reichel@collabora.com>
 <20230308112253.15659-5-sebastian.reichel@collabora.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230308112253.15659-5-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_101327_554095_77D64F5A 
X-CRM114-Status: GOOD (  24.97  )
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

T24gMDgvMDMvMjAyMyAxMjoyMiwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4gUmVwbGFjZSB0
aGUgY2hhbm5lbCBJRCBsb29rdXAgdGFibGUgYnkgYSBzaW1wbGUgb2Zmc2V0LCBzaW5jZQo+IHRo
ZSBjaGFubmVsIElEcyBhcmUgY29uc2VjdXRpdmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0
aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpBcyBhbGwgdGhl
IG90aGVyIHBhdGNoZXMgYXJlIHJldmlld2VkIGJ5IEhlaWtvLCBpcyB0aGUgdGFnIG1pc3Npbmcg
aGVyZT8KCgo+IC0tLQo+ICAgZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyB8IDQ4
ICsrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIxIGlu
c2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Ro
ZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jIGIvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJt
YWwuYwo+IGluZGV4IDllZDQ1YjMxODM0NC4uYmNiZGQ2MThkYWFlIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiArKysgYi9kcml2ZXJzL3RoZXJtYWwv
cm9ja2NoaXBfdGhlcm1hbC5jCj4gQEAgLTM5LDE1ICszOSw2IEBAIGVudW0gdHNodXRfcG9sYXJp
dHkgewo+ICAgCVRTSFVUX0hJR0hfQUNUSVZFLAo+ICAgfTsKPiAgIAo+IC0vKgo+IC0gKiBUaGUg
c3lzdGVtIGhhcyB0d28gVGVtcGVyYXR1cmUgU2Vuc29ycy4KPiAtICogc2Vuc29yMCBpcyBmb3Ig
Q1BVLCBhbmQgc2Vuc29yMSBpcyBmb3IgR1BVLgo+IC0gKi8KPiAtZW51bSBzZW5zb3JfaWQgewo+
IC0JU0VOU09SX0NQVSA9IDAsCj4gLQlTRU5TT1JfR1BVLAo+IC19Owo+IC0KPiAgIC8qCj4gICAg
KiBUaGUgY29udmVyc2lvbiB0YWJsZSBoYXMgdGhlIGFkYyB2YWx1ZSBhbmQgdGVtcGVyYXR1cmUu
Cj4gICAgKiBBRENfREVDUkVNRU5UOiB0aGUgYWRjIHZhbHVlIGlzIG9mIGRpbWluaXNoaW5nLihl
LmcuIHJrMzI4OF9jb2RlX3RhYmxlKQo+IEBAIC04Miw3ICs3Myw3IEBAIHN0cnVjdCBjaGlwX3Rz
YWRjX3RhYmxlIHsKPiAgIAo+ICAgLyoqCj4gICAgKiBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hp
cCAtIGhvbGQgdGhlIHByaXZhdGUgZGF0YSBvZiB0c2FkYyBjaGlwCj4gLSAqIEBjaG5faWQ6IGFy
cmF5IG9mIHNlbnNvciBpZHMgb2YgY2hpcCBjb3JyZXNwb25kaW5nIHRvIHRoZSBjaGFubmVsCj4g
KyAqIEBjaG5fb2Zmc2V0OiB0aGUgY2hhbm5lbCBvZmZzZXQgb2YgdGhlIGZpcnN0IGNoYW5uZWwK
PiAgICAqIEBjaG5fbnVtOiB0aGUgY2hhbm5lbCBudW1iZXIgb2YgdHNhZGMgY2hpcAo+ICAgICog
QHRzaHV0X3RlbXA6IHRoZSBoYXJkd2FyZS1jb250cm9sbGVkIHNodXRkb3duIHRlbXBlcmF0dXJl
IHZhbHVlCj4gICAgKiBAdHNodXRfbW9kZTogdGhlIGhhcmR3YXJlLWNvbnRyb2xsZWQgc2h1dGRv
d24gbW9kZSAoMDpDUlUgMTpHUElPKQo+IEBAIC05OCw3ICs4OSw3IEBAIHN0cnVjdCBjaGlwX3Rz
YWRjX3RhYmxlIHsKPiAgICAqLwo+ICAgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAgewo+ICAg
CS8qIFRoZSBzZW5zb3IgaWQgb2YgY2hpcCBjb3JyZXNwb25kIHRvIHRoZSBBREMgY2hhbm5lbCAq
Lwo+IC0JaW50IGNobl9pZFtTT0NfTUFYX1NFTlNPUlNdOwo+ICsJaW50IGNobl9vZmZzZXQ7Cj4g
ICAJaW50IGNobl9udW07Cj4gICAKPiAgIAkvKiBUaGUgaGFyZHdhcmUtY29udHJvbGxlZCB0c2h1
dCBwcm9wZXJ0eSAqLwo+IEBAIC05MjUsOCArOTE2LDggQEAgc3RhdGljIHZvaWQgcmtfdHNhZGN2
Ml90c2h1dF9tb2RlKGludCBjaG4sIHZvaWQgX19pb21lbSAqcmVncywKPiAgIH0KPiAgIAo+ICAg
c3RhdGljIGNvbnN0IHN0cnVjdCByb2NrY2hpcF90c2FkY19jaGlwIHB4MzBfdHNhZGNfZGF0YSA9
IHsKPiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAwLCAvKiBjcHUgc2Vuc29yIGlzIGNoYW5uZWwg
MCAqLwo+IC0JLmNobl9pZFtTRU5TT1JfR1BVXSA9IDEsIC8qIGdwdSBzZW5zb3IgaXMgY2hhbm5l
bCAxICovCj4gKwkvKiBjcHUsIGdwdSAqLwo+ICsJLmNobl9vZmZzZXQgPSAwLAo+ICAgCS5jaG5f
bnVtID0gMiwgLyogMiBjaGFubmVscyBmb3IgdHNhZGMgKi8KPiAgIAo+ICAgCS50c2h1dF9tb2Rl
ID0gVFNIVVRfTU9ERV9DUlUsIC8qIGRlZmF1bHQgVFNIVVQgdmlhIENSVSAqLwo+IEBAIC05NDks
NyArOTQwLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCByb2NrY2hpcF90c2FkY19jaGlwIHB4MzBf
dHNhZGNfZGF0YSA9IHsKPiAgIH07Cj4gICAKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2No
aXBfdHNhZGNfY2hpcCBydjExMDhfdHNhZGNfZGF0YSA9IHsKPiAtCS5jaG5faWRbU0VOU09SX0NQ
VV0gPSAwLCAvKiBjcHUgc2Vuc29yIGlzIGNoYW5uZWwgMCAqLwo+ICsJLyogY3B1ICovCj4gKwku
Y2huX29mZnNldCA9IDAsCj4gICAJLmNobl9udW0gPSAxLCAvKiBvbmUgY2hhbm5lbCBmb3IgdHNh
ZGMgKi8KPiAgIAo+ICAgCS50c2h1dF9tb2RlID0gVFNIVVRfTU9ERV9HUElPLCAvKiBkZWZhdWx0
IFRTSFVUIHZpYSBHUElPIGdpdmUgUE1JQyAqLwo+IEBAIC05NzMsNyArOTY1LDggQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCByb2NrY2hpcF90c2FkY19jaGlwIHJ2MTEwOF90c2FkY19kYXRhID0gewo+
ICAgfTsKPiAgIAo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCByb2NrY2hpcF90c2FkY19jaGlwIHJr
MzIyOF90c2FkY19kYXRhID0gewo+IC0JLmNobl9pZFtTRU5TT1JfQ1BVXSA9IDAsIC8qIGNwdSBz
ZW5zb3IgaXMgY2hhbm5lbCAwICovCj4gKwkvKiBjcHUgKi8KPiArCS5jaG5fb2Zmc2V0ID0gMCwK
PiAgIAkuY2huX251bSA9IDEsIC8qIG9uZSBjaGFubmVsIGZvciB0c2FkYyAqLwo+ICAgCj4gICAJ
LnRzaHV0X21vZGUgPSBUU0hVVF9NT0RFX0dQSU8sIC8qIGRlZmF1bHQgVFNIVVQgdmlhIEdQSU8g
Z2l2ZSBQTUlDICovCj4gQEAgLTk5Nyw4ICs5OTAsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJv
Y2tjaGlwX3RzYWRjX2NoaXAgcmszMjI4X3RzYWRjX2RhdGEgPSB7Cj4gICB9Owo+ICAgCj4gICBz
dGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAgcmszMjg4X3RzYWRjX2RhdGEg
PSB7Cj4gLQkuY2huX2lkW1NFTlNPUl9DUFVdID0gMSwgLyogY3B1IHNlbnNvciBpcyBjaGFubmVs
IDEgKi8KPiAtCS5jaG5faWRbU0VOU09SX0dQVV0gPSAyLCAvKiBncHUgc2Vuc29yIGlzIGNoYW5u
ZWwgMiAqLwo+ICsJLyogY3B1LCBncHUgKi8KPiArCS5jaG5fb2Zmc2V0ID0gMSwKPiAgIAkuY2hu
X251bSA9IDIsIC8qIHR3byBjaGFubmVscyBmb3IgdHNhZGMgKi8KPiAgIAo+ICAgCS50c2h1dF9t
b2RlID0gVFNIVVRfTU9ERV9HUElPLCAvKiBkZWZhdWx0IFRTSFVUIHZpYSBHUElPIGdpdmUgUE1J
QyAqLwo+IEBAIC0xMDIyLDcgKzEwMTUsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlw
X3RzYWRjX2NoaXAgcmszMjg4X3RzYWRjX2RhdGEgPSB7Cj4gICB9Owo+ICAgCj4gICBzdGF0aWMg
Y29uc3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAgcmszMzI4X3RzYWRjX2RhdGEgPSB7Cj4g
LQkuY2huX2lkW1NFTlNPUl9DUFVdID0gMCwgLyogY3B1IHNlbnNvciBpcyBjaGFubmVsIDAgKi8K
PiArCS8qIGNwdSAqLwo+ICsJLmNobl9vZmZzZXQgPSAwLAo+ICAgCS5jaG5fbnVtID0gMSwgLyog
b25lIGNoYW5uZWxzIGZvciB0c2FkYyAqLwo+ICAgCj4gICAJLnRzaHV0X21vZGUgPSBUU0hVVF9N
T0RFX0NSVSwgLyogZGVmYXVsdCBUU0hVVCB2aWEgQ1JVICovCj4gQEAgLTEwNDUsOCArMTAzOSw4
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCByazMzMjhfdHNhZGNf
ZGF0YSA9IHsKPiAgIH07Cj4gICAKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfdHNh
ZGNfY2hpcCByazMzNjZfdHNhZGNfZGF0YSA9IHsKPiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAw
LCAvKiBjcHUgc2Vuc29yIGlzIGNoYW5uZWwgMCAqLwo+IC0JLmNobl9pZFtTRU5TT1JfR1BVXSA9
IDEsIC8qIGdwdSBzZW5zb3IgaXMgY2hhbm5lbCAxICovCj4gKwkvKiBjcHUsIGdwdSAqLwo+ICsJ
LmNobl9vZmZzZXQgPSAwLAo+ICAgCS5jaG5fbnVtID0gMiwgLyogdHdvIGNoYW5uZWxzIGZvciB0
c2FkYyAqLwo+ICAgCj4gICAJLnRzaHV0X21vZGUgPSBUU0hVVF9NT0RFX0dQSU8sIC8qIGRlZmF1
bHQgVFNIVVQgdmlhIEdQSU8gZ2l2ZSBQTUlDICovCj4gQEAgLTEwNzAsOCArMTA2NCw4IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCByazMzNjZfdHNhZGNfZGF0YSA9
IHsKPiAgIH07Cj4gICAKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hp
cCByazMzNjhfdHNhZGNfZGF0YSA9IHsKPiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAwLCAvKiBj
cHUgc2Vuc29yIGlzIGNoYW5uZWwgMCAqLwo+IC0JLmNobl9pZFtTRU5TT1JfR1BVXSA9IDEsIC8q
IGdwdSBzZW5zb3IgaXMgY2hhbm5lbCAxICovCj4gKwkvKiBjcHUsIGdwdSAqLwo+ICsJLmNobl9v
ZmZzZXQgPSAwLAo+ICAgCS5jaG5fbnVtID0gMiwgLyogdHdvIGNoYW5uZWxzIGZvciB0c2FkYyAq
Lwo+ICAgCj4gICAJLnRzaHV0X21vZGUgPSBUU0hVVF9NT0RFX0dQSU8sIC8qIGRlZmF1bHQgVFNI
VVQgdmlhIEdQSU8gZ2l2ZSBQTUlDICovCj4gQEAgLTEwOTUsOCArMTA4OSw4IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCByazMzNjhfdHNhZGNfZGF0YSA9IHsKPiAg
IH07Cj4gICAKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCByazMz
OTlfdHNhZGNfZGF0YSA9IHsKPiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAwLCAvKiBjcHUgc2Vu
c29yIGlzIGNoYW5uZWwgMCAqLwo+IC0JLmNobl9pZFtTRU5TT1JfR1BVXSA9IDEsIC8qIGdwdSBz
ZW5zb3IgaXMgY2hhbm5lbCAxICovCj4gKwkvKiBjcHUsIGdwdSAqLwo+ICsJLmNobl9vZmZzZXQg
PSAwLAo+ICAgCS5jaG5fbnVtID0gMiwgLyogdHdvIGNoYW5uZWxzIGZvciB0c2FkYyAqLwo+ICAg
Cj4gICAJLnRzaHV0X21vZGUgPSBUU0hVVF9NT0RFX0dQSU8sIC8qIGRlZmF1bHQgVFNIVVQgdmlh
IEdQSU8gZ2l2ZSBQTUlDICovCj4gQEAgLTExMjAsOCArMTExNCw4IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCByazMzOTlfdHNhZGNfZGF0YSA9IHsKPiAgIH07Cj4g
ICAKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCByazM1NjhfdHNh
ZGNfZGF0YSA9IHsKPiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAwLCAvKiBjcHUgc2Vuc29yIGlz
IGNoYW5uZWwgMCAqLwo+IC0JLmNobl9pZFtTRU5TT1JfR1BVXSA9IDEsIC8qIGdwdSBzZW5zb3Ig
aXMgY2hhbm5lbCAxICovCj4gKwkvKiBjcHUsIGdwdSAqLwo+ICsJLmNobl9vZmZzZXQgPSAwLAo+
ICAgCS5jaG5fbnVtID0gMiwgLyogdHdvIGNoYW5uZWxzIGZvciB0c2FkYyAqLwo+ICAgCj4gICAJ
LnRzaHV0X21vZGUgPSBUU0hVVF9NT0RFX0dQSU8sIC8qIGRlZmF1bHQgVFNIVVQgdmlhIEdQSU8g
Z2l2ZSBQTUlDICovCj4gQEAgLTE0MDQsNyArMTM5OCw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBf
dGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCWZvciAoaSA9
IDA7IGkgPCB0aGVybWFsLT5jaGlwLT5jaG5fbnVtOyBpKyspIHsKPiAgIAkJZXJyb3IgPSByb2Nr
Y2hpcF90aGVybWFsX3JlZ2lzdGVyX3NlbnNvcihwZGV2LCB0aGVybWFsLAo+ICAgCQkJCQkJJnRo
ZXJtYWwtPnNlbnNvcnNbaV0sCj4gLQkJCQkJCXRoZXJtYWwtPmNoaXAtPmNobl9pZFtpXSk7Cj4g
KwkJCQkJCXRoZXJtYWwtPmNoaXAtPmNobl9vZmZzZXQgKyBpKTsKPiAgIAkJaWYgKGVycm9yKQo+
ICAgCQkJcmV0dXJuIGRldl9lcnJfcHJvYmUoJnBkZXYtPmRldiwgZXJyb3IsCj4gICAJCQkJImZh
aWxlZCB0byByZWdpc3RlciBzZW5zb3JbJWRdLlxuIiwgaSk7CgotLSAKPGh0dHA6Ly93d3cubGlu
YXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29D
cwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+
IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8
aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
