Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3B84C3ABB0
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 May 2025 21:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ot3So54dw7IpXdssTCsqF+boqOuV/JqZqHjBiQmWo6c=; b=Su/iQWfjr9IiPg
	dFfFCDTrqCiqB/MhC84HYEgGQFVkmAgrp82nTM9/ip9+CqgGgXhDqdYnaPU5j6sO1mXTh7G/oiSRP
	8gKsDyDdVEbWgolFZY8cJpv74OXpWLmBS1BicUND+LhG2UZ4/WiqEKDwT5xqmljHa5YANXAIgOFwu
	JWSMmq8cjspfIiqLDTcIN5AIqHfDMWouaIGuwfD/SMKrqAaiRAEexcWW1Hv2Dj9fuFjRS8/EkZXRC
	D8qMayJzPpkX7Fuwyvvw2Skr1ilWSwB4beVx/TLS6WDr1pSQJ5ybXEKs2hdkiTXBdRRTZbUif7D9d
	vXaGnvkOlNc3+QxrbErw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBgTw-00000005wz0-1mTz;
	Sun, 04 May 2025 21:02:40 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBgTt-00000005wyZ-1ebO;
	Sun, 04 May 2025 21:02:38 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-7c597760323so408066685a.3;
        Sun, 04 May 2025 14:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746392556; x=1746997356; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ML8DjRZA7cKit0Oa6eU0aLRHGdDqUBnThTiiLI5SiXM=;
        b=i2VTaY1IRl0cJwJukD/UonBeMgZ6vu6j985hLZP6p/hUSO6LxFy2CayyFhaX6rEeNV
         IVb7+3o6SKLUIAydEVn1Y00DEtFEfNfyLRLDO+Tb9Rwb8Z6nf9hGvNQbo4JR56gJ94Ry
         /t7AnrrdxJOZA7hmincJZFh8RRQRBMTrQQWKuXIioz5fOfaWyXJtHK59o3WuHIcLnmD/
         3s0mYp9j7V8VnZTD8z5d4X425/xW4M8is9Cyfx5XSgdtHpcOpzEITajpwUFQCoHq26Y0
         ApkpwoLJCH4V6v0jdYZBtCQxaTSu08R9HCYrujPLGu07dNWrApm12VVVKatuKjAaik3X
         TulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746392556; x=1746997356;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ML8DjRZA7cKit0Oa6eU0aLRHGdDqUBnThTiiLI5SiXM=;
        b=hIXqf75l0HL2jehLXFK+BVoz3Zuto4Uc930Falmo4/fajEO81BBjVAJomCLhB76DMT
         vvlIzH4NccLtERak/xjVDMwRUAzA3u8ut6hwqZK+mf1Oa1gpTi/k1mokR76iHFGyCSTv
         3ENV3anby2OudEZq64IhlG0xuvd8EGSkeFtq/aC0GRE3YEDrlr+whJWXtiZ27qAG43ve
         3chCwhzCXPDQxspiC32pyY+Yf2pqocSo7m6YTIqDTv+/U7p0we1e6AZ+V/iOBnuC/T5w
         00SAwesCg7JzocN+EACUwf0tr82maHChdyI4zsSJL3VE4eRNWHoBifqiqArt7D+qsXBk
         OPyA==
X-Forwarded-Encrypted: i=1; AJvYcCVMddlnodrUb8p4SbL0NWZTCRdv0xeWUzuguvkx9cUt9p+gLZomH/z3FsZrnvtmjEt3rl5OBudsoLmYY7Xp7Daw@lists.infradead.org, AJvYcCVxBPBNFt1lUTPwMWm4ge87psbtB+Fsruhfe4hFpu+95lL9HyYl6DAjZuSzSWwUVGJJ+MyX1Tgo31bZ3i91DXQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZUyapxmn8cYXnE5uAB5DjpwnkCKSDStlERh6stFajuNKnmqcL
	/6cJ7Y/UR2jhnKVkmmOl+zUBHZrOGkG/lVqgnsTvYHLe0lPjYakC
X-Gm-Gg: ASbGncvWCLN/2Z3aBJGxp9RwQnr8gT8jR9n9HVpB3H6nEAV5aXA/3GWD61L/lfeXtGP
	ySYQjMDGecyHOnfwoAxt2mAMF0K2vu3ksuFXDz6VERykfjQEaJUl6fSdu150y+a7iSdfnuCL7EI
	nfibRBsL4RG+8HyiZqV2AtecOoYWYbaAXJQQ4DIsYK2bP+lC28pSwqcgoBLBqZX2v5eQRRYJ6DE
	f7qe28bnR/B+fiU1Ra5sAF9Ewk8qqBhysWVS2gM4ppHSp6Z7l3haSrXGfQto5p16VgQH2OVm/+7
	M0L8vqbY4dz7XGB8g0a2QlgyE78RzIL5IFc2r1lz/IVaFbM02GIIJ3OQNnCEuQ==
