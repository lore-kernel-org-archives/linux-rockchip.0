Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A133AD116EA
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Nov 2025 01:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuLeIUaYV4v8oGN0qb+2JhSaA6SSc5cuoUMDo6BWRys=; b=vyKcsTz7vj0WLe
	uFQhBH4BtaqcULzDPeTEpcPAFXnJddX+5fYbennfZr6lfu5TjTXlRMpg8H+YdLTLDqeN+i9ekFw4U
	wMM5Wi0BHybyttmMZTK/RnUucvJV5rJHli5wYkPF5tXJuwsG5aOYk1b+GhT7CrspQ3yj4nCxafrDD
	ps+BO35Qr0rpNGCQODooGbKeaysqixn8zvfNpK+rl+gCKcIjeD5mOLsGJvtO7ilid0tdOeisgqg+6
	ONLOCzwRjh5MEhtlNLkZXtvYcvlq/HJY0CfmvLWpWVb3dHTX6q/N5dL+4/UzBpAblOnE3hB8ym4Cp
	2qxODcqDjbwsgE1APwjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP9t3-000000018it-0Y9c;
	Sat, 29 Nov 2025 01:36:33 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP9t1-000000018iC-0iLX
	for linux-rockchip@lists.infradead.org;
	Sat, 29 Nov 2025 01:36:32 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-64320b9bb4bso4692630a12.0
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Nov 2025 17:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764380189; x=1764984989; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=brbtVzp9BLMWuVli2pkASz2oawHMJEd3+pWhWeFi5tI=;
        b=jcZHAN7oEgOq6NsqW7K6v+HYcjYYO/8IdbHSFif2nd3YmrRfJHACQokkJ2H8pdkP2b
         baeDBz/1YX9R+QniOjDkpZ5h6HvwTusGVspZAD4LOd85A/NbIL7ChOzlBcoSSX89mkrZ
         8zz2Rk+MTsP8K3HYagCVxupziVxoWUeJ6mUXttO71EtzZSQUcRaQ2agSjw6cg/DU51sJ
         v8oXv6rAIE6srFU3Jzr3nwWA+NKAKHETdDMbHZGQOY4ZdLT4MTMwxzI8WxKvLlLGdf4S
         cs8RikN9qMusu/6e+oX/wqiJY7t9d5BCvErSdilh35mR8QbO8n6thK5Z2fIHdkSoPM8y
         hf4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764380189; x=1764984989;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=brbtVzp9BLMWuVli2pkASz2oawHMJEd3+pWhWeFi5tI=;
        b=PxWK6dDvEkJr5i8qVXh1LjtvyCyUChdlsU5jt/2Lp5+z1E6+uft8htGcSQ58XYxgbS
         THc/ju306T5OhlzsNN83EwbLTWF5o+YAz68B/30tIYjdSwKvrv1erOJJN6ubKduurtYZ
         ASLI5I69DbQBN5bR5lLvZRqfhfJ1DziZvXuByig9fjnOQw1XVh/zZyCtqC2zkHj4af7b
         O68CpNJgBxbqnsRnH/BTvgFUmGDq1GiQ7JRflTqCnWNcPghJH5gDprvDgVNXjFmDmMRc
         HCPyCXS3PIb+c98dvLmPd4HVJiZz7PcOToRMqZUceK3pSJK22c2aBhKeePkER6OObi9e
         ZCCg==
X-Forwarded-Encrypted: i=1; AJvYcCUa1WasRnOIC+BsUTg8dBBcdwOrQ7eZu8b/Pxl5W6GMBqTgjcD1ukZClwceT/Jbx1KzaVEzcj4pR9Aa3X5cwg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzsteL0EybJUSPv2+xJakqH1tk+uvfuFy3/FXoINjnuHlnePbGl
	PNGRQ+B/sI3mlT/PetPikcnDNbfjuD9QBdGhyuVAv+MLLz/JTGXejks=
X-Gm-Gg: ASbGncuYK3xeIMtxFpCgfSrssqrczqcWQrMa8magLRukPEAite6203GCGS4Vxny46Ic
	3lHGE9T7YEONmFnpVVwx4lSZzTH34u9eaPHgIDlTverFEJyhBKv6nxurnQTojPf6KuC7EPX9iys
	c74d6B3OkXoiUE2hddPNiIOMC00g5g0XJJdsNcoYFCd7tZJHqDuldZhQh02FugXn5RGWvzU+xKI
	HUxDH3H3V5dQxF0ikGBHD+7A64d++E0TBHhODZrCFS3F6+a7pqwIRyNo4RVoQbcUpZv/MGO2cVY
	n/oJ8cu4ZXsDjPrpErCBo3GiSqQc4B/IYh9pppx2ftcv17aXIBPdrpgUdadBPHumuPkyPUerG70
	Pe866jneq2Uv1TAw9503TDJYbBSky6ykNY0W/TZ9/D1FvwN/3z04uRNwV55Nzb6zw9I1LJ0ffOc
	7zXo0aNstm08RKeqGwrtk6jCVfrqomSvjQOlGyCKwXqoNRia2QhIDXxLI+
