Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61A8BC79FA7
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jan 2026 17:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M61G4kz5aSjbBaRbbQIHCrbqA66c+gDMkC6eKZgyevk=; b=XiDPv0MJdORIqc
	ulxqp9CDS0CGl/tnW9JkcNm6K+h818GYp8flnZyv6hgVM3whZRY7zAehqhkI2UeBhxvKxp1xJs4yr
	Z8Ohsj7EzDin8j2kqz/dQtJBAwCI5xYWR9gMw5owv6kcHLCWrGABfjfzRY6/RhQUBi0aoqvflIkce
	XOijSNu+7MQtMHemXIFlwWAxz3PagpWKslWerfczGkDVlurvppFcWxpD/AkNasDUIwbTvR7/MBAjC
	UoGkhBDZJ3HgircHgECOEQuiwjSoiZWz6n1NeyLRNi1lxgDIxD5vG0cI+2Ep42hV/dsk2T3yUXx2r
	5BMTdav1ALvG+u+P+43w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcoYf-0000000Bqqh-3hpL;
	Mon, 05 Jan 2026 17:40:00 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcoYb-0000000BqpS-21M4
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Jan 2026 17:39:55 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-64b8123c333so194503a12.3
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Jan 2026 09:39:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1767634789; x=1768239589; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NaYcqNx5rMYLhdSC0kSUgZT1tN8fo/ryKgabcNZ/bCw=;
        b=Zr/AZ2vxoTlBYi96idvm5fJzKzGoDwy3VOK5yvpipaQ95T9p/AA/dCQBBndJWhNOOw
         uiy4JZ4n61BT2r3+flk+iPqcNVox1xaBPAkhTqBsNZG6aC7oxYIkBY4muyKmRkoS8pcz
         ru0V7RQ53JhNJm5+GjeHE/l/R5asEH50n+4L4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767634789; x=1768239589;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NaYcqNx5rMYLhdSC0kSUgZT1tN8fo/ryKgabcNZ/bCw=;
        b=IKW4aPFoQm/PjuRjzDUh0UqMrh0HHMA+5sxj5erVDBDaVy2anWB0Gwb5lamORW1W5Y
         5WsSt67EsVOAQUbtfpwPwBU5+oYyAmSEYFqp6rl19bvvVcG/KDCUZHzMlcwgJ3ofGF/b
         R75HHeDmb7/sKdabQjaAExgx+DBCiZKOXbD25KwZDupoZB290fd6nKlqX3vNLfJg+x8M
         5Ozvfs37T4IhzxGWJEx6+OCp5qidtB7TxYKblgUha4CNUqVPRyAPXDsG1+SSsfrIuyO9
         WYa7gY2rOR6yxS340l/HddbSj8nt897oixyI8KyzvKaNoQeIp22KCVQZdo9uN7Mtt35N
         UnbA==
X-Forwarded-Encrypted: i=1; AJvYcCV4vZ/83224RgfzaNB8f6v3bHK2422e27c+jzNWH4W+IbgEcsaMwBT4WfNtPTnomGzlNet4C38W38V+/ZNudg==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywd57F+YGs59unfdEGM6c077srBbW1CsGipgLPOj0Bgakya9qBH
	sNDp2MezA5h9wieGu8G1y1TAQC9aKZNFVCO68yfZ0F06MAHQLRzVMgIYq14AMaxVK4ZLuv1WykX
	dGjxxUQ==
X-Gm-Gg: AY/fxX7K6+aCnK3O7pYBQjzM//zp8nQ6+YFYvdoEUQetP8P7BbSPa2dEmlHu8w1i/yD
	xLoBx6cXM3fXloiKth7VCUokV8BsegoxERRnVx7DGoIoY33aT3Ur+dVZI9sfPnJ4aPZkmogXmRC
	ath3wq0ySvrcXzdE7Qh/0kbyUxr9C32W6t63NzQhK5kmvfF1vBB5Rh+9d39DOw7yb0LsztK9Q25
	Pm0y1J5XdTb5ueuve78qPCQaDyWZIJPD/wJiQXiLTAMBi0QaK/GjwnVexUH7n9841GARJiQrsEU
	ZwZvl5+4zljB2bnLPPFUByhGLPYSRIjj5viDTMdNZM8jAX60n6pxHQjHOfiJFzqjKZo+t/VUdA6
	4NamhEAjvpeDYypunHEm3ynFjm1FccOvXtUsgw4Q6ne/3NZMREt+cLk+l7w69EGTGCC5M4uaPrz
	1G3KXiyL2qQBcjDozQjTl+K3DwFXg1EKboPP01rQOJuTdzM4sSUg==