X-Google-Smtp-Source: AGHT+IE28+xEK7288oQImXpZSUZs2LbwMwLdxQciIh7WFkHeIOKTXFrxgU5POHxG3pYM8Mke5GY4gQ==
X-Received: by 2002:a05:620a:2697:b0:7c5:49b7:237c with SMTP id af79cd13be357-7cadfe16d0dmr954871285a.27.1746392555994;
        Sun, 04 May 2025 14:02:35 -0700 (PDT)
Received: from [192.168.21.149] ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cad243f339sm472102685a.90.2025.05.04.14.02.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 May 2025 14:02:34 -0700 (PDT)
Message-ID: <b603e92f-8c1a-4aea-8bab-82a1f035c7fa@gmail.com>
Date: Sun, 4 May 2025 17:02:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Luckfox Omni3576 Board
 support
To: Andrew Lunn <andrew@lunn.ch>, Jonas Karlman <jonas@kwiboo.se>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 detlev.casanova@collabora.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250504102447.153551-1-inindev@gmail.com>
 <20250504102447.153551-4-inindev@gmail.com>
 <bb171ae2-c495-49a3-a7eb-a4b865e54199@kwiboo.se>
 <87892840-bdbf-43d4-bd93-cb98f5e1c672@lunn.ch>
Content-Language: en-US
From: John Clark <inindev@gmail.com>
In-Reply-To: <87892840-bdbf-43d4-bd93-cb98f5e1c672@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_140237_435196_96DAFE98 
X-CRM114-Status: GOOD (  18.13  )
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

