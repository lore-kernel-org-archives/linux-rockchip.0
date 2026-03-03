Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14993E67A6B
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 05:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aNrivDvNmPgmlHDoxNEB4onDwPkRb09icGmqtxxSeOo=; b=CaWwAX9fCiKlCt
	e92FYLPQKjLhzjiIR/EDOPrgDtrX+GrNdhmNz0H6veWm3bDLCdfhNhn+W4A1m5HMRqJ9+pU4BoeZ4
	DfC+QhXaOl0X+5Ojq3VQ2FXglofKmNGNHtzkrqYUPdAGq807Yg2YXrIof6CRGa9jqrQguqnxjUUTB
	5IJOKLZRUq2Okd7F7aYb3XgNje2pUmwhQDkMtkHmB83cxgyw9GOxLIF3FRXLMFr1aEvKw+4zlpsn/
	hgxGcVHiZCwvpkLV4Z51G45kaZlodeF/WGIP1FL0Uw74FlrJDxbdKFvriIHC7qK1zf7AL8NoIWc8A
	sBIvhpTgN6a5ns8uXCOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxIlE-0000000EZrI-3MKm;
	Tue, 03 Mar 2026 05:57:36 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxIlC-0000000EZqI-3Jku
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Mar 2026 05:57:36 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-439b7a87fb5so1021012f8f.3
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Mar 2026 21:57:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772517453; cv=none;
        d=google.com; s=arc-20240605;
        b=gJcbMflYxRxK3J9gIQx3Yj0Y0oeaBTdMsVq3OjE1wfdghG9dnTDkO/0hqF+DYMdBMY
         SHsAm+RYym+7aYEyTMBy5uVecVbdO9RHdGcS0LAZgeAArv5zk+0BcJ16ggHT3v+h4/0K
         uUGP/fKvU6HSLEc+oBYur7Cf7pHTMtWx3k44uZQOSVDY44aS1cBH26CRopiKWBczO/lF
         MbCQr70rMiPlmSEprB7qcWQcNbo9PqE+Ua9TVelrbasu8Wukhn0wFzx/DBFjbbs9l2/7
         7PkwRexyiDHws61vuqtdluk/J2QC4FDLaJ6BSByo52VJvJ9t12pGlENGKevA1wP/VAHi
         LGeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pX0VLINMz6A6FQc/U8nBqp0XlDLDKfuR77NNnYDj7+w=;
        fh=OAVhCj6C6M0p5C01DwVK3tjaqJOcLhAAJmHrs+dM0Gs=;
        b=ZpoxQghflH7GIa6KG7E7x/2oMvmPA/klq3I3UJuos1ktNlKBhF+NFn47K5r5H0Wc7Q
         x01K0iMcDVEFUaW4Fjz0AO2vNcz2MgUdvq9Id/EPCui8THSsM/vgdjtMsRssDQ0DVEx0
         5HCYFlqqASL116ToOQCltOwDSRq3ZywQWWCj6TFYpg998NQGRgF+6rshyZO99kVATNQL
         WWxy3fNzXre41RVTrcnfxPfouR7upAwxn3pk41+6ER+WHkxMFBsnC8QCiuf5fMyhqsni
         YM1FKMQzsG4ojeu3s5tR6GOVtCgAbV51usLBdtCG2cZ5kkbIpq+5NuNDGgAzAO7jRfZq
         r1YQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772517453; x=1773122253; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pX0VLINMz6A6FQc/U8nBqp0XlDLDKfuR77NNnYDj7+w=;
        b=gIEyySI3qgL+LA2XM6Kb41DGddU31JBf8zL3THpuQTYZ6T7JAk3vLjmi8aotyA8z7K
         G8sw0eTX9DSEY5aGLfQdJ8gr9Dz9ZA21hnjbwU4WUlY+xN1eMuQGc/+m6rikHHV4mQqO
         pH9WSWB9oN1R7mb3/H0Igo6rfUPb+tU0Q+PIgesRWi2KIHFY1O4RqMyVC2VBl5MAcbjG
         L+Lgm+9bZXX6XQO91HDQm2ue5X3gw2VhdjfqdMS/gy8P6JZQZOjK7Bneynjxk81yeJhz
         i1bGd0oIAgPem2MWjg/sVpKaha51qEvw9D6oZJmbNWNyrXZy7XB54C7pU1UdUx4PnQc5
         1uJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772517453; x=1773122253;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pX0VLINMz6A6FQc/U8nBqp0XlDLDKfuR77NNnYDj7+w=;
        b=uQQWSeAlI6wq3vv/VETQno1GZHHIUlG4JQrDeYeZCO9l/q8xYN0WIfVOiyjJ3B+rNB
         h/CDYlwueaKdVKnixoXnTY/sdxdp2DSp3n6bSXmecmKuQWN+kAiH/scwltBPppXesgRC
         zl1f6OXThB9jgk/d8hAt30DCg9vZbYM5+keWCoRDg91jwAkCt8f/OJ96j8L9T9PpJbBR
         0PJEJpo786DeFHqKvoZpMHBRVQfdYdzrSyPho8g76EBfG0j0N/DwnX1P+4NEEBxW2Dkp
         ovDehrYF9aWAo76jb83GXQ/g7/zPQAlV219wB20x9yJFdEaFMWxH+Mp1BFYfP9tOjI+k
         4H0A==
