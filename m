Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F271CF9C71
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Sep 2024 02:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQw4zH82AKcix0R1SLRVwrLVUCa9GdUcJ1ND25QFvb4=; b=gCpO41fAmeoP+x
	xcHkPm2QNtnBk01+u13m42eFs8AMF1eukP88aoUrvs+Eog2omGmSxz2FhunBb/rZIDsM1oMyaMaU4
	AVAtKFiwVosPUmSIjTFFXlzpwu7DoUnkGEaMtZNBneY5qmd+El2LWZLKJDxpCXaMiIwUQewyOHaam
	8S5GqzOGk0QFCQDjE5B5OVWsBzRuhCtwps75uTwExFs0nfgEwQqdNqWguMhZwzl27CMElC1qeRnIJ
	8FesE3lfMcqPL+sfIZGcQCePapFoQ3RfG/cosR4MbxxFuCfhtrr4slHebMCJjahORsqTLmFg9v6FP
	YXUJ8mPOy2Kmz2cCb+Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stHUH-00000003nli-110C;
	Wed, 25 Sep 2024 02:10:41 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stHT6-00000003ncB-1O0L;
	Wed, 25 Sep 2024 02:09:29 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2deec99c780so622347a91.2;
        Tue, 24 Sep 2024 19:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727230167; x=1727834967; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lhT4emZQMu0iLsfja78mVDr5B3L8j965fQjbvHU4u9w=;
        b=Vr8D37iQFZF5Khp+GkB0TxW2byB7i7W3MPY9IqIGrUxtob5rREf9NIPKYwFnnBxYhp
         CbDKiSldl8PklwGTJjGR/8R57Ova7/D/8GYhwZJHuaVxMr4Uhi7XeYdtcek6B6X/HpfR
         AKXZ3vybjopo0fxy4lQixhZNYrlj+4UMqoGm9O8WfSS35hR1+iOr+La09ay7Cb4UVwn2
         o95xKhNKR8WtGwaISJ9nu9HUCBN9EGrWD6OTi5su1AVGu+ksiAB00/1W4H2tz8jVevpL
         TFY7tUr29+TfkopizJAvkRJ6Kb+zqQh5ijfiMMUXKE1WftNm81ZOi/vGgCceXMx3kHWv
         eY0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727230167; x=1727834967;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lhT4emZQMu0iLsfja78mVDr5B3L8j965fQjbvHU4u9w=;
        b=j9OnbqQzPrYKQq1oS8X04/NAWDJWJf6UKgfHzLBhu1cNQlNoghG1cTSN+Mr5jtHh3L
         LTJHx5jYIgbQ53vzlo63hpswJ8NY3RnG4gYsWrTxV3YUNmOFyvx1IrRya8iM8pW1UV16
         rETJfXwT/Qxt4GhdjIc1i6Phnkze8IXkIVQDN6AYY/mCC4aci+3s00qSvBSLWYiaeFU7
         rB74Brj9ZhORdA+JY4+MRvpIa8b2Y7zCHfPHZ06N+ixMGIWD2VmJ6dMbFE+P7VQjo0I3
         +ZuNbLERQWdKDVBKUaPxuzsgaI1xdHQhxVtpQ8Pp4DzfqPxZe93PP5lOyTPo7xDNW7VL
         cOCw==
X-Forwarded-Encrypted: i=1; AJvYcCUO/9VUCz97OElRt6RkTJmCKdp2iltyFLIqVIeVrrq3br7u1lJJxVbr8SpzYuAckLS+aSlpCaejy7bN@lists.infradead.org, AJvYcCWCID31Fq04TQ52hMutTtW+WQqi+3tK3UxQY2/uRLxMSMCAEIzscRrnrDv2hTgo7fbgLYHz/6k9zxW+F5JrdfU=@lists.infradead.org, AJvYcCXkaGSaB7+tZK7QsMj/N4obEQw48m9CcV8ubmoD7/At9VcmzvxuYoVgCcNYBfzTR3ZqJoBJkZdvTjhcq0GLbyG+@lists.infradead.org
X-Gm-Message-State: AOJu0Yx847InzSxQrHhGwXdboxNGtL0WtRYyTwVcdKutpDLdjr/qFVlH
	9+o4YAw+c+jQORw8W7oCIbX33oflUCxRwpQP3xVV/vxTKV7BTfumwFJAkh3D
