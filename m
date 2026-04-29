Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAAD2FF8864
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 04:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWikZmfeYmmfYJ0+Hp4pHAgDrS37KhmACbKGo10uO5M=; b=IVWBua/zGIP0os
	JEZYWQ6Jbwzn1bJNnu8B03xdr2maJ4svwfar11ybUgf0KV/uFul8zuq9gUNCVnl49GZYgDpINu0lA
	PFoIuRlwC2dONxULRBT/l0eFeyLujtH/Dm3Z11XDGnPfad211SQZlCWu/NVarM9CspYKMX703NRjP
	WwQw+RUggoAdWRqLVRcI3HLuXwAymjFUohDTlY7XQZcjhc/95oyETAZKv4/DqRDcuJ+CTnzMKk9F5
	hO4HgUw1Gm8ucH5iOt5ljwpQgmSarzI0QEbrgHAQBePX0UHSu/Mpaek2zxBI+QikegJA7m3TXecQc
	MxHzrvED3hh3hD+lop/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHwN4-00000002uqR-1hIb;
	Wed, 29 Apr 2026 04:17:58 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHwN2-00000002upJ-1HOf
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 04:17:57 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-59dcdf60427so11083073e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 21:17:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777436274; cv=none;
        d=google.com; s=arc-20240605;
        b=lQRuVpmQ80ppL5Jak2c6CI2hjQe9Q2he4oOrMmgz3vg0i9/d3d8uOw0JgQvzd3DEVC
         qRMjxfI7mAcdhAcdoGlJs7FuBnvgNfuMxT+9nNi0ZYsoZF5Y6fRxJsWS5efP1Cmtmjf9
         FJqUgBNbRzU7amrpezO2qytHY92f3q1UMdTTjTgN9rM9M6SkAYmiMoIdCeXSXiv98+A7
         I0aFAI8+8u2HpUHfYigqBvxQyrW7F6gqODS2xmh3qgRCd1KXmoaKJhrkw2kjw68iQSSt
         X9XBtXGDMINlmSRjIJ5dpGGnQbODiFgFQr9EKCWfuQckmDCOzex3sVCfNTzYJTRYskW4
         KWZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=OGT5/UW9QnYnxFplrWMvYfyGjM/y+JrwSoKrwJn5UdU=;
        fh=pvJAqL1+JSefpGtHQ/UXq0N/PbMbeA8nYYB4YXwMv3I=;
        b=jRGffsf3gt/PMD9Fn6oQAVL/ySgURA5cY68SQ9GTlvi0WSAa/NREvCd6CGpZrPo1w8
         WkQ54ykc2qduxYpIJ1reqKO34bbniP3CcPkKSJEIXF448KhpjrpGncm9OqwWE6B8w/GK
         VQF9tzxRePqK+Gk91xwFF/4ed4eTjoyH7OBf9hjtF44QqwvqvFp2g7nzo/xwqhAUeWQI
         jQOIQJaZJFgruTK4A0FJfvuxw0ZyqR7soSR+gjfmYIEsbSaFnum4zPAL81fz/t8Ka/WB
         d8wXkwysw+8JBz+9xsssz12vAsgQsIP6bR+1UZ1Hu9xM/7nvWd89+kqS/SF9VpcNYHCS
         nf1A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777436274; x=1778041074; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OGT5/UW9QnYnxFplrWMvYfyGjM/y+JrwSoKrwJn5UdU=;
        b=QXBgtZeppanZk8FGUN4wLqJ8E3U8s6E89VLTQdKRkcjDLIcpUfM1ms5qMkuGoPYqnO
         Ea0RU1iUEKiRe/7qX0wNRP65RQy5IafWnFr/JfGZE+BGuRiGgih2Z5EMCN2tGhvAytIE
         3TFRjko7mjyD2oFROAqDhUA6fsZZvPTZiXmZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777436274; x=1778041074;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OGT5/UW9QnYnxFplrWMvYfyGjM/y+JrwSoKrwJn5UdU=;
        b=W+/jE4xnMqc9JyqeVLJx7otAK6My9qNj2kGZFu8hN+PuNbQ+bGYJ9Ds/lYDPmDoUmg
         eRmiLe6xU1+o39BxOPYC3oJd5LufOND+6e3LyONMK3liPGpj1jDF0qHiV+78+qwvYQQc
         U4pBytwZVpuDVCVbrW005bZg3UA8nQ0e0NgEwyO9lvR83jr7mDCv8vEKoQvvXmzuyhSm
         ippQxVIZ5hzetZZjv4JADe1LgBEOeFZNbopSKCir4Q6b5IhSGeRY+7iKr2gDOUrstoqx
         /EIsrIeeQUweknhfHg7H5nTBtN1PvfRbHmc2jm37j7mI27PA8oO3htdzuD4gxAIjmaYl
         masg==
