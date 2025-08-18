Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EC67CA0ED1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Aug 2025 20:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GUNn7VaEOXgg/E/nAYJOXh0ZGvd89UhDRkFusbwRBA=; b=46pvmBcKLJ8eJQ
	dEXAbgS61Un3P4vXmLwoTCODJrrrvositvN1ZY44WfI1HUB11EUmNbb1GknanuzPE70j3m6ymM8Z5
	LOGZSRdsC/v70TAkcSapauL3DUy6tUizFDzj1gr1V0pJ5pNYuD8oFJPir95u+lkWEK5ykNyoeLzti
	Fpv2l/l8q8kYtFXOhrPUQ81x5jCHxsmivHbkgTJuVbDUkheLZkv4Yjmazse3Jud+LPWQOC7MqYPNU
	VA8+pHL9IMxCGUPaYQPmLQgm58bWLnCypFvKVxIQjka4RwMdN/ZUKH7YEmowCobAy30TP2oVhZMAj
	3vyZ3MtZLv9O99Uq0vUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo6VN-00000008dEU-2pnk;
	Mon, 18 Aug 2025 20:30:57 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo5OB-00000008Urk-3sAQ
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Aug 2025 19:19:29 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-3b9d41baedeso2385943f8f.0
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Aug 2025 12:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755544766; x=1756149566; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9hweCp+yuiy4UnE8tu0U5cdLSxNtzeXo3c5udQqFt3s=;
        b=wURq8DNmWiskT+3mVC1Xuf4Y6WRRMp9rtFqnZHqEonaEKySEEMIvt+Ij68NMzKPtC1
         3Amv/TCHWmLs7QP4K4BNiiAQwBnrPE2IORRM4t/YkS1qgK1uzAluFIUYULDlnrFkSPu5
         i8cusCYuFjYrgCPhNz/EibkKHj2tOM5z1GxcJ0dGtTCotuJT5CznJ06msVpeomGnmlJ5
         sK14yK2f+04ooWeoTi1l2ODLySRRbYD8EC5FZ1aikyv9knkNKFhN9nDEZQLnC8kDk16F
         78hjb4J4dNU/wPzjoDTqV5j8qwlBh0K2YbUyK4tTwxzey8M3E60nZ+g8K3wcLBljXRcH
         YNSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755544766; x=1756149566;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9hweCp+yuiy4UnE8tu0U5cdLSxNtzeXo3c5udQqFt3s=;
        b=Tt77gEyIiKXm8UbF+IpiNkdFyBeWDmbKfaXEtAy8gWtsLBWDEYruslyx1IUNjYeTl7
         zUwMvb+IcLZ5ITGF1UejJFpiUE86GXj68SIZPU4XsQMFkz0enhX3+3Q3ZDdPyge9yjXN
         0XP1IohiIn9wsvSGpe2qO4C+sCJ2Hrsm1kj3FOgpJdz8U9GCcM5Gvnp2/tbS3uMeGBgK
         ooeq6f/CK6EiPQN/EkaccE2/5bxYK/vEgA2977S9A0kDXqCc7YByMGbDV6EvVemr1z8I
         0Zctv6Li9fhJS7J1xgKQqlpDK80+M9yiZRdyryGNdSKwU/te4j1dY8np0YuMfyeFVZka
         rApA==
X-Forwarded-Encrypted: i=1; AJvYcCV4DEFw89UPCLXHk9VQFxcfNctG2TseECKmjKBoKFahTxJnxl7q/SFfAI8RoRnSKkuxwGWkHu+TznRbjFF1wQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyzADoLk4ra27hXVDSstgxQrATzk6/y6S5DV1/QqdwD4T9Z+FPz
	VCZ/P6C51V6ldaTcDKOHrSrraufTf6ZgTxYvWxdNCVTGYq9oXx6Cd6PAuenIiw65Z3Q=
X-Gm-Gg: ASbGncvwxkzLbLL4hRbVqQRj9T6QuT+DK21iL9CqtXl7FW1HN3W6w8pVNIGXQIOOfps
	uxHL80a2qrlMPU61W5LW1YRSK5WVt4Lbcz++DbYwlsqp6HAOJfC50UknAccggXzBcICE/kyLyWm
	qH+HHrVkKpnhGG9X4PPnu9H7inUtra0BMtx1m3sCqeVY8I0N6X8kD0HGHnpkN5QyWkOuFRZar8Q
	E9iYKhp3EzwCKxoPAfjIAOOTnjmMkMkSALNIoIc2bSmssGlAZ1bpjxHFg+tNSrHwc1m1L0DB981
	qQN1jN2C0ZBAX7vVwdJ0az4mSosACn92hWYns/z5Fy2O8hoihyNhVHsoNwYMm+eXzxjxeA0gQ4B
	6EKyH+PK9bYkFmlvlea+F+bU4JL+++fFx2pTvPO/MHyQ=
