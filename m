Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76ACCCEBF7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 07:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixoXN9l0UUsLdq1zXifOGt3D+RICAKVGsbj8NlBWmAo=; b=k6U7BXI6EZE7O4
	qQ9+O3uQSfHgTU+VLB2AdpNHaDqZ27ivTBG+/wlZve1vId6UHCD5nb1MmgxiZ9wqroICnjtMziVED
	FiDBhaNmqM/KMLxoCjdsszApdfhPa/wpykF7FuIp55IC8+s6ZsQmtx+i4oy6P14UmPpTlbw5YWzVr
	0jNYxm/4+qZJbW620nB/Nss2qtN445avdqcxdHESumbvOOPzRjQzCJO64pd8rfjRd9Bv83QrfdZYH
	SopzsVVs7LBLVJnxuKCNBJ6FK0S+cBfNCFVJAYGodOFqyADIrwe4Qm3ghZ3w5HtQbqBGNmWhLkGkn
	YUwGz87eVmDoEhoNW00Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su57B-0000000AJ3K-36Qd;
	Fri, 27 Sep 2024 07:10:09 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su4yq-0000000AHYf-39Us;
	Fri, 27 Sep 2024 07:01:34 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-72703dd2b86so166146a12.1;
        Fri, 27 Sep 2024 00:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727420491; x=1728025291; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V+D9+o7G/ymDOGKu4SCSQIvGmuHtAwpUMqlXkM3YB6M=;
        b=DPTuLBbpvhsoPplLb3OCzKV1xnEyDZmh8l6gkfmwLU3hGoPRsJVFqsv2scoLkTuGBy
         A3ow08xt7Dots+T325iVpfe0DRw2iToQRcTNwKV6gn4li0E3sbwn8d8ZotutALlOUQUZ
         fw9CxkvYwdmtdJ2NGNVZyHMeKb5317pk5usNiCU7ZtBbe33yboXDO24Pi5toZiGFurTf
         O4E4U6RFdY/NLIy4EHT8tf4+StDoQHUZ9/Vga7eR4K25/lUoKV8dsO7BrhRL7Funekfd
         XQOMExJL781jQ3o9Mzj1SRUfji2EDQEFThxRR0ktDLU8BdbUI9/YjFbbQwKgX1FPCW1b
         0hgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727420491; x=1728025291;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V+D9+o7G/ymDOGKu4SCSQIvGmuHtAwpUMqlXkM3YB6M=;
        b=IPiEBZtAWrWdSGVe+GFXI0W6F1cJnWkeOKpfpfH3PiR18YqOFZNGyONkU4R4nlK2C/
         4vtDD7G5FhpHUGrRQKIN0zGv4EsAs8OfLXFwyFbnXUG2h44tGKlx8oyHSSaZ/T0g7n+6
         eOJWpTtg+eBseQ0DiQtt3n8jyOhGqlWCZ72sGNvJuwo/87f/coLoZ6pls9+etGwn94Jg
         4cvg6YfW1zAJH/CEJfl3CQNW4WoVfaOyzxxhs9wLCdYz8zD6M3X4+ruuLddNBZWNnZfE
         9Blmeg9ll3m3ZDc/Lt1ZmSk2q/vm5t/3rjDMoL1GK5t6PNdBlp+/egfLBJmaX1XNHpZE
         kkaw==
X-Forwarded-Encrypted: i=1; AJvYcCU0CX1YFFuoKWstJJM1o3GJrpbGNkwzJUa86U5JO6YnrrrqbU2wRVq/hnWN1UOUPMShoHK5trRJaXp2OqSD4TVl@lists.infradead.org, AJvYcCVPKrVZ4HkjsblXX4W+q8fM7FkWzsruAgRZ0VQkfrUJ3pfXmN+0y55K8l1Ov7IOzCDm+F8NnZ6StCIUpNXyfqI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxnL1v/RvlXCO56Wt61ouDtiUlBTbCOUVOanhbIEAxEHdooXHwA
	ZbHDcP3ah9Ju2EQF2iTTD/qc9tbR9QPw5wX1oUwv5mdgAG9mIbf1
