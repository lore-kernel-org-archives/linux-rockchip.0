Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B873CF6493
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Sep 2024 17:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJduLve3AvQ3nm4ufepK1RPkc22+Ld6b4QUmSKzPFjE=; b=PjYGUyTrdzq50B
	Zhcktli7+JgHmf9dtwSY/4YJkB+uK0OFkuORUEVJIX9aU0Cfma8CmgCIlrtQQMdA9OyNemcl/nH+L
	h0irOwVjvwdODvTWpx8fi9FNNgMdQWemqT0TS0yIZ3pJjgV/0eXDx8pkuGjroHrxqVjCUlfQ6ZQZx
	1AWvB4lPVknEvDu1gB5BCVrPDUkYF3lAumYHa+TCSiAyOL6QLiE02sR+OrOjWEgGQF90KKW9DzYCj
	TAnTNdt13CqZi7Dj4Vdap9E451gHXrq+CJf/5lCrrfpcaCEVdY0MuL4Mf8SvO21Ze9u/MxHSPO4LC
	CI0G1YyIC/fba4rg5biw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suaox-0000000DNo8-2Rz6;
	Sat, 28 Sep 2024 17:01:27 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suanl-0000000DNRb-19RR;
	Sat, 28 Sep 2024 17:00:14 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-20551eeba95so30739655ad.2;
        Sat, 28 Sep 2024 10:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727542812; x=1728147612; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=UTOKjeDI40y0Ue6OUMIPn81yhQAL6Fqgto1k93gouzE=;
        b=ZMPbJt0Odko1WUQKjadUFuz7fYg2228O0h4mv4/0KGF/+NyoRUhiEFyQpc0abQzgbf
         y/6dCeMGXY0p80immrKTkjQ8pHfsl70jQHdI5CmBa7fSWMbVN5QA7ky919IpOgp9c2eo
         PJq+RTHXxMl5t7h7TCwSZ5yEd4QOc20+LhTXWZlpPC1RT6cPcv/kRN9hLmWbEyXNzxPp
         u9Br5rBMRjXhRRCBpdW3vKY0jlZjT2ydZ0mPIHPRwWR5OFOdBrkQzSdNJwLmnqfyeT7W
         Y4sueNolQvElAzgW5UuLT+r/ENa2PzOpoDSbwAuPGt/AWI4Gn72JG6ZdCebIOOTW7f5L
         fcdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727542812; x=1728147612;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTOKjeDI40y0Ue6OUMIPn81yhQAL6Fqgto1k93gouzE=;
        b=TBKgJO1slalZANQBhlLR93QdkFQe5jor3aRtXcn7aWMmvn5JYDRI9duPFsgwZOT45h
         6JGpAYsrOMSDbV0f+PLxqa/ZL62teG7KnlgqD63Lq8CQwHGFdg6O6KOmSJLeXEaoO0Tj
         hq1jn79phE0iwI89d5Vubjxh1wr+nIJbNjQ/dMmHwS3ZWZdSpdlSXtBQvKXzGu4ByR23
         3kmxVgZFT+L0ZI+phqDSpagPHaKIsi/xeJ9LaOO/j6dTV1hvmCTSJUrqGR55ctmjcFiL
         ucPG1AkyI6TCdOsxaOAtKzqKqAPDk9KNd3R8S2LkNYiuC/F1qbYOnm6+T5c0p9tumBuE
         I5Hw==
X-Forwarded-Encrypted: i=1; AJvYcCWAqz2I8+Ya7DaEZQMpFvIFGAI4fRIPiGCVgKuUjseaJJvEWLnZBDGrM3AB06MMEhZnD7fFV3kxXW/kAPOA0siO@lists.infradead.org, AJvYcCWJYvKcNT34Q76RcF5TsnXmU2SMcyh8W5e/ZtSpJVL86oImP7YHlC59Cy1EjHyoxTIhHWA76n33qUO5pShqD8s=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw71tppRW1SU4FJOa7Czu4qMcfouXzruBwWy5fUoYDo7kR5S6Tm
	xqi74Pa5FDY1fY6wLh3+gkEfEtSD7lRcSnRbMyJ+bUnIRtiFFVTC
X-Google-Smtp-Source: AGHT+IGueXaitWcvjKpZsS0r/x3tQpaPFWvWmOn4bj9GKrYjJmoVKflnEyoZOOCYNMiX2BUeoiDe5w==
X-Received: by 2002:a17:90b:19c9:b0:2d8:79bf:3873 with SMTP id 98e67ed59e1d1-2e0b8e8b862mr7774734a91.29.1727542812013;
        Sat, 28 Sep 2024 10:00:12 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e0b6c9fa91sm4306251a91.29.2024.09.28.10.00.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Sep 2024 10:00:10 -0700 (PDT)
