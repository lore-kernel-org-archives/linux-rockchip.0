Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1899DCEBF95
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 11:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+QFgFZss2TKXKGWffn8QXAb9fXwX0tUgmXaEIKq94M=; b=IEhypZxxWPxfHd
	y/wRO6o9MPUjQD8PV8/UROjINs8U9R6CWGfs4EKkAfBc7XEnQvBbTT7FnS3Gcj6lMTnuTSuNKieLw
	RtWU3LV4uso8WSqri/AHmyu/xbw5lMegHKPaZ3tAHC451cCcn+9kKD9swLcy39pr8bz5R79HXlspf
	aHRpBTaNvH50MGUdPyDZNj3C2fIVEBUMzMoHOkzYnqZK9jpTsHoVfgJSQbz+xyH755HriO6J5tQ/D
	MspgVvuoYBxHVALA/2vfClhiiHWZYxc7TkxpwaDJHR8eRCNnOTgFYZSS68nRUXkFhlIOnSFSHrWql
	g/QdKV3heC3oXeh3Yb6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8jH-0000000AuI7-0G5u;
	Fri, 27 Sep 2024 11:01:43 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8h0-0000000Atv1-12lj;
	Fri, 27 Sep 2024 10:59:23 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-20b2ee7629fso1407715ad.3;
        Fri, 27 Sep 2024 03:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727434761; x=1728039561; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DObtMepEvbntbYxpIRGYmA2PApftPcBR1DNFAq+0tiU=;
        b=WEiGFVCDB7BeuwPB4QMya5q40huDmQG8K7jHpBWN9oMmYDT3lWcflbT7G/3jvCgoYf
         0DhkQ6kjn1axj0M/CHF64b15Ng+PaRQ8B7+MkAgnUU6H5zZRhzq1UZpJdbYP/kA31nuZ
         z7JWUCvyTu6e4fvoHMVuVsv/VQxz8d4soqZPsnOG4ZxBfbY0Wr0XNlaY3H+h7Ocomq7Y
         arLf/c3ggbkzXX2J81L/vDtWxcTg4CprBCOA49Za/PN7tWJUlwxby0/o5WRGv7KmrznH
         woXlL7O0zeeN3ViW7RjXOjvqFm/YA/7CNi7FgOJbr3FaY4RxfjZFNjzyONRIFJSsOhyN
         bBng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727434761; x=1728039561;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DObtMepEvbntbYxpIRGYmA2PApftPcBR1DNFAq+0tiU=;
        b=bIu41huOQ0urSBXCwa5H7rZAWu2lkqLqz6seKOjtli+oLqBYro5dTKg1/cGSK1nSQS
         tmxgxh4CDHiec2ZW71mfup+PJ/W4IFHbs3EDc0DW595ae46spCImI/EYZsY5GFLIkOHz
         ZSJGsJYuUF57luWyyAc7zszB/W2XFCdneAfbKlsscE/Z1y2G4P6+pa2Em4E9Yb5I27VD
         v2eHzgGIMVyULeCBx1rGhpeygOhEDFCkCo4k9/DMH/gcXeaVwRrYLsxjWBHTtNAyGzLN
         MOfDur6Horw7ipmwDwQ+yc4nS8KOkwDbsttCDVffYTw8lZIKCXSxsgRnhWgirJXUJGUQ
         /SBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLuS0O0HgH0a/rJZ7DBg1KFG8S7IuZw1mAOt0EDF3+XEbu3wsfdJAjVIi0By1zpQ+SmJScegqjlTjNdqivYrE=@lists.infradead.org, AJvYcCWx+QO837rl5Ew37mbzKnREXn2l477scbwu6LeHWR5V8v7NoPdw82BdDcJwr4CCe8/vJ70JpX080MTIhUO46tNz@lists.infradead.org
X-Gm-Message-State: AOJu0YweX1KQGfEaMdsX+ZtWkpfJXXe2S9+cZICGFlKNb/3MR1t97Bfn
	dKq0tsxINMB1kum+TIkhnld29vHz3g5B8SUWmKpYdqKZ0uPC0Y1W
