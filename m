Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70E67C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 10:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udcU7EHR0X4t6Pv/vV+Wg6OARc+oXvb5iX9oOal1NQg=; b=L72l0QIThGrJyU
	p4hYMcBtf8DCOl1eZHEoYLezh6exYwzNsm0vO73qqv8HalYwHV7XMqx/XDE4FIchVUK7kHNaeNqvz
	4D22+lK5vw1jJO8Lkkjvz87DFAAcyz2U+bFo3AwuE/PO6S8c8TKOy6VRVPQQwy3ui6YqDLmrGB/zV
	3iM20UYXh8hK47+YW3fhdfUWka9pW7bVJ6yaUiioWxYetPks+wAi+hq8fd/++sPIkSJB7Tz4FT/4p
	cMLvEyJSPFlv1JZiAOeRajMWC5FYe5XD+bz+ANV0YyAO1BbLJ9MFOp3Af9cjw2u5/jChZQ/PLzHEI
	+9sMcccyuXpY3WGZYS2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pckUG-00FyDj-2G;
	Thu, 16 Mar 2023 10:05:32 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pckUD-00FyCq-2l
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Mar 2023 10:05:31 +0000
Received: by mail-wm1-x32e.google.com with SMTP id az3-20020a05600c600300b003ed2920d585so2773017wmb.2
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Mar 2023 03:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678961127;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LgYCZHGkMxWxLNxSIypAzujsXqtz2VniUuNUBnk+gis=;
        b=VSiX4ak9m2Fbpeodc2znc0DO1Ptd/zIBs8O7Y8ughyQyMMYMUIXgqe1dCOAFuRvVwc
         tWcGRawnoOh+glRb8/e5G2dCJYbzJQIhTEHtu1DqCrAknzoNLoIdH2rm8rIajeqxnlo6
         w1HaoqmMwKg8RkgvbcJjaKu4ocB8AIYT4FQ7MPciNJd3fr1a6oqXK1j/6Z4B74gj97iY
         jxMMlzv+zvU2XLgi2ZO2ok+GmZjqHraissXWmUjI7hRXKw+E5XqJu2Kq+NfD26pb32Ml
         BPVzN5lRw5/lvK3he1qB4E2E6ut7p+wNH9MRoyVXbe3hYObOauKxNU80Kzs19zE8GT8z
         G6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678961127;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LgYCZHGkMxWxLNxSIypAzujsXqtz2VniUuNUBnk+gis=;
        b=3UfcHKaGHy8C8TWCv0VPNAbv0sz7bDA6RH59geXydovEYf6YMRVsBRzMc/wBcVfPmu
         5xfMcsUapIhaUyRhc16b0TB43F14ZdETD6P0J4JHQ7RMrOQYwncZJsri+/+ubI6Y/fq9
         K5/+mameCLh6lWGJBdT1KExkjoIlmpY7GXSc97gCmM/XvsoLdxeg+k4/HtTK1BDK43bD
         hvMVQuLbhWjKh1/pqd6JTQ+yksLePq023iGDvt/TZFDlAZNbK8FRj2CBqp9twFaCEzyP
         3+7DRW/ZtaD2cmzU3dc2a8oPvoV1pjdyJJmhAagDsv1TPPrXg9aIlJWezjjifbmXhpvO
         /rZQ==
X-Gm-Message-State: AO0yUKWZRnllsZt30IUihFc3/TKDi5YZzBtVEpIS2vxG49SJmmsOjch9
	eujnNeKaXTCw86PdpgiFmHL+dA==
X-Google-Smtp-Source: AK7set+ZBAEGyPlBeMSevhv7QLiyPYaj5v7LU+lQDc2C6qWm+uykJB1zOxqDuqALnVB1LKmFbDZYXA==
X-Received: by 2002:a05:600c:4691:b0:3ed:33a1:ba8e with SMTP id p17-20020a05600c469100b003ed33a1ba8emr4766778wmo.1.1678961126625;
        Thu, 16 Mar 2023 03:05:26 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:cd3c:7f23:e93c:fbb4? ([2a05:6e02:1041:c10:cd3c:7f23:e93c:fbb4])
        by smtp.googlemail.com with ESMTPSA id e4-20020a05600c4e4400b003e8f0334db8sm4601879wmq.5.2023.03.16.03.05.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 03:05:26 -0700 (PDT)