X-Google-Smtp-Source: AGHT+IGkAxYW8GNPQCEuaiab18J3qC/gbPLDVKzyTDXDfndAX4vGC/veXCZ5MM/mKbk8GhIbnrPXGA==
X-Received: by 2002:a05:6a00:3d0d:b0:717:9406:c1be with SMTP id d2e1a72fcca58-71b25f0b1efmr1655641b3a.1.1727420491214;
        Fri, 27 Sep 2024 00:01:31 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b264b7decsm939078b3a.47.2024.09.27.00.01.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Sep 2024 00:01:30 -0700 (PDT)
Message-ID: <7944f4dd-96f0-40df-8c91-523409e3cb20@gmail.com>
Date: Fri, 27 Sep 2024 15:01:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
To: Krzysztof Kozlowski <krzk@kernel.org>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 heiko@sntech.de
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, frank.wang@rock-chips.com
References: <20240926103223.29538-1-frawang.cn@gmail.com>
 <ed829240-d4f7-471f-84f6-3509f87f11a1@kernel.org>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <ed829240-d4f7-471f-84f6-3509f87f11a1@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_000132_812330_8E6957A4 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
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

SGkgS3J6eXN6dG9mLAoKT24gMjAyNC85LzI2IDIyOjE5LCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IE9uIDI2LzA5LzIwMjQgMTI6MzIsIEZyYW5rIFdhbmcgd3JvdGU6Cj4+ICsgIC0gaWY6
Cj4+ICsgICAgICBwcm9wZXJ0aWVzOgo+PiArICAgICAgICBjb21wYXRpYmxlOgo+PiArICAgICAg
ICAgIGNvbnRhaW5zOgo+PiArICAgICAgICAgICAgZW51bToKPj4gKyAgICAgICAgICAgICAgLSBy
b2NrY2hpcCxyazM1NzYtdXNiMnBoeQo+PiArICAgIHRoZW46Cj4+ICsgICAgICBwcm9wZXJ0aWVz
Ogo+PiArICAgICAgICBjbG9ja3M6Cj4+ICsgICAgICAgICAgbWluSXRlbXM6IDMKPj4gKyAgICAg
ICAgICBtYXhJdGVtczogMwo+IFJlYWQgb25lIG1vcmUgdGltZSB0aGUgZXhhbXBsZSBJIGdhdmUg
eW91LiBUb3AtbGV2ZWwgY29uc3RyYWludHMgYXJlCj4gc2F5aW5nIG1heCBvbmUgY2xvY2suCj4K
PiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KClNvcnJ5IGZvciBvdmVybG9va2luZyB0aGlz
LCBJIHdpbGwgc2V0IGJvdGggImNsb2NrcyIgYW5kICJjbG9jay1uYW1lcyIgCnRvIHRydWUsIGFu
ZCBhZGQgdGhlIGVsc2UgY2FzZSBiZWxvdyB0aGUgYWJvdmUgY29kZXMgZm9yIHRoZSAib2xkIiBT
b0NzLgpKdXN0IGxpa2UgdGhlIGJlbG93LgoKLcKgIGNsb2NrczoKLcKgwqDCoCBtYXhJdGVtczog
MQorwqAgY2xvY2tzOiB0cnVlCgotwqAgY2xvY2stbmFtZXM6Ci3CoMKgwqAgY29uc3Q6IHBoeWNs
aworwqAgY2xvY2stbmFtZXM6IHRydWUKCiDCoMKgIGFzc2lnbmVkLWNsb2NrczoKIMKgwqDCoMKg
IGRlc2NyaXB0aW9uOgpAQCAtMTg5LDYgKzE4NywxMyBAQCBhbGxPZjoKIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAtIGNvbnN0OiBwaHljbGsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNv
bnN0OiBhY2xrCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogYWNsa19zbHYKK8Kg
wqDCoCBlbHNlOgorwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOgorwqDCoMKgwqDCoMKgwqAgY2xvY2tz
OgorwqDCoMKgwqDCoMKgwqDCoMKgIG1heEl0ZW1zOiAxCivCoMKgwqDCoMKgwqDCoCBjbG9jay1u
YW1lczoKK8KgwqDCoMKgwqDCoMKgwqDCoCBjb25zdDogcGh5Y2xrCisKCgpCZXN0IHJlZ2FyZHMs
CkZyYW5rCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
