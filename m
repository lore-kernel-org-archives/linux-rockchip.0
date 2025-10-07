Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE894CCA476
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 14:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyfCV7zeBPppsRr3CdOC3DVzBFfIBmB9wTMHXmShX9U=; b=wAhRQpzo723QvK
	05Q7ik50k6BKcms+CTgheZUuCn2GAQ+sVn3hso0M4oboCoDq4M3TTtZ3DWgluXEpCJY0dhz1cWDDo
	wIgTDlMOyHCX2qJ4oiAR1GIMN8tW58Ha7lJWkjz/JfD6prbN/wGaP/3iLBbQDQHH4mACtXo6UR1wB
	CuCHBZeeO3NqsKoB8HTvQniVKq8Fj01/kiQQu4Q+Qm3LLdye/wbEI6VfYzKTgLRM1xuYho57fPhG3
	NWpbWMSdweiVQXqM6JE7ldZ5c7I35tba39mk3zI03TjZZ4iErto0B6HdOEClMZ1uLxdCuEQYz1n8R
	pcN7+W+kS1ef8b5e6C8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v68k6-00000002Bwb-48bh;
	Tue, 07 Oct 2025 14:32:42 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v68k5-00000002Bvz-13iV
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 14:32:42 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-795be3a3644so38166626d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Oct 2025 07:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759847559; x=1760452359; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K6Ko9EuByB72AmPY68qaHZeiB7esoLxBKg9O0pS8bew=;
        b=M221NPd7Fd0E6xAWmVOAX/GBi0vapq+duY+gCwV4g2MvnksVWSxt8aLcsS9S8LBSlG
         m2T+fhEFBIA+VDX2H0CBFnYODdtLbH5TdcrjCK830v41Y4INPiJaGdEzFcONhaYXFD4a
         B8eW3+lCVtn8sEVCewaHN53nSevNE9VvvztK4lrURwfj++KyukxPidil3U+RNIMvuxJM
         KvmwigWsr7xrhL0H9N1y139aChcf5YfbeSaJeaiiZFdZwENciTkNaC5Unb3t5cQriVzx
         iLJRBBTc8yHBPsU9x5vf2rTarTFqdVgonJFkY5xpCo+cTlgh8Gk+JTzwBZc+hyAv6Yfh
         JElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759847559; x=1760452359;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K6Ko9EuByB72AmPY68qaHZeiB7esoLxBKg9O0pS8bew=;
        b=mtx5NwXWpD/aumh6TZbOTbUJYK2cDtvlkrINNK7X/1FMwMY/jkz3S3Vx5ej0Xm5J3s
         irkxUNx5523pTBhK6/FHTtufmw3xUWjcF3Q2lqcaQTOjlcbz3rdcI22i1umkna5VdcBn
         fdpIoKqajS5cB2kEyrsiWlqphAlXjdfTb+uOn4s1ElfjXdL4JLJ1dKoNOyQ8wKpcS2Og
         L2pqawg4HUqNxuRDzlUMDOyxgugP6P+JMgr/8DNUExKXVref6FvyJ8AfBLx45n0X+Dyk
         DkrcdtGEVtHQ0At+vPGUqlKva6z/8QyWshr47l55uGc1W2s470dnDNEEq3T8az2PO66n
         zDaw==
X-Forwarded-Encrypted: i=1; AJvYcCWTFGdVd1NyfHXJTalFBKEfRSDtiid0qza8b3b7WrKE0Ev7BRd5KqYScx6sQ40iv9VWd3TVyIgA3bnlTcC5mg==@lists.infradead.org
X-Gm-Message-State: AOJu0YySyBhOOW5whWWKb+4EPollUSRi5xhJZrB/EVvfLIm2HMUJ0Eao
	+I6udT+quOh355X3vr186d8Cj3gxJATOGGXR/ovpjcsWWWd8aCfPZZ4t6o+n1yuT8C1Xlgvc7PI
	r357HLf2s5RkQpOXw53HoWfAEF73XruE=
