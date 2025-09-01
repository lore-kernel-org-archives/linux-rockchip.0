Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B649BCA0FE8
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Sep 2025 00:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZyTEo+JCC+SfmmdIeDn0OtvtEk8oMCF4CaF6aM21i0=; b=yDfSZDf5EpPYqE
	BdKxuDobAMs4fh8p7ZO+aYa5XSIw7LuREcdODndFfbhaEpNtHjqAYBKXlYxssQ1JmuPxH4CvGSzrg
	zZRZrmhRMMQRy/AnRIG82AQbBJNu0LILTvPbsTdAgFGmOuE9X+yaX+EJ9i3/IqhEfAT5LN9iMXZoi
	OqBheFD8Syyt91y3mlFScrgz6w8MY5np9fj+gm11VqmHMd9OujbeVHtUDy99U2n9fuQVeIMa06p2m
	sIS+kNJcPFbTwnvobGM3EJNg/nRxPkmGjxLrdgpMArvs3s7SADeIuF4Nzi6TZ4ITNSNm2HAfGD2Wf
	KSMgyXD5Gprqifr4kUuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ussXM-0000000As7j-3TOv;
	Mon, 01 Sep 2025 00:36:44 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ussUf-0000000As3Y-0oN4;
	Mon, 01 Sep 2025 00:33:58 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-61e425434bbso964865a12.2;
        Sun, 31 Aug 2025 17:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756686835; x=1757291635; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MvH3gCh3YcyePorgXaVz1lgEivaFSAAjIPEZY4vEWpE=;
        b=BbhqPGBMposKMQFNaPJXuaDBvuJvemqnxWLzYpdT6SfXY9ANLyivTFu28CRyAYYGJo
         J5HUcGBQR3TYkHBol0kd333qvQxnDoYxdOKlaiepES7pgXfLXXXp0AZb/Ey6WIl8Lq6c
         2FQy9IDQUQfpzn8J/yoOM+0OhWyfowUwDN4dKXS81f4e6khqfXMX72RUH1nzpg9bxnZ7
         vRiFlmK7GtgfoC7+zUFEk5WxIX03Xd9wXHxejoN3ga34a3xIfooZ9ujph4qQE+os2d2+
         DsQN9uCiEzAZWbwsulaZU8ur0j3p6AoEHD2xnNrgUpRMAagNtYSgZfPdbuvtW8Ut2hYO
         gGVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756686835; x=1757291635;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MvH3gCh3YcyePorgXaVz1lgEivaFSAAjIPEZY4vEWpE=;
        b=uCRtn/yAdvhfN1sueP6xZyGsUkfozUpvifIye+bsEHa/Ofz7VjZ22Gm6ZV3uwrUo1c
         nSDI53D9qHHYuNxOkMlcLLN7v/B4hZGiVpsnOeOvEt5LjIERkygFteqPAhvbgdDOd1Fs
         k1npakIQfZlhdJ0R0hYsJq0qkx0/qQ43cy7AYDUIb+eAz/Fmfbs53CSLBRPIBAVWMhDY
         lha9wzVtq5rh/Gq7NYFhAY79jgC75F74TCMV/qCuXxWenjcwAwHg28FBhJAGWPkuXopj
         /nic2ryx0kTb3k+oHqhEcxgEnd8bSMweywsSL9Y0AMudJZ/pL9GvaL+Ra5hLY9TF/cbV
         SQzg==
X-Forwarded-Encrypted: i=1; AJvYcCUkuACg/+0Oj5kIJTOs09EMlIYmeZ/gE0XF15xmHQwjdoWdBeX3fX1iY0a6SYwrQyGN3RQQ51GN6vMZNKZAUnI=@lists.infradead.org, AJvYcCWT7nrvJIoSD4kJt4UzcYY+kVCIVoRhXdabI+zh+9iEDFpy2FOLQvtQ2d4amOCOj8/RAdOJi3O8QurTbuoGLixb@lists.infradead.org
X-Gm-Message-State: AOJu0YxmOu6+G+Kpo9FZDK7pm3pNTXujmohik3N7vCpgSuxhEiS+KtVi
	poWHqtcpNa2Rh1GQES4fH0y2tNT6h//yLP2O3tUh69g+CIwVim+7++nHhtMHsj63zECOWmTKqH1
	FnerUaA70NKMasSRyn+Y9AtQ7S1E7rgM=
X-Gm-Gg: ASbGncvEY4pCZraPZooUsAfSY16eG8EtaUdYZ1Jtan+Xe6wpV4BGi8qiQt2Z0xbji1j
	nujEsGN6Xm9NN5MUEubkZnYFzFHgQAe5vTjRq/wYonNzdn2D5NgoWwbB50HxjkrCpqZ6AzUJTIh
	aLWk+qH3CVUpMNxPOgu1XUFnVQwG+TNRjSnG4fRFufGdtLqTKIbLJ4DabQRb6nT1dq0ti4VnXhf
	TVUEvDaNp8oeD0Ui/kSJuis
