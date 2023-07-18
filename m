Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6227C0015E
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 06:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YvG+ROF8NM/9z50MCTbE/uDscdBOI2LHC8vxI1SiNY=; b=tlQFDMwQNrhhHE
	LoUEvCu5JOnycSpNI5oEyGz2l64dH6mCCnD7UzeI9//thxsOZaWaolv1PhG6XP4RMgmP863BO/W1e
	Ji9p8e8MsI+B3EuoFUpgOXwaIOKWtl+m5JwPpa+rzcFwJLkjPmfJlKVPtg87A9FSC6AcKktrUm/pw
	8mwMJq0z0CEZRaWYhj1eH4Fc31ojXIRIN+3QkdT4HI7vgnOywDSCrFZAaH6jLWkI8yKAksSglsRt3
	9K9Z6sPbacOHUYK+ZgnO0Z/JtkSJE/NSV8cK+Kp9tkFr+wAOO2Hb9mdjYmfRvieImT3fw+NQJacG8
	OVx5aLsrADERQIqTY6Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0Ee-005VSe-37;
	Wed, 19 Jul 2023 06:00:29 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0ES-005VKm-2l;
	Wed, 19 Jul 2023 06:00:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=L9BGs7xI1AaJFp00lJtBHCoa+K3WPXj0QFbQu1Le0FU=; b=FhxJ6YV6Q5jxP4ekzGfsgptg5h
	o/QM9WIpuY9q4UIPn1fgtCz2dKlrAxSnj2l4hOEvbPawL6hOXWgGnWkjhaw+3G6TvKn9/2TOkWxqd
	bT70psCFqncxhD1ZylF3gwghtwObnr8KPYme/+viyChPtR+mEYpJPoCYLJJqiEzwiVeGO+xhPyR/7
	uR8lGq9iyUWHADPJyhwLaVDmzTrhfSVrvlOFiU9QkyEWPdmRoVI5p3DAf0GZTV78zlPDuSVyW1Bfy
	lOlKx4PwBg1vYOTgUZRd8YNZ68kM/0c7mgTu6FbtXJ+HD43XBo+UdUpTGfv75NI2fRsUWag7zH6lV
	h8YqhYvg==;
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLkci-00BZUh-0i;
	Tue, 18 Jul 2023 13:20:18 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-cae0ad435b6so5953212276.0;
        Tue, 18 Jul 2023 06:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689686352; x=1692278352;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L9BGs7xI1AaJFp00lJtBHCoa+K3WPXj0QFbQu1Le0FU=;
        b=QPpWpaLveDkg243J973nDhKq8ZJtdvedq9X3flX6x8LNllZ7kA9fOKmvwgJv5ZONep
         58Wnjibdnk8mflSLJzZR3s0ZBke+3pZAfFcjZOebavDtprFO89g8F2cRBlcLOW5W8mwz
         2MSZAFVgZ3H92m9mULMu/d/ID33eAt5o7zL4BySGzO86t6vYRn2mxIx+baolOr1ElhJ6
         QFdHu70Eyc5K8IV/j/e22qs4sGQdUhRfZVmGIDfGsK70+yXqxeSQeSmGzrmDro8uupLf
         BPvKdQYYzdqYjM1l+WRM8up+Zl9y7yK4YlBLr77QNhhzqM7mMY0sXEbvzF7+w/Z8hBvq
         X/wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689686352; x=1692278352;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L9BGs7xI1AaJFp00lJtBHCoa+K3WPXj0QFbQu1Le0FU=;
        b=HNhPerlGya0GmtHZrnGUQ8WCZGoQ/Oo9PYPB1m6bEzGSyQktesfHOwnZZEhPB0vd35
         h3ymdyTume6lYfi7tZb+h6eySEYSER+awVOWycG0JB3zn0irvSRFMue1n4XSqbs/DCui
         fs9HvtsHSWycZeYOTsfDoDStneNKJ2DMUvtYW6/qkeADsxBS3nBX9RGBeve//+E6RgIW
         12OdmQEPdl7SRdO93xQRbftZ2/ZzJFHSxM7DeJJ8KRhtFQtm1C4mL0cPCitZi7cf2ZaA
         AnPaXJwCHo1/Qh4baDEJDYOMfeupYbYMd23/jKwd+6bp2YFvNkOJPTaZiApggM0xbPEd
         7TuQ==
