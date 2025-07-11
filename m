Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 994B9C83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWLmK+pLVVruDoJZwr7cGt+CW7THxmyPvnHLKtJcRV8=; b=3TSlVoXAig4C+L
	8siLbcRerVwDG35tIfRXbxevyrfDVasooMHSiOXerPZ6492QkeJFoePXnA9npSbEglCF8/99gXcH/
	dAxQtXrYa767kInWfpMHXfU8Qrha6xD9EJWjZ6HW/Q2aRvIQmUwDtFU0VgLnQptDcgR5+dp6uIcPK
	desCKP/FfjO58v/2gxkUDdfG/p+Icj1F97AwbEjCF8vD6lwISMaXkmEQJVBUmFm6EE7elAW1tdNMv
	LqGxpRnqcAfOU+3XbsIqMNwxAPCegvVqA0iYr6Ac+zx6FLN0NmCaVlD2PFD3nddZ8JPWE5cBpQSZE
	EiFZ3HSEdQ19O5PjWQPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaGtI-0000000FKVT-0DEc;
	Fri, 11 Jul 2025 16:46:28 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaGCy-0000000FDg8-3dVb
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Jul 2025 16:02:46 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-711a3dda147so25382177b3.2
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Jul 2025 09:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1752249764; x=1752854564; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KH5AFNkQfuVWbiRBmKTQngI4D6xLZ6iRLprTVywV+pY=;
        b=hGE1BheoJS5dO/N0Wuh/d245BgXrsQHZgfmasPY15ZeFOgFpVEiE7LT2cYAF2c4GkN
         qOZtOMynskL33u+toUMCWEiepHUea9y1glkfywGKxB023OHMdFnBP/2UA/SyROQL7sTD
         z4qob8EsG28G++bIoK5Je/88HNUz+k4N1FsRiLGtv5+z2Xmg+tIaW5aiomHBn73J5cnw
         PROT/JlATbFhGUUPSxXVI5JzVEdq8H2NJ/v0rjgMWJnh9HQSJneIzjPZlHsMGaIZQ7qQ
         8S/r+D/ODgj4Qq3+yjeFHipDdf0/nxBJ8lsYq5vJyPsi/jFiBZUMgq5vD0jwIINqykqx
         uw2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752249764; x=1752854564;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KH5AFNkQfuVWbiRBmKTQngI4D6xLZ6iRLprTVywV+pY=;
        b=ks6VQQlIw9ZB/EWkBA0OQNdbefOjTIhNQa4Lt/mgeYaaH15XbIOK8geYDhU2ErwfTs
         JlxHbSewEqfDCXpvOlxiFIjJKg7MuzOEeHMdQM/VHIDmRZ32sie+1s+SNaFAJfLa8Knw
         Xp7Baj8d28mXubu1PI7j5CfgHUdy+W36V0FtcJ9QfPhgpVHbobZ5VgkO4zDznGPsVMHV
         vn0Hygo6Zd9F1IP5QmbjmbAnseQHAyR0xVJWkl3/5vvyxZ52gG9q6C+/oYj7eFVKCQA/
         U3SHuqbhmbiQpTrubcM4ediaicsdm1rgbun+GUNzEccskTQlWrNZ3s/fwIvYzZ0yLdn+
         W2gQ==
X-Forwarded-Encrypted: i=1; AJvYcCXS4X+w0VCCN0eqG3L7z7pWKfe3gScFFLQvts36krGtGVdfE5ibr6CnjBCJdouE4Und0OzLA2H/WGRkMqutkg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyI9km58wpZ6ffcYex30LwrrkEMuROx5N2MY4xO2dpiMP6iacHT
	EW14LFXjhwjkBnm1y7BVuIWbDxPf6+yzIx1ZBrEQXEZg5xmDcqrdP3TKsA1CHzrFSIUlk48LM8b
	d+6AUsNwfPQ==
