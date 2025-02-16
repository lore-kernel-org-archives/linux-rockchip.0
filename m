Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40093C02198
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Feb 2025 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZqN0P3kyebREdEs8yYg7d5/mqvr58db4OD75F027hM=; b=w01Z7jURPJUJKy
	W0VYuJZkmPL1B+J6tcP0iYiibX3xBls/kBaSEj9/D64TU7J7ieaCza7QsBSQKg7RAAxR65BGbPTBm
	L4p8Vf8rK/CpYsFkybG5U0uFNPslzM5I97UjTAanhA7htnAnJignkaqHPD1Xj0+wnQlEnGVPTvEPj
	XdKLo1Ht4Ev9g/qqv83MM2yZhPXJ4R/ZZKGFeXqXoEJpXK50LFV+hHq2mUt2imuDc1VdLOow7If2h
	T8foLRR1rhpjjj1xpOKbOIJr73qx9N0wEuaeD6KTMa2+8qDPygs0+tFgmD+9YVwlY6AopdoqU7cJ+
	uHZR/Ine73inu5fk2htA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjkkt-00000002VEw-19Oi;
	Sun, 16 Feb 2025 19:56:43 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjkhz-00000002UlV-2kqq;
	Sun, 16 Feb 2025 19:53:44 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5debbced002so6962158a12.1;
        Sun, 16 Feb 2025 11:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739735622; x=1740340422; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=af1SOjIZIJuY/yZ1MYRyyrZydDPDM0jQ3H4asZdVI0w=;
        b=kWgNltUNbzf7og0UpIANHFMEr3thKuT8LRgEQtnAkaCrSYz3mBpfQFxVq+rZbdmTnB
         d0W9C6bm8NACzgCFMMOovFrs5PqIAYeJS0EN3SeliaEl+Y1dPin7Tny84MhPV/lRsH7n
         xfBnjfo5phlvBE7OaT47pgOIThyhegnu1zyWqEhQ0auAVPM8DW62SXHCZ7nGmBIYGrKb
         Ru563JSamRG02HFPZw6t5wUKxqqC91zp0snuRBdKSb39eTDgSvPUkhIdtI1N2vMaW9Lz
         Hcy5Pudr/MUivIxZl7valFpsor6NCIO+9oykH6+WwY/gs2X/vhSPrZJVCqgs04Q3RRK3
         i7Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739735622; x=1740340422;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=af1SOjIZIJuY/yZ1MYRyyrZydDPDM0jQ3H4asZdVI0w=;
        b=QzIGAQwVRBoiADdaxiwa68u2cW56v882z/ORLkyNTQSjvmhkl1lPE1ZkeRppDJiy/2
         PaYEAckPFRvFdvFZvFTiOa1Y8JMreZaOTaE1zdpvZFmM1Mmc7kOqZlAT8Yiyw/H1sBcH
         TOzNx3rqZ2uPOgDl6UW0ahyi+bMYS9uH6zMjy9BW8iTxYKghdbbt7AA8RNjcrBJ00JQD
         40pG2NyFadwm4a5IPfaBsLJn5K5bNHQ4Cd3YrTYgkyiIeqIIdXyXHUcK/MBNaWOpBnHF
         MgV+ZhvXAwP3Ec0HwjlyOUqvOsIYHcobZTjcBnfC0CBOOUACco55p0AzUMfUlGtR5rl/
         BTZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBfkwOVrA63x7kJqCtztC3DZbMUHfCgpJ1SmcyqerUuk79T4OLNQUTH1RM/DRcWogkAchkN9omuFonXo/zNXGM@lists.infradead.org, AJvYcCVO2YpeW0gAgQ/SoaSbtZNrUb0IX5Mcv7DNp4z3DpuFAhtx+9iBF4KB+gEWxSgoqrLvfZPCqRTwTs1Ao4Te8MU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4wl4qvHzW9Ud/hZp11L1KxnuvbZimsOwTeYKHOe1Dd9zLeNQu
	wNWHz4i+Ep8K1B1WMbTAWppacvJ60YIVNx6NQsRT4rQtqUYMdoZJ