X-Forwarded-Encrypted: i=1; AJvYcCXsRfagVZTc+NQEbCBWPo7bWZbbo2Z2AVnK9wn1xo7A2gmLSNUICz6t4QKOKTGQMjRK/pdJr9SgCTE+pYPI/A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzKiGtx8yDk8YElbTk50HJZ5rw//YIQy7l2OCTqZcp/a1eI5/K9
	xNAHH9MOfEMjA+A7uGemWhG7ABWP5CDlDN2yjDl5q0DXvGofBGWTOeCYPRQo0vqO85SmG0L+qih
	pekqbejcq1te+Fv4Enr3xHgWI+wEVDco=
X-Gm-Gg: ATEYQzyP7wWCUKhTVlld2Ut7kt25kC6TTxQdUkJ8eg9XeYuN8cS0i5oj9V8vHvt7pmp
	iQ9odGDLQhbM0fnJ3JosjNJBRjqQkPYYWSpztB+VNIN2QhvlpzgmrbGzKYHkeCC2a3y2M/qaROm
	mSlhH5tl1JDizAlVE3yt6jDi36YFAUXe4jzulClOu0wHTcAWmgPa3/RX3SFr2cZKDyVYte/+sRO
	gyTfbbEWa1Oir3sF3liSwscWR5h837tOsF8oD/17C9aQ+7sxHCSGhy0TNVnk67GlFegn4/O5irJ
	2lg17NFmXvr1APr5TtV4v2bSpHM/qA2MNiQRvqk=
X-Received: by 2002:a05:6000:2001:b0:439:b4c9:9061 with SMTP id
 ffacd0b85a97d-439b4c99198mr13341273f8f.5.1772517452685; Mon, 02 Mar 2026
 21:57:32 -0800 (PST)
MIME-Version: 1.0
References: <20260228205418.2944620-1-dennis@ausil.us> <20260228205418.2944620-3-dennis@ausil.us>
In-Reply-To: <20260228205418.2944620-3-dennis@ausil.us>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Mon, 2 Mar 2026 23:57:21 -0600
X-Gm-Features: AaiRm52w2RMmTSSLdZHxtEjWYjj6N6MGUqWIzppOn89hLbAKT7zZ6KSUnyUL9Z4
Message-ID: <CALWfF7LZV07x7zAgufE_aa58s7x6e_ODAM2LgZqjbEakDticpA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: dennis@ausil.us
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_215734_843016_9ED008EC 
X-CRM114-Status: UNSURE (   8.31  )
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

SGkgRGVubmlzLAoKU29tZSBjdXJpb3NpdGllcyBiZWxvdywKCk9uIFNhdCwgRmViIDI4LCAyMDI2
IGF0IDI6NTTigK9QTSA8ZGVubmlzQGF1c2lsLnVzPiB3cm90ZToKPHNuaXA+Cj4gKwo+ICsgICAg
ICAgLyogUHJvIHVzZXMgZ3Bpby1sZWRzIGluc3RlYWQ7IHB3bTAgTEVEIGlzIG5vdCB3aXJlZCB1
cCAqLwo+ICsgICAgICAgL2RlbGV0ZS1ub2RlLyBwd20tbGVkczsKPHNuaXA+Cj4gKwo+ICsgICAg
ICAgZ3Bpby1sZWRzIHsKPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJncGlvLWxlZHMi
Owo+ICsgICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsgICAgICAg
ICAgICAgICBwaW5jdHJsLTAgPSA8JmxlZHNfcmdiPjsKPiArCj4gKyAgICAgICAgICAgICAgIGJs
dWUtbGVkIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBjb2xvciA9IDxMRURfQ09MT1JfSURf
QkxVRT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZnVuY3Rpb24gPSBMRURfRlVOQ1RJT05f
U1RBVFVTOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvMSBSS19QQzYg
R1BJT19BQ1RJVkVfSElHSD47CkhvdyBjb21lIHlvdSBkZWNpZGVkIGdwaW8tbGVkcyBpbnN0ZWFk
IG9mIHB3bS1sZWRzIGZvciB0aGlzPyBHUElPMSBDNgppcyBtdXhlZCB3aXRoIFBXTTE1X0lSX00y
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgbGludXgsZGVmYXVsdC10cmlnZ2VyID0gImhlYXJ0
YmVhdCI7Cj4gKyAgICAgICAgICAgICAgIH07Cj4gKwo+ICsgICAgICAgICAgICAgICBncmVlbi1s
ZWQgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbG9yID0gPExFRF9DT0xPUl9JRF9HUkVF
Tj47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZnVuY3Rpb24gPSBMRURfRlVOQ1RJT05fQUNU
SVZJVFk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8xIFJLX1BDMiBH
UElPX0FDVElWRV9ISUdIPjsKSG93IGNvbWUgeW91IGRlY2lkZWQgZ3Bpby1sZWRzIGluc3RlYWQg
b2YgcHdtLWxlZHMgZm9yIHRoaXM/IEdQSU8xIEMyCmlzIG11eGVkIHdpdGggUFdNM19JUl9NMi4K
PiArICAgICAgICAgICAgICAgICAgICAgICBsaW51eCxkZWZhdWx0LXRyaWdnZXIgPSAibW1jMCI7
Cj4gKyAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICB9OwoKSmltbXkKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
