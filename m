Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67780C2A074
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Jan 2026 11:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F36MAXBlKBHhKuMG4bxbklsdVKcCBdeB2plT0gaLQNo=; b=dvZDRlBnmN62SW
	xqqMYvySYQ8nm4r6Cr+Ap+bSJD8kUPk0GXdCnflLz+oITpFBUWwVOkDskDdMPEzZGB2koVm/k6kyq
	hHiiAr1+7KeYSOETzQt4rlTVkk9B9zcSHkda6ypWS0HygYuRPl8pmBVr99CkW7f+RjRFOtvR+3MwY
	Pcp28KP1WbsKVpTGiOYMx1YjXWM1isShOMVkMDlapndUXtIcbtDzmPUx1QVHbNwKGxSqbYbyeYE0i
	z9deFVEq67uqoOx9V3dewxoLhO095Jb02lbB+U1abc88n7YjnhgiAR0KDzkexzKXUfGOXqbguvWMX
	/8SuIcX1zBUq4jYlsxhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcMSr-0000000ABzW-0k4Y;
	Sun, 04 Jan 2026 11:40:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcMSo-0000000ABym-3zL5
	for linux-rockchip@lists.infradead.org;
	Sun, 04 Jan 2026 11:40:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 978A24430A
	for <linux-rockchip@lists.infradead.org>; Sun,  4 Jan 2026 11:40:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C2C1C4CEF7
	for <linux-rockchip@lists.infradead.org>; Sun,  4 Jan 2026 11:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767526800;
	bh=4OlOxxutktzHnj47iAJg6lb1/kg6UJCstgjPUdHssPw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=hyJSJ5EDQCgI/03F+MYNO93KhNLLP8NLLkVCB6stSSFPbPGXYuMrIbZ/qqWq9WL3G
	 YDonSDrxXoYN10wmBOrpUBAmr28DuD54Q9KjBjqNrB62lV2PvC1gCSxHIjVWLqWd8S
	 bNCWaBLyVG/jHfzGI5kw0WshYZp35yT646rPHUFuckTIubSF1bPtEKRyfh0zdjBX+J
	 ghmz1R3FfjfY+6w6NHLvgv5ulKfL+Gl/CxxhHiNl3keA++7ZRwlvgHm+qb7M9V3280
	 8cDSKZOsSNSaiwuCF8/YSRx1ig+rF0alihaa4tOSRDpfcwAa21PO33QSAtOWJXtQCF
	 75TwETjtqNvPQ==
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-64472c71fc0so10804262d50.0
        for <linux-rockchip@lists.infradead.org>; Sun, 04 Jan 2026 03:40:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWAtn+udU0eLGoQ++UkFehy4dHk8ggR/XPL/sv1OSz5rxXZgsSPCJsUbjXT+oDK/3u+43jF19b0quB2IQXUsg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1RE8c4cXKwO9E50H8Hmu/eFIQKgToIW9F07svjeKC+0MzMhNp
	3owQpKdGf/CAuO6SdLW9LdiQvJBTcNhkXtqcDWGQHYmaL60zZS8l7qL9hMphZsSMQHLUTQY+70Q
	RQlDu0VigPztjHMR10BLwvyiIY02VMCU=
X-Google-Smtp-Source: AGHT+IGKIXjy7lexXGYCiKMkRPD8ggwV371jcFQdcHsITC/B9zTB3o/bAj5rEawF9HMxUDdZ3DoVx/M+caRG/RtXYBo=
X-Received: by 2002:a05:690e:1519:b0:643:33e8:11f1 with SMTP id
 956f58d0204a3-6466a859594mr34395536d50.38.1767526799488; Sun, 04 Jan 2026
 03:39:59 -0800 (PST)
MIME-Version: 1.0
References: <20251216112053.1927852-1-ye.zhang@rock-chips.com>
 <20251216112053.1927852-7-ye.zhang@rock-chips.com> <CAD++jLntu4LY=VHOMSXeLKXOBD9MTNziv47B0qkDjxUa1xAsng@mail.gmail.com>
In-Reply-To: <CAD++jLntu4LY=VHOMSXeLKXOBD9MTNziv47B0qkDjxUa1xAsng@mail.gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Sun, 4 Jan 2026 12:39:48 +0100
X-Gmail-Original-Message-ID: <CAD++jLmLhgxagenhum0KQ1eDuzAa1E5DQqM-oN1VQUby3mTpZg@mail.gmail.com>
X-Gm-Features: AQt7F2rYKdQBghWjfGpof99Et6swSjlhX4OCTK6LrN1u1e2LW2ybvz55mCS36AM
Message-ID: <CAD++jLmLhgxagenhum0KQ1eDuzAa1E5DQqM-oN1VQUby3mTpZg@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] dt-bindings: pinctrl: rockchip: Add RMIO
 controller binding
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tao.huang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260104_034003_081978_4CB97D07 
X-CRM114-Status: UNSURE (   8.89  )
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

Q29ycmVjdGluZyBteXNlbGY6CgpPbiBGcmksIERlYyAyNiwgMjAyNSBhdCA3OjA34oCvUE0gTGlu
dXMgV2FsbGVpaiA8bGludXN3QGtlcm5lbC5vcmc+IHdyb3RlOgoKPiA+ICsgIHJvY2tjaGlwLG9m
ZnNldDoKPiA+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWlu
dDMyCj4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4gKyAgICAgIFRoZSBvZmZzZXQgb2YgdGhlIFJN
SU8gY29uZmlndXJhdGlvbiByZWdpc3RlcnMgd2l0aGluIHRoZSBHUkYuCj4KPiBDYW4ndCB0aGlz
IGp1c3QgYmUgYSBjZWxsIGluIHRoZSBwaGFuZGxlPwoKVGhpcyBjYW4gcHJvYmFibHkgYWxzbyBi
ZSBkZXRlcm1pbmVkIGZyb20gdGhlIGNvbWFwdGlibGUsIGNhbiBpdCBub3Q/CgpZb3VycywKTGlu
dXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
