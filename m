Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A9C3C5B543
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 07:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1l7DvbLZ/HhMBBlp8Rk1jf5Nt2neLhmY0poGy+atdW8=; b=xytrnP7827Sigo
	EZElcgJfWzbnFXEON/yrw/iKA07y9aVIILEQOpJMRzYnDpUb58Et6Vauatjc8XJ4VBI+QwuEuYP/7
	MkGbilnJ28zrPYx+8fZrzveHLINXpsxxzKDCclz8+YNjv9gjI0FFk4Tm8oFtGcVAslyf4sgeFMYTc
	ekunNtDyAvO7bfcpvyRY0aFs0aWggM6F0UjdS+aeYEVaD/pWZtMmP4zAo5Aq2/L8SMW54z32xFszT
	jB6PjxzFdAGeKjcBIJgBImVBxrad2wPyuh/UF3pP6j7KlYyrA5ypcwB9mwPhYEApTzmCInYw4/svy
	F9XD3z5e99k1XXEDhCIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5GK-0000000EyA4-1DKv;
	Thu, 05 Jun 2025 07:43:44 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN49L-0000000ErJc-2APY;
	Thu, 05 Jun 2025 06:32:33 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-af6a315b491so482891a12.1;
        Wed, 04 Jun 2025 23:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749105146; x=1749709946; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xVNbV2XHvQT3/8z4B+RVq7tYXw6lKXe0E7JWahAFCMk=;
        b=EeOxBeMlEsaS2bK06bmrfzed7qNMib+94A89ms7EN9ygQZXedKg/9OjeXqOvGzYpPL
         1OkhMAtUI0Mgqm3nm4FH6q57BhDAKSyrKEqFTaaU8iRfpRRxPwmuaBsJP8M1Gbxy9RXN
         +ZMRIT/Zr31SlyO70kcc3M81WWASmGGYz9Ll/Th31t29Z3459s+T6IiDQqZx1Cj/HY92
         /aVj6Ntxl3XwIcbCaLq4AJ19gpjBkdfWBpvQJjERUxXBaIETlrwXwOf/5dXJYmgNxl8+
         ugvjY+QmIaXi0hNQMhGHs0z9DKlMF7mIZXPQZKgxc4dXbBUuknPyPlrgPv5IgaEQbeVY
         oy+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749105146; x=1749709946;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xVNbV2XHvQT3/8z4B+RVq7tYXw6lKXe0E7JWahAFCMk=;
        b=U8TFYv/n3v7NdHFWj7HzHwM50iQ1THjV2jNd1QTN1AcGejxHCHFbW57CKdvno78Xu5
         bDNqOL0YUfi3wmWn1qGLGf0e96+iJzOFph7JfMAgbF94EUOpSS0DR4ctwGN/dg//2GVx
         cU8nyrNt72neCBlNpibC9ZI8fYJ+hFOdk4ESYmvht8EWHlDG17HyNV/aOVFDyzhrDolx
         upWZR7g9VvTIqi9uLPCUT3EN2mw2PW0kMglah4PrYEqEnrVQAlQ+immCO18fXmvz9Jo/
         gGWTOpw48LO7JhSIGKQGL/19jasFG1DsY5o8kowJ/XTTJx/QZwDALveI7myt6vUwnxmM
         MdSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUs9sGu7JHYSiw2e8JaE8DR0Ke1p71uSfNKTGQAU0Nf7qhaYWcdX/OVwYMANBJ55dZhMtILQGO29Kb6f53y7OI@lists.infradead.org, AJvYcCWuxOda1bero9hT/XBlEINmXA9rs/+t5temmD4job9o2i8vl7DMpOMLgyiAmG+5s8DHkZhDNBG9Rk5Zqb4ipVM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXrcO1lr9KsrlZTm5TGD41QTNQNiEU1F+w52lvez3sr23ugvGX
	hO0FFykKqmkevxFMoqKYwmKOmBmSE8HJ5zaSRAEQAvOtz6AAekNJcJ2BXfqpZ4KNOXWE9biygZ9
	VJkCYi0RKSIkTSxaLZz+w/sXbJp7oKjNXZjg3zJy/iprM
X-Gm-Gg: ASbGnctltw4pwa9ZHZhsD3naF5cRfZbSfdPmf62Z8NpiCE7WprksvryRawwetg4UJ/B
	To0/5zhAC0abKowp/6+uvtuA+LEDzg2X1cfpcRpAjDAGB/yaT3VRFBV9DMa684EIrd6cVSO4HXx
	SJhzbwGFATgdir+45C7CML43Si0mSEzdrT69y6iwMvufhV318iTINb1AgmJVKeAuT3Xw==