X-Google-Smtp-Source: AGHT+IF30E7FIZNrGZvmowLANQLOzFlQpnnEHeJ6v+UVVtB3DQJGu8iTaB4+RnJu0gDLiUkyoZAZBA==
X-Received: by 2002:a05:6402:350b:b0:63b:ee76:3f63 with SMTP id 4fb4d7f45d1cf-6455508801fmr30169625a12.7.1764380188746;
        Fri, 28 Nov 2025 17:36:28 -0800 (PST)
Received: from ?IPV6:2a02:810b:f13:8500:d236:5f71:a9ed:86de? ([2a02:810b:f13:8500:d236:5f71:a9ed:86de])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a6ea4csm5751730a12.4.2025.11.28.17.36.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 17:36:27 -0800 (PST)
Message-ID: <acbbef49-02ad-47e9-9874-68d058b95f21@gmail.com>
Date: Sat, 29 Nov 2025 02:36:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: Quentin Schulz <quentin.schulz@cherry.de>, FUKAUMI Naoki
 <naoki@radxa.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <20251027005220.22298-1-naoki@radxa.com>
 <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
 <a93ace02-a952-4727-957b-0ed790b47676@cherry.de>
 <20486653DCCA80ED+7f87a03c-519e-4d6a-a47c-7670e5ae502c@radxa.com>
 <ffe5e4d1-49d8-4075-a5c4-6f27dda7f35a@cherry.de>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <ffe5e4d1-49d8-4075-a5c4-6f27dda7f35a@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_173631_243444_3ACA78DC 
X-CRM114-Status: GOOD (  22.41  )
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