X-Google-Smtp-Source: AGHT+IHw80ginM27NUaG+ToTlMQo797oVPh4pFH3u0rOVCqS5/BE5zBIM7ZWUNN+KVz+I7Dbr1dVcg==
X-Received: by 2002:a17:907:c1e:b0:b84:20a5:1db5 with SMTP id a640c23a62f3a-b8426bf1316mr56330966b.49.1767634789345;
        Mon, 05 Jan 2026 09:39:49 -0800 (PST)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com. [209.85.221.47])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842678c0fesm47939166b.48.2026.01.05.09.39.47
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 09:39:47 -0800 (PST)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-42fb5810d39so68397f8f.2
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Jan 2026 09:39:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXyEbxCtMF6N9ZlLSWrxD2awodR7x+1lxEPx3Ma7VF8vz2ra6VkUwB2oJXMVJO7d5CNe2cf5B+hd/4mcjpsUA==@lists.infradead.org
X-Received: by 2002:a5d:64e5:0:b0:42f:b581:c69d with SMTP id
 ffacd0b85a97d-432bca2cba0mr696796f8f.3.1767634787333; Mon, 05 Jan 2026
 09:39:47 -0800 (PST)
MIME-Version: 1.0
References: <cover.1767111804.git.robin.murphy@arm.com> <bc54c6c700a4be244bd4f81cb846cf628313a6ee.1767111810.git.robin.murphy@arm.com>
In-Reply-To: <bc54c6c700a4be244bd4f81cb846cf628313a6ee.1767111810.git.robin.murphy@arm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 5 Jan 2026 09:39:36 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VB9XOm33VvsTN4cd22rBf9A-7ie4hN80TAByciQropfg@mail.gmail.com>
X-Gm-Features: AQt7F2olhV1Qt_uuATpZxGz_1-vircsLH4yPAB7cIo-0B798684oC2-AXT17Qsc
Message-ID: <CAD=FV=VB9XOm33VvsTN4cd22rBf9A-7ie4hN80TAByciQropfg@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add overlay for FriendlyElec HD702E
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org, thierry.reding@gmail.com, 
	sam@ravnborg.org, jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_093954_120094_A744149D 
X-CRM114-Status: GOOD (  16.32  )
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