T24gNS80LzI1IDEwOjEyIEFNLCBBbmRyZXcgTHVubiB3cm90ZToKPj4+ICsmZ21hYzAgewo+Pj4g
KwljbG9ja19pbl9vdXQgPSAib3V0cHV0IjsKPj4+ICsJcGh5LWhhbmRsZSA9IDwmcmdtaWlfcGh5
MD47Cj4+PiArCXBoeS1tb2RlID0gInJnbWlpLXJ4aWQiOwo+Pgo+PiBTZWUgQW5kcmV3J3MgcmVt
YXJrIG9uIHYxIG9mIHRoaXMgcGF0Y2guCj4gCj4gSGkgSm9obgo+IAo+IElmIHlvdSBoYXZlIHF1
ZXN0aW9ucywgcGxlYXNlIGFzay4gSXQgaXMgbm90IGEgZ29vZCBpZGVhIHRvIHNpbGVudGx5Cj4g
aWdub3JlIHJldmlld2VycyBjb21tZW50cy4gRWl0aGVyIGRvIHNvbWV0aGluZyBhYm91dCBpdCwg
YXNrCj4gcXVlc3Rpb25zLCBvciBwb2xpdGVseSBhcmd1ZSB3aHkgdGhlIHJldmlld2VyIGlzIHdy
b25nLCBiZWNhdXNlCj4gc29tZXRpbWVzIHdlIGFyZS4KPiAKSGkgQW5kcmV3LApUaGFua3MgZm9y
IHlvdXIgZmVlZGJhY2sgYW5kIHRoZSBsaW5rIHRvIHRoZSBSR01JSSBkZWxheXMgZGlzY3Vzc2lv
bi4gSSAKYXNzdW1lZCB5b3Ugc3VnZ2VzdGVkIHN3aXRjaGluZyB0byBwaHktbW9kZSA9ICJyZ21p
aS1pZCIgZnJvbSAKcmdtaWktcnhpZC4gVGhlIHZlbmRvcuKAmXMgZG93bnN0cmVhbSBrZXJuZWwg
dXNlcyByZ21paS1yeGlkIHdpdGggdHhfZGVsYXkgCj0gPDB4MjA+LCBhcyBzaG93biBpbiBteSBw
b3N0LiBJIHRyaWVkIHJnbWlpLWlkIGFuZCByZW1vdmVkIHR4X2RlbGF5LCAKYnV0IHRoZSBpbnRl
cmZhY2UgZmFpbGVkIHRvIGdldCBhIERIQ1AgYWRkcmVzcy4gUmV2ZXJ0aW5nIHRvIHJnbWlpLXJ4
aWQgCndpdGggdGhlIGRlbGF5IHJlc3RvcmVkIGZ1bmN0aW9uYWxpdHkuIEFueSBhZHZpY2Ugb24g
Y29ycmVjdGx5IApjb25maWd1cmluZyByZ21paS1pZCBvciBhZGp1c3RpbmcgZGVsYXlzIGZvciB0
aGlzIGJvYXJkPwpCZXN0LApKb2huIENsYXJrCgo+Pj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1
bHQiOwo+Pj4gKwlwaW5jdHJsLTAgPSA8JmV0aDBtMF9taWltCj4+PiArCQkgICAgICZldGgwbTBf
dHhfYnVzMgo+Pj4gKwkJICAgICAmZXRoMG0wX3J4X2J1czIKPj4+ICsJCSAgICAgJmV0aDBtMF9y
Z21paV9jbGsKPj4+ICsJCSAgICAgJmV0aDBtMF9yZ21paV9idXMKPj4+ICsJCSAgICAgJmV0aG0w
X2NsazBfMjVtX291dD47Cj4+PiArCXNucHMscmVzZXQtZ3BpbyA9IDwmZ3BpbzIgUktfUEIzIEdQ
SU9fQUNUSVZFX0xPVz47Cj4+PiArCXNucHMscmVzZXQtYWN0aXZlLWxvdzsKPj4+ICsJc25wcyxy
ZXNldC1kZWxheXMtdXMgPSA8MCAyMDAwMCAxMDAwMDA+Owo+Pgo+PiBUaGUgc25wcyxyZXNldC0g
cHJvcHMgYXJlIGRlcHJhY2F0ZWQsIHBsZWFzZSBtb3ZlIHRvIHJlc2V0IHByb3BzIGluIHRoZQo+
PiBFdGhlcm5ldCBQSFkgbm9kZS4KPiAKPiBGWUk6IHNucHMsZHdtYWMueWFtbCBzYXlzOgo+IAo+
IHNucHMscmVzZXQtZ3BpbzoKPiAgICAgIGRlcHJlY2F0ZWQ6IHRydWUKPiAgICAgIG1heEl0ZW1z
OiAxCj4gICAgICBkZXNjcmlwdGlvbjoKPiAgICAgICAgUEhZIFJlc2V0IEdQSU8KPiAKPiBBbnl0
aGluZyB3aXRoICdkZXByZWNhdGVkOiB0cnVlJyB5b3Ugc2hvdWxkIG5vdCBiZSB1c2luZyBpbiBu
ZXcgRFQKPiBibG9icy4gRG9uJ3QgYmxpbmRseSBjb3B5IHZlbmRvciBEVCwgeW91IG5lZWQgdG8g
dmVyaWZ5IGl0IGlzIHVwIHRvCj4gTWFpbmxpbmUgcXVhbGl0eSwgYW5kIGlmIG5vdCwgYnJpbmcg
aXQgdXAgdG8gTWFpbmxpbmUgcXVhbGl0eS4KPiAKPj4+ICsJdHhfZGVsYXkgPSA8MHgyMD47Cj4g
Cj4gVGhpcyBwcm9wZXJ0eSBwcm9iYWJseSBwbGF5cyBhIHJvbGUgaW4gdGhlIGlzc3VlIHdpdGgg
cGh5LW1vZGUuCj4gCj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcCQgZ3JlcCAicmdtaWkt
aWQiICoKPiByazMzMjgtb3JhbmdlcGktcjEtcGx1cy1sdHMuZHRzOglwaHktbW9kZSA9ICJyZ21p
aS1pZCI7Cj4gcmszNTY2LWJpZ3RyZWV0ZWNoLWNiMi5kdHNpOglwaHktbW9kZSA9ICJyZ21paS1p
ZCI7Cj4gcmszNTY2LW5hbm9waS1yM3MuZHRzOglwaHktbW9kZSA9ICJyZ21paS1pZCI7Cj4gcmsz
NTY2LW9kcm9pZC1tMXMuZHRzOglwaHktbW9kZSA9ICJyZ21paS1pZCI7Cj4gcmszNTY2LW9yYW5n
ZXBpLTNiLmR0c2k6CXBoeS1tb2RlID0gInJnbWlpLWlkIjsKPiByazM1NjYtcmFkeGEtemVyby0z
ZS5kdHM6CXBoeS1tb2RlID0gInJnbWlpLWlkIjsKPiByazM1NjYtcm9jay0zYy5kdHM6CXBoeS1t
b2RlID0gInJnbWlpLWlkIjsKPiByazM1NjgtZXZiMS12MTAuZHRzOglwaHktbW9kZSA9ICJyZ21p
aS1pZCI7Cj4gcmszNTY4LWV2YjEtdjEwLmR0czoJcGh5LW1vZGUgPSAicmdtaWktaWQiOwo+IC4u
Lgo+IGV0Yy4KPiAKPiBZb3UgbWlnaHQgYmUgYWJsZSB0byBsZWFybiBzb21ldGhpbmcgZnJvbSB0
aGVzZS4KPiAKPiAJQW5kcmV3CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