Message-ID: <bae80282-cb80-462d-e554-1934d090e216@linaro.org>
Date: Thu, 16 Mar 2023 11:05:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [RESEND] [PATCHv3 4/7] thermal: rockchip: Simplify channel id
 logic
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Amit Kucheria
 <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230308112253.15659-1-sebastian.reichel@collabora.com>
 <20230308112253.15659-5-sebastian.reichel@collabora.com>
 <6c13708d-d51a-73b8-bf01-d6893eae2af4@linaro.org>
 <ec66d4e7-cb82-46c6-84ae-bd51df7cab7c@mercury.local>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <ec66d4e7-cb82-46c6-84ae-bd51df7cab7c@mercury.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_030529_898973_DFB86103 
X-CRM114-Status: GOOD (  24.89  )
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

CkhpIEhlaWtvLAoKT24gMDgvMDMvMjAyMyAxOTo0MiwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6
Cj4gSGkgRGFuaWVsLAo+IAo+IE9uIFdlZCwgTWFyIDA4LCAyMDIzIGF0IDA3OjEzOjIyUE0gKzAx
MDAsIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+PiBPbiAwOC8wMy8yMDIzIDEyOjIyLCBTZWJhc3Rp
YW4gUmVpY2hlbCB3cm90ZToKPj4+IFJlcGxhY2UgdGhlIGNoYW5uZWwgSUQgbG9va3VwIHRhYmxl
IGJ5IGEgc2ltcGxlIG9mZnNldCwgc2luY2UKPj4+IHRoZSBjaGFubmVsIElEcyBhcmUgY29uc2Vj
dXRpdmUuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlh
bi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4+Cj4+IEFzIGFsbCB0aGUgb3RoZXIgcGF0Y2hlcyBh
cmUgcmV2aWV3ZWQgYnkgSGVpa28sIGlzIHRoZSB0YWcgbWlzc2luZyBoZXJlPwo+IAo+IEhlaWtv
IHdhcyBub3QgaGFwcHkgd2l0aCB0aGlzIGluIFBBVENIdjIsIHdoZW4gaGUgcmV2aWV3ZWQgbW9z
dAo+IG9mIHRoZSBwYXRjaGVzOgo+IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8zNjAx
MDM5LmU5SjdOYUs0VzNAcGhpbC8KPiAKPiBJIHJlcGxpZWQsIGJ1dCBuZXZlciBnb3QgYSByZXNw
b25zZSwgc28gSSBrZXB0IGl0IGFzIGlzOgo+IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC8yMDIyMTIwNjE3MDIzMi54c200a2NiZndybWxycml3QG1lcmN1cnkuZWxla3RyYW5veC5vcmcv
Cj4gCj4gRldJVyBpdCBpcyBlc3NlbnRpYWwgZm9yIHRoZSBzZXJpZXMgYW5kIGNhbm5vdCBiZSBk
cm9wcGVkLCBiZWNhdXNlCj4gUkszNTg4IGhhcyBtb3JlIHRoYW4gMiBjaGFubmVscy4KCkRvIHlv
dSBoYXZlIGEgc3VnZ2VzdGlvbiB0byBpbXByb3ZlIHRoZSBwcm9wb3NlZCBjaGFuZ2UgPwoKVGhh
bmtzCiAgICAtLSBEYW5pZWwKCgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL3RoZXJtYWwvcm9ja2No
aXBfdGhlcm1hbC5jIHwgNDggKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tCj4+PiAgICAx
IGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRpb25zKC0pCj4+Pgo+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMgYi9kcml2ZXJz
L3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4+PiBpbmRleCA5ZWQ0NWIzMTgzNDQuLmJjYmRk
NjE4ZGFhZSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFs
LmMKPj4+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPj4+IEBAIC0z
OSwxNSArMzksNiBAQCBlbnVtIHRzaHV0X3BvbGFyaXR5IHsKPj4+ICAgIAlUU0hVVF9ISUdIX0FD
VElWRSwKPj4+ICAgIH07Cj4+PiAtLyoKPj4+IC0gKiBUaGUgc3lzdGVtIGhhcyB0d28gVGVtcGVy
YXR1cmUgU2Vuc29ycy4KPj4+IC0gKiBzZW5zb3IwIGlzIGZvciBDUFUsIGFuZCBzZW5zb3IxIGlz
IGZvciBHUFUuCj4+PiAtICovCj4+PiAtZW51bSBzZW5zb3JfaWQgewo+Pj4gLQlTRU5TT1JfQ1BV
ID0gMCwKPj4+IC0JU0VOU09SX0dQVSwKPj4+IC19Owo+Pj4gLQo+Pj4gICAgLyoKPj4+ICAgICAq
IFRoZSBjb252ZXJzaW9uIHRhYmxlIGhhcyB0aGUgYWRjIHZhbHVlIGFuZCB0ZW1wZXJhdHVyZS4K
Pj4+ICAgICAqIEFEQ19ERUNSRU1FTlQ6IHRoZSBhZGMgdmFsdWUgaXMgb2YgZGltaW5pc2hpbmcu
KGUuZy4gcmszMjg4X2NvZGVfdGFibGUpCj4+PiBAQCAtODIsNyArNzMsNyBAQCBzdHJ1Y3QgY2hp
cF90c2FkY190YWJsZSB7Cj4+PiAgICAvKioKPj4+ICAgICAqIHN0cnVjdCByb2NrY2hpcF90c2Fk
Y19jaGlwIC0gaG9sZCB0aGUgcHJpdmF0ZSBkYXRhIG9mIHRzYWRjIGNoaXAKPj4+IC0gKiBAY2hu
X2lkOiBhcnJheSBvZiBzZW5zb3IgaWRzIG9mIGNoaXAgY29ycmVzcG9uZGluZyB0byB0aGUgY2hh
bm5lbAo+Pj4gKyAqIEBjaG5fb2Zmc2V0OiB0aGUgY2hhbm5lbCBvZmZzZXQgb2YgdGhlIGZpcnN0
IGNoYW5uZWwKPj4+ICAgICAqIEBjaG5fbnVtOiB0aGUgY2hhbm5lbCBudW1iZXIgb2YgdHNhZGMg
Y2hpcAo+Pj4gICAgICogQHRzaHV0X3RlbXA6IHRoZSBoYXJkd2FyZS1jb250cm9sbGVkIHNodXRk
b3duIHRlbXBlcmF0dXJlIHZhbHVlCj4+PiAgICAgKiBAdHNodXRfbW9kZTogdGhlIGhhcmR3YXJl
LWNvbnRyb2xsZWQgc2h1dGRvd24gbW9kZSAoMDpDUlUgMTpHUElPKQo+Pj4gQEAgLTk4LDcgKzg5
LDcgQEAgc3RydWN0IGNoaXBfdHNhZGNfdGFibGUgewo+Pj4gICAgICovCj4+PiAgICBzdHJ1Y3Qg
cm9ja2NoaXBfdHNhZGNfY2hpcCB7Cj4+PiAgICAJLyogVGhlIHNlbnNvciBpZCBvZiBjaGlwIGNv
cnJlc3BvbmQgdG8gdGhlIEFEQyBjaGFubmVsICovCj4+PiAtCWludCBjaG5faWRbU09DX01BWF9T
RU5TT1JTXTsKPj4+ICsJaW50IGNobl9vZmZzZXQ7Cj4+PiAgICAJaW50IGNobl9udW07Cj4+PiAg
ICAJLyogVGhlIGhhcmR3YXJlLWNvbnRyb2xsZWQgdHNodXQgcHJvcGVydHkgKi8KPj4+IEBAIC05
MjUsOCArOTE2LDggQEAgc3RhdGljIHZvaWQgcmtfdHNhZGN2Ml90c2h1dF9tb2RlKGludCBjaG4s
IHZvaWQgX19pb21lbSAqcmVncywKPj4+ICAgIH0KPj4+ICAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cm9ja2NoaXBfdHNhZGNfY2hpcCBweDMwX3RzYWRjX2RhdGEgPSB7Cj4+PiAtCS5jaG5faWRbU0VO
U09SX0NQVV0gPSAwLCAvKiBjcHUgc2Vuc29yIGlzIGNoYW5uZWwgMCAqLwo+Pj4gLQkuY2huX2lk
W1NFTlNPUl9HUFVdID0gMSwgLyogZ3B1IHNlbnNvciBpcyBjaGFubmVsIDEgKi8KPj4+ICsJLyog
Y3B1LCBncHUgKi8KPj4+ICsJLmNobl9vZmZzZXQgPSAwLAo+Pj4gICAgCS5jaG5fbnVtID0gMiwg
LyogMiBjaGFubmVscyBmb3IgdHNhZGMgKi8KPj4+ICAgIAkudHNodXRfbW9kZSA9IFRTSFVUX01P
REVfQ1JVLCAvKiBkZWZhdWx0IFRTSFVUIHZpYSBDUlUgKi8KPj4+IEBAIC05NDksNyArOTQwLDgg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCByb2NrY2hpcF90c2FkY19jaGlwIHB4MzBfdHNhZGNfZGF0
YSA9IHsKPj4+ICAgIH07Cj4+PiAgICBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRj
X2NoaXAgcnYxMTA4X3RzYWRjX2RhdGEgPSB7Cj4+PiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAw
LCAvKiBjcHUgc2Vuc29yIGlzIGNoYW5uZWwgMCAqLwo+Pj4gKwkvKiBjcHUgKi8KPj4+ICsJLmNo
bl9vZmZzZXQgPSAwLAo+Pj4gICAgCS5jaG5fbnVtID0gMSwgLyogb25lIGNoYW5uZWwgZm9yIHRz
YWRjICovCj4+PiAgICAJLnRzaHV0X21vZGUgPSBUU0hVVF9NT0RFX0dQSU8sIC8qIGRlZmF1bHQg
VFNIVVQgdmlhIEdQSU8gZ2l2ZSBQTUlDICovCj4+PiBAQCAtOTczLDcgKzk2NSw4IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCBydjExMDhfdHNhZGNfZGF0YSA9IHsK
Pj4+ICAgIH07Cj4+PiAgICBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAg
cmszMjI4X3RzYWRjX2RhdGEgPSB7Cj4+PiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAwLCAvKiBj
cHUgc2Vuc29yIGlzIGNoYW5uZWwgMCAqLwo+Pj4gKwkvKiBjcHUgKi8KPj4+ICsJLmNobl9vZmZz
ZXQgPSAwLAo+Pj4gICAgCS5jaG5fbnVtID0gMSwgLyogb25lIGNoYW5uZWwgZm9yIHRzYWRjICov
Cj4+PiAgICAJLnRzaHV0X21vZGUgPSBUU0hVVF9NT0RFX0dQSU8sIC8qIGRlZmF1bHQgVFNIVVQg
dmlhIEdQSU8gZ2l2ZSBQTUlDICovCj4+PiBAQCAtOTk3LDggKzk5MCw4IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCByazMyMjhfdHNhZGNfZGF0YSA9IHsKPj4+ICAg
IH07Cj4+PiAgICBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAgcmszMjg4
X3RzYWRjX2RhdGEgPSB7Cj4+PiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAxLCAvKiBjcHUgc2Vu
c29yIGlzIGNoYW5uZWwgMSAqLwo+Pj4gLQkuY2huX2lkW1NFTlNPUl9HUFVdID0gMiwgLyogZ3B1
IHNlbnNvciBpcyBjaGFubmVsIDIgKi8KPj4+ICsJLyogY3B1LCBncHUgKi8KPj4+ICsJLmNobl9v
ZmZzZXQgPSAxLAo+Pj4gICAgCS5jaG5fbnVtID0gMiwgLyogdHdvIGNoYW5uZWxzIGZvciB0c2Fk
YyAqLwo+Pj4gICAgCS50c2h1dF9tb2RlID0gVFNIVVRfTU9ERV9HUElPLCAvKiBkZWZhdWx0IFRT
SFVUIHZpYSBHUElPIGdpdmUgUE1JQyAqLwo+Pj4gQEAgLTEwMjIsNyArMTAxNSw4IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCByazMyODhfdHNhZGNfZGF0YSA9IHsK
Pj4+ICAgIH07Cj4+PiAgICBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAg
cmszMzI4X3RzYWRjX2RhdGEgPSB7Cj4+PiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAwLCAvKiBj
cHUgc2Vuc29yIGlzIGNoYW5uZWwgMCAqLwo+Pj4gKwkvKiBjcHUgKi8KPj4+ICsJLmNobl9vZmZz
ZXQgPSAwLAo+Pj4gICAgCS5jaG5fbnVtID0gMSwgLyogb25lIGNoYW5uZWxzIGZvciB0c2FkYyAq
Lwo+Pj4gICAgCS50c2h1dF9tb2RlID0gVFNIVVRfTU9ERV9DUlUsIC8qIGRlZmF1bHQgVFNIVVQg
dmlhIENSVSAqLwo+Pj4gQEAgLTEwNDUsOCArMTAzOSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cm9ja2NoaXBfdHNhZGNfY2hpcCByazMzMjhfdHNhZGNfZGF0YSA9IHsKPj4+ICAgIH07Cj4+PiAg
ICBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAgcmszMzY2X3RzYWRjX2Rh
dGEgPSB7Cj4+PiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAwLCAvKiBjcHUgc2Vuc29yIGlzIGNo
YW5uZWwgMCAqLwo+Pj4gLQkuY2huX2lkW1NFTlNPUl9HUFVdID0gMSwgLyogZ3B1IHNlbnNvciBp
cyBjaGFubmVsIDEgKi8KPj4+ICsJLyogY3B1LCBncHUgKi8KPj4+ICsJLmNobl9vZmZzZXQgPSAw
LAo+Pj4gICAgCS5jaG5fbnVtID0gMiwgLyogdHdvIGNoYW5uZWxzIGZvciB0c2FkYyAqLwo+Pj4g
ICAgCS50c2h1dF9tb2RlID0gVFNIVVRfTU9ERV9HUElPLCAvKiBkZWZhdWx0IFRTSFVUIHZpYSBH
UElPIGdpdmUgUE1JQyAqLwo+Pj4gQEAgLTEwNzAsOCArMTA2NCw4IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCByazMzNjZfdHNhZGNfZGF0YSA9IHsKPj4+ICAgIH07
Cj4+PiAgICBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAgcmszMzY4X3Rz
YWRjX2RhdGEgPSB7Cj4+PiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAwLCAvKiBjcHUgc2Vuc29y
IGlzIGNoYW5uZWwgMCAqLwo+Pj4gLQkuY2huX2lkW1NFTlNPUl9HUFVdID0gMSwgLyogZ3B1IHNl
bnNvciBpcyBjaGFubmVsIDEgKi8KPj4+ICsJLyogY3B1LCBncHUgKi8KPj4+ICsJLmNobl9vZmZz
ZXQgPSAwLAo+Pj4gICAgCS5jaG5fbnVtID0gMiwgLyogdHdvIGNoYW5uZWxzIGZvciB0c2FkYyAq
Lwo+Pj4gICAgCS50c2h1dF9tb2RlID0gVFNIVVRfTU9ERV9HUElPLCAvKiBkZWZhdWx0IFRTSFVU
IHZpYSBHUElPIGdpdmUgUE1JQyAqLwo+Pj4gQEAgLTEwOTUsOCArMTA4OSw4IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCByazMzNjhfdHNhZGNfZGF0YSA9IHsKPj4+
ICAgIH07Cj4+PiAgICBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2NoaXAgcmsz
Mzk5X3RzYWRjX2RhdGEgPSB7Cj4+PiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAwLCAvKiBjcHUg
c2Vuc29yIGlzIGNoYW5uZWwgMCAqLwo+Pj4gLQkuY2huX2lkW1NFTlNPUl9HUFVdID0gMSwgLyog
Z3B1IHNlbnNvciBpcyBjaGFubmVsIDEgKi8KPj4+ICsJLyogY3B1LCBncHUgKi8KPj4+ICsJLmNo
bl9vZmZzZXQgPSAwLAo+Pj4gICAgCS5jaG5fbnVtID0gMiwgLyogdHdvIGNoYW5uZWxzIGZvciB0
c2FkYyAqLwo+Pj4gICAgCS50c2h1dF9tb2RlID0gVFNIVVRfTU9ERV9HUElPLCAvKiBkZWZhdWx0
IFRTSFVUIHZpYSBHUElPIGdpdmUgUE1JQyAqLwo+Pj4gQEAgLTExMjAsOCArMTExNCw4IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfdHNhZGNfY2hpcCByazMzOTlfdHNhZGNfZGF0YSA9
IHsKPj4+ICAgIH07Cj4+PiAgICBzdGF0aWMgY29uc3Qgc3RydWN0IHJvY2tjaGlwX3RzYWRjX2No
aXAgcmszNTY4X3RzYWRjX2RhdGEgPSB7Cj4+PiAtCS5jaG5faWRbU0VOU09SX0NQVV0gPSAwLCAv
KiBjcHUgc2Vuc29yIGlzIGNoYW5uZWwgMCAqLwo+Pj4gLQkuY2huX2lkW1NFTlNPUl9HUFVdID0g
MSwgLyogZ3B1IHNlbnNvciBpcyBjaGFubmVsIDEgKi8KPj4+ICsJLyogY3B1LCBncHUgKi8KPj4+
ICsJLmNobl9vZmZzZXQgPSAwLAo+Pj4gICAgCS5jaG5fbnVtID0gMiwgLyogdHdvIGNoYW5uZWxz
IGZvciB0c2FkYyAqLwo+Pj4gICAgCS50c2h1dF9tb2RlID0gVFNIVVRfTU9ERV9HUElPLCAvKiBk
ZWZhdWx0IFRTSFVUIHZpYSBHUElPIGdpdmUgUE1JQyAqLwo+Pj4gQEAgLTE0MDQsNyArMTM5OCw3
IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+Pj4gICAgCWZvciAoaSA9IDA7IGkgPCB0aGVybWFsLT5jaGlwLT5jaG5fbnVt
OyBpKyspIHsKPj4+ICAgIAkJZXJyb3IgPSByb2NrY2hpcF90aGVybWFsX3JlZ2lzdGVyX3NlbnNv
cihwZGV2LCB0aGVybWFsLAo+Pj4gICAgCQkJCQkJJnRoZXJtYWwtPnNlbnNvcnNbaV0sCj4+PiAt
CQkJCQkJdGhlcm1hbC0+Y2hpcC0+Y2huX2lkW2ldKTsKPj4+ICsJCQkJCQl0aGVybWFsLT5jaGlw
LT5jaG5fb2Zmc2V0ICsgaSk7Cj4+PiAgICAJCWlmIChlcnJvcikKPj4+ICAgIAkJCXJldHVybiBk
ZXZfZXJyX3Byb2JlKCZwZGV2LT5kZXYsIGVycm9yLAo+Pj4gICAgCQkJCSJmYWlsZWQgdG8gcmVn
aXN0ZXIgc2Vuc29yWyVkXS5cbiIsIGkpOwo+Pgo+PiAtLSAKPj4gPGh0dHA6Ly93d3cubGluYXJv
Lm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29Dcwo+
Pgo+PiBGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFy
bz4gRmFjZWJvb2sgfAo+PiA8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRl
ciB8Cj4+IDxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCj4+CgotLSAK
PGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3
YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNv
bS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9v
cmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
