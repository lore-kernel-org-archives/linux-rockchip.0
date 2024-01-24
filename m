Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 779C0C46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 21:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QTjI/VMS2WSalzgiw57qBT5xS1OWMYsAFF+5wCBfU0=; b=A2pfHEQ7tujyZO
	PSlX0YV4S6QmJSpN5RtVId01wUES2wMtwHkFWADAuz0+qfQAo6It53E8pIiOhOHjQ7bsHnC+B3bNf
	yyZNhcCOHJQ2VdqZ/oZa0cZMFcUadjtJGby1r3QEqgBjbvT2F8kecwMBWfhJGzwg77J8HvxFDYL2V
	9aQDgJlFePITecKVRPO4N6+bYGL4rlU4EZ3+1YOVrIUL1jEYyB4NVbGFbXLhJH2WLScqHGamspF5Y
	/TmeVpX8YL+kwQTJth6SEv372PqeDmTQGBK2ID54Du+4sywnaUuRqNSqKBokzrqGIhXPXG34l5a+q
	nsH7/bsmi609ZK0ce++Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSlHG-005EJI-03;
	Wed, 24 Jan 2024 21:59:22 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSlHB-005EHF-2b
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jan 2024 21:59:19 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40eacb6067dso45221875e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Jan 2024 13:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706133554; x=1706738354; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/x0xwLfqu5z8NcxBEe9tr7BWnY9CY/mlR8s5sFbWe8A=;
        b=Qx4uvb5zbTsyvMs7lofFilHpA7MF8iUTkc81Tlz3cUWOIbGNp/w6/tLvT7cTS6pk9d
         bgtH0hf7vJfb+Nf5fA3RekshFyDwmeAVlLJwm7pNIp1SWPKaG1AAsCRmdhVZk+p8v+bN
         i0pHbtc+XXKGVomBYyHD86QGHuie+tAqSkWzr+NWA983DNEtkFgSG4YnVKQsjx4hW/kZ
         h5pFd1zG0WtxulZgqHtjb/1ZJpR+3YQCnNeISvl3Pb2RKHHstA7wL8/jK07oGb70CBUP
         LrxT4qj78F/Z1zMAV632wByMMX5kMO+fkDkWaOUIv+xX9ju9/DyuTRo8R1NF/ZcRKtOB
         NJqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706133554; x=1706738354;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/x0xwLfqu5z8NcxBEe9tr7BWnY9CY/mlR8s5sFbWe8A=;
        b=l7HbYE9DGXcx4m5K7j47HyEOqsVkNbHAXdgcTdLcXuOtg4WOLmKaeZ3YS2rJYRFIim
         KNjsQcgVYICkpFv/Yve8Rf+2Hc/fHWcY4jpSMwuxwFSYw4PMidEOYFoaIzZdBmjalQn/
         9bHoWN4NzrBbkvGpDv5v5G3zc1BZ0ld73IJQLlYCRocWg1qvI+vt5kpWOXdKAkw8cPF+
         pp7BdiZbu/cFQHkba9gAyg5GEsORyF3AiuhEAAO+XXh3BGd61Xh+PQ4lqZynkZkTB7a7
         TDVw0QA1QB6OzgX+V3JbROfsga496UMJSCh9k+oKmBpL3axgVPAaFPY3+JOiFud/zPlm
         QzQA==
X-Gm-Message-State: AOJu0YyrVlRathPxpULq6j1Nbq3Is9iv/9tGTG+0d0nFh4O26ZLbhH33
	4KzKIYhucfE0Leml1UJhajvO+PNOml9RHJehd67OLUFqjbiF9ICWShril921kR4=
X-Google-Smtp-Source: AGHT+IHw30SWTJoZ+FFFZrE09mSB+uTZpDsgzB9o0ZyoA20fyJ1GgKZ55NN4s2uwVcHBe7cWeYm64A==
X-Received: by 2002:a05:600c:3286:b0:40e:70f2:5754 with SMTP id t6-20020a05600c328600b0040e70f25754mr1016294wmp.250.1706133554110;
        Wed, 24 Jan 2024 13:59:14 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:92d0:e652:43b1:5e6a? ([2a05:6e02:1041:c10:92d0:e652:43b1:5e6a])
        by smtp.googlemail.com with ESMTPSA id o9-20020a05600c4fc900b0040ec66021a7sm380550wmq.1.2024.01.24.13.59.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 13:59:13 -0800 (PST)