X-Google-Smtp-Source: AGHT+IHYLP9kUGQWnN2G8U5PQVJytgo7cazkgDwW/mKcpQ1mFG2jLNZxG0CwjnvcSkfgmE0hIzd/hQ==
X-Received: by 2002:a17:903:191:b0:20b:9aa:efca with SMTP id d9443c01a7336-20b36adbadamr18954335ad.9.1727434761087;
        Fri, 27 Sep 2024 03:59:21 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20b37d60eb3sm11688325ad.44.2024.09.27.03.59.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Sep 2024 03:59:20 -0700 (PDT)
Message-ID: <f5e547ac-cb5b-492d-8cfd-d77d3e9bbf9d@gmail.com>
Date: Fri, 27 Sep 2024 18:59:15 +0800
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
 <7944f4dd-96f0-40df-8c91-523409e3cb20@gmail.com>
 <4b98196a-c898-4d08-9101-31feb4e59b5c@kernel.org>
 <a06af01a-656b-4ef6-84a6-bc1c35d5bafa@gmail.com>
 <2815219e-3a20-4a5b-8573-d8a4ad2df1c9@kernel.org>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <2815219e-3a20-4a5b-8573-d8a4ad2df1c9@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_035922_310715_D9AA8628 
X-CRM114-Status: GOOD (  12.02  )
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