X-Gm-Gg: ASbGncs0iKjag4GKtXWe5tQDgxI6WK5JUzSec2+9zxJ4SXys9zhYleO3Gmv3w9wYp3F
	kuTOs/LUcerd4WDFJ0uD5koht9U74gqrCAREfohAeYzwzF19YCcQvwzFb2wcOdMloKFMhsPduaF
	LB5wzpBBWKxxZ35FW0gZ7eRGcNlM2ilN7CWP1uhJOII+smj8RE7TT8ZLtaCwH70cGI6R+1+14NY
	UDF1lHNzCNskOetxfE2s3B32ZhcCvOebDwJ8X7LsrM=
X-Google-Smtp-Source: AGHT+IEyCKpYps/3BGc22BxSR5vdUK9H945UNs5mFpXR5FmYYn0yozFBPVoQCqHwhbvW2Mk1hUuA7PjHSd59EhPjCTw=
X-Received: by 2002:a05:6214:1c4d:b0:78d:63c4:9d5c with SMTP id
 6a1803df08f44-879dc7abcf0mr199677706d6.5.1759847559189; Tue, 07 Oct 2025
 07:32:39 -0700 (PDT)
MIME-Version: 1.0
References: <20250929065714.27741-1-jjm2473@gmail.com> <20250929065714.27741-4-jjm2473@gmail.com>
 <d8ad476c-d0c7-4e97-9e76-540a539ffb52@lunn.ch>
In-Reply-To: <d8ad476c-d0c7-4e97-9e76-540a539ffb52@lunn.ch>
From: jjm2473 <jjm2473@gmail.com>
Date: Tue, 7 Oct 2025 22:32:26 +0800
X-Gm-Features: AS18NWBCvYOruCThhN8XGst8DvyIOMmZ1iSy5xv_cE-cTej27zRd1fN4u0hMtEY
Message-ID: <CAP_9mL4ofig-X-w9wx1A5D_eVXROo6AVFBSwp4mh=kj7webpPA@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
To: Andrew Lunn <andrew@lunn.ch>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	quentin.schulz@cherry.de, kever.yang@rock-chips.com, naoki@radxa.com, 
	honyuenkwun@gmail.com, inindev@gmail.com, ivan8215145640@gmail.com, 
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org, 
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org, 
	jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_073241_300170_7AC0FEDF 
