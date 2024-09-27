Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D428FCDD1AD
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 13:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkvq1+Gn4t0s92dy5inmLEn/szWUaWZTFWq89BKeNa0=; b=b5kzl1vvorAdLV
	lTTAWHTTtTbUFt/pDyS6ZdTjIJq3TrI5fGa+K2V8dy+jTJw/pffKEdfOBAilfq2cIINCvxfQmehmC
	u+oj7zdJo0l4R+XDf46HGeiL8HKzkfetQrY3LKOcSRmf88GJRRVldBhaf5WszgWH8VVqxuEG7Q66x
	r0ontUuae6dwrgGqhqA8224tfwGHo6jZ6RMp4H46rLuM2beGUhWbolQTV6DrgBnXc3CgzGUkI0s1C
	MY/Pm0p1VsXFEGoe1VzDF03dueO4Bp9kD3HC63inOg5Ng4FTbIwm1t9/y0xj53SXWBGtqDyxJ5R72
	ir/tvenLEIDuGOIR4vng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suAnf-0000000BF5i-3RT6;
	Fri, 27 Sep 2024 13:14:23 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAZV-0000000BBtx-1B5N;
	Fri, 27 Sep 2024 12:59:46 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2e0d9b70455so222478a91.3;
        Fri, 27 Sep 2024 05:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727441984; x=1728046784; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5kRvQYqrDxlyQ/4IJ60voMIp6Qt/AmF1WSn0sGcC0t0=;
        b=TN4ZprA1tMm+I7ZzEy1D/V0UZGDSj/w0+DvZ+FWAos01BMGLh/k5mT7txXLh67Rcku
         3BqGKg7NBtpgj9bmGJ9q0j72Dk7Oo7CkAHSZkVFNuiVwyUrxhAK239MowBXG+0xZf2od
         Rh19I2QLP5n3zk6rN1f+9S+1KEn/45mkJpxQAmpSFvJWKkeaa76O7kROhK4QCjJXCvk4
         15JFJgBUw/iDbqyUMDtBPXhD7vOMwE3qarSHIa1aZ09eThmFhpLGWyBE87C8qztlGuW4
         XOoM97Ml2qDqmvTX3dT9nrbxQqMIXz7Ab+G2rBjo/kf38S+aR9V5VAjqiFw2quvjgIgF
         xcDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727441984; x=1728046784;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5kRvQYqrDxlyQ/4IJ60voMIp6Qt/AmF1WSn0sGcC0t0=;
        b=VSbNpIMJIGLOuoC9bi1udk5R6K/ZeiXWwzwq0YkOyMC/OtQhQOtyGNiUAE+QJdd5/G
         P4ikgI+8c96jIp4sa9Gfd60SQcBtPZEabQiPc6ka4NgtdTlUz/QwuktZ+2whIJqd/7MC
         udoXx/V/xgrYWOGx2moKVIbWiJB+yW2tGXLh6h9RPabx9sOym53P2Y8THxAiQ3CsOBie
         APBKlEoq26dVuOfXHeB/RBgho8x4P+1HpWpqEzHXgwRyRr52r7dKi/oLCmIYq9LHvXB1
         4qbX93FokKyBFPnr1FFT9j7cpShpLVHOrg9f/tG/04U6F7rykMOVjUe293T4qeT9Mc+l
         Yqvg==
X-Forwarded-Encrypted: i=1; AJvYcCWFpeZjRo5uKXWpdfJ5JHPpXhpd5CHIXn26U+4EGRhnh29iLbLMAOH0BJkdzok0TeUAEr5etEL4nqUSgIGq65c=@lists.infradead.org, AJvYcCWI3FE5p0cVie/CVd2PP0ldjqHQYYxyy3DhhALIUfvMCEOk+pXUTf8YtL2PfPWgI6fHwVyinL0lhAvDfjkJvpw2@lists.infradead.org
X-Gm-Message-State: AOJu0Ywr+H+J6pWbXwnOXcrnmBOQpZqR57Qdf/kf1nj5Srk22jpswvUL
	iVGqsUclxNpK1by4/g0CqUPGNweCpcaoQTqCnb8ZAS2TiV/+EY9RwcAnf8ZA/BrDFiCNBV4hDx+
	SfPLW9Xw3o0ebOIapUBENkOfGVpY=
X-Google-Smtp-Source: AGHT+IHCtWkk/m0gIJI4HjMGIxf6HDCRDpOESUdGt/5A/Krn13z9jK+YnLyf6mEmoZB4cokgO5ouczhwAV6HyE5bjfY=
X-Received: by 2002:a17:90b:1896:b0:2de:ec70:837 with SMTP id
 98e67ed59e1d1-2e0b876f84bmr4254037a91.1.1727441983559; Fri, 27 Sep 2024
 05:59:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1727438777.git.geert+renesas@glider.be> <750d6ac7911aef9a461dca6d07e5c1fab6211ecb.1727438777.git.geert+renesas@glider.be>
 <0bd21761-a81f-494a-9934-877f24b7fe0a@kernel.org>
In-Reply-To: <0bd21761-a81f-494a-9934-877f24b7fe0a@kernel.org>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 27 Sep 2024 07:59:32 -0500
Message-ID: <CAHCN7xKKs9mUvnqZaLE2gCsDau4QtZ706LLoYcS_47-U86-nfA@mail.gmail.com>
Subject: Re: [PATCH treewide 05/11] arm64: dts: renesas: beacon-renesom:
 Switch to mic-det-gpios
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Paul Cercueil <paul@crapouillou.net>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Shengjiu Wang <shengjiu.wang@gmail.com>, 
	Xiubo Li <Xiubo.Lee@gmail.com>, Nicolin Chen <nicoleotsuka@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Adrien Grassein <adrien.grassein@gmail.com>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-mips@vger.kernel.org, 
	alsa-devel@alsa-project.org, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_055945_339188_24609437 
X-CRM114-Status: GOOD (  13.68  )
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

T24gRnJpLCBTZXAgMjcsIDIwMjQgYXQgNzo1NuKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAyNy8wOS8yMDI0IDE0OjQyLCBHZWVydCBVeXR0
ZXJob2V2ZW4gd3JvdGU6Cj4gPiBSZXBsYWNlIHRoZSBkZXByZWNhdGVkICJtaWMtZGV0LWdwaW8i
IHByb3BlcnR5IGJ5ICJtaWMtZGV0LWdwaW9zIiBpbgo+ID4gQXVkaW8gR3JhcGggQ2FyZCBkZXZp
Y2Ugbm9kZXMuCgpUaGFua3MhCgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEdlZXJ0IFV5dHRlcmhv
ZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JlbmVzYXMvYmVhY29uLXJlbmVzb20tYmFzZWJvYXJkLmR0c2kgfCAyICstCj4gPiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBSZXZpZXdl
ZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgpSZXZpZXdlZC1ieTog
QWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+Cgo+Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlz
enRvZgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