X-Gm-Message-State: ABy/qLbCf3u7/vPMyKOQ7U0+zaooE7VTqbQJekF7Pj3rx2OMllZGOKQe
	r/Ef2DOG436gdA+eSwwIDEpftFoqNcfH09AzTiU=
X-Google-Smtp-Source: APBJJlGawmRv8zoQzo3nfFjxiQUi7804ixGt8T7mFLMLzmF8j1hYkyXfHDRw/w+W17EyqjdZSbmYCeEbn7IF/6LPLQ0=
X-Received: by 2002:a25:4091:0:b0:c39:50fe:79be with SMTP id
 n139-20020a254091000000b00c3950fe79bemr13253934yba.61.1689686352401; Tue, 18
 Jul 2023 06:19:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230714174525.4055475-1-robh@kernel.org>
In-Reply-To: <20230714174525.4055475-1-robh@kernel.org>
From: Romain Perier <romain.perier@gmail.com>
Date: Tue, 18 Jul 2023 15:19:01 +0200
Message-ID: <CABgxDoJ_t0QF=XTy2zJn4rbv5X95c6+ABsvtCF=3rWcbYVUnPQ@mail.gmail.com>
Subject: Re: [PATCH] gpio: Explicitly include correct DT includes
To: Rob Herring <robh@kernel.org>
Cc: Alban Bedel <albeu@free.fr>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Doug Berger <opendmb@gmail.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Daniel Palmer <daniel@thingy.jp>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
	Grygorii Strashko <grygorii.strashko@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>, 
	Kevin Hilman <khilman@kernel.org>, Robert Jarzmik <robert.jarzmik@free.fr>, 
	Heiko Stuebner <heiko@sntech.de>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, 
	Srinivas Neeli <srinivas.neeli@amd.com>, Michal Simek <michal.simek@amd.com>, 
	Nandor Han <nandor.han@ge.com>, devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_142016_375882_AE5AB7F8 
X-CRM114-Status: GOOD (  10.23  )
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

SGksCgpMZSB2ZW4uIDE0IGp1aWwuIDIwMjMgw6AgMTk6NDUsIFJvYiBIZXJyaW5nIDxyb2JoQGtl
cm5lbC5vcmc+IGEgw6ljcml0IDoKPgo+IFRoZSBEVCBvZl9kZXZpY2UuaCBhbmQgb2ZfcGxhdGZv
cm0uaCBkYXRlIGJhY2sgdG8gdGhlIHNlcGFyYXRlCj4gb2ZfcGxhdGZvcm1fYnVzX3R5cGUgYmVm
b3JlIGl0IGFzIG1lcmdlZCBpbnRvIHRoZSByZWd1bGFyIHBsYXRmb3JtIGJ1cy4KPiBBcyBwYXJ0
IG9mIHRoYXQgbWVyZ2UgcHJlcHBpbmcgQXJtIERUIHN1cHBvcnQgMTMgeWVhcnMgYWdvLCB0aGV5
Cj4gInRlbXBvcmFyaWx5IiBpbmNsdWRlIGVhY2ggb3RoZXIuIFRoZXkgYWxzbyBpbmNsdWRlIHBs
YXRmb3JtX2RldmljZS5oCj4gYW5kIG9mLmguIEFzIGEgcmVzdWx0LCB0aGVyZSdzIGEgcHJldHR5
IG11Y2ggcmFuZG9tIG1peCBvZiB0aG9zZSBpbmNsdWRlCj4gZmlsZXMgdXNlZCB0aHJvdWdob3V0
IHRoZSB0cmVlLiBJbiBvcmRlciB0byBkZXRhbmdsZSB0aGVzZSBoZWFkZXJzIGFuZAo+IHJlcGxh
Y2UgdGhlIGltcGxpY2l0IGluY2x1ZGVzIHdpdGggc3RydWN0IGRlY2xhcmF0aW9ucywgdXNlcnMg
bmVlZCB0bwo+IGV4cGxpY2l0bHkgaW5jbHVkZSB0aGUgY29ycmVjdCBpbmNsdWRlcy4KPgo+IFNp
Z25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CgpGb3IgdGhlIG1zdGFy
IHBhcnQsCkFja2VkLWJ5OiBSb21haW4gUGVyaWVyIDxyb21haW4ucGVyaWVyQGdtYWlsLmNvbT4K
ClJlZ2FyZHMsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
