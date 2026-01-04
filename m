Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3A24C2A062
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jan 2026 11:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Zy9N347VGktCj1ZP3I7dwZheIY4QYAgXNgAOXfLTik=; b=VgjgNWwpOFgC7h
	RCRQCJvetq1R8Ei+BVPmvBcyCBGAPZ/NTFtjZAfLHlqx5KteQeoySVSagThgKzD66yTG9bKA/bly5
	QpzxhTpYSNH1jAs94JhJWxxTC03GCAJan2DmIOyBOWkM8eS99J8ISmzV6nmwCq5ITojjYkJ2OotR7
	KGb3ojJvCknXSEJJvf1L0Q4cuAcdqEdIheSd6XCtZZwFL2SQri5CrspP/ldOcP6m7LD7dS16pFeJG
	4ygVV1juT6wAomrO+dfdaojwTpMTTSEVTzRIc9hlkeRHH1uX1aLvdsr4RcvbMq77ftAICyrliNR5M
	YPbz54j6i34wSDTML32g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcMgZ-0000000ACvS-3BoE;
	Sun, 04 Jan 2026 11:54:15 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcMgW-0000000ACuj-2nMb
	for linux-rockchip@lists.infradead.org;
	Sun, 04 Jan 2026 11:54:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DAC9143C3B
	for <linux-rockchip@lists.infradead.org>; Sun,  4 Jan 2026 11:54:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC692C4AF09
	for <linux-rockchip@lists.infradead.org>; Sun,  4 Jan 2026 11:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767527651;
	bh=AcdRLvhNh8FGlzW+TOR1NqwjouA0EJJ3chB+HVQXgi4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=sLJTDnXkODOe54DMJPdkGdMjK7+W+FDQTWtC76a2OPbF207Hkfy5bx3ckBzBHKLyj
	 miINtekufMc9Ljcjnt5+rNJTNLzXcdnhtuQF47x2zhdZ2ECk4b6T38waUlOnrOFgrj
	 s3u5rkHHFyVr7bsYCLT4eML3Yc+t2dq9DHc7SMNxcdbIlB9vgCdC6Y8+EFnDdtqxWB
	 fkawMUjfVMEl4FA2xWwp/j6l4V0XzCLT7dWLYFbd7npCTAIVIzObe9BANJ1tcCSCI/
	 juq2qYkAD2upk/VXWejTMWDF/faqBP4zXoZAupF/51fJs0q2QOMwC+6JPMe0mK2rfE
	 IAnF8Y50bOxvA==
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-787df0d729dso103878757b3.3
        for <linux-rockchip@lists.infradead.org>; Sun, 04 Jan 2026 03:54:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVA+60b1NDUDMaX7NtWgBkhlMN8SqOfobmJOKBhsYSiIBHjeOOGfl9QCsa6CuZz6pNH6KglOhYAnXhV8XTyEQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwuIuXaOWMExqbv7N7afrsGUZ0axmt1ocO92HK7uR7h/lmKU9YO
	Z3dqk9J2///9/pYNyUSEXuWRjxRdTvb2im6zh2nzRz+L1m+xh0cHdTr8HBQs9RYNlIjECVzogqT
	pjxFpbuguUSk3Nkv82IRSf5ycqj1ZSLM=
X-Google-Smtp-Source: AGHT+IGi7QFbFfC9+u8deXvEkGUtUoDMSC7p+FUi+Vu2ikgFZWwDkuLdG6m590kIpmNyayCsx7hnVPTUXHZ7MMSOHHM=
X-Received: by 2002:a05:690c:6c08:b0:786:7aaa:a070 with SMTP id
 00721157ae682-78fb400fb2dmr389515767b3.10.1767527651098; Sun, 04 Jan 2026
 03:54:11 -0800 (PST)