X-Gm-Gg: ASbGncvuPa7B0t7SuxOICezTKWvmUOhMCAmEhHhXGlFWyAlFJ75Lcdr2t2eT7lChfqr
	YD7NakLOsvDGmjvZvp+Op9c7oooFPDGhAmwxHXoC8wSJdx9KCfmH2OtuFLYqn9yDFRY65218TJm
	iQcVj6klJ6PNXolNcUUcjTppENJksfGRjShS0m37ahHMSeZt7/lXbPoa7ZL5BHLZWmM02cVrA7N
	8IjGnya0IFhQWt27IpiC1PfXAhHUTRzIBlhsiK4+OXgCIqc7dTm151IhjiA0kycj831de/q0MhU
	6Yxj/kON60/3hEF9Ww36najAO9R4zekYYAg646JnkCaXHDjUg9u++6cork34vN9j1gODohsR
X-Google-Smtp-Source: AGHT+IHNAYN/ohlBH1PsGGST7ieKr2wc9iNQj10zrIC3IuwUmk0o8j5XTagbop5wOPUoxS8ZwtDvrg==
X-Received: by 2002:a05:6402:51d3:b0:5db:e88c:914f with SMTP id 4fb4d7f45d1cf-5e037222d59mr7744568a12.4.1739735621515;
        Sun, 16 Feb 2025 11:53:41 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1d3493sm6225309a12.35.2025.02.16.11.53.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Feb 2025 11:53:40 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH] arm64: dts: rockchip: add hdmi1 support to ROCK 5 ITX
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20250216134918.1357069-1-liujianfeng1994@gmail.com>
Date: Sun, 16 Feb 2025 20:53:27 +0100
Cc: conor+dt@kernel.org,
 devicetree@vger.kernel.org,
 heiko@sntech.de,
 krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 robh@kernel.org,
 sfr@canb.auug.org.au
Message-Id: <2FE649E5-61FE-4299-81D1-F838298A04A5@gmail.com>
References: <566E6F11-765C-4415-8805-55DFD3C2BD4D@gmail.com>
 <20250216134918.1357069-1-liujianfeng1994@gmail.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_115343_697136_DBF7F7E3 
