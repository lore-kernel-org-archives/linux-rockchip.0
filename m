Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EC90CD1284
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 06:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6rQHj2Pn9sAdjdsvCOwRizYugY5CgH3eQ1+xDkcH6E=; b=LIwhlpfb3bIc9P
	sA/eD3qxiuUTLl8nGdZMmu5MkGzjMsMTSjLrDAiQ8cWGOn1j9xLgDml/kD+DCdOgbIlGxooZoQfyz
	Fu81fvvt5wVGWrg7L9LiNo+A7A68sR4wpQIGUH8asA35I0nkcb+3fSlRqFzyFRHscu4EcGG52YrVU
	xyd8yDcIYVJ185r4ff//BrhcDRLHCB46wfSrt+jBfX6MnFrHV8sRkpaYeitdKyc8pSk0NQlEDj/+T
	TCAbVdOZdYHQRREJ5JNzHjKk0Mf60BQrF+1W+ZBCKb1jEXqE4HAP+yYofy7Vf5wjKN30qYdF8eTRV
	W+eHe+mVDuTJpfauY7Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsGOF-00000001Pwk-3tsP;
	Thu, 04 Apr 2024 06:15:59 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsGOA-00000001Pv1-3FTz
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 06:15:57 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-56c5d05128dso629378a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Apr 2024 23:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712211353; x=1712816153; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bkkryztGvxqua4G6Yd1fhJtXsUUxe+HUuwQ8GN8ouqc=;
        b=Y9SVULR3pGM1775/0qC2NbJ7GeOuSTjf0+rcJr67y/FdXcIiAYwMb8XYyiu7q7wTrw
         YuyilZj5jVOYykKc1vmsgkdq2nQDtbuWIBhtBZYejtKk0FhF2KtbiEEtHXTsG22tPSbN
         lWCtU+VLcvrIQ2rj1SVHTngFn70xmCpWfwj7Rgq1I8U76ca0nwLJKQgUk2ZYIPzNvnwx
         6ovuehhBo88Txg+OFDuD4HGjvGAXFzSGqeqd4Mwi53glJEbuH9aO/g4mlPRtfBUpEaBH
         Hg3tmonPcpLONI56Q+oUvXSc+aM+Yvp7wYVrHUK9Bjng5goO9nS9CM+nfAAHH19pMy2W
         zEhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712211353; x=1712816153;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bkkryztGvxqua4G6Yd1fhJtXsUUxe+HUuwQ8GN8ouqc=;
        b=W+AHY1NUxOrXWTDWx20jta6AqAANVb9CPHJrW7fEn14dVDVy1K0r2zjSK9Q6uL0TWN
         WaYstaREng3utLHsv30mSYdPyJ6e+gfVbfexUEWYAvCPv7PCdNLpK0nDZjBVv77LkOmT
         HrSSpVDxHdGzvmJ+d2z2FR+b7gJn8zsje7uiBFG7ASVm7jrhdhbNDS0c9k+pHFJcWavp
         G2nTU+s9+7W6GnzbVdjwjZ7RgqSN6+qy4RgPdHxfveAnHgpydQmt/iO0FsyG/Gkl+Sv6
         3W/MFgdMznm5KN+OMdjrTYCjdcY7xLBiIpbpdYfDIGqawdI9IG+rtSwDUPcp5dSWjuGG
         qdWw==
X-Forwarded-Encrypted: i=1; AJvYcCUxiRQy747o/qX+yHRyjUB6l+W2or79Semgn8hI+pt4LC9OLGDwc7NCTAkL8ukbCr+gE+uUKXFA6dyBXXfLuOvfEvuI4xNqvNxMNLAJCHxdAPTf
X-Gm-Message-State: AOJu0YyppZ+5iKPnq/Z1qvgE8O86q0zZ9L4JXfRwyQ+7hQDH39b9M35M
	x6PF8b/Spf6e1uGwlQFJg2zgorBqbzt5j2XP5Wh3YaVNI41mVxzRhbGx0v5vSw4=
X-Google-Smtp-Source: AGHT+IECxEGe1zWvmCgAOpHAIAYRCeDTejPuXOKuqZUxaRFgNCPybdhXgvVdvf3cPcwAdtHZQFMMaA==
X-Received: by 2002:a50:cd4e:0:b0:56d:f637:451c with SMTP id d14-20020a50cd4e000000b0056df637451cmr805971edj.32.1712211352779;
        Wed, 03 Apr 2024 23:15:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id m7-20020aa7c487000000b0056bf2e2c898sm8832781edq.1.2024.04.03.23.15.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Apr 2024 23:15:52 -0700 (PDT)
Message-ID: <c790c8ba-a9bd-4820-8084-1294e5e523d9@linaro.org>
Date: Thu, 4 Apr 2024 08:15:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] Add Synopsys DesignWare HDMI RX Controller
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Shreeya Patel <shreeya.patel@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl,
 robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 shawn.wen@rock-chips.com, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm@lists.infradead.org
