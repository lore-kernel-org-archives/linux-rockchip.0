Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4F09C021B2
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 22:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBnfPNBnu9AeBm1df6u0BCeExjzVBBIVYmTN6+gXZT8=; b=2ilF4xd62W/e0I
	VIxvBcM1GI5H4uevXHGKz/v5+14U3Fpsn0rEHvr6FPG/N1u+KMG7cif85vU5/5hp5iXRTWk2ndb+I
	KGSXl1VqcMVIwh38h+lY05iGe4IwI6jwHrJJW5Eg0h+pK32y1RdbRKiBKp5L2m3nHTSE5qdg8ZW1J
	6thtddkXFNZEZhSTYJXElTFAc3/JSbwa/NZ833jfhVrSpUFXj9PVQhE1OtJILjsBw9dYlHdBUWiz9
	H8UWK0TutD+B1HH01bsJRg84y+WrOTUXAroC1vHWDX9IA10WyLnzJ19buDsfhYrFQLI93z5nVjuQI
	z24NitGZWEBe/udV7WIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tly8q-000000093cy-0Qyr;
	Sat, 22 Feb 2025 22:38:36 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tly7K-000000093KH-3nYo;
	Sat, 22 Feb 2025 22:37:04 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-439a1e8ba83so31255405e9.3;
        Sat, 22 Feb 2025 14:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740263821; x=1740868621; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2/GVEbxQ97fbkhIcJUEnqr5o5JOI8aPTh6cyD4iHKT0=;
        b=f/4ndnN6ZKZ2GvdGgprE3cicEpiGwt56E2DTQjMNYj150pY37FOeYGts2jasBvbgl8
         KDQpwcRbGcsaCtPwFcIxy+Fqv3IIR1r/EiUym/SvmJHHehB7H4LDZX4OV7+iSTTNuVkf
         rgtWHTFhIxvX/zZ6jYvFG2vJN5hEFP0XvaN6YRGf/eU46EAbdF4fL9N5nfEkBaqFGHLe
         wpFz5tNh8Uby9vwwL1J95NFulFYQEjmCsnukQ/3hj7CSZ/zNogs0016L26+oWbK/xRJP
         ETKY85lvFZmwVGPNkktmNCrSfCE4SuoME4dxouaKU61R9n4EsKvgCSyreq+k0w/l+Ute
         tFcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740263821; x=1740868621;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2/GVEbxQ97fbkhIcJUEnqr5o5JOI8aPTh6cyD4iHKT0=;
        b=YizL4sj9+FPGnwRpLV4tJIvIbBVqs5KE1LiIOYzQCByDIWR40uPM+00s9WCFT0nXSq
         qFIYP8glvlK8y5bKUiZ2jJdkSoyAy5RYKN3o3JqIr1xXY9vd8Dss8Eud8kwCXMRYOpnZ
         LfLLD8e+qMQMPqS5ojZDRd/4Qi9sS2U+JxAnZlGBD8tkcq6ZXjzbXpEC4YacXxG1/jsJ
         bg6g+lY+dSyXcSUF08/WNntGZtC/EwCnSWP2w8eOCa5q7l326yfeWbolcKvJ1lnjqSuJ
         G2RGL85oI+x4IiBXZYZlY0Q6cqz0VLdh8pt9r7WVHuLllGHdNixM7OYHzOkYOlgm6vJi
         sqUA==
X-Forwarded-Encrypted: i=1; AJvYcCUj+0q07qJTTdpdkwspJwuv5rDGX0qhLn8j7ooW91XH+KftNsn1QXlgZVGfYAlbYeYzWkq4mWtbjbOD7no0wVQU@lists.infradead.org, AJvYcCVcCwpa61ufTUOAWSaL2eqy14JNEGatk6dwjwE/zxHldMDPKHb0+DkNCfZuR9XwI26kpnRC5KqLR0MzyYJTkCk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxObbUqX1UG1xzgFZJpVMCkHOaUM+cTC4TORsgrn2DJo6B/LmXM
	nPsqcTuevb2pO+Ahk8ga161EsL1/L7q+3pLxi/Jmgbol7tLKgasy5m22KacLMQV5fU2K7Zf+318
	bw0YoA+lO/fIm9No/UXTYSH3nNBM=
X-Gm-Gg: ASbGnctKj7Bg2YhsOJMKOGjUmwN9tevRiR/qe+oiWxkBfJpWm4XpTKdDkp8uosTQn+/
	EHGHEdmjKBcS0rTqQXZ0FJGEj5Us6E3k1hjqZDuVtorPLrdnXF0lilLzXqQaxEm9pv1Kv3aTRV1
	2liBCacQpTvtvf7g79Nzst3Vj9ti7O1MiaZd7IYz8=
X-Google-Smtp-Source: AGHT+IGHmpDWi6/WtmtOBhBVoA+cMa1qycvf3lB7IeXFUX1UY4PKgFEcR3pytfVzteR2rj111qNX0UWQpuYrewIJGhQ=
X-Received: by 2002:a05:600c:5489:b0:439:86fb:7326 with SMTP id
 5b1f17b1804b1-439aebb5558mr53829545e9.22.1740263820918; Sat, 22 Feb 2025
 14:37:00 -0800 (PST)
MIME-Version: 1.0
References: <20250222193332.1761-1-honyuenkwun@gmail.com> <20250222193332.1761-5-honyuenkwun@gmail.com>
 <20250222211820.GY16911@sventech.com>
In-Reply-To: <20250222211820.GY16911@sventech.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sat, 22 Feb 2025 16:36:50 -0600
X-Gm-Features: AWEUYZl7mqFGT6hL26BmUv2bUvBOH_-pwsfvZ96RvVOY1DCUAzUtL_VvJwDEiN0
Message-ID: <CALWfF7+82pkOhqpRxCzPMhvdV6_e9o4UGixWMvwj2gStQ9PgLw@mail.gmail.com>
Subject: Re: [PATCH v7 4/5] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Ultra
To: Johannes Erdfelt <johannes@erdfelt.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250222_143703_092743_78A55218 
X-CRM114-Status: GOOD (  10.08  )
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

T24gU2F0LCBGZWIgMjIsIDIwMjUgYXQgMzoxOOKAr1BNIEpvaGFubmVzIEVyZGZlbHQgPGpvaGFu
bmVzQGVyZGZlbHQuY29tPiB3cm90ZToKPgo+IEkndmUgdGVzdGVkIHRoaXMgcGF0Y2hzZXQgdXAg
dG8gdGhpcyBwYXRjaC4gSSB1bmZvcnR1bmF0ZWx5IGRvbid0IGhhdmUgYQo+IHdheSB0byB0ZXN0
IGF1ZGlvIG9uIHRoZSBIRE1JIHBvcnQgY3VycmVudGx5Lgo+Cj4gQWxsIG9mIHRoZSBpc3N1ZXMg
SSBoYWQgcHJldmlvdXNseSBhcmUgZml4ZWQgaW4gdGhpcyBwYXRjaHNldC4KVGhhbmtzIGZvciB0
aGUgdmVyaWZpY2F0aW9uLiBXaWxsIHlvdSBiZSBzZW5kaW5nIHlvdXIgVGVzdGVkLUJ5OiBmb3IK
cGF0Y2ggMyBhbmQgNCB0aGVuPwoKSmltbXkKCj4KPiBUaGFua3MgZm9yIHRoZSB3b3JrIGluIHB1
dHRpbmcgdGhpcyB0b2dldGhlciwgZXNwZWNpYWxseSB3aXRob3V0IGFjY2Vzcwo+IHRvIGhhcmR3
YXJlLgo+Cj4gSkUKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