X-CRM114-Status: GOOD (  11.22  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEppYW5mZW5nIExpdSA8bGl1amlhbmZlbmcx
OTk0QGdtYWlsLmNvbT4gdyBkbml1IDE2IGx1dCAyMDI1LCBvIGdvZHouIDE0OjQ5Ogo+IAo+IEhp
IFBpb3RyLAo+IAo+IE9uIFN1biwgMTYgRmViIDIwMjUgMTM6Mzc6MDUgKzAxMDAsIFBpb3RyIHdy
b3RlOgo+PiBJcyB0aGVyZSBhbnl3aGVyZSByZXBvIHdpdGggdGhpcyBwYXRjaCBhcHBsaWVkIHRv
IHRlc3QgaXQgb24gcm9jazUgaXR4IGh3Pwo+IAo+IFRoaXMgcGF0Y2ggaXMgYXBwbGllZCB0byA2
LjEzIGFuZCBJIHdhcyB0ZXN0aW5nIHdpdGggYXJtYmlhbjoKPiBodHRwczovL2dpdGh1Yi5jb20v
YXJtYmlhbi9idWlsZC9wdWxsLzc4MjkuCgpXZWxsIC0gaSBidWlsZCA2LjEyLjMgd2l0aCBjdXJy
ZW50IGFybWJpYW4gcGF0Y2hlczoKCmh0dHBzOi8vZ2l0aHViLmNvbS9hcm1iaWFuL2J1aWxkL3Ry
ZWUvbWFpbi9wYXRjaC9rZXJuZWwvYXJjaGl2ZS9yb2NrY2hpcDY0LTYuMTMgKGFsbCByazM1ODgt
Ki5wYXRjaCkKCiArIGh0dHBzOi8vZ2l0aHViLmNvbS9hcm1iaWFuL2J1aWxkL3B1bGwvNzgyOQoK
YW5kIGnigJltIHN0aWxsIGdldHRpbmc6Cgpyb290QG15dGgtZnJvbnRlbmQtNTZiMGYwMThiNWUw
On4gIyBkbWVzZyB8IGdyZXAgZHJtClsgICAgMC41MjkzNjFdIHJvY2tjaGlwLWRybSBkaXNwbGF5
LXN1YnN5c3RlbTogYm91bmQgZmRkOTAwMDAudm9wIChvcHMgdm9wMl9jb21wb25lbnRfb3BzKQpb
ICAgIDAuNTMxMTM5XSByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IGJvdW5kIGZkZWEw
MDAwLmhkbWkgKG9wcyBkd19oZG1pX3FwX3JvY2tjaGlwX29wcykKWyAgICAwLjUzMjE5N10gW2Ry
bV0gSW5pdGlhbGl6ZWQgcm9ja2NoaXAgMS4wLjAgZm9yIGRpc3BsYXktc3Vic3lzdGVtIG9uIG1p
bm9yIDAKWyAgICAwLjUzMjg0Nl0gcm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBbZHJt
XSBDYW5ub3QgZmluZCBhbnkgY3J0YyBvciBzaXplcwpbICAgIDAuNTMzNTM4XSByb2NrY2hpcC1k
cm0gZGlzcGxheS1zdWJzeXN0ZW06IFtkcm1dIENhbm5vdCBmaW5kIGFueSBjcnRjIG9yIHNpemVz
ClsgICAxMC4xNTc1NjRdIHBhbnRob3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBjbG9jayByYXRlID0g
MTk4MDAwMDAwClsgICAxMC4xNjAwMzNdIHBhbnRob3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBtYWxp
LWc2MTAgaWQgMHhhODY3IG1ham9yIDB4MCBtaW5vciAweDAgc3RhdHVzIDB4NQpbICAgMTAuMTYw
NzU1XSBwYW50aG9yIGZiMDAwMDAwLmdwdTogW2RybV0gRmVhdHVyZXM6IEwyOjB4NzEyMDMwNiBU
aWxlcjoweDgwOSBNZW06MHgzMDEgTU1VOjB4MjgzMCBBUzoweGZmClsgICAxMC4xNjE1NjldIHBh
bnRob3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBzaGFkZXJfcHJlc2VudD0weDUwMDA1IGwyX3ByZXNl
bnQ9MHgxIHRpbGVyX3ByZXNlbnQ9MHgxClsgICAxMC4yMTk4MjVdIHBhbnRob3IgZmIwMDAwMDAu
Z3B1OiBbZHJtXSBGaXJtd2FyZSBwcm90ZWN0ZWQgbW9kZSBlbnRyeSBub3QgYmUgc3VwcG9ydGVk
LCBpZ25vcmluZwpbICAgMTAuMjIxNDExXSBwYW50aG9yIGZiMDAwMDAwLmdwdTogW2RybV0gRmly
bXdhcmUgZ2l0IHNoYTogODE0YjQ3YjU1MTE1OTA2N2I2N2EzN2M0ZTlhZGRhNDU4YWQ5ZDg1Mgpb
ICAgMTAuMjIyMzE1XSBwYW50aG9yIGZiMDAwMDAwLmdwdTogW2RybV0gQ1NGIEZXIHVzaW5nIGlu
dGVyZmFjZSB2MS4xLjAsIEZlYXR1cmVzIDB4MCBJbnN0cnVtZW50YXRpb24gZmVhdHVyZXMgMHg3
MQpbICAgMTAuMjIzNzMzXSBbZHJtXSBJbml0aWFsaXplZCBwYW50aG9yIDEuMi4wIGZvciBmYjAw
MDAwMC5ncHUgb24gbWlub3IgMQoKSW5pdGlhbGx5IGkgd2FzIHRoaW5raW5nIG15IGJvYXJkIGlz
IGRlZmVjdGl2ZSBidXTigKYuLmhkbWkxIHdvcmtzIG5pY2VseSB3aXRoIFJvb2JpIE9TIGZsYXNo
ZWQgYnkgcmFkeGEgaW4gZU1NQyBzbyBp4oCZbSByZWFsbHkgcHV6emxlZCB3aXRoIHRoaXPigKYK
CklzIGl0IHBvc3NpYmxlIHRvIHByb3ZpZGUgbWUgdXJsIHdpdGgga2VybmVsIHBhY2thZ2UgeW91
IGFyZSB1c2luZyAod2ljaCB3b3JrcyBvayBmb3IgeW91KT8KCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