Message-ID: <7c8b9bc2-94f8-46f7-8143-a78c834142ef@linaro.org>
Date: Wed, 24 Jan 2024 22:59:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: enable temperature driven fan
 control on Rock 5B
Content-Language: en-US
To: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-3-5879275db36f@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240125-rk-dts-additions-v1-3-5879275db36f@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_135917_855183_4AD1E731 
X-CRM114-Status: GOOD (  14.69  )
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

T24gMjQvMDEvMjAyNCAyMTozMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gVGhpcyBlbmFibGVz
IHRoZXJtYWwgbW9uaXRvcmluZyBvbiBSYWR4YSBSb2NrIDVCIGFuZCBsaW5rcyB0aGUgUFdNCj4g
ZmFuIGFzIGFuIGFjdGl2ZSBjb29saW5nIGRldmljZSBtYW5hZ2VkIGF1dG9tYXRpY2FsbHkgYnkg
dGhlIHRoZXJtYWwKPiBzdWJzeXN0ZW0sIHdpdGggYSB0YXJnZXQgU29DIHRlbXBlcmF0dXJlIG9m
IDU1Qwo+IAo+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNv
bT4KCkFja2VkLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4K
Cj4gLS0tCj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0
cyB8IDI1ICsrKysrKysrKysrKysrKysrKysrKysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyNCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiBpbmRleCA5YjdiZjZjZWM4YmQuLmM0Yzk0
ZTBiNjE2MyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OC1yb2NrLTViLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LXJvY2stNWIuZHRzCj4gQEAgLTUyLDcgKzUyLDcgQEAgbGVkX3JnYl9iIHsKPiAgIAo+ICAgCWZh
bjogcHdtLWZhbiB7Cj4gICAJCWNvbXBhdGlibGUgPSAicHdtLWZhbiI7Cj4gLQkJY29vbGluZy1s
ZXZlbHMgPSA8MCA5NSAxNDUgMTk1IDI1NT47Cj4gKwkJY29vbGluZy1sZXZlbHMgPSA8MCAxMjAg
MTUwIDE4MCAyMTAgMjQwIDI1NT47Cj4gICAJCWZhbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+
ICAgCQlwd21zID0gPCZwd20xIDAgNTAwMDAgMD47Cj4gICAJCSNjb29saW5nLWNlbGxzID0gPDI+
Owo+IEBAIC0xODAsNiArMTgwLDI1IEBAICZjcHVfbDMgewo+ICAgCWNwdS1zdXBwbHkgPSA8JnZk
ZF9jcHVfbGl0X3MwPjsKPiAgIH07Cj4gICAKPiArJnBhY2thZ2VfdGhlcm1hbCB7Cj4gKwlwb2xs
aW5nLWRlbGF5ID0gPDEwMDA+Owo+ICsKPiArCXRyaXBzIHsKPiArCQlwYWNrYWdlX2ZhbjogcGFj
a2FnZS1mYW4gewo+ICsJCQl0ZW1wZXJhdHVyZSA9IDw1NTAwMD47Cj4gKwkJCWh5c3RlcmVzaXMg
PSA8MjAwMD47Cj4gKwkJCXR5cGUgPSAiYWN0aXZlIjsKPiArCQl9Owo+ICsJfTsKPiArCj4gKwlj
b29saW5nLW1hcHMgewo+ICsJCW1hcC1mYW4gewo+ICsJCQl0cmlwID0gPCZwYWNrYWdlX2Zhbj47
Cj4gKwkJCWNvb2xpbmctZGV2aWNlID0gPCZmYW4gVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05P
X0xJTUlUPjsKPiArCQl9Owo+ICsJfTsKPiArfTsKPiArCj4gICAmaTJjMCB7Cj4gICAJcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgIAlwaW5jdHJsLTAgPSA8JmkyYzBtMl94ZmVyPjsKPiBA
QCAtNzM4LDYgKzc1NywxMCBAQCByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiAgIAl9Owo+ICAgfTsK
PiAgIAo+ICsmdHNhZGMgewo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiAgICZ1YXJ0
MiB7Cj4gICAJcGluY3RybC0wID0gPCZ1YXJ0Mm0wX3hmZXI+Owo+ICAgCXN0YXR1cyA9ICJva2F5
IjsKPiAKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cu
ZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29t
LyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJs
b2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