SGksCgpBbSAyOC4xMS4yNSB1bSAxMzozMyBzY2hyaWViIFF1ZW50aW4gU2NodWx6Ogo+IEhpIE5h
b2tpLAo+Cj4gT24gMTEvMjgvMjUgMTowOSBQTSwgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4gSGkg
UXVlbnRpbiwKPj4KPj4gT24gMTEvMjgvMjUgMTk6MjQsIFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+
Pj4gSGkgTmFva2ksCj4+Pgo+Pj4gT24gMTEvMjcvMjUgNDoyMCBQTSwgUXVlbnRpbiBTY2h1bHog
d3JvdGU6Cj4+Pj4gSGkgTmFva2ksCj4+Pj4KPj4+PiBPbiAxMC8yNy8yNSAxOjUyIEFNLCBGVUtB
VU1JIE5hb2tpIHdyb3RlOgo+Pj4+PiBUaGlzIHJldmVydHMgY29tbWl0IDgyNDBlODdmMTZkMTcg
KCJhcm02NDogZHRzOiByb2NrY2hpcDogZml4Cj4+Pj4+IGF1ZGlvLXN1cHBseSBmb3IgUm9jayBQ
aSA0IikuCj4+Pj4+Cj4+Pj4+IEZpeCB0aGUgQVBJTzVfVkREIHBvd2VyIHN1cHBseSB0byB2Y2Nf
M3YwIGFzIHBlciB0aGUgc2NoZW1hdGljc1sxXVsyXQo+Pj4+PiBbM11bNF1bNV0uCj4+Pj4+Cj4+
Pj4+IFRoaXMgZml4ZXMgdGhlIFNQSS1OT1IgZmxhc2ggcHJvYmUgZmFpbHVyZSB3aGVuIHRoZSBi
bHVlIExFRCBpcyAKPj4+Pj4gb25bNl0sCj4+Pj4+IGFuZCB0aGUgZ2FyYmxlZCBzZXJpYWwgY29u
c29sZSBvdXRwdXQgb24gTGludXguCj4+Pj4+Cj4+Pj4+IFRoZSBFUzgzMTYgaGVhZHBob25lIGFu
ZCBtaWNyb3Bob25lIGFyZSBjb25maXJtZWQgdG8gd29yayBjb3JyZWN0bHkKPj4+Pj4gYWZ0ZXIg
dGhpcyBmaXguCj4+Pj4+Cj4+Pgo+Pj4gUGxlYXNlIHRlc3QgdGhlIEVTODMxNiB3b3JrcyB3aGVu
IGJvb3RpbmcgTGludXggZnJvbSBhIFUtQm9vdCB3aGVyZSAKPj4+IFJPQ0tDSElQX0lPRE9NQUlO
IGFuZCBTUExfUk9DS0NISVBfSU9ET01BSU4gaXMgKmRpc2FibGVkKi4KPj4KPj4gSSB0cmllZCBi
ZWxvdywgYW5kIGNvbmZpcm1lZCB0aGF0IEVTODMxNiBpcyBzdGlsbCB3b3JraW5nLgo+Pgo+PiBk
aWZmIC0tZ2l0IGEvY29uZmlncy9yb2NrLXBpLTQtcmszMzk5X2RlZmNvbmZpZyBiL2NvbmZpZ3Mv
cm9jay1waS00LSAKPj4gcmszMzk5X2RlZmNvbmZpZwo+PiBpbmRleCAyMTlmNDJiYzdkNC4uMjc2
Y2E5NjFjMTAgMTAwNjQ0Cj4+IC0tLSBhL2NvbmZpZ3Mvcm9jay1waS00LXJrMzM5OV9kZWZjb25m
aWcKPj4gKysrIGIvY29uZmlncy9yb2NrLXBpLTQtcmszMzk5X2RlZmNvbmZpZwo+PiBAQCAtNTMs
NiArNTMsNyBAQCBDT05GSUdfUk9DS0NISVBfR1BJTz15Cj4+IMKgwqBDT05GSUdfU1lTX0kyQ19S
T0NLQ0hJUD15Cj4+IMKgwqBDT05GSUdfTEVEPXkKPj4gwqDCoENPTkZJR19MRURfR1BJTz15Cj4+
ICsjIENPTkZJR19ST0NLQ0hJUF9JT0RPTUFJTiBpcyBub3Qgc2V0Cj4+IMKgwqBDT05GSUdfTU1D
X0RXPXkKPj4gwqDCoENPTkZJR19NTUNfRFdfUk9DS0NISVA9eQo+PiDCoMKgQ09ORklHX01NQ19T
REhDST15Cj4+IGRpZmYgLS1naXQgYS9kdHMvdXBzdHJlYW0vc3JjL2FybTY0L3JvY2tjaGlwL3Jr
MzM5OS1yb2NrLXBpLTQuZHRzaSBiLyAKPj4gZHRzL3Vwc3RyZWFtL3NyYy9hcm02NC9yb2NrY2hp
cC9yazMzOTktcm9jay1waS00LmR0c2kKPj4gaW5kZXggMDQ2ZGJlMzI5MDEuLmM3MzRmNzgyNGMw
IDEwMDY0NAo+PiAtLS0gYS9kdHMvdXBzdHJlYW0vc3JjL2FybTY0L3JvY2tjaGlwL3JrMzM5OS1y
b2NrLXBpLTQuZHRzaQo+PiArKysgYi9kdHMvdXBzdHJlYW0vc3JjL2FybTY0L3JvY2tjaGlwL3Jr
MzM5OS1yb2NrLXBpLTQuZHRzaQo+PiBAQCAtNTEsNyArNTEsNyBAQAo+Pgo+PiDCoMKgwqDCoMKg
wqDCoMKgIHNvdW5kOiBzb3VuZCB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGNvbXBhdGlibGUgPSAiYXVkaW8tZ3JhcGgtY2FyZCI7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGxhYmVsID0gIkFuYWxvZyI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGxhYmVsID0gInJrMzU4OC1lczgzMTYiOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBkYWlzID0gPCZpMnMwX3AwPjsKPj4gwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pgo+PiBA
QCAtNTE2LDcgKzUxNiw3IEBACj4+IMKgwqB9Owo+Pgo+PiDCoMKgJmlvX2RvbWFpbnMgewo+PiAt
wqDCoMKgwqDCoMKgIGF1ZGlvLXN1cHBseSA9IDwmdmNjYTF2OF9jb2RlYz47Cj4+ICvCoMKgwqDC
oMKgwqAgYXVkaW8tc3VwcGx5ID0gPCZ2Y2NfM3YwPjsKPj4gwqDCoMKgwqDCoMKgwqDCoCBidDY1
Ni1zdXBwbHkgPSA8JnZjY18zdjA+Owo+PiDCoMKgwqDCoMKgwqDCoMKgIGdwaW8xODMwLXN1cHBs
eSA9IDwmdmNjXzN2MD47Cj4+IMKgwqDCoMKgwqDCoMKgwqAgc2RtbWMtc3VwcGx5ID0gPCZ2Y2Nf
c2Rpbz47Cj4+Cj4+IE5vdGVzOgo+PiAtIFNQTF9ST0NLQ0hJUF9JT0RPTUFJTiBpcyBub3Qgc2V0
IGJ5IGRlZmF1bHQKPj4gLSBJIGRvbid0IHVuZGVyc3RhbmQgYWxzYSB1Y20yIDspIHNvIEkgbW9k
aWZpZWQgL3NvdW5kL2xhYmVsCj4+Cj4KPiBUaGFua3MgZm9yIHRlc3RpbmcuIExldCdzIGhvcGUg
dGhlIG9yaWdpbmFsIGlzc3VlIGRvZXNuJ3QgYXBwZWFyIGZvciAKPiAqc29tZSogYm9vdHMgKGRl
cGVuZGluZyBvbiBwcm9iZSBvcmRlciBvciBzb21lIHRpbWluZyBmb3IgZXhhbXBsZSkuIAo+IEZv
ciBub3cgSSBndWVzcyB0aGlzIHdpbGwgZG8uIEFkZGluZyBBbGV4IGluIENjIG1heWJlIHRoZXkg
YXJlIGFibGUgdG8gCj4gcmVwcm9kdWNlIHRoZSBpc3N1ZSB0aGV5IGhhZCA0IHllYXJzIGFnbyB3
aXRoIHRoZWlyIGJvYXJkPwo+Cj4gQ2hlZXJzLAo+IFF1ZW50aW4KCgpJIGNhbiBjb25maXJtIHRo
YXQgd2l0aCB0aGlzIGNoYW5nZSBhbmFsb2cgYXVkaW8gaXMgX2Jyb2tlbl8gZm9yIG1lIGFnYWlu
LgoKSSBuZXZlciBoYWQgYW55IGlzc3VlcyB3aXRoIHVhcnQyIG9yIHNwaSAtIG5laXRoZXIgaW4g
a2VybmVsIG5vciBpbiB1LWJvb3QKKGFsc28gbm90IGFmdGVyIGlvLWRvbWFpbiBkcml2ZXIgaGFz
IGJlZW4gYWRkZWQgdG8gdS1ib290IGZvciBSSzMzOTkpLgpHaXZlbiB0aGlzIGNvbW1pdCBpcyBu
b3cgfjQgeWVhcnMgaW4gdHJlZcKgIEknZCBndWVzcyB0aGF0IHNvbWVvbmUgZWxzZQp3b3VsZCBo
YXZlIHJlcG9ydGVkIHRoYXQgaXNzdWUgZWFybGllci4gSXQncyBjb3JyZWN0IHRoYXQgdGhpcyBp
bmZvcm1hdGlvbgpjYW1lIGZyb20gYSAiUG93ZXIgRG9tYWluIE1hcCLCoCB3aGljaCB5b3UgY2Fs
bCAibm9uIHNjaGVtYXRpYyIgYW5kIHRoZQoic2NoZW1hdGljIHBhcnQiwqAgc2F5cyBzb21ldGhp
bmcgZWxzZSAtwqAgaXQgd291bGQgaGF2ZSBiZWVuIGluZGVlZCBiZQpiZXR0ZXIgdG8gaGF2ZSBj
bGVhcmVyIGluZm9ybWF0aW9uLgoKQW55d2F5OiBJIGNhbid0IG5laXRoZXIgc2VlIGhvdyB0aGlz
IGNoYW5nZSBzaG91bGQgcmVsYXRlIHRvIHVhcnQyIG9yIHNwaQp3aGljaCBhcmUgYm90aCBpbiBk
aWZmZXJlbnQgaW8tZG9tYWluLCBub3Igd2h5IGl0IHdvdWxkIGhhcHBlbiBvbmx5IGluCnUtYm9v
dC4gTXkgc3Ryb25nZXN0IGd1ZXNzIGlzLCB0aGF0IHJhZHhhIGNoYW5nZWQgc29tZXRoaW5nIGFs
b25nIHRoZSB3YXkuCk9yIG1heWJlIGl0IHdvdWxkIGJlIHdvcnRoIHRvIGRvdWJsZS1jaGVjayB0
aGUgaW8tZG9tYWluIGRyaXZlciBpbiB1LWJvb3QuCgoKUmVnYXJkcywKQWxleAoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