X-Google-Smtp-Source: AGHT+IH4DMJVVSc23A8ySI5zWwdnqMPJwI4JcymO9uLuxpbdW2R54hTNG5gzhmW7FhrMsuuLb3uqrUpjAv6uXp6wyzs=
X-Received: by 2002:a05:622a:578f:b0:4a4:3c3e:5754 with SMTP id
 d75a77b69052e-4a5a587c45emr97845681cf.32.1749105134671; Wed, 04 Jun 2025
 23:32:14 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-3-717e8ce4ab77@gmail.com> <CALWfF7JOJSihtfqrFiZtTxnzvoU6FP3WXuWjYOVaAvjPJZWWgg@mail.gmail.com>
In-Reply-To: <CALWfF7JOJSihtfqrFiZtTxnzvoU6FP3WXuWjYOVaAvjPJZWWgg@mail.gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 5 Jun 2025 10:32:06 +0400
X-Gm-Features: AX0GCFuUQCw_ESq8wm50RxhnfDipXmHgsUt5otEO_3lzHNgvENZEo2Fw1AWJjAY
Message-ID: <CABjd4Yyw5xStJYU5c5snUGpBjEYL8=qoj=bWYLnuzSWzr8shaA@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: enable wifi on ArmSoM Sige5
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_233227_558100_15149B4B 
X-CRM114-Status: GOOD (  11.43  )
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

T24gVGh1LCBKdW4gNSwgMjAyNSBhdCA2OjQz4oCvQU0gSmltbXkgSG9uIDxob255dWVua3d1bkBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gPgo+ID4gKyZzZGlvIHsKPiA+ICsgICAgICAgYnVzLXdpZHRo
ID0gPDQ+Owo+ID4gKyAgICAgICBjYXAtc2Rpby1pcnE7Cj4gPiArICAgICAgIGRpc2FibGUtd3A7
Cj4gPiArICAgICAgIGtlZXAtcG93ZXItaW4tc3VzcGVuZDsKPiA+ICsgICAgICAgbW1jLXB3cnNl
cSA9IDwmc2Rpb19wd3JzZXE+Owo+ID4gKyAgICAgICBuby1zZDsKPiA+ICsgICAgICAgbm8tbW1j
Owo+ID4gKyAgICAgICBub24tcmVtb3ZhYmxlOwo+ID4gKyAgICAgICBzZC11aHMtc2RyNTA7Cj4g
PiArICAgICAgIHNkLXVocy1zZHIxMDQ7Cj4gPiArICAgICAgIHZtbWMtc3VwcGx5ID0gPCZ2Y2Nf
M3YzX3MzPjsKPiA+ICsgICAgICAgdnFtbWMtc3VwcGx5ID0gPCZ2Y2NfMXY4X3MzPjsKPiA+ICsg
ICAgICAgd2FrZXVwLXNvdXJjZTsKPiA+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307
Cj4KPiBXaGVuIHlvdSBlbmFibGUgdGhlIHNkaW8gbm9kZSBvbiB5b3VyIHYxLjIgYm9hcmQgd2l0
aCB0aGUgYnJvYWRjb20KPiBjaGlwICh1c2luZyBTWU40Mzc1MiksIGRvZXMgdGhlIGJ0c2Rpby5r
byBiaW5kIHRvIHRoZSBkZXZpY2UgYW5kCj4gY3JlYXRlIGFuIGV4dHJhIHJma2lsbCBibHVldG9v
dGggbm9kZT8KCkdvb2QgcXVlc3Rpb24sIEkgZGlkbid0IGhhdmUgaXQgZW5hYmxlZCBpbiBteSBi
dWlsZDoKCiMgQ09ORklHX0JUX0hDSUJUU0RJTyBpcyBub3Qgc2V0CgpMZXQgbWUgYWRkIGl0IGFu
ZCByZXBvcnQgYmFjay4KCj4gSWYgc28sIHlvdSdsbCB3YW50IHRvIGJsYWNrbGlzdCB0aGUgU1lO
NDM3NTIgY2hpcCBpbiB0aGUgYnRzZGlvLmtvLgo+IFNpbWlsYXIgdG8gaHR0cHM6Ly9naXRodWIu
Y29tL2ppbW15aG9uL2xpbnV4L2NvbW1pdC84MWMxNGRjMmRlYTJjZWFlYThkMzkwMTg4YjM1MmQz
MmUyNzhhYmM4Cj4gVGhlIG9yaWdpbmFsIGxvZ2ljIHdhcyBpbnRyb2R1Y2VkIGluCj4gaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXgu
Z2l0L2NvbW1pdC9kcml2ZXJzL2JsdWV0b290aC9idHNkaW8uYz9pZD1iNGNkYWJhMjc0MjQ3Yzlj
ODQxYzZhNjgyYzA4ZmE5MWZiM2FhNTQ5CgpJIHdpbGwgY2hlY2ssIHRoYW5rIHlvdSBmb3IgdGhl
IHBvaW50ZXJzIQoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
