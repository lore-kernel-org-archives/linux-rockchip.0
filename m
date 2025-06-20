Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93DBFC7115D
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 09:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5gLTptFufN3ug2QqmdN8U7+5Vbvt0B22nexZdXqqSI=; b=0jGK3N9fJvvRDI
	ILAWf4c5pRlUTsfJ6Xjam1JLE72a44/Z33ZhZO6pWaVfZYPTX0JENy11iAE8XyYGhdyfcDS3GlCM9
	mBOw9J1Yi8SkZHVQa4PlkT5lyOgD9u82G+0Oqj9ln5XFCgKELjvzlHEg2IVsM7BZpgc/U0jWyCPot
	dzU9ffU3Z8xqjd2pVMlCjSA5S2+2xeVxuO1zcluYqs4kK5c+9PMrvOZp1R+YTMO6ncoYaKCXhFSRr
	3Opz8kVrMwGboQAs3hgABN1hcWtRUwah+S7t/iE6YQtgbx5+SR3El1tNtxrdprqe/+W+cqpyxG8l8
	F4hlANO0GXrcW5WExO8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSYV1-0000000FH7q-2y0E;
	Fri, 20 Jun 2025 09:57:31 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSXIx-0000000F5tO-3bnE;
	Fri, 20 Jun 2025 08:41:01 +0000
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-4a774209cf0so15808891cf.0;
        Fri, 20 Jun 2025 01:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750408858; x=1751013658; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yhJ28lUu4tutQ9PFgn6HlLDINbOKz5/YrrzszsyspMw=;
        b=c5KnR2pwWs3P6ihvIYeh1dulGW0lIkzYx858il49JTY0BCWVfdSlRJaHhmX8Q4xiuw
         T1+Rmxp3yUaGayCerizqYCyLjoM3dQ2zJ2wdKk6Cs2Mi5jPz3pbBeTkPZfkLJYp+44tT
         9BFYMP415sZvI6DLDr+4v6BJDQkkMAWGlIY+aDwGaGu0E48c+yMlTbv+hlDuVE+eBFWv
         eo3AlxYKqUchFpfeiuEzpCx8kI4U6eUXESQLrijFvn4rouOWGOpoeWjDoduXFK54HLa8
         Oh+robdc+r4rzVWY1A6IZa1c2V8gREeML0mpueHr8pE/JCtII7rXJ0Sr9vAMhZrDT6wr
         Vptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750408858; x=1751013658;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yhJ28lUu4tutQ9PFgn6HlLDINbOKz5/YrrzszsyspMw=;
        b=Fjd2RgafiQgVJkaDVGYcRLDzw5xKY99LPLRQp9oIsJShj2rBjK9fjJFGzbkiBIhUbR
         n8fZdsQPB6WEvMThuqcib4yDwYp+voW/i9fMuhe7I1a7o1nOfcaQ9TzS3hlReHm/dm/o
         zGzlJCLR542GDY2f8rXO8YkHXgj8iLyJHp+1NaqVkLcvk7f++KwN7YwnEHGF5w4cNoWF
         +u2oDqN6nJ4rGtrvlhZcqpDbZ1p2tEoxa+OU0T3kqUb8nHOBVcn4jBkzca7aWSkPd+4z
         T8fLuWEZ0I+BymiwRr9NcxxS80oYaYclCKHKyFuZhzW89OsoFBkE5Wz5eIuyy2oO02We
         iupQ==
X-Forwarded-Encrypted: i=1; AJvYcCWX33EeNDV8Zc+aq2+OtAL78B8tTffS7IsAhuuEHpJDiDDluAsR8J7FT+5JAUdhrFMSyh8EckNwidmP64eOphs8@lists.infradead.org, AJvYcCXrW2mOVBfdxPvGuspDv8R126K5MEL3UK3YxKuXVo2goVWC4EihRFNXuqIxjn5EwWHMRIcjU02vyOffIdoA2gs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxAlEhMKmDQSBUHuGq5y/ngf9ZbTWOHFb8BSlIOE02/vd7ZuDn1
	Lq9KiULrcu7oNrVHodu4n2u4GIKYqbVimU9Fz9hPZInxca9qcGALGInZfU2nMifR6qM8t4B5D7j
	69NQIlx8XDbM7t1ZALYU/hglHay3RzT8=
X-Gm-Gg: ASbGncuVTZ0TZBIVDCRIqACrQBnk8xwL2uPU+hReWReawhmKsSyWvxpb89ZX1cB2qag
	GwVjCRVBYpdSlrY02f5OWcbM+pQqipPAYNQYCaX15ncLAfqADlskT4lWhFSqRhA5moCr4oY2TQa
	6qhJaiIMHnXsD51yjm4yXCCVJ1AgdqBewIcAg9SaEXPjq2