X-Gm-Gg: ASbGnct+pzHrm7z/rMAfbS4G0a8lv3JTH/cKEz6hA2aD3B0sj9zNCAdnjofRfV4YZqM
	Pzl6oexMKJqvfxQQ9G6uxEZ9A5V07yqO1STlp/Q6n8uuTNsqxSZR6AZHO7f5BdHpGvZF4cqcu04
	FS4pOEpu0iWsyF690BEGaNhs4W3F5C8Ll25Om7W5csTkBoJQrfUm/e37A5ZDxEMEWKhtge75BqK
	WwotyAEg5wsEkTm8Ya2nI7AWoRVNdRJyHZBSIPviW6Q9GIdu5Vr42wQonjdlRg2FM0s0jK7bQoV
	oa0GWzVK7Ha+aibVQwTj+qlGZD+qyfe0BqquJePHzgsIBAtyMJQAJmWeWlsvDaVLLb8cXyKBHOD
	09AnkEUsDC2a38BLDsWtmWHJMSsGHY8RvTua+HFmuaZ68e/G48ihVjQLg69Z3jglYaQ==
X-Google-Smtp-Source: AGHT+IF692e0QaW4172k2YZ8PSwEKqPioABQ2oIq55rUNDDdw6U28b4baK1IphaobbA8znzW3GtwWw==
X-Received: by 2002:a05:690c:ec6:b0:70d:fe09:9b18 with SMTP id 00721157ae682-717d5c373a9mr70751497b3.2.1752249763690;
        Fri, 11 Jul 2025 09:02:43 -0700 (PDT)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com. [209.85.128.182])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-717c5d73ae5sm8003827b3.46.2025.07.11.09.02.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 09:02:42 -0700 (PDT)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-70e3c6b88dbso16784887b3.0;
        Fri, 11 Jul 2025 09:02:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUDXmCT5WN0caM6J8b9MKdJm/6bn3FuSO8Kkiy2y02gmWFxo98j2gSU+1zmJwjshppSp40GrJ9cRqvVfiyNLMk=@lists.infradead.org, AJvYcCWmzpB+epPGFF15zP7CveVzsq80G4j5bxHqMlK7Mt+VZtGTwACu8h+JmHddA+9KML1/q9Iu6fngZrxry5t0pxYL@lists.infradead.org
X-Received: by 2002:a05:690c:b91:b0:6fb:1c5a:80ea with SMTP id
 00721157ae682-717d5f06565mr68541397b3.32.1752249762154; Fri, 11 Jul 2025
 09:02:42 -0700 (PDT)
MIME-Version: 1.0
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
 <20250606-6-10-rocket-v7-6-dc16cfe6fe4e@tomeuvizoso.net> <a8c3df16-a460-49bb-ba4e-1a07135d24e5@arm.com>
