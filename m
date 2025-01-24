Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F27D8C02181
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 08:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VpGx4OJefbIHsl+Dka9WlVCyVo6mg/7/MzC/0xiy2k=; b=NxuUDOZzCmcg1Z
	wbpE+dcY02tWH4LHDC6109nGGR1XNHseciMIqpZ8xdCbQ2yOgu5eAi4g3H23EccOfcZ8enWr9Nrtj
	LZdzAPL5nM9SbBJb26ITjcWDKSmEcLloCYlm6H7YDWUX9uEAUyvh2/52/JEo00dFroj2KqyMHmqqR
	Qbq7CpxmHk3LQvXsEawJ6vM3Kmna76PXzdlrhjHHQthLgXNBhRAfGUCwfGURePyHIzTGd3T8c2P7W
	lWyNSCFWFfPppeb5sjbQ06GBoieOXIBe/I9ZMTpCLsfXfa4QsGQo10QX4O3KQpxnmrI1tfyfyW4b0
	ArNZFNUKyXg1mPvZCDpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbF8i-0000000EGIl-3qRY;
	Fri, 24 Jan 2025 08:34:08 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbF8g-0000000EGII-19Yo;
	Fri, 24 Jan 2025 08:34:07 +0000
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-46c7855df10so29566931cf.3;
        Fri, 24 Jan 2025 00:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737707644; x=1738312444; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GZ0nIwGZcKWC9CI9oPaF+selKdSvdGUPn/XTMbdZTRM=;
        b=JEjQ829sfy4miYbrJYRtS3hvh9Q5O781bVxpSRWoz+RxdEKQ6+ukC4Z9AjVumKccu1
         dmP5UCW8ZT2WSqStTtscVrTfH7dxDVwXShPamaFM5YOFHl3rzydzVtnFuGlYAzvwgZFH
         69XNMCVJ6tXkvSnKcaElLsFkY5JYtZCdNg8wEpgCsj03G+lKgJR2FyUb11uTb8DRi/Aa
         1CZRWxyPQIJoM6CHkJ/m87pmXuo0+yU3neV78eM2ZwZxPVsH/1DkzBgSPpAY+gxyXPSR
         lJTa8i0x24SP0qihdK7iI5mbk8SZWEfvQrsEcIkQGs/TYrPDUfA3UDkPSeeiOmRCo+BY
         GmkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737707644; x=1738312444;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GZ0nIwGZcKWC9CI9oPaF+selKdSvdGUPn/XTMbdZTRM=;
        b=BcE0pj8/ENEbRCg8FYpzTIF0dk63O3fAXtlQLdss/3k7xdhq8R7JlBWkXCZnKwThuD
         gxVLjxfYGrzjiw+25y8BZ+FBp25+22nxAhi8BKhlPSL6v7ZKCM0jNIhDzN5NSL1XrTTV
         dUxueQijxLrBPqa1nLgmpogHrHq0x0VSMRkHP+LFXcF9CizRJVt1M+sgIxkX0xc5rCGR
         hzu0aHWZkOSpGK/Bd0Cx++Q/sropxP7PSUnyua5+bGryrL/YvqzmTEaLIYJLMMRsoFaw
         xRuWUBqOtEW4IWj9dkRAcCl9ghmzgs6SBXCEHwyFjMcMWMUvWX/PStib5Imh07ASZVu2
         74aw==
X-Forwarded-Encrypted: i=1; AJvYcCVDPPU8bYcyONBoMcZPAIZAGN7WnddQGdJzOM6LRkU1RTu5PccWJY65c/YE8vbBSFfDiGytZu0m+Hxj/icSpWF6@lists.infradead.org
X-Gm-Message-State: AOJu0YxMt0HIxeL+g9NIm644eM5vhQCp5sJEfutK6AsC/K2ZEI3EYwij
	BOoHlTzc7PxtnyNwQdBstnryGXgQAAOExarPvjuVdFHz6XmCFxrDPVguFVk2Va4MiT9f2Kgs3Qg
	OAQsPuHzYvyfrmHFHCO3zIs549Jo=
X-Gm-Gg: ASbGnctvMR4rB/Y64XrAPz/9MmlMsa/SMIdVl95WLhGWn8aoLT7ZgScKogAC5nA73h8
	F84COSahkep62OmDf1dnrSMstvZoRexrP8xf5uLw3HkeYGdxwFuXiOB2nJAr7d46DNhNAkmX9CI
	cNEY0nhZ6heNmctEpeqsw=
X-Google-Smtp-Source: AGHT+IFl2RBQvd/ETvziDYSlPrmT7mc177y845BPyOUXEov808xJd8TLaJbwsWABklQa7ECj77cxjS4eIL3qMRRl/jY=
X-Received: by 2002:ac8:7e90:0:b0:46a:1932:b07f with SMTP id
 d75a77b69052e-46e12b94a7emr491045021cf.39.1737707644511; Fri, 24 Jan 2025
 00:34:04 -0800 (PST)
MIME-Version: 1.0
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
In-Reply-To: <20250124052611.3705-1-eagle.alexander923@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 24 Jan 2025 12:33:55 +0400
X-Gm-Features: AWEUYZmQaM4V6YVDY2n2Q6kv8IFnTIzybv59I_cdQvKs7jFSzvTBO42nz64fyqA
Message-ID: <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix broken tsadc pinctrl binding
 for rk3588
To: Alexander Shiyan <eagle.alexander923@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_003406_319880_0C118726 
X-CRM114-Status: GOOD (  10.34  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, stable@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQWxleGFuZGVyLAoKT24gRnJpLCBKYW4gMjQsIDIwMjUgYXQgOToyNuKAr0FNIEFsZXhhbmRl
ciBTaGl5YW4KPGVhZ2xlLmFsZXhhbmRlcjkyM0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gVGhlcmUg
aXMgbm8gcGluY3RybCAiZ3BpbyIgYW5kICJvdHBvdXQiIChwcm9iYWJseSBkZXNpZ25lZCBhcyAi
b3V0cHV0IikKPiBoYW5kbGluZyBpbiB0aGUgdHNhZGMgZHJpdmVyLgo+IExldCdzIHVzZSBwcm9w
ZXIgYmluZGluZyAiZGVmYXVsdCIgYW5kICJzbGVlcCIuCgpUaGlzIGxvb2tzIHJlYXNvbmFibGUs
IGhvd2V2ZXIgSSd2ZSB0cmllZCBpdCBvbiBteSBSYWR4YSBSb2NrIDVDIGFuZAp0aGUgZHJpdmVy
IHN0aWxsIGRvZXNuJ3QgY2xhaW0gR1BJTzAgUktfUEExIGV2ZW4gd2l0aCB0aGlzIGNoYW5nZS4g
QXMKYSByZXN1bHQsIGEgc2ltdWxhdGVkIHRoZXJtYWwgcnVuYXdheSBjb25kaXRpb24gKEkndmUg
Y2hhbmdlZCB0aGUKdHNodXQgdGVtcGVyYXR1cmUgdG8gNjUwMDAgYW5kIHRzaHV0IG1vZGUgdG8g
MSkgZG9lc24ndCB0cmlnZ2VyIGEgUE1JQwpyZXNldCwgZXZlbiB0aG91Z2ggYSBkaXJlY3QgYGdw
aW9zZXQgMCAxPTBgIGRvZXMuCgpBcmUgYW55IGFkZGl0aW9uYWwgY2hhbmdlcyBuZWVkZWQgdG8g
dGhlIGRyaXZlciBpdHNlbGY/CgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
