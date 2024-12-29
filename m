Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 010B7E7718B
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Dec 2024 19:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCBDJJ61EstaNoKkyjDaigz/D6uWQnvJX3Uu2xL8ly8=; b=LE0S9SY2li9xjK
	PBEJEcxXBczPBEp54JEaQKXYnPD9ACDU09FtkSFq4go+vDx+V3ZqkRxg2Zrr2x6QsXdmOo6+SNZCH
	JA/GTmF2cv0aYudtkAx4h4qO5fqyhwUJMQBu6jv+i8fHasVPBRBcdxK0JBvpjOSMYbQR3lsXS5C8o
	pl/ciejWF8G11dwE+veBOngmwvtzizLkAXnWeDchZUO0DxxOpywoIqG/Ru51oHEDEqMHBnEJ2FJ96
	nNjYmVen9/QF7Tw2sELqjKFeVbCo/TQl1oeEVzduihouNbgRuDkF3QUGybt3wF7unbfblSLy4HhdN
	rFFaUvYG6Fj60oXI1KhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRyrr-00000003oLB-3kYZ;
	Sun, 29 Dec 2024 19:22:27 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRyqf-00000003oFJ-3Tpf;
	Sun, 29 Dec 2024 19:21:15 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4361dc6322fso55944505e9.3;
        Sun, 29 Dec 2024 11:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735500072; x=1736104872; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F/m6mQE93XRbEC7aZffF1JFPjsU9ESCMe5TCbG/hYT0=;
        b=Aflu3pooNLReYrwN/l9eh7qUwyLwx9Srngp72itxT692SBz7ncECPuVrtFkDErB/T9
         uE823FPsyBFEKmzcpttnnUVfa8p/n/V0+FPd9aiCVdAMZEXkU1k5tupaMxDnfoOINZHm
         acLoXFHtrxtxpZbSKXSpKP2SExQ8wLDQnC0M2M4J+t7y8A4FZTAN0gvjAGycc0U2kMkM
         v7D+4VwZEVkvqmIGFwdtUDrz2Q7OlRyOJQnlRVsXmXpTYRkERaURTZSqXXEYacWeg2Au
         opwDFwWeQd2f7+RzKbjXn8fTQ0I70SfD3SzH2iIfkaDuF8RZ7QOEcyK0yMACA/+lzsv9
         rsEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735500072; x=1736104872;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F/m6mQE93XRbEC7aZffF1JFPjsU9ESCMe5TCbG/hYT0=;
        b=epEg2Tr+qGN8tGbh3eWwv4K6zb468ghzffN4zVtlTqKpks9U0AH7X1rgJ1RPvzVDSn
         1z4EskuHM7qTgHmbIci7/E0U6HB0gW/3UP777Z4Dy85QRzcKV5yrFFywO1x89KVcMNaI
         ZpyoLLPasq6iVMdhwvHvnXtiWCW8zouZs8ibfHoQJ7Xgkkx1MAEgj+ZhIbcAssEGdbF2
         qeg6FeOM33pZBMe5vcOKYn45GytmVTjpr8F87pKHxG8+175TxYm71ayNVcwKB4cCa+5x
         lRvENxjl6At+A0IySpw8y7ythw3LbN53BcPoSqf0mCBnfLzeJ8bo+OWXuy6RZU59Xnka
         iOjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeyx5y1dXrTf/Bvl3P/+0f4iqh7MIbmVRFuS2rEeDf8FUypCdo8FFbwQjD+cvouqbiX2TojtC+3FC+asyq6rc=@lists.infradead.org, AJvYcCXoDKpen7nxG0EidTf35HGON8TIGl6De+eX/772RBvh5JNQ5lVOUjTIpqPSTn5xdfPzb/vTZ4QSAQLVadMnl9aA@lists.infradead.org
X-Gm-Message-State: AOJu0YzPSL2c39AW8nCvPnyNEYw77pmZMXW1sE2FASNRWUBN7lrat4Ts
	6GxxOPz23i1ujfcHqSlC8SkJJt4o3NIGHPQ44FLNxOYH0iTv2NL2psn231ANEEetbRzcjgQ2TB+
	Qkr6KZ81XnrArHV08kvxAL+kN/jg=
X-Gm-Gg: ASbGncsj87tXl2ysxYKq/DCYpb7ZDi+WAUa8PGWVK81Ve7oc6r6+f+voR4sGxw3apvj
	fqLxQJUEROAOchO/NY7jC54t1jBH2MBDeHYzjGD7E/1OO7mc8Edj55drdUNfhp9NheS/rdA==
X-Google-Smtp-Source: AGHT+IERbyKDJY64pbsXCfiLuatq/oqkmWljGpRnNR4+iBZE0z2MspqeiGU222OSzsWUzmZRuvrFwmm5Of+SKsxCHM0=
X-Received: by 2002:a05:6000:1f84:b0:385:f349:ffef with SMTP id
 ffacd0b85a97d-38a223ffa57mr22988717f8f.41.1735500070610; Sun, 29 Dec 2024
 11:21:10 -0800 (PST)
MIME-Version: 1.0
References: <20241229184256.1870-2-honyuenkwun@gmail.com> <20241229184256.1870-3-honyuenkwun@gmail.com>
In-Reply-To: <20241229184256.1870-3-honyuenkwun@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sun, 29 Dec 2024 13:20:59 -0600
Message-ID: <CALWfF7Kg9HQoqyEYaj9FGPYu3+vAzZNLMVhSr_90SFDg5Syc9w@mail.gmail.com>
Subject: Re: [PATCH 1/7] arm64: dts: rockchip: refactor common rk3588-orangepi-5.dtsi
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241229_112113_881269_9F317DC4 
X-CRM114-Status: UNSURE (   8.42  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCBEZWMgMjksIDIwMjQgYXQgMTI6NDTigK9QTSBKaW1teSBIb24gPGhvbnl1ZW5rd3Vu
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBmb3IgT3JhbmdlIFBpIDUgUGx1cy9NYXgvVWx0cmEgYW5k
IEFJIE1heAo+IC0tLQo+ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMu
ZHRzICAgfCA4MzMgKystLS0tLS0tLS0tLS0tLS0tCj4gIC4uLmdlcGktNS1wbHVzLmR0cyA9PiBy
azM1ODgtb3JhbmdlcGktNS5kdHNpfSB8IDE5NSArLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNzcg
aW5zZXJ0aW9ucygrKSwgOTUxIGRlbGV0aW9ucygtKQo+ICBjb3B5IGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAve3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzID0+IHJrMzU4OC1vcmFuZ2Vw
aS01LmR0c2l9ICg4MCUpCgpIZWlrbywKClNob3VsZCBJIGdvIGFoZWFkIGFuZCBtYWtlIGEgdjUg
aW5jbHVkaW5nIHRoZSBmb2xsb3dpbmcgaW4gbXkgYmFzZWxpbmUKYmVmb3JlIHRoZSByZWZhY3Rv
cj8KLSBHUFUgcG93ZXIgZG9tYW4gZGVwZW5kZW5jeSBbMV0KLSBVU0IgMy4wIG9uIDUgUGx1cyBb
Ml0KRG8gdGhvc2Ugc2VyaWVzIGxvb2sgbGlrZSB0aGV5J2xsIGdvIGluIGFzIGlzPwoKWzFdIGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjQxMjExMTQzMDQ0Ljk1NTAt
OC1zZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tLwpbMl0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNDEyMjAxNjEyNDAuMTA5MjUzLTEtd2Vuc0BrZXJuZWwu
b3JnLwoKSmltbXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