References: <20240327225057.672304-1-shreeya.patel@collabora.com>
 <35f774-660d3b80-3-513fcf80@97941910>
 <86150c89-11d5-4d52-987e-974b1a03018f@linaro.org> <3049149.687JKscXgg@diego>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <3049149.687JKscXgg@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_231554_985864_E6D58335 
X-CRM114-Status: GOOD (  25.09  )
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

T24gMDQvMDQvMjAyNCAwMDo0OCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTWl0dHdvY2gs
IDMuIEFwcmlsIDIwMjQsIDEzOjI0OjA1IENFU1Qgc2NocmllYiBLcnp5c3p0b2YgS296bG93c2tp
Ogo+PiBPbiAwMy8wNC8yMDI0IDEzOjIwLCBTaHJlZXlhIFBhdGVsIHdyb3RlOgo+Pj4gT24gV2Vk
bmVzZGF5LCBBcHJpbCAwMywgMjAyNCAxNTo1MSBJU1QsIEtyenlzenRvZiBLb3psb3dza2kgPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4+Pgo+Pj4+IE9uIDAzLzA0LzIw
MjQgMTE6MjQsIFNocmVleWEgUGF0ZWwgd3JvdGU6Cj4+Pj4+IE9uIFRodXJzZGF5LCBNYXJjaCAy
OCwgMjAyNCAwNDoyMCBJU1QsIFNocmVleWEgUGF0ZWwgPHNocmVleWEucGF0ZWxAY29sbGFib3Jh
LmNvbT4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+PiBUaGlzIHNlcmllcyBpbXBsZW1lbnRzIHN1cHBvcnQg
Zm9yIHRoZSBTeW5vcHN5cyBEZXNpZ25XYXJlCj4+Pj4+PiBIRE1JIFJYIENvbnRyb2xsZXIsIGJl
aW5nIGNvbXBsaWFudCB3aXRoIHN0YW5kYXJkIEhETUkgMS40Ygo+Pj4+Pj4gYW5kIEhETUkgMi4w
Lgo+Pj4+Pj4KPj4+Pj4KPj4+Pj4gSGkgTWF1cm8gYW5kIEhhbnMsCj4+Pj4+Cj4+Pj4+IEkgaGF2
ZW4ndCByZWNlaXZlZCBhbnkgcmV2aWV3cyBzbyBmYXIuIEhlbmNlLCB0aGlzIGlzIGp1c3QgYSBn
ZW50bGUgcmVtaW5kZXIgdG8gcmV2aWV3IHRoaXMgcGF0Y2ggc2VyaWVzLgo+Pj4+Cj4+Pj4gV2h5
IGRpZCB5b3UgcHV0IGNsayBjaGFuZ2VzIGhlcmU/IFRoZXNlIGdvIHZpYSBkaWZmZXJlbnQgc3Vi
c3lzdGVtLiBUaGF0Cj4+Pj4gbWlnaHQgYmUgb25lIG9mIG9ic3RhY2xlcyBmb3IgeW91ciBwYXRj
aHNldC4KPj4+Pgo+Pj4KPj4+IEkgYWRkZWQgY2xvY2sgY2hhbmdlcyBpbiB0aGlzIHBhdGNoIHNl
cmllcyBiZWNhdXNlIEhETUlSWCBkcml2ZXIgZGVwZW5kcyBvbiBpdC4KPj4+IEkgdGhvdWdodCBp
dCBpcyB3cm9uZyB0byBzZW5kIHRoZSBkcml2ZXIgcGF0Y2hlcyB3aGljaCBkb24ndCBldmVuIGNv
bXBpbGU/Cj4+Cj4+IEhtLCB3aHkgSERNSVJYIGRyaXZlciBkZXBlbmRzIG9uIGNsb2NrPyBIb3c/
IFRoaXMgc291bmRzIHJlYWxseSB3cm9uZy4KPj4gUGxlYXNlIGdldCBpdCByZXZpZXdlZCBpbnRl
cm5hbGx5IGZpcnN0Lgo+IAo+IEZvciB0aGUgY2hhbmdlIGluIHF1ZXN0aW9uLCB0aGUgY2xvY2sg
Y29udHJvbGxlciBvbiB0aGUgc29jIGFsc28gaGFuZGxlcwo+IHRoZSByZXNldCBjb250cm9scyAo
aGVuY2UgaXRzIG5hbWUgQ1JVLCBjbG9jay1hbmQtcmVzZXQtdW5pdCkgLgo+IAo+IFRoZXJlIGFy
ZSBhdCBsZWFzdCA2NjAgcmVzZXQgbGluZXMgaW4gdGhlIHVuaXQgYW5kIGl0IHNlZW1zIHRoZSBo
ZG1pLXJ4IG9uZQo+IHdhcyBvdmVybG9va2VkIG9uIHRoZSBpbml0aWFsIHN1Ym1pc3Npb24sIGhl
bmNlIHBhdGNoZXMgMSsyIGFkZCB0aGUKPiByZXNldC1saW5lLgo+IAo+IE9mIGNvdXJzZSwgaGVy
ZSBvbmx5IHRoZSAiYXJtNjQ6IGR0czoiIHBhdGNoIGRlcGVuZHMgb24gdGhlIGNsb2NrCj4gY2hh
bmdlLCBpcyBpdCByZWZlcmVuY2VzIHRoZSBuZXcgcmVzZXQtaWQuCgpXYWl0LCB0aGF0J3MgZXhw
ZWN0ZWQsIGJ1dCBpdCBpcyBub3Qgd2hhdCB3YXMgd3JpdHRlbi4gQ2xhaW0gd2FzIEhETUlSWApk
cml2ZXIgZGVwZW5kcyAqYnVpbGQgdGltZSogKCJkb24ndCBldmVuIGNvbXBpbGUiKS4KCj4gCj4g
Cj4gQW0gTWl0dHdvY2gsIDMuIEFwcmlsIDIwMjQsIDEyOjIyOjU3IENFU1Qgc2NocmllYiBLcnp5
c3p0b2YgS296bG93c2tpOgo+PiBQbGVhc2UgZG8gbm90IGVuZ2FnZSBtdWx0aXBsZSBzdWJzeXN0
ZW1zIGluIG9uZSBwYXRjaHNldCwgaWYgbm90Cj4+IG5lY2Vzc2FyeS4gRXNwZWNpYWxseSBkbyBu
b3QgbWl4IERUUyBpbnRvIG1lZGlhIG9yIFVTQiBzdWJzeXN0ZW1zLiBBbmQKPj4gZG8gbm90IHB1
dCBEVFMgaW4gdGhlIG1pZGRsZSEKPiAKPiBwaWNraW5nIHVwIHlvdXIgcmVwbHkgZnJvbSBwYXRj
aCA0LzYsIHRoZXJlIHNlZW0gdG8gYmUgZGlmZmVyZW50ICJzY2hvb2xzCj4gb2YgdGhvdWdodCIg
Zm9yIHRoaXMuIFNvbWUgbWFpbnRhaW5lcnMgbWlnaHQgd2FudCB0byByZWFsbHkgb25seSBzZWUK
PiBwYXRjaGVzIHRoYXQgYXJlIGV4cGxpY2l0bHkgZm9yIHRoZWlyIHN1YnN5c3RlbSAtIEkgZ3Vl
c3MgbmV0d29ya2luZwo+IG1pZ2h0IGJlIGEgcHJpbWUgZXhhbXBsZSBmb3IgdGhhdCwgd2hvIHdp
bGwgZXNzZW50aWFsbHkgYXBwbHkgd2hvbGUgc2VyaWVzJwo+IGlmIG5vYm9keSBwcm90ZXN0cyBp
biB0aW1lIChpbmNsdWRpbmcgZHRzIHBhdGNoZXMpCgpUaGVyZSBpcyBubyBzY2hvb2wgc2F5aW5n
IERUUyBpcyBhbGxvd2VkIHRvIGJlIGluIHRoZSBtaWRkbGUuCgpPdGhlciBzY2hvb2xzIGFyZSBp
bmRlZWQgc2F5aW5nIHRoYXQgc2VlaW5nIERUUyBpcyBnb29kIGFuZApyZWNvbW1lbmRhdGlvbiBp
cyB0byBwb3N0IGl0IHNlcGFyYXRlIGFuZCBwcm92aWRlIGEgbGluay4gVGhhdCdzIHdheSB5b3UK
YXZvaWQgRFRTIGJlaW5nIHB1bGxlZCBieSBHcmVnLCBtZWRpYSBvciBuZXR3b3JraW5nLgoKPiAK
PiBPbiB0aGUgb3RoZXIgaGFuZCBJIGFsc28gcmVtZW1iZXIgc2VlaW5nIHJlcXVlc3RzIGZvciAi
dGhlIGZ1bGwgcGljdHVyZSIKPiBhbmQgaW5kaXZpZHVhbCBtYWludGFpbmVycyB0aGVuIGp1c3Qg
cGlja2luZyBhbmQgYXBwbHlpbmcgdGhlIHBhdGNoZXMKPiBtZWFudCBmb3IgdGhlaXIgc3Vic3lz
dGVtLgo+IAo+IFRoZSBzZXJpZXMgYXMgaXQgc3RhbmRzIHJpZ2h0IG5vdyBpcyBuaWNlIGluIHRo
YXQgaXQgYWxsb3dzIChyYW5kb20pCj4gZGV2ZWxvcGVycyB0byBqdXN0IHBpY2sgaXQgdXAsIGFw
cGx5IGl0IHRvIGEgdHJlZSBhbmQgdGVzdCB0aGUgYWN0dWFsIGRyaXZlcgo+IHdpdGhvdXQgbmVl
ZGluZyB0byBodW50IGZvciBtdWx0aXBsZSBkZXBlbmRhbnQgc2VyaWVzLgo+IAo+IAo+IE9mIGNv
dXJzZSB5b3UncmUgcmlnaHQsIHRoZSAiYXJtNjQ6IGR0czoiIHBhdGNoIHNob3VsZCBiZSB0aGUg
bGFzdCBpbiB0aGUKPiBzZXJpZXMgYW5kIG5vdCBiZSBpbiB0aGUgbWlkZGxlIG9mIGl0LgoKCkJl
c3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