Message-ID: <0c1b6351-697a-4265-8ae6-f9ab1ee567cc@roeck-us.net>
Date: Sat, 28 Sep 2024 10:00:09 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/8] i2c: muxes: add support for tsd,mule-i2c
 multiplexer
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Farouk Bouabid <farouk.bouabid@cherry.de>, Andi Shyti
 <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Quentin Schulz <quentin.schulz@cherry.de>,
 Peter Rosin <peda@axentia.se>, Jean Delvare <jdelvare@suse.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20240906-dev-mule-i2c-mux-v8-0-dbd28a150e41@cherry.de>
 <20240906-dev-mule-i2c-mux-v8-2-dbd28a150e41@cherry.de>
 <316e200d-74b6-4d03-952e-e8612276f0e8@wanadoo.fr>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <316e200d-74b6-4d03-952e-e8612276f0e8@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240928_100013_439706_CAB647E9 
X-CRM114-Status: GOOD (  14.28  )
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

T24gOS8yOC8yNCAwOTo1NiwgQ2hyaXN0b3BoZSBKQUlMTEVUIHdyb3RlOgo+IExlIDA2LzA5LzIw
MjQgw6AgMTc6NTQsIEZhcm91ayBCb3VhYmlkIGEgw6ljcml0wqA6Cj4+IFRoZW9icm9tYSBTeXN0
ZW1zIE11bGUgaXMgYW4gTUNVIHRoYXQgZW11bGF0ZXMgYSBzZXQgb2YgSTJDIGRldmljZXMsCj4+
IGFtb25nIHdoaWNoIGFuIGFtYzY4MjEgYW5kIGRldmljZXMgdGhhdCBhcmUgcmVhY2hhYmxlIHRo
cm91Z2ggYW4gSTJDLW11eC4KPj4gVGhlIGRldmljZXMgb24gdGhlIG11eCBjYW4gYmUgc2VsZWN0
ZWQgYnkgd3JpdGluZyB0aGUgYXBwcm9wcmlhdGUgZGV2aWNlCj4+IG51bWJlciB0byBhbiBJMkMg
Y29uZmlnIHJlZ2lzdGVyIChhbWM2ODIxIHJlZyAweGZmKS4KPj4KPj4gVGhpcyBkcml2ZXIgaXMg
ZXhwZWN0ZWQgdG8gYmUgcHJvYmVkIGFzIGEgcGxhdGZvcm0gZGV2aWNlIHdpdGggYW1jNjgyMQo+
PiBhcyBpdHMgcGFyZW50IGkyYyBkZXZpY2UuCj4+Cj4+IEFkZCBzdXBwb3J0IGZvciB0aGUgbXVs
ZS1pMmMtbXV4IHBsYXRmb3JtIGRyaXZlci4gVGhlIGFtYzY4MjEgZHJpdmVyCj4+IHN1cHBvcnQg
Zm9yIHRoZSBtdXggd2lsbCBiZSBhZGRlZCBpbiBhIGxhdGVyIGNvbW1pdC4KPj4KPj4gUmV2aWV3
ZWQtYnk6IFdvbGZyYW0gU2FuZyA8d3NhK3JlbmVzYXNAc2FuZy1lbmdpbmVlcmluZy5jb20+Cj4+
IFNpZ25lZC1vZmYtYnk6IEZhcm91ayBCb3VhYmlkIDxmYXJvdWsuYm91YWJpZEBjaGVycnkuZGU+
Cj4+IC0tLQo+IAo+IEhpLAo+IAo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQg
bXVsZV9pMmNfbXV4X29mX21hdGNoW10gPSB7Cj4+ICvCoMKgwqAgeyAuY29tcGF0aWJsZSA9ICJ0
c2QsbXVsZS1pMmMtbXV4IiwgfSwKPj4gK8KgwqDCoCB7fSwKPiAKPiBOaXRwaWNrIChpbiBjYXNl
IG9mIHY5KTogdXN1YWxseSwgYSBjb21tYSBpcyBub3QgYWRkZWQgYWZ0ZXIgYSB0ZXJtaW5hdG9y
Lgo+IAoKVGhhdCBpcyBhIGJpdCBsYXRlLiBUaGUgcGF0Y2ggaXMgYWxyZWFkeSBpbiB0aGUgdXBz
dHJlYW0ga2VybmVsLgoKR3VlbnRlcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