SGksCgpPbiBUdWUsIERlYyAzMCwgMjAyNSBhdCA5OjIx4oCvQU0gUm9iaW4gTXVycGh5IDxyb2Jp
bi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4KPiArJnsvfSB7Cj4gKyAgICAgICBwd21fYmw6IGJh
Y2tsaWdodCB7CgpuaXQ6IHVwIHRvIHlvdSwgYnV0IEkgaGFwcGVuZWQgdG8gbm90aWNlIHRoYXQg
b3RoZXIgcmszMzk5IGJvYXJkcyBqdXN0CnVzZSB0aGUgbGFiZWwgImJhY2tsaWdodDoiIGluc3Rl
YWQgb2YgInB3bV9ibDoiCgoKPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJwd20tYmFj
a2xpZ2h0IjsKPiArICAgICAgICAgICAgICAgcHdtcyA9IDwmcHdtMCAwIDI1MDAwIDA+OwoKNDBr
SHogaXMgYXdmdWxseSBmYXN0IGZvciBhIFBXTSBiYWNrbGlnaHQuIEFyZSB5b3Ugc3VyZSB5b3Ug
bmVlZCBpdCB0aGF0IGZhc3Q/CgoKPiArICAgICAgICAgICAgICAgZW5hYmxlLWdwaW9zID0gPCZn
cGlvNCBSS19QRDUgR1BJT19BQ1RJVkVfSElHSD47CgpOb3QgdGhhdCBJJ20gZG9pbmcgYSB0aG9y
b3VnaCByZXZpZXcgaGVyZSwgYnV0IEkgaGFwcGVuZWQgdG8gbm90aWNlCnRoYXQgeW91J3JlIHJl
ZmVycmluZyB0byBhIEdQSU8gd2l0aG91dCBhZGRpbmcgYSBwaW5jdHJsIGVudHJ5LiBJCnRoaW5r
IHRoZSB1c3VhbCBjb252ZW50aW9uIGlzIHRvIGFkZCBvbmUuCgoKPiArICAgICAgICAgICAgICAg
YnJpZ2h0bmVzcy1sZXZlbHMgPSA8MCAyNTU+Owo+ICsgICAgICAgICAgICAgICBkZWZhdWx0LWJy
aWdodG5lc3MtbGV2ZWwgPSA8MjAwPjsKPiArICAgICAgICAgICAgICAgbnVtLWludGVycG9sYXRl
ZC1zdGVwcyA9IDwyNTU+Owo+ICsgICAgICAgfTsKPiArfTsKPiArCj4gKyZlZHAgewo+ICsgICAg
ICAgZm9yY2UtaHBkOwo+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICsKPiArICAgICAgIGF1
eC1idXMgewo+ICsgICAgICAgICAgICAgICBlZHAtcGFuZWwgewo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAiZnJpZW5kbHlhcm0saGQ3MDJlIjsKCkFzIHBlciBteSByZXNw
b25zZSBpbiB5b3VyIGRyaXZlciBwYXRjaCwgYW55IGNoYW5jZSB0aGlzIGNhbiBqdXN0IGJlCiJl
ZHAtcGFuZWwiPwoKCj4gKyAgICAgICAgICAgICAgICAgICAgICAgYmFja2xpZ2h0ID0gPCZwd21f
Ymw+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG5vLWhwZDsKPiArICAgICAgICAgICAgICAg
ICAgICAgICBwb3dlci1zdXBwbHkgPSA8JnZjYzEydjBfc3lzPjsKCldoaWxlIG5vdCBzdHJpY3Rs
eSByZXF1aXJlZCwgaXQgc2VlbXMgaGlnaGx5IGxpa2VseSB0aGF0IHlvdSB3YW50CiJocGQtYWJz
ZW50LWRlbGF5LW1zIi4gSXQncyBoaWdobHkgdW5saWtlbHkgdGhhdCB5b3Ugd291bGQgaGF2ZQoi
bm8taHBkIiBwbHVzIGEgInBvd2VyLXN1cHBseSIgYnV0IG5vIGhhcmRjb2RlZCBkZWxheSB0byB3
YWl0IGhlcmUuIEkKaGF2ZW4ndCBzZWVuIHBhbmVscyB0aGF0IHR1cm4gb24gYW5kIHJlc3BvbmQg
aW5zdGFudGx5LgoKCj4gKwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBvcnQgewo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgcGFuZWxfaW5fZWRwOiBlbmRwb2ludCB7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwm
ZWRwX291dF9wYW5lbD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICB9
Owo+ICt9Owo+ICsKPiArJmVkcF9vdXQgewo+ICsgICAgICAgZWRwX291dF9wYW5lbDogZW5kcG9p
bnQgewo+ICsgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JnBhbmVsX2luX2VkcD47
Cj4gKyAgICAgICB9Owo+ICt9Owo+ICsKPiArJmkyYzQgewo+ICsgICAgICAgI2FkZHJlc3MtY2Vs
bHMgPSA8MT47Cj4gKyAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKClRoZSBiYXNlIGR0cyBhbHJl
YWR5IHNwZWNpZmllcyAjYWRkcmVzcy1jZWxscyBhbmQgI3NpemUtY2VsbHMsIHJpZ2h0PwoKCj4g
KyAgICAgICB0b3VjaHNjcmVlbkA1ZCB7Cj4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAi
Z29vZGl4LGd0OTI3MSI7Cj4gKyAgICAgICAgICAgICAgIHJlZyA9IDwweDVkPjsKPiArICAgICAg
ICAgICAgICAgaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzE+Owo+ICsgICAgICAgICAgICAgICBp
bnRlcnJ1cHRzID0gPFJLX1BDNCBJUlFfVFlQRV9FREdFX0ZBTExJTkc+Owo+ICsgICAgICAgICAg
ICAgICBpcnEtZ3Bpb3MgPSA8JmdwaW8xIFJLX1BDNCBHUElPX0FDVElWRV9ISUdIPjsKPiArICAg
ICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW8xIFJLX1BCNSBHUElPX0FDVElWRV9ISUdI
PjsKClRoZXJlJ3Mgbm8gcG93ZXIgc3VwcGx5IGhlcmUsIHNvIEknbGwgYXNzdW1lIGl0IGZvbGxv
d3MgdGhlIHBvd2VyCnN1cHBseSBvZiB0aGUgcGFuZWw/IFlvdSBwcm9iYWJseSB3YW50IHRvIGJl
IGEgInBhbmVsLWZvbGxvd2VyIiB0aGVuLApyaWdodD8gQUtBIHlvdSdkIHdhbnQgdG8gYWRkIGEg
InBhbmVsID0gIiBub2RlIGhlcmUgdG8gcmVmZXIgdG8geW91cgplZHAtcGFuZWwuCgpPaCwgZXhj
ZXB0IHRoYXQgdGhlIGdvb2RpeCBkcml2ZXIgeW91J3JlIHVzaW5nIGRvZXNuJ3Qgc3VwcG9ydApw
YW5lbC1mb2xsb3dlci4gVGhhdCdzIGFubm95aW5nLiBJIGd1ZXNzIHlvdSdkIGhhdmUgdG8gYWRk
IHN1cHBvcnQgZm9yCnRoYXQgKHNlZSBoaXN0b3J5IGFyb3VuZCAiaXNfcGFuZWxfZm9sbG93ZXIi
IGluICJpMmMtaGlkLWNvcmUuYyIpPwpXaXRob3V0IGl0IHRoZW4gSSBhc3N1bWUgeW91J2xsIGp1
c3QgYmUgbHVja3kgdGhhdCB0aGluZ3Mgd29yaz8gLi4ub3IKeW91J2QgbmVlZCB0byBtYXJrIHRo
ZSBwb3dlciBzdXBwbHkgYXMgYWx3YXlzLW9uPwoKSSBndWVzcyBJIGNhbiBhbHNvIG5vdGUgdGhl
IHNhbWUgY29tbWVudCB0aGF0IHRoZXJlIGlzIG5vIHBpbmN0cmwgZm9yCnlvdXIgR1BJT3MgaGVy
ZS4KCi1Eb3VnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