X-Google-Smtp-Source: AGHT+IHsnDIYWknvZ46S599IimzZF74o7ha/d+7Cbv/hBrVMIpqV1LTK6TMA9HYQ0QgUHmynIKjrSHRY7rxC6a02QK0=
X-Received: by 2002:a05:6402:27c9:b0:61c:bd9f:723e with SMTP id
 4fb4d7f45d1cf-61d26c3fabfmr4557103a12.22.1756686835238; Sun, 31 Aug 2025
 17:33:55 -0700 (PDT)
MIME-Version: 1.0
References: <20250831104855.45883-1-cn.liweihao@gmail.com> <20250831104855.45883-7-cn.liweihao@gmail.com>
 <8571992.T7Z3S40VBb@diego>
In-Reply-To: <8571992.T7Z3S40VBb@diego>
From: =?UTF-8?B?5p2O57u06LGq?= <cn.liweihao@gmail.com>
Date: Mon, 1 Sep 2025 08:33:44 +0800
X-Gm-Features: Ac12FXwjlx-F7jqLTPXkOkYRV923MnWRyR-cXYRmkjdjk9ub15vW_5_Mbgck2YU
Message-ID: <CAPEOAkRpuOOVXwDDha+990znhh0-PZwqa=F=mibGkJck5rgZ_w@mail.gmail.com>
Subject: Re: [PATCH v1 6/7] ARM: dts: rockchip: Add D-PHY for RK3368
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_173357_237608_5C1EE930 
X-CRM114-Status: GOOD (  14.78  )
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

SGksCgpUaGlzIHBoeSBpcyBhIE1JUElfRFNJL0xWRFMvVFRMIGNvbWJvIHBoeS4KCm1heWJlIGl0
IGJlIGJldHRlciB0byB1c2UgZHBoeTogcGh5QGZmOTY4MDAwPwoKQmVzdCByZWdhcmRzLApXZWlI
YW8KCkhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IOS6jjIwMjXlubQ45pyIMzHml6Xl
kajml6UgMjM6MDblhpnpgZPvvJoKCj4KPiBBbSBTb25udGFnLCAzMS4gQXVndXN0IDIwMjUsIDEy
OjQ4OjU0IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgV2VpSGFvIExpOgo+
ID4gUkszMzY4IGhhcyBhIElubm9TaWxpY29uIEQtUEhZIHdoaWNoIHN1cHBvcnRzIERTSS9MVkRT
L1RUTCB3aXRoIG1heGltdW0KPiA+IHRyYXNuZmVyIHJhdGUgb2YgMSBHYnBzIHBlciBsYW5lLgo+
ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFdlaUhhbyBMaSA8Y24ubGl3ZWloYW9AZ21haWwuY29tPgo+
ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzNjguZHRzaSB8IDE0
ICsrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKPiA+
Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzNjguZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzY4LmR0c2kKPiA+IGluZGV4IDBl
NDdiZjU5YS4uNjc0YTM2NzZkIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzNjguZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzNjguZHRzaQo+ID4gQEAgLTg4NCw2ICs4ODQsMjAgQEAgZGlzcGxheV9zdWJzeXN0ZW06
IGRpc3BsYXktc3Vic3lzdGVtIHsKPiA+ICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVk
IjsKPiA+ICAgICAgIH07Cj4gPgo+ID4gKyAgICAgdmlkZW9fcGh5OiB2aWRlby1waHlAZmY5Njgw
MDAgewo+Cj4gSSB0aGluayB0aGUgbm9kZSBzaG91bGQgYmUgc29tZXRoaW5nIGxpa2UKPiBkc2lf
ZHBoeTogcGh5QGZmOTY4MDAwCj4KPgo+ID4gKyAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJv
Y2tjaGlwLHJrMzM2OC1kc2ktZHBoeSI7Cj4gPiArICAgICAgICAgICAgIHJlZyA9IDwweDAgMHhm
Zjk2ODAwMCAweDAgMHg0MDAwPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgPDB4MCAweGZmOTYw
MDAwIDB4MCAweDQwMDA+Owo+ID4gKyAgICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBTQ0xLX01J
UElEU0lfMjRNPiwgPCZjcnUgUENMS19EUEhZVFgwPiwKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgPCZjcnUgUENMS19NSVBJX0RTSTA+Owo+ID4gKyAgICAgICAgICAgICBjbG9jay1uYW1lcyA9
ICJyZWYiLCAicGNsayIsICJwY2xrX2hvc3QiOwo+ID4gKyAgICAgICAgICAgICAjY2xvY2stY2Vs
bHMgPSA8MD47Cj4gPiArICAgICAgICAgICAgIHJlc2V0cyA9IDwmY3J1IFNSU1RfTUlQSURQSFlU
WD47Cj4gPiArICAgICAgICAgICAgIHJlc2V0LW5hbWVzID0gImFwYiI7Cj4gPiArICAgICAgICAg
ICAgICNwaHktY2VsbHMgPSA8MD47Cj4gPiArICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxl
ZCI7Cj4gPiArICAgICB9Owo+ID4gKwo+ID4gICAgICAgaGV2Y19tbXU6IGlvbW11QGZmOWEwNDQw
IHsKPiA+ICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxpb21tdSI7Cj4gPiAg
ICAgICAgICAgICAgIHJlZyA9IDwweDAgMHhmZjlhMDQ0MCAweDAgMHg0MD4sCj4gPgo+Cj4KPgo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