X-Forwarded-Encrypted: i=1; AFNElJ9iZQHqvhbKeXsnmqbSQZr6ISk8R8X6HMrK5ma2JqwooQz7GeZ7co7hICr2tFLY+3381z+3QDofn51j31izhw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwuKxs2/jMs39k3LAFmIH014tVkHkqnnZJk0AfWCYUYHzxBLG5y
	J8tSkhWIbvGHlnqu0WlgNdN+ZFCHSSpJmLrkcw+hohfLgliwSQNENyc2/U3E7nSoDHtByUUo+nq
	xQM+uswJEymSlkZqXCzbXKNTSbp9V3bqU1/99wXqU
X-Gm-Gg: AeBDieutsbUcyrV5TQ0EO3q71o+mRrbw1sWKkwjHQNj+5ZEyy3cgK4uqCbVo+XtVJZV
	LZuCzZn85xiwFfbvPTCrCAP3ELv07y+ijQKs4KfTxMaMQBEmUOse9pfLdNFV41/5iI2K+QEYaOV
	Ysh8GleAKZlxN4ky0WiaxmShS3mXt1JtTtAsF53AwZLli1s5G86l0VoMLlrgY61t2WKtdBt9yW3
	kq1vZZJAtO8O0O/mU7Y0WACP31iEdp+O4fDdJECO6SaPV26xvXN+f4gdNYwzi8pqnk7N2IKmoUE
	/+XtRadLW/p8FGWztA==
X-Received: by 2002:a05:6512:3b21:b0:5a7:46f1:d96a with SMTP id
 2adb3069b0e04-5a749cf6fd8mr890120e87.13.1777436274082; Tue, 28 Apr 2026
 21:17:54 -0700 (PDT)
MIME-Version: 1.0
References: <20260428200712.2660635-1-briannorris@chromium.org> <20260428200712.2660635-2-briannorris@chromium.org>
In-Reply-To: <20260428200712.2660635-2-briannorris@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 29 Apr 2026 13:17:42 +0900
X-Gm-Features: AVHnY4JKvPmufJ1LEj4mzB6PnqIoSu-1P7-pbmF9YGak1q31h2Rrygv9WVJBRdY
Message-ID: <CAGXv+5EPpB92d=ttP9ezOipL6=bC6WYpQakkd5L-weDjLpkrFA@mail.gmail.com>
Subject: Re: [PATCH 1/7] arm64: dts: rockchip: Add #{address,size}-cells to
 Chromium-based /firmware
To: Brian Norris <briannorris@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Heiko Stuebner <heiko@sntech.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	devicetree@vger.kernel.org, Doug Anderson <dianders@chromium.org>, 
	linux-arm-kernel@lists.infradead.org, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	Julius Werner <jwerner@chromium.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_211756_376486_F1789B2E 
X-CRM114-Status: GOOD (  16.83  )
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