X-Google-Smtp-Source: AGHT+IEQrkh28DTI0SiPzPg5aApeFJHSZV4MplQJwQE3tUQojVdNtlatmnBQ7z7o9bG5dBtMzxbKUQ==
X-Received: by 2002:a05:6000:2903:b0:3b6:1630:9204 with SMTP id ffacd0b85a97d-3bb66e167femr11091052f8f.19.1755544766221;
        Mon, 18 Aug 2025 12:19:26 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45a1c6cfed5sm178233615e9.7.2025.08.18.12.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 12:19:25 -0700 (PDT)
Date: Mon, 18 Aug 2025 22:19:22 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: oe-kbuild@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org, lkp@intel.com,
	oe-kbuild-all@lists.linux.dev, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org,
	lgirdwood@gmail.com, sre@kernel.org, heiko@sntech.de,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH V6 3/5] power: supply: bq257xx: Add support for BQ257XX
 charger
Message-ID: <aKN8uvsN-uiJgjFp@stanley.mountain>
References: <20250812214300.123129-4-macroalpha82@gmail.com>
 <202508181503.GrRD2T4C-lkp@intel.com>
 <aKNGCg2rWT7GLNnt@wintermute.localhost.fail>
 <DM5PR19MB4646929CD183E2B110B6AD5AA531A@DM5PR19MB4646.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM5PR19MB4646929CD183E2B110B6AD5AA531A@DM5PR19MB4646.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_121927_973539_43CDEC83 
X-CRM114-Status: GOOD (  24.35  )
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