SGkgS3J6eXN6dG9mLAoKT24gMjAyNC85LzI3IDE3OjUyLCBLcnp5c3p0b2YgS296bG93c2tpIHdy
b3RlOgo+IE9uIDI3LzA5LzIwMjQgMDk6NTksIEZyYW5rIFdhbmcgd3JvdGU6Cj4+Pj4gLcKgIGNs
b2NrczoKPj4+PiAtwqDCoMKgIG1heEl0ZW1zOiAxCj4+Pj4gK8KgIGNsb2NrczogdHJ1ZQo+Pj4+
Cj4+Pj4gLcKgIGNsb2NrLW5hbWVzOgo+Pj4+IC3CoMKgwqAgY29uc3Q6IHBoeWNsawo+Pj4+ICvC
oCBjbG9jay1uYW1lczogdHJ1ZQo+Pj4gRm9yIHRoZSB0aGlyZCB0aW1lLCByZWFkIHRoZSBjb2Rl
IEkgZ2F2ZSB5b3UuIERvIHlvdSBzZWUgc29tZXRoaW5nIGxpa2UKPj4+IHRoaXMgdGhlcmU/IFdo
eSBkb2luZyBhbGwgdGhlIHRpbWUgc29tZXRoaW5nIGRpZmZlcmVudCB0aGFuIGV4aXN0aW5nIGNv
ZGU/Cj4+IFJlZmVyIHRvIHRoZSBsaW5rIHlvdSBzZW50IG1lIHRoYXQgSSBtdXN0IGFkZCBtaW5J
dGVtcyBwcm9wZXJ0eSBmb3IKPj4gY2xvY2tzLCBqdXN0IGxpa2UgdGhlIGJlbG93IGNvZGVzOgo+
Pgo+PiBAQCAtMzUsNyArMzUsOCBAQCBwcm9wZXJ0aWVzOgo+PiAgIMKgwqDCoMKgIGNvbnN0OiAw
Cj4+Cj4+ICAgwqDCoCBjbG9ja3M6Cj4+IC3CoMKgwqAgbWF4SXRlbXM6IDEKPj4gK8KgwqDCoCBt
aW5JdGVtczogMQo+PiArwqDCoMKgIG1heEl0ZW1zOiAzCj4gWWVzLCBmb3IgYWxsIHZhcmlhYmxl
IHByb3BlcnRpZXMsIHNvIGFsc28gbmFtZXMuCj4KPj4gVGhhdCBjYW4gcGFzcyBkdF9iaW5kaW5n
IGFuZCBkdGIgY2hlY2tpbmcsIGhvd2V2ZXIsICJjbG9ja3MiIGlzIHRoZQo+PiBvcHRpb25hbCBw
cm9wZXJ0eSBmb3Igc29tZSBvbGQgUm9ja2NoaXAgUEhZcyzCoCBJIGFtIG5vdCBzdXJlIGlzIGl0
IHJpZ2h0Cj4+IHRvIGZvcmNlIHNldMKgIG1pbkl0ZW1zIGFzIDEgLgo+PiBJZiBqdXN0IGtlZXAg
bWF4SXRlbXMsIHRoZSBkdF9iaW5kaW5nIGNoZWNraW5nIGlzIGZhaWx1cmUuCj4gUGxlYXNlIHNw
ZWNpZnkgdGhlIHF1ZXN0aW9uIHlvdSB3YW50IHRvIGFzay4KPgoKUGxlYXNlIGlnbm9yZSBteSBs
YXN0IGdhcmJsZWQgZW1haWwgYXMgbWFpbGJveCBjbGllbnQgaXNzdWUuCgpRMTogVGhlICJjbG9j
a3MiIGlzIGFuIG9wdGlvbmFsIHByb3BlcnR5IGZvciBzb21lIG9sZCBSb2NrY2hpcCBQSFlzLCBz
byAKc2V0ICJtaW5JdGVtczogMSIgbGlrZXMgdGhlIGJlbG93LCBpcyB0aGlzIGEgc3VpdGFibGUg
c2V0dGluZz8KCiDCoMKgwqAgY2xvY2tzOgotwqDCoMKgIG1heEl0ZW1zOiAxCivCoMKgwqAgbWlu
SXRlbXM6IDEKK8KgwqDCoCBtYXhJdGVtczogMwoKUTI6IERvIHlvdSB3YW50IG1lIHRvIGFtZW5k
IHRoZSBjb2RlIHRvIGxpa2UgdGhpcz8KCiDCoMKgIGNsb2NrczoKIMKgwqDCoCBtaW5JdGVtczog
MQogwqDCoMKgIG1heEl0ZW1zOiAzCgogwqDCoCBjbG9jay1uYW1lczoKIMKgwqDCoCBtaW5JdGVt
czogMQogwqDCoMKgIG1heEl0ZW1zOiAzCgphbGxPZjoKClsuLi5dCgogwqAgLSBpZjoKIMKgwqDC
oMKgwqAgcHJvcGVydGllczoKIMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGU6CiDCoMKgwqDCoMKg
wqDCoMKgwqAgY29udGFpbnM6CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVudW06CiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tjaGlwLHB4MzAtdXNiMnBoeQogwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazMxMjgtdXNiMnBoeQogwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazMyMjgtdXNiMnBoeQogwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgLSByb2NrY2hpcCxyazMzMDgtdXNiMnBoeQogwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgLSByb2NrY2hpcCxyazMzMjgtdXNiMnBoeQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLSByb2NrY2hpcCxyazMzNjYtdXNiMnBoeQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
LSByb2NrY2hpcCxyazMzOTktdXNiMnBoeQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBy
b2NrY2hpcCxyazM1NjgtdXNiMnBoeQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2Nr
Y2hpcCxyazM1ODgtdXNiMnBoeQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hp
cCxydjExMDgtdXNiMnBoeQogwqDCoMKgIHRoZW46CiDCoMKgwqDCoMKgIHByb3BlcnRpZXM6CiDC
oMKgwqDCoMKgwqDCoCBjbG9ja3M6CiDCoMKgwqDCoMKgwqDCoMKgwqAgbWF4SXRlbXM6IDEKIMKg
wqDCoMKgwqDCoMKgIGNsb2NrLW5hbWVzOgogwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0OiBwaHlj
bGsKCiDCoCAtIGlmOgogwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOgogwqDCoMKgwqDCoMKgwqAgY29t
cGF0aWJsZToKIMKgwqDCoMKgwqDCoMKgwqDCoCBjb250YWluczoKIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgZW51bToKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAscmszNTc2
LXVzYjJwaHkKIMKgwqDCoCB0aGVuOgogwqDCoMKgwqDCoCBwcm9wZXJ0aWVzOgogwqDCoMKgwqDC
oMKgwqAgY2xvY2tzOgogwqDCoMKgwqDCoMKgwqDCoMKgIG1pbkl0ZW1zOiAzCiDCoMKgwqDCoMKg
wqDCoMKgwqAgbWF4SXRlbXM6IDMKIMKgwqDCoMKgwqDCoMKgIGNsb2NrLW5hbWVzOgogwqDCoMKg
wqDCoMKgwqDCoMKgIGl0ZW1zOgogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBwaHlj
bGsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogYWNsawogwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAtIGNvbnN0OiBhY2xrX3NsdgoKQlIuCkZyYW5rCgo+IEJlc3QgcmVnYXJkcywKPiBL
cnp5c3p0b2YKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