In-Reply-To: <a8c3df16-a460-49bb-ba4e-1a07135d24e5@arm.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Fri, 11 Jul 2025 18:02:29 +0200
X-Gmail-Original-Message-ID: <CAAObsKCinmbFwRqWTOCB3uoH0YLUm3wkvQ7GUhtESzHnAieGxw@mail.gmail.com>
X-Gm-Features: Ac12FXxOOfjV90DXXXBg685kI3y2UMTJtFOhXoVtyQciGpdKZH7V2bdydsxAp7M
Message-ID: <CAAObsKCinmbFwRqWTOCB3uoH0YLUm3wkvQ7GUhtESzHnAieGxw@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] dt-bindings: npu: rockchip,rknn: Add bindings
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_090244_913486_B98DC80F 
X-CRM114-Status: GOOD (  30.83  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, Daniel Stone <daniel@fooishbar.org>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Da Xue <da@libre.computer>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKdW4gMjQsIDIwMjUgYXQgMzoyN+KAr1BNIFJvYmluIE11cnBoeSA8cm9iaW4ubXVy
cGh5QGFybS5jb20+IHdyb3RlOgo+Cj4gT24gMjAyNS0wNi0wNiA3OjI4IGFtLCBUb21ldSBWaXpv
c28gd3JvdGU6Cj4gPiBBZGQgdGhlIGJpbmRpbmdzIGZvciB0aGUgTmV1cmFsIFByb2Nlc3Npbmcg
VW5pdCBJUCBmcm9tIFJvY2tjaGlwLgo+ID4KPiA+IHYyOgo+ID4gLSBBZGFwdCB0byBuZXcgbm9k
ZSBzdHJ1Y3R1cmUgKG9uZSBub2RlIHBlciBjb3JlLCBlYWNoIHdpdGggaXRzIG93bgo+ID4gICAg
SU9NTVUpCj4gPiAtIFNldmVyYWwgbWlzYy4gZml4ZXMgZnJvbSBTZWJhc3RpYW4gUmVpY2hlbAo+
ID4KPiA+IHYzOgo+ID4gLSBTcGxpdCByZWdpc3RlciBibG9jayBpbiBpdHMgY29uc3RpdHVlbnQg
c3ViYmxvY2tzLCBhbmQgb25seSByZXF1aXJlCj4gPiAgICB0aGUgb25lcyB0aGF0IHRoZSBrZXJu
ZWwgd291bGQgZXZlciB1c2UgKE5pY29sYXMgRnJhdHRhcm9saSkKPiA+IC0gR3JvdXAgc3VwcGxp
ZXMgKFJvYiBIZXJyaW5nKQo+ID4gLSBFeHBsYWluIHRoZSB3YXkgaW4gd2hpY2ggdGhlIHRvcCBj
b3JlIGlzIHNwZWNpYWwgKFJvYiBIZXJyaW5nKQo+ID4KPiA+IHY0Ogo+ID4gLSBDaGFuZ2UgcmVx
dWlyZWQgbm9kZSBuYW1lIHRvIG5wdUAgKFJvYiBIZXJyaW5nIGFuZCBLcnp5c3p0b2YgS296bG93
c2tpKQo+ID4gLSBSZW1vdmUgdW5uZWVkZWQgaXRlbXM6IChLcnp5c3p0b2YgS296bG93c2tpKQo+
ID4gLSBGaXggdXNlIG9mIG1pbkl0ZW1zL21heEl0ZW1zIChLcnp5c3p0b2YgS296bG93c2tpKQo+
ID4gLSBBZGQgcmVnLW5hbWVzIHRvIGxpc3Qgb2YgcmVxdWlyZWQgcHJvcGVydGllcyAoS3J6eXN6
dG9mIEtvemxvd3NraSkKPiA+IC0gRml4IGV4YW1wbGUgKEtyenlzenRvZiBLb3psb3dza2kpCj4g
Pgo+ID4gdjU6Cj4gPiAtIFJlbmFtZSBmaWxlIHRvIHJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUu
eWFtbCAoS3J6eXN6dG9mIEtvemxvd3NraSkKPiA+IC0gU3RyZWFtbGluZSBjb21wYXRpYmxlIHBy
b3BlcnR5IChLcnp5c3p0b2YgS296bG93c2tpKQo+ID4KPiA+IHY2Ogo+ID4gLSBSZW1vdmUgbWVu
dGlvbiB0byBOVkRMQSwgYXMgdGhlIGhhcmR3YXJlIGlzIG9ubHkgaW5jaWRlbnRhbGx5IHJlbGF0
ZWQKPiA+ICAgIChLZXZlciBZYW5nKQo+ID4gLSBNYXJrIHBjbGsgYW5kIG5wdSBjbG9ja3MgYXMg
cmVxdWlyZWQgYnkgYWxsIGNsb2NrcyAoUm9iIEhlcnJpbmcpCj4gPgo+ID4gdjc6Cj4gPiAtIFJl
bW92ZSBhbGxPZiBzZWN0aW9uLCBub3QgbmVlZGVkIG5vdyB0aGF0IGFsbCBub2RlcyByZXF1aXJl
IDQgY2xvY2tzCj4gPiAgICAoSGVpa28gU3TDvGJuZXIpCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTog
U2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBUb21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4KPiA+IFJl
dmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFy
by5vcmc+Cj4gPiAtLS0KPiA+ICAgLi4uL2JpbmRpbmdzL25wdS9yb2NrY2hpcCxyazM1ODgtcmtu
bi1jb3JlLnlhbWwgICAgfCAxMTggKysrKysrKysrKysrKysrKysrKysrCj4gPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxMTggaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4
LXJrbm4tY29yZS55YW1sCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMC4uMDU4OGMwODVhNzIzYTM0ZjRmYTMw
YTk2ODBlYTk0OGQ5NjBiMDkyZgo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9yb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlh
bWwKPiA+IEBAIC0wLDAgKzEsMTE4IEBACj4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
KEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCj4gPiArJVlBTUwgMS4yCj4gPiArLS0tCj4g
PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9ucHUvcm9ja2NoaXAscmszNTg4
LXJrbm4tY29yZS55YW1sIwo+ID4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRh
LXNjaGVtYXMvY29yZS55YW1sIwo+ID4gKwo+ID4gK3RpdGxlOiBOZXVyYWwgUHJvY2Vzc2luZyBV
bml0IElQIGZyb20gUm9ja2NoaXAKPiA+ICsKPiA+ICttYWludGFpbmVyczoKPiA+ICsgIC0gVG9t
ZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9zby5uZXQ+Cj4gPiArCj4gPiArZGVzY3JpcHRpb246
Cj4gPiArICBSb2NrY2hpcCBJUCBmb3IgYWNjZWxlcmF0aW5nIGluZmVyZW5jZSBvZiBuZXVyYWwg
bmV0d29ya3MuCj4gPiArCj4gPiArICBUaGVyZSBpcyB0byBiZSBhIG5vZGUgcGVyIGVhY2ggY29y
ZSBpbiB0aGUgTlBVLiBJbiBSb2NrY2hpcCdzIGRlc2lnbiB0aGVyZQo+ID4gKyAgd2lsbCBiZSBv
bmUgY29yZSB0aGF0IGlzIHNwZWNpYWwgYmVjYXVzZSBpdCBpcyBhYmxlIHRvIHJlZGlzdHJpYnV0
ZSB3b3JrIHRvCj4gPiArICB0aGUgb3RoZXIgY29yZXMgYnkgZm9yd2FyZGluZyByZWdpc3RlciB3
cml0ZXMgYW5kIHNoYXJpbmcgZGF0YS4gVGhpcyBzcGVjaWFsCj4gPiArICBjb3JlIGlzIGNhbGxl
ZCB0aGUgdG9wIGNvcmUgYW5kIHNob3VsZCBoYXZlIHRoZSBjb21wYXRpYmxlIHN0cmluZyB0aGF0
Cj4gPiArICBjb3JyZXNwb25kcyB0byB0b3AgY29yZXMuCj4KPiBTYXkgYSBmdXR1cmUgU29DLCBm
b3Igc2NhbGluZyByZWFzb25zLCBwdXRzIGRvd24gdHdvIG9yIG1vcmUgd2hvbGUgTlBVcwo+IHJh
dGhlciB0aGFuIGp1c3QgaW5jcmVhc2luZyB0aGUgbnVtYmVyIG9mIHN1Yi1jb3JlcyBpbiBvbmU/
IEhvdyBpcyBhIERUCj4gY29uc3VtZXIgdGhlbiBnb2luZyB0byBrbm93IHdoaWNoICJjb3JlcyIg
YXJlIGFzc29jaWF0ZWQgd2l0aCB3aGljaCAidG9wCj4gY29yZXMiPyBJIHRoaW5rIGF0IHRoZSB2
ZXJ5IGxlYXN0IHRoZXkgd2FudCBwaGFuZGxlcyBpbiBvbmUgZGlyZWN0aW9uIG9yCj4gdGhlIG90
aGVyLCBidXQgaWYgdGhlcmUgaXMgYSByZWFsIGZ1bmN0aW9uYWwgaGllcmFyY2h5IHRoZW4gSSdk
IGJlCj4gc3Ryb25nbHkgdGVtcHRlZCB0byBoYXZlIHRoZSAiY29yZSIgbm9kZXMgYXMgY2hpbGRy
ZW4gb2YgdGhlaXIgInRvcAo+IGNvcmUiLCBwYXJ0aWN1bGFybHkgc2luY2UgImZvcndhcmRpbmcg
cmVnaXN0ZXIgd3JpdGVzIiBzb3VuZHMgYWJzb2x1dGVseQo+IGxpa2Ugc29tZXRoaW5nIHdoaWNo
IGNvdWxkIGp1c3RpZnkgYmVpbmcgcmVwcmVzZW50ZWQgYXMgYSAiYnVzIiBpbiB0aGUKPiBEVCBz
ZW5zZS4KCkFjdHVhbGx5LCBJIGV4cGVyaW1lbnRlZCB3aXRoIGhhdmluZyB0aGUgdGhyZWUgY29y
ZXMgYXMgY29tcGxldGVseQppbmRlcGVuZGVudCB1bml0cyBhbmQgdGhpbmdzIGp1c3Qgd29yayB3
aXRoIGhvdyByZXNvdXJjZXMgYXJlCnJlZmVyZW5jZWQgaW4gdGhlIERUIG5vZGVzLgoKU28gSSdt
IGp1c3QgaGF2aW5nIGEgdG9wLWxldmVsIG5vZGUgcGVyIGNvcmUgd2l0aCB0aGUgc2FtZSBjb21w
YXRpYmxlLgoKVGhhbmtzLAoKVG9tZXUKCj4gVGhhbmtzLAo+IFJvYmluLgo+Cj4gPiArCj4gPiAr
cHJvcGVydGllczoKPiA+ICsgICRub2RlbmFtZToKPiA+ICsgICAgcGF0dGVybjogJ15ucHVAW2Et
ZjAtOV0rJCcKPiA+ICsKPiA+ICsgIGNvbXBhdGlibGU6Cj4gPiArICAgIGVudW06Cj4gPiArICAg
ICAgLSByb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLXRvcAo+ID4gKyAgICAgIC0gcm9ja2NoaXAs
cmszNTg4LXJrbm4tY29yZQo+ID4gKwo+ID4gKyAgcmVnOgo+ID4gKyAgICBtYXhJdGVtczogMwo+
ID4gKwo+ID4gKyAgcmVnLW5hbWVzOgo+ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGNvbnN0
OiBwYwo+ID4gKyAgICAgIC0gY29uc3Q6IGNuYQo+ID4gKyAgICAgIC0gY29uc3Q6IGNvcmUKPiA+
ICsKPiA+ICsgIGNsb2NrczoKPiA+ICsgICAgbWF4SXRlbXM6IDQKPiA+ICsKPiA+ICsgIGNsb2Nr
LW5hbWVzOgo+ID4gKyAgICBpdGVtczoKPiA+ICsgICAgICAtIGNvbnN0OiBhY2xrCj4gPiArICAg
ICAgLSBjb25zdDogaGNsawo+ID4gKyAgICAgIC0gY29uc3Q6IG5wdQo+ID4gKyAgICAgIC0gY29u
c3Q6IHBjbGsKPiA+ICsKPiA+ICsgIGludGVycnVwdHM6Cj4gPiArICAgIG1heEl0ZW1zOiAxCj4g
PiArCj4gPiArICBpb21tdXM6Cj4gPiArICAgIG1heEl0ZW1zOiAxCj4gPiArCj4gPiArICBucHUt
c3VwcGx5OiB0cnVlCj4gPiArCj4gPiArICBwb3dlci1kb21haW5zOgo+ID4gKyAgICBtYXhJdGVt
czogMQo+ID4gKwo+ID4gKyAgcmVzZXRzOgo+ID4gKyAgICBtYXhJdGVtczogMgo+ID4gKwo+ID4g
KyAgcmVzZXQtbmFtZXM6Cj4gPiArICAgIGl0ZW1zOgo+ID4gKyAgICAgIC0gY29uc3Q6IHNyc3Rf
YQo+ID4gKyAgICAgIC0gY29uc3Q6IHNyc3RfaAo+ID4gKwo+ID4gKyAgc3JhbS1zdXBwbHk6IHRy
dWUKPiA+ICsKPiA+ICtyZXF1aXJlZDoKPiA+ICsgIC0gY29tcGF0aWJsZQo+ID4gKyAgLSByZWcK
PiA+ICsgIC0gcmVnLW5hbWVzCj4gPiArICAtIGNsb2Nrcwo+ID4gKyAgLSBjbG9jay1uYW1lcwo+
ID4gKyAgLSBpbnRlcnJ1cHRzCj4gPiArICAtIGlvbW11cwo+ID4gKyAgLSBwb3dlci1kb21haW5z
Cj4gPiArICAtIHJlc2V0cwo+ID4gKyAgLSByZXNldC1uYW1lcwo+ID4gKyAgLSBucHUtc3VwcGx5
Cj4gPiArICAtIHNyYW0tc3VwcGx5Cj4gPiArCj4gPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZh
bHNlCj4gPiArCj4gPiArZXhhbXBsZXM6Cj4gPiArICAtIHwKPiA+ICsgICAgI2luY2x1ZGUgPGR0
LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUuaD4KPiA+ICsgICAgI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2lycS5oPgo+ID4gKyAgICAjaW5jbHVk
ZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+ID4gKyAgICAj
aW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIvcmszNTg4LXBvd2VyLmg+Cj4gPiArICAgICNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9yZXNldC9yb2NrY2hpcCxyazM1ODgtY3J1Lmg+Cj4gPiArCj4gPiAr
ICAgIGJ1cyB7Cj4gPiArICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4gPiArICAgICAgI3Np
emUtY2VsbHMgPSA8Mj47Cj4gPiArCj4gPiArICAgICAgbnB1QGZkYWIwMDAwIHsKPiA+ICsgICAg
ICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS10b3AiOwo+ID4gKyAg
ICAgICAgcmVnID0gPDB4MCAweGZkYWIwMDAwIDB4MCAweDEwMDA+LAo+ID4gKyAgICAgICAgICAg
ICAgPDB4MCAweGZkYWIxMDAwIDB4MCAweDEwMDA+LAo+ID4gKyAgICAgICAgICAgICAgPDB4MCAw
eGZkYWIzMDAwIDB4MCAweDEwMDA+Owo+ID4gKyAgICAgICAgcmVnLW5hbWVzID0gInBjIiwgImNu
YSIsICJjb3JlIjsKPiA+ICsgICAgICAgIGFzc2lnbmVkLWNsb2NrcyA9IDwmc2NtaV9jbGsgU0NN
SV9DTEtfTlBVPjsKPiA+ICsgICAgICAgIGFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDIwMDAwMDAw
MD47Cj4gPiArICAgICAgICBjbG9ja3MgPSA8JmNydSBBQ0xLX05QVTA+LCA8JmNydSBIQ0xLX05Q
VTA+LAo+ID4gKyAgICAgICAgICAgICAgICAgPCZzY21pX2NsayBTQ01JX0NMS19OUFU+LCA8JmNy
dSBQQ0xLX05QVV9ST09UPjsKPiA+ICsgICAgICAgIGNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNs
ayIsICJucHUiLCAicGNsayI7Cj4gPiArICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTEw
IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4gPiArICAgICAgICBpb21tdXMgPSA8JnJrbm5fbW11
X3RvcD47Cj4gPiArICAgICAgICBucHUtc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsKPiA+ICsgICAg
ICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9OUFVUT1A+Owo+ID4gKyAgICAg
ICAgcmVzZXRzID0gPCZjcnUgU1JTVF9BX1JLTk4wPiwgPCZjcnUgU1JTVF9IX1JLTk4wPjsKPiA+
ICsgICAgICAgIHJlc2V0LW5hbWVzID0gInNyc3RfYSIsICJzcnN0X2giOwo+ID4gKyAgICAgICAg
c3JhbS1zdXBwbHkgPSA8JnZkZF9ucHVfbWVtX3MwPjsKPiA+ICsgICAgICB9Owo+ID4gKyAgICB9
Owo+ID4gKy4uLgo+ID4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