X-CRM114-Status: GOOD (  16.51  )
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

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI15bm0MTDmnIg25pel5ZGo5LiAIDIz
OjUx5YaZ6YGT77yaCj4KPiA+ICsmZ21hYzAgewo+ID4gKyAgICAgcGh5LW1vZGUgPSAicmdtaWki
Owo+Cj4gRGlkIGkgcmVhbGx5IG1pc3MgdGhpcyBwYXRjaCBzZXJpZXMgaW4gaXRzIGVhcmxpZXIg
dmVyc2lvbiwgb3IgZGlkIHlvdQo+IGlnbm9yZSBtZT8KPgo+IGh0dHBzOi8vZWxpeGlyLmJvb3Rs
aW4uY29tL2xpbnV4L3Y2LjE1L3NvdXJjZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbmV0L2V0aGVybmV0LWNvbnRyb2xsZXIueWFtbCNMMjg3Cj4KPiA+ICsgICAgIHR4X2RlbGF5
ID0gPDB4M2M+Owo+ID4gKyAgICAgcnhfZGVsYXkgPSA8MHgyZj47Cj4KPiBQbGVhc2UgY2hhbmdl
IGl0IHRvIHJnbWlpLWlkLCBhbmQgc21hbGxlciB0eC9yeF9kZWxheSB2YWx1ZXMuIE9yIHNob3cK
PiB1cyB0aGUgc2NoZW1hdGljcyB3aGljaCBjbGVhcmx5IHNob3cgZXh0cmEgbG9uZyBjbG9jayBs
aW5lcy4KPgo+ID4gKy8qIE1pY3JvIFNEIGNhcmQgc2xvdCBpcyBub3QgbW91bnRlZCAqLwo+ID4g
KyZzZG1tYzAgewo+ID4gKyAgICAgbWF4LWZyZXF1ZW5jeSA9IDwxNTAwMDAwMDA+Owo+ID4gKyAg
ICAgbm8tc2RpbzsKPiA+ICsgICAgIG5vLW1tYzsKPiA+ICsgICAgIGJ1cy13aWR0aCA9IDw0PjsK
PiA+ICsgICAgIGNhcC1tbWMtaGlnaHNwZWVkOwo+ID4gKyAgICAgY2FwLXNkLWhpZ2hzcGVlZDsK
PiA+ICsgICAgIGRpc2FibGUtd3A7Cj4gPiArICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
Owo+ID4gKyAgICAgcGluY3RybC0wID0gPCZzZG1tYzBfYnVzNCAmc2RtbWMwX2NsayAmc2RtbWMw
X2NtZCAmc2RtbWMwX2RldD47Cj4gPiArICAgICB2bW1jLXN1cHBseSA9IDwmdmNjM3YzX3NkPjsK
PiA+ICsgICAgIHZxbW1jLXN1cHBseSA9IDwmdmNjaW9fc2Q+Owo+ID4gKyAgICAgc3RhdHVzID0g
ImRpc2FibGVkIjsKPiA+ICt9Owo+ID4gKwo+ID4gKy8qIFdpZmkgbW9kdWxlIGlzIG5vdCBtb3Vu
dGVkICovCj4gPiArJnNkbW1jMiB7Cj4KPiBXaGF0IGRvIHlvdSBtZWFuIGJ5ICJub3QgbW91bnRl
ZCI/Cj4KPiBPZnRlbiB5b3Ugd291bGQgc2F5ICJub3QgcG9wdWxhdGVkIiwgdG8gaW5kaWNhdGUg
dGhlIFBDQiBoYXMgYWxsIHRoZQo+IHRyYWNrcyBpbiBwbGFjZSwgYnV0IHRoZSBjaGlwIGhhcyBz
aW1wbHkgbm90IGJlZW4gc29sZGVyZWQgaW4gcGxhY2UuCj4KPiBPciBpcyB0aGVyZSBhIGNvbm5l
Y3RvciBoZXJlLCBhbmQgbm90aGluZyBwbHVnZ2VkIGludG8gdGhlIGNvbm5lY3Rvcj8KPgo+ICAg
IEFuZHJldwoKQW5kcmV3OgogSGVsbG8hIEkgcmFuIGAuL3NjcmlwdHMvZ2V0X21haW50YWluZXIu
cGwKcGF0Y2hlcy12NC92NC0wMDAzLWFybTY0LWR0cy1yb2NrY2hpcC1hZGQtTGlua0Vhc2UtRWFz
ZVBpLVIxLnBhdGNoYAp0byBnZXQgbWFpbnRhaW5lciBsaXN0LCBhbmQgZ290OgpgYGAKUm9iIEhl
cnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gKG1haW50YWluZXI6T1BFTiBGSVJNV0FSRSBBTkQgRkxB
VFRFTkVECkRFVklDRSBUUkVFIEJJTkRJTkdTKQpLcnp5c3p0b2YgS296bG93c2tpIDxrcnprK2R0
QGtlcm5lbC5vcmc+IChtYWludGFpbmVyOk9QRU4gRklSTVdBUkUgQU5ECkZMQVRURU5FRCBERVZJ
Q0UgVFJFRSBCSU5ESU5HUyxjb21taXRfc2lnbmVyOjMvNDE9NyUpCkNvbm9yIERvb2xleSA8Y29u
b3IrZHRAa2VybmVsLm9yZz4gKG1haW50YWluZXI6T1BFTiBGSVJNV0FSRSBBTkQKRkxBVFRFTkVE
IERFVklDRSBUUkVFIEJJTkRJTkdTKQpIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiAo
bWFpbnRhaW5lcjpBUk0vUm9ja2NoaXAgU29DCnN1cHBvcnQsY29tbWl0X3NpZ25lcjo0My80MT0x
MDAlLGF1dGhvcmVkOjQvNDE9MTAlLGFkZGVkX2xpbmVzOjEyLzExNz0xMCUsY29tbWl0X3NpZ25l
cjo1LzY9ODMlKQpRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRlPgooY29t
bWl0X3NpZ25lcjoxMC80MT0yNCUsYXV0aG9yZWQ6OC80MT0yMCUsYWRkZWRfbGluZXM6NjMvMTE3
PTU0JSkKRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IChjb21taXRfc2lnbmVyOjUv
NDE9MTIlLGNvbW1pdF9zaWduZXI6MS82PTE3JSkKRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEu
Y29tPgooY29tbWl0X3NpZ25lcjozLzQxPTclLGF1dGhvcmVkOjMvNDE9NyUscmVtb3ZlZF9saW5l
czoxLzE9MTAwJSkKUGV0ZXIgUm9iaW5zb24gPHBicm9iaW5zb25AZ21haWwuY29tPgooYWRkZWRf
bGluZXM6OS8xMTc9OCUsY29tbWl0X3NpZ25lcjoxLzY9MTclLGF1dGhvcmVkOjEvNj0xNyUpCkFs
ZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4gKGFkZGVkX2xpbmVzOjYvMTE3PTUlKQpE
aWVkZXJpayBkZSBIYWFzIDxkaWRpLmRlYmlhbkBja25vdy5vcmc+Cihjb21taXRfc2lnbmVyOjQv
Nj02NyUsYXV0aG9yZWQ6My82PTUwJSkKTGlhbmdiaW4gTGlhbiA8amptMjQ3M0BnbWFpbC5jb20+
IChjb21taXRfc2lnbmVyOjEvNj0xNyUsYXV0aG9yZWQ6MS82PTE3JSkKSm9oYW4gSm9ua2VyIDxq
Yng2MjQ0QGdtYWlsLmNvbT4gKGF1dGhvcmVkOjEvNj0xNyUpCmRldmljZXRyZWVAdmdlci5rZXJu
ZWwub3JnIChvcGVuIGxpc3Q6T1BFTiBGSVJNV0FSRSBBTkQgRkxBVFRFTkVECkRFVklDRSBUUkVF
IEJJTkRJTkdTKQpsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcgKG1vZGVyYXRl
ZCBsaXN0OkFSTS9Sb2NrY2hpcCBTb0Mgc3VwcG9ydCkKbGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZyAob3BlbiBsaXN0OkFSTS9Sb2NrY2hpcCBTb0Mgc3VwcG9ydCkKbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZyAob3BlbiBsaXN0KQpgYGAKeW91ciBlbWFpbCBhZGRyZXNzIGlz
IG5vdCBsaXN0ZWQgYWJvdmUuCkFuZCBJIGRpZCBub3QgcmVjZWl2ZSB5b3VyIGNvbW1lbnQgb24g
dGhlIHByZXZpb3UgdmVyc2lvbnMuCgpUaGUgbGF0ZXN0IHY0IHZlcnNpb24gaXMgaGVyZQpodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA5MzAwNTUwMTcuNjc2MTAtMS1qam0yNDczQGdt
YWlsLmNvbS8KLgoKPiBXaGF0IGRvIHlvdSBtZWFuIGJ5ICJub3QgbW91bnRlZCI/Cj4KPiBPZnRl
biB5b3Ugd291bGQgc2F5ICJub3QgcG9wdWxhdGVkIiwgdG8gaW5kaWNhdGUgdGhlIFBDQiBoYXMg
YWxsIHRoZQo+IHRyYWNrcyBpbiBwbGFjZSwgYnV0IHRoZSBjaGlwIGhhcyBzaW1wbHkgbm90IGJl
ZW4gc29sZGVyZWQgaW4gcGxhY2UuCj4KPiBPciBpcyB0aGVyZSBhIGNvbm5lY3RvciBoZXJlLCBh
bmQgbm90aGluZyBwbHVnZ2VkIGludG8gdGhlIGNvbm5lY3Rvcj8KClRoZSBjaGlwL3Nsb3QgaGFz
IG5vdCBiZWVuIHNvbGRlcmVkLiBTbyBoZXJlIHNob3VsZCBiZSAibm90CnBvcHVsYXRlZCIsIGZv
cmdpdmUgbXkgcG9vciBFbmdsaXNoLgoKPiBQbGVhc2UgY2hhbmdlIGl0IHRvIHJnbWlpLWlkLCBh
bmQgc21hbGxlciB0eC9yeF9kZWxheSB2YWx1ZXMuIE9yIHNob3cKPiB1cyB0aGUgc2NoZW1hdGlj
cyB3aGljaCBjbGVhcmx5IHNob3cgZXh0cmEgbG9uZyBjbG9jayBsaW5lcy4KCkluIGZhY3QsIHRo
ZSBSVEw4MjExRidzIFJYRExZIGFuZCBUWERMWSBzaWduYWxzIGFyZSBib3RoIHB1bGxlZCBsb3cs
Cmp1c3QgbGlrZSB0aGUgQmFuYW5hIFBpIEJQSS1SMiBQcm8sIHNvIHRoZSBjb25maWd1cmF0aW9u
IGlzIGFsc28gcmVmZXJlbmNlZDoKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYu
MTUvc291cmNlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LWJwaS1yMi1wcm8u
ZHRzI0wyMzcKClRoZSB0eF9kZWxheSBhbmQgcnhfZGVsYXkgdmFsdWVzIHdlcmUgb2J0YWluZWQg
dXNpbmcgUm9ja2NoaXAncwphdXRvbWF0aWMgc2Nhbm5pbmcgdG9vbDoKaHR0cHM6Ly9naXRodWIu
Y29tL2lzdG9yZW9zL2lzdG9yZW9zL2Jsb2IvNTQ3NDZkZmRiNWJkMzRkMWYyODFjZjQxZDFkMTYy
MGQwYzNlZTY4Ni90YXJnZXQvbGludXgvcm9ja2NoaXAvZmlsZXMvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmstdG9vbC5jCmh0dHBzOi8vZ2l0bGFiLmNvbS9maXJl
Zmx5LWxpbnV4L2RvY3MvLS9ibG9iL3JrMzU2eC9maXJlZmx5L0NvbW1vbi9HTUFDL1JvY2tjaGlw
X0RldmVsb3Blcl9HdWlkZV9MaW51eF9HTUFDX1JHTUlJX0RlbGF5bGluZV9FTi5wZGYKaHR0cHM6
Ly9naXRodWIuY29tL2F4bHJvc2Uvcmtkb2NzL2Jsb2IvbWFpbi9Db21tb24vR01BQy9Sb2NrY2hp
cF9EZXZlbG9wZXJfR3VpZGVfTGludXhfR01BQ19SR01JSV9EZWxheWxpbmVfRU4ucGRmCgpJIHdp
bGwgdHJ5IGNoYW5naW5nIHBoeS1tb2RlID0gInJnbWlpLWlkIiBsYXRlciB0byBzZWUgaWYgZ21h
Ywpjb250aW51ZXMgdG8gd29yayBwcm9wZXJseS4KCiAgTGlhbmdiaW4gTGlhbgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