MIME-Version: 1.0
References: <20251227114957.3287944-1-ye.zhang@rock-chips.com> <20251227114957.3287944-4-ye.zhang@rock-chips.com>
In-Reply-To: <20251227114957.3287944-4-ye.zhang@rock-chips.com>
From: Linus Walleij <linusw@kernel.org>
Date: Sun, 4 Jan 2026 12:54:00 +0100
X-Gmail-Original-Message-ID: <CAD++jLnWRy_i7ergPouu4LK+r4g_a-ry+iN0m+jgSGn3+Zhjdw@mail.gmail.com>
X-Gm-Features: AQt7F2oL3yzobHab3UPIxoHqEHXwAO3naOHfp6yFtxa1dYpd6Lg-Kfe1G-jLF64
Message-ID: <CAD++jLnWRy_i7ergPouu4LK+r4g_a-ry+iN0m+jgSGn3+Zhjdw@mail.gmail.com>
Subject: Re: [PATCH v4 3/7] arm64: dts: rockchip: rv1126b: Add pinconf and
 pinctrl dtsi for rv1126b
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tao.huang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260104_035412_786589_41CBB9A7 
X-CRM114-Status: GOOD (  12.31  )
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

SGkgWWUsCgp0aGFua3MgZm9yIHlvdXIgcGF0Y2ghCgpPbiBTYXQsIERlYyAyNywgMjAyNSBhdCAx
Mjo1NeKAr1BNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cgo+ICsg
ICAgICAgL29taXQtaWYtbm8tcmVmLwo+ICsgICAgICAgcGNmZ19wdWxsX25vbmVfZHJ2X2xldmVs
XzRfMDA6IHBjZmctcHVsbC1ub25lLWRydi1sZXZlbC00LTAwIHsKPiArICAgICAgICAgICAgICAg
Ymlhcy1kaXNhYmxlOwo+ICsgICAgICAgICAgICAgICBkcml2ZS1zdHJlbmd0aCA9IDwweDJjPjsK
Ck5vcm1hbGx5IGRyaXZlLXN0cmVuZ3RoIHNob3VsZCBiZSBpbiBtQSwgaXQgaXMgdmVyeSBzdHJh
bmdlIHRvIHVzZSBoZXgKZm9yIGFuIFNJIHVuaXQuCgo+ICsmcGluY3RybCB7Cj4gKyAgICAgICBh
dXBsbF9jbGsgewo+ICsgICAgICAgICAgICAgICAvb21pdC1pZi1uby1yZWYvCj4gKyAgICAgICAg
ICAgICAgIGF1cGxsX2Nsa19waW5zOiBhdXBsbC1jbGstcGlucyB7Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgcm9ja2NoaXAscGlucyA9Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAvKiBhdXBsbF9jbGtfaW4gKi8KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDw3
IFJLX1BBMSAxICZwY2ZnX3B1bGxfbm9uZT47CgpUaGlzIGxvb2tzIGJldHRlciBhczoKCnBpbm11
eCA9IDw3IDw8IDE2IHwgUktfUEExIDw8IDggfCAxPjsKYmlhcy1ub25lOwpkcml2ZS1zdHJlbmd0
aCA9IDwuLi4+OwoKSXQncyBqdXN0IHdlaXJkIHRvIGhhdmUgdGhlIHBoYW5kbGUgYXQgdGhlIGVu
ZCBvZiB0aGUKcGlucyBjcmVhdGluZyBzb21ldGhpbmcgIm5lY2Vzc2FyaWx5IGRpZmZlcmVudCIg
ZnJvbSB3aGF0CmV2ZXJ5b25lIGVsc2UgaXMgZG9pbmcuCgpJIHdvdWxkIGNoYW5nZSB0aGUgYmlu
ZGluZ3MsIGRyaXZlciBhbmQgd2hhdGV2ZXIgc2NyaXB0CmdlbmVyYXRlcyB0aGlzIHRvIHVzZSBw
aW5tdXguCgpJIHVuZGVyc3RhbmQgdGhpcyBzY2hlbWUgbG9va3MgY29tZm9ydGFibGUgd2hlbiBq
dXN0IGRvaW5nClJvY2tjaGlwIGFsbCBkYXksIGJ1dCBhcyBzdWJzeXN0ZW0gbWFpbnRhaW5lciBJ
IG5lZWQgdG8KdGFrZSBpbnRvIGNvbnNpZGVyYXRpb24gaG93IHRoaXMgd2lsbCBsb29rIGZvciBw
ZW9wbGUgd29ya2luZwp3aXRoIG11bHRpcGxlIFNvQzpzIGFuZCBtYWludGVuYW5jZSwgYW5kIGFu
eXRoaW5nIGRpZmZlcmVudApmcm9tIHN0YW5kYXJkIHBpbm11eCA9IDw+OyBpcyBqdXN0IGEgYmln
IHBhaW4uCgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
