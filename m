Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C89BCD0E6F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhhX6LptDP2xqZNtGKomVNznFJLj2MpjO1UgJlCjjGY=; b=TtYNVqqWOF46sJ
	1Tge2By1baPIlO7ervdad9yjh5Gzoism0S0wMLUu6ERhVM3tB0EIv+H6rweZ2HsZVyaQt3AdQoslV
	gKk/118lkczLofn4mupQwP/Ks+cTrFHS22Gzuw9fRPP//aZ1MlCozdNOtyJ+/qoejqLSWack/jUe9
	GWXm2gOprod24lu8gpSXFN5cUKYEM6SOYyxlncI2q5K73imtBovJvCp4ihnEtuLY3Nh0JfPmsWT1E
	qhjqGG7+fkFLdhPTsutAyZDfI+NYVZYOeO/gtaNTUinztDJPq3vZGhgAFYn4nCIhdKTxpWEQm/xsd
	0XJDECtkMbCX3HdAhlcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNvYf-0000000DYSO-1R1j;
	Tue, 25 Nov 2025 16:06:25 +0000
Received: from mail-yx1-xb131.google.com ([2607:f8b0:4864:20::b131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNvYd-0000000DYRq-2R9q
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Nov 2025 16:06:24 +0000
Received: by mail-yx1-xb131.google.com with SMTP id 956f58d0204a3-640d0895d7cso7484321d50.1
        for <linux-rockchip@lists.infradead.org>; Tue, 25 Nov 2025 08:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764086782; x=1764691582; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mgxg05/WbgpnmDu8gC9V/611e7uF6txV7D50JvIbaH0=;
        b=uDZhR94e/wprWRIM07wCuArvjXrhSXx6I+y8TamYl6uIQ9Ym9f/5uM+RpiWL3pxr7e
         hPEyPphExjAOnRWXWxK4CWm0i/EAFY/zuccBZ/5s7SJToev4CC3mCGJhEWM2HMhVw/Nn
         8O++oO3Gj0niUmKwl0+uUjm+4V8emIOG4uZobULYHdu+I/lKjKcDo4HaLhOM+oO7qu3v
         zNeTgX2EuILl3jjMD2fUtDso9w7s5PRfWeeFq4OXcNX6yddIdyDquJXzF/vElrrv/IMw
         WazcBS7h9d+r9yEPeMNNmkesEEJURVvf8c6I4m3jJBY9FTKgFUAspORlH+uMi5SjI3YN
         mo1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764086782; x=1764691582;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mgxg05/WbgpnmDu8gC9V/611e7uF6txV7D50JvIbaH0=;
        b=nefKDi1+Pp4gOqzLATG1A3C5N2eltarrN+u0+urWM/jwvDv8EUQ2CQdEaAwPv8RgNN
         5xFo+oxKkeqQtqCjZ8ItxifZu6hXi0prjVqWUzKFHbXH+ARRo3+CPBrQx4ErVJ8X+/Mz
         Jxou4kejESMg/7jKbiu38KYFcna2FYPQcrSTkb05LD6Mz/ooFgBEWVM5YG45P2Fl+hAI
         UFs5gmVwmLiFICLQ69hkEV38jiEnay9vkGWvVCQCQd9ScgjVq+f0uUlxlh6wd75/X8qG
         kISeema3a8hNh+GwhJ8igjiuziYgnP6fbd1Axh0y3q0llUYvnviyYQBjgoBA6ncDdO8w
         c54A==
X-Gm-Message-State: AOJu0YycyNNc38asDykOaGVQy8xh2nU1eh23Iqp6qXKt3E01gyj+X5di
	bhuLLskhgl0WhRyPwtkPg/niXMSV7UaXuE7+w7tpDiAHPPRJlgIvA9UhPmSarIMXzqGsGN7U9mB
	1qzdCx6FVYOI08X733tXWOewy3Y27ne5saXPxnoYuHQ==
X-Gm-Gg: ASbGncvbuFz+ChckmWXAAVfW0h1JTl6sOs7rT/kvQ960bP+dqliyBROVIUNaHJFaEbo
	UWVvo9BsKnv8czv+Ddxs08t2Vuqmdk8k2ZGnul/tgfQA6HLjT8rcQ2wQogBSMuWswZT2QKj9NUY
	KlUP+o63KfDOUSS5GdbOn6MxLFfxCITINatdX2G2ZQS3vSRLaQgijlBHB3W9IiYp1fLLzwsvVYO
	dNNBGjyBx6y661bZnedjpu6AJ9N25iyjts0Qf5h6UxXP0SG9v3UZgDcFQ==
X-Google-Smtp-Source: AGHT+IG/fwrJeS4b8lAlZrSfNrGokzEhmOyZ2TLJnBVpriaPDwx4wc8ej39ZJN0/PFlzT86GGeccI3dEtLG93kPWmH0=
X-Received: by 2002:a05:690e:1443:b0:63f:a4ca:dc21 with SMTP id
 956f58d0204a3-642f8e2e343mr12949162d50.19.1764086782341; Tue, 25 Nov 2025
 08:06:22 -0800 (PST)
MIME-Version: 1.0
References: <1762933460-204066-1-git-send-email-shawn.lin@rock-chips.com>
 <1762933460-204066-2-git-send-email-shawn.lin@rock-chips.com>
 <7b05327d-fc76-471e-9148-3dfc0cd17623@rock-chips.com> <CAPDyKFrx_5cnyFeLRhoia2aHK9Cxo+fp_kKhyQ526xE02_+vSA@mail.gmail.com>
In-Reply-To: <CAPDyKFrx_5cnyFeLRhoia2aHK9Cxo+fp_kKhyQ526xE02_+vSA@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 25 Nov 2025 17:05:46 +0100
X-Gm-Features: AWmQ_bmxgc4FwcE0BpkQ6Q6feIrE7xCIIDMFZYvC3Ae3VEbj3M5hAGVRSkguKC8
Message-ID: <CAPDyKFoBezDP9DsCFVhS3n+Vm0rQv_Hs2g5svyD2KQ5A-rezwg@mail.gmail.com>
Subject: Re: [PATCH 2/2] mmc: sdhci-of-dwcmshc: reduce CIT for better performance
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_080623_628814_8FBDC442 
X-CRM114-Status: GOOD (  10.95  )
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

T24gVHVlLCAyNSBOb3YgMjAyNSBhdCAxNzowMiwgVWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxp
bmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCAyNSBOb3YgMjAyNSBhdCAxNDo1OCwgU2hhd24g
TGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+ID4KPiA+IOWcqCAyMDI1LzEx
LzEyIOaYn+acn+S4iSAxNTo0NCwgU2hhd24gTGluIOWGmemBkzoKPiA+ID4gQ1FIQ0lfU1NDMS5D
SVQgaW5kaWNhdGVzIHRvIHRoZSBDUUUgdGhlIHBvbGxpbmcgcGVyaW9kIHRvIHVzZSBmb3IKPiA+
ID4gcGVyaW9kaWMgU0VORF9RVUVVRV9TVEFUVVMgKENNRDEzKSBwb2xsaW5nLiBTb21lIGVNTUNz
IGhhdmUgb25seSBvbmUKPiA+ID4gaGFyZHdhcmUgcXVldWUsIGFuZCBDTUQxMyBjYW4gb25seSBx
dWVyeSBvbmUgc2xvdCBhdCBhIHRpbWUgZm9yIGRhdGEKPiA+ID4gdHJhbnNtaXNzaW9uLCB3aGlj
aCBjYW5ub3QgYmUgcHJvY2Vzc2VkIGluIHBhcmFsbGVsLiBNb2RpZnlpbmcgdGhlCj4gPiA+IENN
RDEzIHF1ZXJ5IGludGVydmFsIGNhbiBpbmNyZWFzZSB0aGUgcXVlcnkgZnJlcXVlbmN5IGFuZCBp
bXByb3ZlCj4gPiA+IHJhbmRvbSB3cml0ZSBwZXJmb3JtYW5jZS4KPiA+ID4KPiA+Cj4gPiBQaW5n
Li4uCj4gPgo+ID4gQWRyYWluIGFja2VkIHRoZXNlIHR3byBwYXRjaGVzLCBzbyB3aWxsIHRoZW0g
YmUgY2FuZGlkYXRlcyBmb3IgNi4xOQo+ID4gZ2l2ZW4gdGhlIG1lcmdlIHdpbmRvd3MgaXMgY29t
aW5nIHNvb24/Cj4KPiBMb29rcyBsaWtlIEkgc2ltcGx5IGZhaWxlZCB0byBzZWUgdGhlbS4gUG9z
c2libHkgYmVjYXVzZSB0aGVyZSB3YXMKPiBjb3Zlci1sZXR0ZXIsIHdoaWNoIG1ha2VzIGl0IGhh
cmRlciBmb3IgbWUgdG8gZm9sbG93IGFsbCB0aGUgZGlmZmVyZW50Cgovcy9jb3Zlci1sZXR0ZXIv
bm8gY292ZXItbGV0dGVyCgpbLi4uXQoKS2luZCByZWdhcmRzClVmZmUKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