T24gV2VkLCBBcHIgMjksIDIwMjYgYXQgMToxMuKAr1BNIEJyaWFuIE5vcnJpcyA8YnJpYW5ub3Jy
aXNAY2hyb21pdW0ub3JnPiB3cm90ZToKPgo+IENocm9taXVtL0RlcHRoY2hhcmdlIGJvb3Rsb2Fk
ZXJzIG1heSBkeW5hbWljYWxseSBhZGQgYSBmZXcgZGV2aWNlIG5vZGVzCj4gdG8gYSBzeXN0ZW0n
cyBEVEIgdW5kZXIgYSAvZmlybXdhcmUgbm9kZS4gQSB0eXBpY2FsIERUIGxvb2tzIHNvbWV0aGlu
Zwo+IGxpa2UgdGhlIGZvbGxvd2luZzoKPgo+ICAgIyMgRnJvbSBhIFJLMzM5OSBHcnUvS2V2aW4g
Q2hyb21lYm9vazoKPiAgICMgZmluZCAvc3lzL2Zpcm13YXJlL2RldmljZXRyZWUvYmFzZS9maXJt
d2FyZQo+ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2UvZmlybXdhcmUKPiAgIC9zeXMv
ZmlybXdhcmUvZGV2aWNldHJlZS9iYXNlL2Zpcm13YXJlL2NvcmVib290Cj4gICAvc3lzL2Zpcm13
YXJlL2RldmljZXRyZWUvYmFzZS9maXJtd2FyZS9jb3JlYm9vdC9yYW0tY29kZQo+ICAgL3N5cy9m
aXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2UvZmlybXdhcmUvY29yZWJvb3QvY29tcGF0aWJsZQo+ICAg
L3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2UvZmlybXdhcmUvY29yZWJvb3QvYm9hcmQtaWQK
PiAgIC9zeXMvZmlybXdhcmUvZGV2aWNldHJlZS9iYXNlL2Zpcm13YXJlL2NvcmVib290L3JlZwo+
ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2UvZmlybXdhcmUvY29yZWJvb3QvbmFtZQo+
ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2UvZmlybXdhcmUvY2hyb21lb3MKPiAgIC9z
eXMvZmlybXdhcmUvZGV2aWNldHJlZS9iYXNlL2Zpcm13YXJlL2Nocm9tZW9zL3JlYWRvbmx5LWZp
cm13YXJlLXZlcnNpb24KPiAgIC9zeXMvZmlybXdhcmUvZGV2aWNldHJlZS9iYXNlL2Zpcm13YXJl
L2Nocm9tZW9zL2FjdGl2ZS1lYy1maXJtd2FyZQo+ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0cmVl
L2Jhc2UvZmlybXdhcmUvY2hyb21lb3MvZmlybXdhcmUtdmVyc2lvbgo+ICAgL3N5cy9maXJtd2Fy
ZS9kZXZpY2V0cmVlL2Jhc2UvZmlybXdhcmUvY2hyb21lb3Mvbm9udm9sYXRpbGUtY29udGV4dC1z
dG9yYWdlCj4gICAvc3lzL2Zpcm13YXJlL2RldmljZXRyZWUvYmFzZS9maXJtd2FyZS9jaHJvbWVv
cy92Ym9vdC1zaGFyZWQtZGF0YQo+ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2UvZmly
bXdhcmUvY2hyb21lb3Mvbm9udm9sYXRpbGUtY29udGV4dC1zaXplCj4gICAvc3lzL2Zpcm13YXJl
L2RldmljZXRyZWUvYmFzZS9maXJtd2FyZS9jaHJvbWVvcy9ub252b2xhdGlsZS1jb250ZXh0LW9m
ZnNldAo+ICAgL3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlL2Jhc2UvZmlybXdhcmUvY2hyb21lb3Mv
aGFyZHdhcmUtaWQKPiAgIC9zeXMvZmlybXdhcmUvZGV2aWNldHJlZS9iYXNlL2Zpcm13YXJlL2No
cm9tZW9zL2NvbXBhdGlibGUKPiAgIC9zeXMvZmlybXdhcmUvZGV2aWNldHJlZS9iYXNlL2Zpcm13
YXJlL2Nocm9tZW9zL2Zpcm13YXJlLXR5cGUKPiAgIC9zeXMvZmlybXdhcmUvZGV2aWNldHJlZS9i
YXNlL2Zpcm13YXJlL2Nocm9tZW9zL2ZtYXAtb2Zmc2V0Cj4gICAvc3lzL2Zpcm13YXJlL2Rldmlj
ZXRyZWUvYmFzZS9maXJtd2FyZS9jaHJvbWVvcy9uYW1lCj4gICAvc3lzL2Zpcm13YXJlL2Rldmlj
ZXRyZWUvYmFzZS9maXJtd2FyZS9yYW5nZXMKPiAgIC9zeXMvZmlybXdhcmUvZGV2aWNldHJlZS9i
YXNlL2Zpcm13YXJlL25hbWUKPgo+IFRoZSAvZmlybXdhcmUgbm9kZSBoYXMgYW4gZW1wdHkgJ3Jh
bmdlcycsIGJ1dCBkb2VzIG5vdCBoYXZlCj4gYWRkcmVzcy9zaXplLWNlbGxzLgo+Cj4gQ29tbWl0
IDZlNTc3M2Q1MmY0YSAoIm9mL2FkZHJlc3M6IEZpeCBXQVJOIHdoZW4gYXR0ZW1wdGluZyB0cmFu
c2xhdGluZwo+IG5vbi10cmFuc2xhdGFibGUgYWRkcmVzc2VzIikgc3RhcnRlZCByZXF1aXJpbmcg
I2FkZHJlc3MtY2VsbHMgZm9yIGEKPiBkZXZpY2UncyBwYXJlbnQgaWYgd2Ugd2FudCB0byB1c2Ug
dGhlIHJlZyByZXNvdXJjZSBpbiBhIGRldmljZSBub2RlLgo+IFRoaXMgbGVhZHMgdG8gZXJyb3Jz
IGxpa2UgdGhlIGZvbGxvd2luZzoKPgo+IFsgICAgNy43NjM4NzBdIGNvcmVib290X3RhYmxlIGZp
cm13YXJlOmNvcmVib290OiBwcm9iZSB3aXRoIGRyaXZlciBjb3JlYm9vdF90YWJsZSBmYWlsZWQg
d2l0aCBlcnJvciAtMjIKPgo+IEFkZCBhcHByb3ByaWF0ZSAje2FkZHJlc3Msc2l6ZX0tY2VsbHMg
dG8gd29yayBhcm91bmQgdGhlIHByb2JsZW0uCj4KPiBOb3RlIHRoYXQgR29vZ2xlIGhhcyBhbHNv
IHBhdGNoZWQgdGhlIERlcHRoY2hhcmdlIGJvb3Rsb2FkZXIgc291cmNlIHRvCj4gYWRkIHthZGRy
ZXNzLHNpemV9LWNlbGxzIFsxXSwgYnV0IGJvb3Rsb2FkZXIgdXBkYXRlcyBhcmUgdHlwaWNhbGx5
Cj4gZGVsaXZlcmVkIG9ubHkgdmlhIEdvb2dsZSBPUyB1cGRhdGVzLiBOb3QgYWxsIHVzZXJzIGlu
c3RhbGwgR29vZ2xlCj4gc29mdHdhcmUgdXBkYXRlcywgYW5kIGV2ZW4gaWYgdGhleSBkbywgR29v
Z2xlIG1heSBub3QgcHJvZHVjZSB1cGRhdGVkCj4gYmluYXJpZXMgZm9yIGFsbC9vbGRlciBkZXZp
Y2VzLgo+Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MTIwOTA5MjgwOS5H
QTMyNDY0MjRAZ29vZ2xlLmNvbS8KPiAgICAgaHR0cHM6Ly9jcnJldi5jb20vYy82MDUxNTgwICgi
Y29yZWJvb3Q6IEluc2VydCAjYWRkcmVzcy1jZWxscyBhbmQKPiAgICAgI3NpemUtY2VsbHMgZm9y
IGZpcm13YXJlIG5vZGUiKQo+Cj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
YWVLbFl6VGlMME9CMXkzZ0Bnb29nbGUuY29tLwo+IEZpeGVzOiA2ZTU3NzNkNTJmNGEgKCJvZi9h
ZGRyZXNzOiBGaXggV0FSTiB3aGVuIGF0dGVtcHRpbmcgdHJhbnNsYXRpbmcgbm9uLXRyYW5zbGF0
YWJsZSBhZGRyZXNzZXMiKQo+IFNpZ25lZC1vZmYtYnk6IEJyaWFuIE5vcnJpcyA8YnJpYW5ub3Jy
aXNAY2hyb21pdW0ub3JnPgoKUmV2aWV3ZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc3RAY2hyb21p
dW0ub3JnPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