X-Google-Smtp-Source: AGHT+IEgOjNFa2IPtnydRtu4ja6d33MWXnvg3q5KwwfLA4hgKFc9OYCnHhghim3qoE66AaUQyL+GJA==
X-Received: by 2002:a17:90b:3a86:b0:2db:60b:9be5 with SMTP id 98e67ed59e1d1-2e06affdd19mr597228a91.8.1727230167336;
        Tue, 24 Sep 2024 19:09:27 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e06e1e6660sm287402a91.24.2024.09.24.19.09.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2024 19:09:27 -0700 (PDT)
Message-ID: <87146372-6d05-4994-8f64-47f4cb07e2b4@gmail.com>
Date: Wed, 25 Sep 2024 10:09:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>, krzk@kernel.org
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com,
 Frank Wang <frank.wang@rock-chips.com>
References: <20240924085510.20863-1-frawang.cn@gmail.com>
 <20240924-overtly-curable-13df2e7fdc9b@spud>
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <20240924-overtly-curable-13df2e7fdc9b@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_190928_393574_E8D4D75C 
X-CRM114-Status: GOOD (  15.46  )
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

SGkgQ29ub3IsCgpPbiAyMDI0LzkvMjUgMDoxMSwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+IE9uIFR1
ZSwgU2VwIDI0LCAyMDI0IGF0IDA0OjU1OjA5UE0gKzA4MDAsIEZyYW5rIFdhbmcgd3JvdGU6Cj4+
IEZyb206IEZyYW5rIFdhbmcgPGZyYW5rLndhbmdAcm9jay1jaGlwcy5jb20+Cj4+Cj4+IEFkZCBj
b21wYXRpYmxlIGZvciB0aGUgVVNCMiBwaHkgaW4gdGhlIFJvY2tjaGlwIFJLMzU3NiBTb0MuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IEZyYW5rIFdhbmcgPGZyYW5rLndhbmdAcm9jay1jaGlwcy5jb20+
Cj4+IC0tLQo+PiBDaGFuZ2Vsb2c6Cj4+IHYyOgo+PiAgIC0gQ2F0ZWdvcml6ZSBjbG9jayBuYW1l
cyBieSBvbmVPZiBrZXl3b3JkLgo+Pgo+PiB2MToKPj4gICAtIGh0dHBzOi8vcGF0Y2h3b3JrLmtl
cm5lbC5vcmcvcHJvamVjdC9saW51eC1waHkvcGF0Y2gvMjAyNDA5MjMwMjUzMjYuMTA0NjctMS1m
cmFuay53YW5nQHJvY2stY2hpcHMuY29tLwo+Pgo+PiAgIC4uLi9iaW5kaW5ncy9waHkvcm9ja2No
aXAsaW5uby11c2IycGh5LnlhbWwgICAgICB8IDE2ICsrKysrKysrKysrKysrLS0KPj4gICAxIGZp
bGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAsaW5u
by11c2IycGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Jv
Y2tjaGlwLGlubm8tdXNiMnBoeS55YW1sCj4+IGluZGV4IDUyNTQ0MTMxMzdjNjQuLjhhZjRlMGY4
NjM3ZmMgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcm9ja2NoaXAsaW5uby11c2IycGh5LnlhbWwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxpbm5vLXVzYjJwaHkueWFtbAo+PiBAQCAtMjAs
NiArMjAsNyBAQCBwcm9wZXJ0aWVzOgo+PiAgICAgICAgIC0gcm9ja2NoaXAscmszMzY2LXVzYjJw
aHkKPj4gICAgICAgICAtIHJvY2tjaGlwLHJrMzM5OS11c2IycGh5Cj4+ICAgICAgICAgLSByb2Nr
Y2hpcCxyazM1NjgtdXNiMnBoeQo+PiArICAgICAgLSByb2NrY2hpcCxyazM1NzYtdXNiMnBoeQo+
PiAgICAgICAgIC0gcm9ja2NoaXAscmszNTg4LXVzYjJwaHkKPj4gICAgICAgICAtIHJvY2tjaGlw
LHJ2MTEwOC11c2IycGh5Cj4+ICAgCj4+IEBAIC0zNCwxMCArMzUsMjAgQEAgcHJvcGVydGllczoK
Pj4gICAgICAgY29uc3Q6IDAKPj4gICAKPj4gICAgIGNsb2NrczoKPj4gLSAgICBtYXhJdGVtczog
MQo+PiArICAgIG1pbkl0ZW1zOiAxCj4+ICsgICAgbWF4SXRlbXM6IDMKPj4gICAKPj4gICAgIGNs
b2NrLW5hbWVzOgo+PiAtICAgIGNvbnN0OiBwaHljbGsKPj4gKyAgICBtaW5JdGVtczogMQo+PiAr
ICAgIG1heEl0ZW1zOiAzCj4gY2xvY2stbmFtZXMgaXNuJ3QgYSByZXF1aXJlZCBwcm9wZXJ0eSwg
eW91IGNhbid0IGFsbG93IGp1bWJsaW5nIHRoZSBvcmRlcgo+IGxpa2UgdGhpcyBkb2VzIHdpdGhv
dXQgYnJlYWtpbmcgdGhlIEFCSS4gV2h5IGNhbid0IHRoZSBuZXcgZGV2aWNlIGhhdmUKPiBwaHlj
bGsgaW4gcG9zaXRpb24gMT8KCkkgc2VudCBhIGRyYWZ0IGNoYW5nZXMgaW4gcGF0Y2ggdjEgY29t
bWVudHMgd2hpY2ggcHV0IHRoZSAicGh5Y2xrIiBpbiAKcG9zaXRpb24gMSwgS3J6eXN6dG9mIHNh
aWQgSSBoYXZlIG1lc3NlZCB0aGUgb3JkZXIsIHNvIEkgcmVvcmRlciB0aGVtIGluIHYyLgpEaWQg
SSBtaXN1bmRlcnN0YW5kPyBhbnl3YXksIHNob3VsZCB0aGUgY2hhbmdlcyBsaWtlIHRoZSBiZWxv
dz8KCkBAIC0zNCwxMCArMzUsMjAgQEAgcHJvcGVydGllczoKIMKgwqDCoMKgwqAgY29uc3Q6IDAK
CiDCoMKgwqAgY2xvY2tzOgotwqDCoMKgIG1heEl0ZW1zOiAxCivCoMKgwqAgbWluSXRlbXM6IDEK
K8KgwqDCoCBtYXhJdGVtczogMwoKIMKgwqDCoCBjbG9jay1uYW1lczoKLcKgwqDCoCBjb25zdDog
cGh5Y2xrCivCoMKgwqAgbWluSXRlbXM6IDEKK8KgwqDCoCBtYXhJdGVtczogMworwqDCoMKgIGl0
ZW1zOgorwqDCoMKgwqDCoCBvbmVPZjoKK8KgwqDCoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IFBI
WSBpbnB1dCByZWZlcmVuY2UgY2xvY2tzLgorwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0OiBwaHlj
bGsKK8KgwqDCoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246IGFjbGsgZm9yIFVTQiBNTVUuCivCoMKg
wqDCoMKgwqDCoMKgwqAgY29uc3Q6IGFjbGsKK8KgwqDCoMKgwqDCoMKgIC0gZGVzY3JpcHRpb246
IGFjbGtfc2x2IGZvciBVU0IgTU1VLgorwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0OiBhY2xrX3Ns
dgoKCkJSLgpGcmFuawoKPj4gKyAgICBpdGVtczoKPj4gKyAgICAgIG9uZU9mOgo+PiArICAgICAg
ICAtIGRlc2NyaXB0aW9uOiBhY2xrIGZvciBVU0IgTU1VLgo+PiArICAgICAgICAgIGNvbnN0OiBh
Y2xrCj4+ICsgICAgICAgIC0gZGVzY3JpcHRpb246IGFjbGtfc2x2IGZvciBVU0IgTU1VLgo+PiAr
ICAgICAgICAgIGNvbnN0OiBhY2xrX3Nsdgo+PiArICAgICAgICAtIGRlc2NyaXB0aW9uOiBQSFkg
aW5wdXQgcmVmZXJlbmNlIGNsb2Nrcy4KPj4gKyAgICAgICAgICBjb25zdDogcGh5Y2xrCj4+ICAg
Cj4+ICAgICBhc3NpZ25lZC1jbG9ja3M6Cj4+ICAgICAgIGRlc2NyaXB0aW9uOgo+PiBAQCAtMTQz
LDYgKzE1NCw3IEBAIGFsbE9mOgo+PiAgICAgICAgICAgICBjb250YWluczoKPj4gICAgICAgICAg
ICAgICBlbnVtOgo+PiAgICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1NjgtdXNiMnBoeQo+
PiArICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU3Ni11c2IycGh5Cj4+ICAgICAgICAgICAg
ICAgICAtIHJvY2tjaGlwLHJrMzU4OC11c2IycGh5Cj4+ICAgCj4+ICAgICAgIHRoZW46Cj4+IC0t
IAo+PiAyLjQ1LjIKPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