T24gTW9uLCBBdWcgMTgsIDIwMjUgYXQgMTE6NDM6MDBBTSAtMDUwMCwgQ2hyaXMgTW9yZ2FuIHdy
b3RlOgo+IE9uIE1vbiwgQXVnIDE4LCAyMDI1IGF0IDEwOjI2OjA2QU0gLTA1MDAsIENocmlzIE1v
cmdhbiB3cm90ZToKPiA+IE9uIE1vbiwgQXVnIDE4LCAyMDI1IGF0IDExOjIyOjM1QU0gKzAzMDAs
IERhbiBDYXJwZW50ZXIgd3JvdGU6Cj4gPiA+IEhpIENocmlzLAo+ID4gPiAKPiA+ID4ga2VybmVs
IHRlc3Qgcm9ib3Qgbm90aWNlZCB0aGUgZm9sbG93aW5nIGJ1aWxkIHdhcm5pbmdzOgo+ID4gPiAK
PiA+ID4gaHR0cHM6Ly9naXQtc2NtLmNvbS9kb2NzL2dpdC1mb3JtYXQtcGF0Y2gjX2Jhc2VfdHJl
ZV9pbmZvcm1hdGlvbl0KPiA+ID4gCj4gPiA+IHVybDogICAgaHR0cHM6Ly9naXRodWIuY29tL2lu
dGVsLWxhYi1sa3AvbGludXgvY29tbWl0cy9DaHJpcy1Nb3JnYW4vZHQtYmluZGluZ3MtbWZkLXRp
LWJxMjU3MDNhLUFkZC1USS1CUTI1NzAzQS1DaGFyZ2VyLzIwMjUwODEzLTA1NDcwNAo+ID4gPiBi
YXNlOiAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2Jy
b29uaWUvcmVndWxhdG9yLmdpdCBmb3ItbmV4dAo+ID4gPiBwYXRjaCBsaW5rOiAgICBodHRwczov
L2xvcmUua2VybmVsLm9yZy9yLzIwMjUwODEyMjE0MzAwLjEyMzEyOS00LW1hY3JvYWxwaGE4MiU0
MGdtYWlsLmNvbQo+ID4gPiBwYXRjaCBzdWJqZWN0OiBbUEFUQ0ggVjYgMy81XSBwb3dlcjogc3Vw
cGx5OiBicTI1N3h4OiBBZGQgc3VwcG9ydCBmb3IgQlEyNTdYWCBjaGFyZ2VyCj4gPiA+IGNvbmZp
ZzogcGFyaXNjLXJhbmRjb25maWctcjA3Mi0yMDI1MDgxOCAoaHR0cHM6Ly9kb3dubG9hZC4wMS5v
cmcvMGRheS1jaS9hcmNoaXZlLzIwMjUwODE4LzIwMjUwODE4MTUwMy5HclJEMlQ0Qy1sa3BAaW50
ZWwuY29tL2NvbmZpZykKPiA+ID4gY29tcGlsZXI6IGhwcGEtbGludXgtZ2NjIChHQ0MpIDguNS4w
Cj4gPiA+IAo+ID4gPiBJZiB5b3UgZml4IHRoZSBpc3N1ZSBpbiBhIHNlcGFyYXRlIHBhdGNoL2Nv
bW1pdCAoaS5lLiBub3QganVzdCBhIG5ldyB2ZXJzaW9uIG9mCj4gPiA+IHRoZSBzYW1lIHBhdGNo
L2NvbW1pdCksIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZ3MKPiA+ID4gfCBSZXBvcnRlZC1ieTog
a2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gPiA+IHwgUmVwb3J0ZWQtYnk6IERh
biBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAbGluYXJvLm9yZz4KPiA+ID4gfCBDbG9zZXM6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTA4MTgxNTAzLkdyUkQyVDRDLWxrcEBpbnRlbC5j
b20vCj4gPiA+IAo+ID4gPiBzbWF0Y2ggd2FybmluZ3M6Cj4gPiA+IGRyaXZlcnMvcG93ZXIvc3Vw
cGx5L2JxMjU3eHhfY2hhcmdlci5jOjM5MiBicTI1NzAzX2h3X2luaXQoKSB3YXJuOiBwb3RlbnRp
YWwgISB2cyB+IHR5cG8KPiA+ID4gCj4gPiA+IHZpbSArMzkyIGRyaXZlcnMvcG93ZXIvc3VwcGx5
L2JxMjU3eHhfY2hhcmdlci5jCj4gPiA+IAo+ID4gPiA3ZjNiNmYxZTUxYTkyNSBDaHJpcyBNb3Jn
YW4gMjAyNS0wOC0xMiAgMzY1ICBzdGF0aWMgaW50IGJxMjU3MDNfaHdfaW5pdChzdHJ1Y3QgYnEy
NTd4eF9jaGcgKnBkYXRhKQo+ID4gPiA3ZjNiNmYxZTUxYTkyNSBDaHJpcyBNb3JnYW4gMjAyNS0w
OC0xMiAgMzY2ICB7Cj4gPiA+IDdmM2I2ZjFlNTFhOTI1IENocmlzIE1vcmdhbiAyMDI1LTA4LTEy
ICAzNjcgIAlzdHJ1Y3QgcmVnbWFwICpyZWdtYXAgPSBwZGF0YS0+YnEtPnJlZ21hcDsKPiA+ID4g
N2YzYjZmMWU1MWE5MjUgQ2hyaXMgTW9yZ2FuIDIwMjUtMDgtMTIgIDM2OCAgCWludCByZXQgPSAw
Owo+ID4gPiA3ZjNiNmYxZTUxYTkyNSBDaHJpcyBNb3JnYW4gMjAyNS0wOC0xMiAgMzY5ICAKPiA+
ID4gN2YzYjZmMWU1MWE5MjUgQ2hyaXMgTW9yZ2FuIDIwMjUtMDgtMTIgIDM3MCAgCXJlZ21hcF91
cGRhdGVfYml0cyhyZWdtYXAsIEJRMjU3MDNfQ0hBUkdFX09QVElPTl8wLAo+ID4gPiA3ZjNiNmYx
ZTUxYTkyNSBDaHJpcyBNb3JnYW4gMjAyNS0wOC0xMiAgMzcxICAJCQkgICBCUTI1NzAzX1dEVE1S
X0FESl9NQVNLLAo+ID4gPiA3ZjNiNmYxZTUxYTkyNSBDaHJpcyBNb3JnYW4gMjAyNS0wOC0xMiAg
MzcyICAJCQkgICBGSUVMRF9QUkVQKEJRMjU3MDNfV0RUTVJfQURKX01BU0ssCj4gPiA+IDdmM2I2
ZjFlNTFhOTI1IENocmlzIE1vcmdhbiAyMDI1LTA4LTEyICAzNzMgIAkJCSAgIEJRMjU3MDNfV0RU
TVJfRElTQUJMRSkpOwo+ID4gPiA3ZjNiNmYxZTUxYTkyNSBDaHJpcyBNb3JnYW4gMjAyNS0wOC0x
MiAgMzc0ICAKPiA+ID4gN2YzYjZmMWU1MWE5MjUgQ2hyaXMgTW9yZ2FuIDIwMjUtMDgtMTIgIDM3
NSAgCXJldCA9IHBkYXRhLT5jaGlwLT5icTI1N3h4X3NldF9pY2hnKHBkYXRhLCBwZGF0YS0+aWNo
Z19tYXgpOwo+ID4gPiA3ZjNiNmYxZTUxYTkyNSBDaHJpcyBNb3JnYW4gMjAyNS0wOC0xMiAgMzc2
ICAJaWYgKHJldCkKPiA+ID4gN2YzYjZmMWU1MWE5MjUgQ2hyaXMgTW9yZ2FuIDIwMjUtMDgtMTIg
IDM3NyAgCQlyZXR1cm4gcmV0Owo+ID4gPiA3ZjNiNmYxZTUxYTkyNSBDaHJpcyBNb3JnYW4gMjAy
NS0wOC0xMiAgMzc4ICAKPiA+ID4gN2YzYjZmMWU1MWE5MjUgQ2hyaXMgTW9yZ2FuIDIwMjUtMDgt
MTIgIDM3OSAgCXJldCA9IHBkYXRhLT5jaGlwLT5icTI1N3h4X3NldF92YmF0cmVnKHBkYXRhLCBw
ZGF0YS0+dmJhdF9tYXgpOwo+ID4gPiA3ZjNiNmYxZTUxYTkyNSBDaHJpcyBNb3JnYW4gMjAyNS0w
OC0xMiAgMzgwICAJaWYgKHJldCkKPiA+ID4gN2YzYjZmMWU1MWE5MjUgQ2hyaXMgTW9yZ2FuIDIw
MjUtMDgtMTIgIDM4MSAgCQlyZXR1cm4gcmV0Owo+ID4gPiA3ZjNiNmYxZTUxYTkyNSBDaHJpcyBN
b3JnYW4gMjAyNS0wOC0xMiAgMzgyICAKPiA+ID4gN2YzYjZmMWU1MWE5MjUgQ2hyaXMgTW9yZ2Fu
IDIwMjUtMDgtMTIgIDM4MyAgCXJldCA9IGJxMjU3MDNfc2V0X21pbl92c3lzKHBkYXRhLCBwZGF0
YS0+dnN5c19taW4pOwo+ID4gPiA3ZjNiNmYxZTUxYTkyNSBDaHJpcyBNb3JnYW4gMjAyNS0wOC0x
MiAgMzg0ICAJaWYgKHJldCkKPiA+ID4gN2YzYjZmMWU1MWE5MjUgQ2hyaXMgTW9yZ2FuIDIwMjUt
MDgtMTIgIDM4NSAgCQlyZXR1cm4gcmV0Owo+ID4gPiA3ZjNiNmYxZTUxYTkyNSBDaHJpcyBNb3Jn
YW4gMjAyNS0wOC0xMiAgMzg2ICAKPiA+ID4gN2YzYjZmMWU1MWE5MjUgQ2hyaXMgTW9yZ2FuIDIw
MjUtMDgtMTIgIDM4NyAgCXJldCA9IHBkYXRhLT5jaGlwLT5icTI1N3h4X3NldF9paW5kcG0ocGRh
dGEsIHBkYXRhLT5paW5kcG1fbWF4KTsKPiA+ID4gN2YzYjZmMWU1MWE5MjUgQ2hyaXMgTW9yZ2Fu
IDIwMjUtMDgtMTIgIDM4OCAgCWlmIChyZXQpCj4gPiA+IDdmM2I2ZjFlNTFhOTI1IENocmlzIE1v
cmdhbiAyMDI1LTA4LTEyICAzODkgIAkJcmV0dXJuIHJldDsKPiA+ID4gN2YzYjZmMWU1MWE5MjUg
Q2hyaXMgTW9yZ2FuIDIwMjUtMDgtMTIgIDM5MCAgCj4gPiA+IDdmM2I2ZjFlNTFhOTI1IENocmlz
IE1vcmdhbiAyMDI1LTA4LTEyICAzOTEgIAlyZWdtYXBfdXBkYXRlX2JpdHMocmVnbWFwLCBCUTI1
NzAzX0NIQVJHRV9PUFRJT05fMCwKPiA+ID4gN2YzYjZmMWU1MWE5MjUgQ2hyaXMgTW9yZ2FuIDIw
MjUtMDgtMTIgQDM5MiAgCQkJICAgQlEyNTcwM19FTl9MV1BXUiwgIUJRMjU3MDNfRU5fTFdQV1Ip
Owo+ID4gPiAKPiA+ID4gWWVhaC4gIFRoaXMgcmVhbGx5IGxvb2tzIGxpa2UgaXQgc2hvdWxkIGJl
IGJpdHdpc2UgbmVnYXRlIH4gaW5zdGVhZCBvZgo+ID4gPiBsb2dpY2FsIG5lZ2F0ZSAhLgo+ID4g
Cj4gPiBTaW5jZSBCUTI1NzAzX0VOX0xXUFdSIGlzIGRlZmluZWQgYXMgMSBhbmQgSSB3YW50IHRv
IHdyaXRlIDAgaGVyZSAodG8KPiA+IGRpc2FibGUgbG93IHBvd2VyIG1vZGUpIEkgd2FzIHVuZGVy
IHRoZSBhc3N1bXB0aW9uIGVpdGhlciBzaG91bGQgd29yay4KPiA+IFRoYXQgc2FpZCwgSSdsbCBo
YXBwaWx5IHN3aXRjaCB0byB0aGUgYml0d2lzZSBuZWdhdGUgKH4pIGFuZCByZXN1Ym1pdC4KPiAK
PiBTb3JyeSwgaGFkbid0IGRyYW5rIG15IG1vcm5pbmcgY29mZmVlIHlldCBiZWZvcmUgSSBzZW50
IHRoZSBsYXN0Cj4gbWVzc2FnZSBhbmQgc2hvdWxkIGhhdmUgYXR0ZW1wdGVkIGl0IGZpcnN0IGJl
Zm9yZSByZXBseWluZy4gV2hlbiBJCj4gbWFrZSB0aGUgcmVxdWVzdGVkIGNoYW5nZSBJIGdldCBh
IGNvbXBpbGUgdGltZSBlcnJvciBvZiAiY29udmVyc2lvbgo+IGZyb20g4oCYbG9uZyB1bnNpZ25l
ZCBpbnTigJkgdG8g4oCYdW5zaWduZWQgaW504oCZIGNoYW5nZXMgdmFsdWUgZnJvbQo+IOKAmDE4
NDQ2NzQ0MDczNzA5NTE4ODQ34oCZIHRvIOKAmDQyOTQ5MzQ1MjfigJkiLiBXaGF0IEknbSByZWFs
bHkgdHJ5aW5nIHRvCj4gYWNjb21wbGlzaCBoZXJlIGlzIHRvIHNpbXBseSB3cml0ZSBhIDAgdG8g
dHVybiBvZmYgbG93IHBvd2VyIG1vZGUsIGFuZAo+IGRvIHNvIGluIGEgbWFubmVyIHRoYXQncyBl
YXN5IHRvIHVuZGVyc3RhbmQuIEkgdGhpbmsgc2luY2UgYSBiaXR3aXNlCj4gbmVnYXRlIGdpdmVz
IGEgY29tcGlsZSBlcnJvciBhbmQgYSBsb2dpY2FsIG5lZ2F0ZSB0aHJvd3MgYSBzbWF0Y2gKPiB3
YXJuaW5nLCB0aGUgbW9zdCBzZW5zaWJsZSB0aGluZyB0byBkbyBpcyBzaW1wbHkgZXhwcmVzcyB0
aGlzIGFzIGEgMAo+IGluc3RlYWQgb2YgYSBkZWZpbmVkIHZhbHVlIGFuZCB3cml0ZSBhIGNvbW1l
bnQgd2h5IEknbSBkb2luZyB0aGF0Lgo+IAoKWWVhaC4uLiAgT3IgeW91IGNvdWxkIGRvICIjZGVm
aW5lIEJRMjU3MDNfRElTQUJMRV9MV1BXUiAwIi4KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