X-Google-Smtp-Source: AGHT+IEk9QAe1bgLQ65TsS0eFYzhtXpG1Dw6rWlKdy3d7hwrH5nqqmF5IjgTeOnwx7f0dHroCwGo1uFKO/+rc8rs2tU=
X-Received: by 2002:ac8:57ce:0:b0:4a7:74ed:cd49 with SMTP id
 d75a77b69052e-4a77a1c4b80mr30180401cf.19.1750408858127; Fri, 20 Jun 2025
 01:40:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250614-sige5-updates-v2-0-3bb31b02623c@gmail.com> <175036770856.1520003.17823147228060153634.b4-ty@sntech.de>
In-Reply-To: <175036770856.1520003.17823147228060153634.b4-ty@sntech.de>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 20 Jun 2025 12:40:49 +0400
X-Gm-Features: AX0GCFvyM96QmV7htM0KHUFL5y6LOg8SAG7kA6gR9Sm54nshs6x8Ht0AaNoM6u4
Message-ID: <CABjd4Yzz9mh0G5BhpPOGAoadD-A5eX4kdsF8rGrWk82hAE-MYQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] arm64: dts: rockchip: enable further peripherals
 on ArmSoM Sige5
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_014059_899463_CDF08BD6 
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, Detlev Casanova <detlev.casanova@collabora.com>, stable@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdW4gMjAsIDIwMjUgYXQgMToxN+KAr0FNIEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4KPiBPbiBTYXQsIDE0IEp1biAyMDI1IDIyOjE0OjMyICswNDAw
LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IExpbmsgdXAgdGhlIENQVSByZWd1bGF0b3JzIGZv
ciBEVkZTLCBlbmFibGUgV2lGaSBhbmQgQmx1ZXRvb3RoLgo+ID4KPiA+IERpZmZlcmVudCBib2Fy
ZCB2ZXJzaW9ucyB1c2UgZGlmZmVyZW50IGluY29tcGF0aWJsZSBXaUZpL0JsdWV0b290aCBtb2R1
bGVzCj4gPiBzbyBzcGxpdCB0aGUgdmVyc2lvbi1zcGVjaWZpYyBiaXRzIG91dCBpbnRvIGFuIG92
ZXJsYXkuIEJhc2ljIFdpRmkKPiA+IGZ1bmN0aW9uYWxpdHkgd29ya3MgZXZlbiB3aXRob3V0IGFu
IG92ZXJsYXksIGJ1dCBPT0IgaW50ZXJydXB0cyBhbmQKPiA+IGFsbCBCbHVldG9vdGggc3R1ZmYg
cmVxdWlyZXMgb25lLgo+ID4KPiA+IFsuLi5dCj4KPiBBcHBsaWVkLCB0aGFua3MhCj4KPiBbMS80
XSBhcm02NDogZHRzOiByb2NrY2hpcDogbGlzdCBhbGwgQ1BVIHN1cHBsaWVzIG9uIEFybVNvTSBT
aWdlNQo+ICAgICAgIGNvbW1pdDogYzc2YmNjN2QxZjI0ZTkwYTJkN2I5OGQxZTUyM2Q3NTI0MjY5
ZmM1Ngo+IFsyLzRdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgU0RJTyBjb250cm9sbGVyIG9u
IFJLMzU3Ngo+ICAgICAgIGNvbW1pdDogZTQ5MGY4NTRiNDYzNjliMDk2ZjNkMDljMGM2YTAwZjM0
MDQyNTEzNgo+IFszLzRdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgdmVyc2lvbi1pbmRlcGVu
ZGVudCBXaUZpL0JUIG5vZGVzIG9uIFNpZ2U1Cj4gICAgICAgY29tbWl0OiAzNThjY2MxZDhiMjQy
YjhjNjU5ZTVlMTc3Y2FlZjE3NDYyNGU4Y2I2Cj4gWzQvNF0gYXJtNjQ6IGR0czogcm9ja2NoaXA6
IGFkZCBvdmVybGF5IGZvciB0aGUgV2lGaS9CVCBtb2R1bGUgb24gU2lnZTUgdjEuMgo+ICAgICAg
IGNvbW1pdDogYThjZGNiZTZhOWY2NGY1NmVlMjRjOWU4MzI1ZmI4OWNmNDFhNWQ2Mwo+Cj4gUGF0
Y2ggMSBhcyBmaXggZm9yIHY2LjE2Cj4KPiBJJ3ZlIGFsc28gZml4ZWQgdGhlIHdpZmlAMSBub2Rl
IGluIHRoZSBvdmVybGF5IC0gd2hpY2ggd2FzIHVzaW5nCj4gc3BhY2VzIGluc3RlYWQgb2YgdGFi
cy4KClRoYW5rcyBIZWlrbyEgSXQncyBhbm5veWluZyB0aGF0IFlBTUwgZG9lc24ndCBsaWtlIHRh
YnMsIHNvIGNvcHlpbmcKZnJvbSBiaW5kaW5nIGV4YW1wbGVzIGlzIG5vdCBhIHVuaXZlcnNhbGx5
IGdvb2QgaWRlYSA6KQoKQnkgdGhlIHdheSwgaXMgdGhlcmUgYW55IHRvb2wgdGhhdCBoZWxwcyBj
YXRjaCB0aG9zZT8KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
