Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B15E9CA0FED
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 22:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x03vulH0HZnhTuq+BDIS0/LWhE7HW7OkG1WvpqcMl78=; b=KsJ0TolYYJDp9r
	lcW3cJFvX46yy1Z6s7mNCBDBgFMT6ZlzReYXCHZ8jYM5EgKJBf+drigLt6r54BlRHEzToXnztTKJB
	ZEtltpyGPrJuVE/Hd2zFLGw7RgPGdksAPqFFc071L7RGuYyFG13SmS1Gp6+XSMRgG+G0TSQ9m2HC2
	qsIM3TEAaVl9+76y5oZ7UJ8lQOXXEM/MCih45xO6bEXRiCgB6oll/fWN6bi+aHw5lWhPlzJ4FB2VA
	TRtb7tjbVHtvh+XyAMxbmzfGr0bkOeFl4g0vrJS9URgUQCnNT2ralD+v+bM+Py3fmXcDvPPUG4UTe
	cnzwuUdRc/+7ohRZ35Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uv1ji-00000008c8A-4Bg0;
	Sat, 06 Sep 2025 22:50:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uv1gv-00000008bG0-2eW3;
	Sat, 06 Sep 2025 22:47:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C35A4447C3;
	Sat,  6 Sep 2025 22:47:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5916C4CEF8;
	Sat,  6 Sep 2025 22:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757198848;
	bh=M7YBY+PlDsud3ulKo1KwxdTk5HjWLgupena6NkeHIHw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ZdUqjPcCFBZU+8Sntt/qoKCyGcPgXjIZ2nTgx/DSehkzWZ2IwIiXNiCIbXnKUupbc
	 3mlL4BU8Cwe2G4TRNuVG1Z7DXnsT3XXTY4c1XLiUQ5jRLrHsFOEyLNAgblpxoP+d22
	 crQuz6CGyFEcVfB3VslIAJ4yN0IlAe1pRjUe+ZLTPSVnc7lM7j0yxoJzpnpV7pk4QN
	 +7YcDnq0xMqdggvftm7sNM8YX5YbgoZznKbEiubiT4a51Nv2TYAqNLYtSuPxM4D8qZ
	 YZJ3S3yDLOTghMAKTp2Ezq9kI1ns0tScHi1rYFwB37MwGhwsZaXPlMkkZof3KhGV8r
	 RR8ja7xVL8+1g==
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-61e27ee0ae4so431233eaf.0;
        Sat, 06 Sep 2025 15:47:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU4I6lGNIt513ypNOQ6OydQsz6LltXD6UUSVU/Qrtaa/vLwrZ7A3HmnTqVQe80gA0qUycJ+mfVC58QUM7FTm+4=@lists.infradead.org, AJvYcCXP8A+UbWQ9Ni/dvlA+tyKmzNph3C2WHq178HuuR1GLegMmG3d9ztH0JW1wFnzQZRRbLUXc96BC5NavKcVmJVO+@lists.infradead.org
X-Gm-Message-State: AOJu0YwcIusoEcmxOe4Lk+TaJWhpeiuPLBLKJesP4g6lauuUf3ew422x
	en3nEHMAZjV9EG9C9+pMg/uYPMHhhebXR+8K4seDAJDGTT4ONBKsX2Pgk18Uz46ZRA8+27vju1r
	znUnijKeBXI0WKWqeZZlSTtx03sJFiAM=
X-Google-Smtp-Source: AGHT+IHBlQQx0DcSn8WrGT4miIP8Bx5UtUX4jRnhfFKte1qQJwWT9s2fgjzoWbt6eQoAFyWjweW4FuIn9+Y2+ALRETo=
X-Received: by 2002:a05:6820:2222:b0:61e:2938:640f with SMTP id
 006d021491bc7-62178ab6dd7mr1273240eaf.8.1757198848123; Sat, 06 Sep 2025
 15:47:28 -0700 (PDT)
MIME-Version: 1.0
References: <20250530-rk3588-dfi-improvements-v1-0-6e077c243a95@collabora.com>
 <20250530-rk3588-dfi-improvements-v1-2-6e077c243a95@collabora.com>
 <CAGTfZH1DzC9odJVDfYCYw4+Ph5_1CjmrpqR_NUFh1SsVVVLM0g@mail.gmail.com> <24752023.ouqheUzb2q@diego>
In-Reply-To: <24752023.ouqheUzb2q@diego>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Sun, 7 Sep 2025 07:46:50 +0900
X-Gmail-Original-Message-ID: <CAGTfZH3RikS1XRkxjs6vU3yvw4kayRK2u17_zpqodioKJF5mNA@mail.gmail.com>
X-Gm-Features: Ac12FXxhJBnicQpzbdTVw-Dc0dR90IgnZqqaWnW_MXUfhdwqDh4MQlNQ-InNBH0
Message-ID: <CAGTfZH3RikS1XRkxjs6vU3yvw4kayRK2u17_zpqodioKJF5mNA@mail.gmail.com>
Subject: Re: [PATCH 2/2] PM / devfreq: rockchip-dfi: add support for LPDDR5
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250906_154729_695632_08E701B7 
X-CRM114-Status: GOOD (  12.88  )
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
Cc: linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, Chanwoo Choi <cw00.choi@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBTdW4sIFNlcCA3LCAyMDI1IGF0IDM6MzjigK9BTSBIZWlrbyBTdMO8Ym5lciA8aGVp
a29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEhpLAo+Cj4gQW0gU2Ftc3RhZywgNi4gU2VwdGVtYmVy
IDIwMjUsIDE4OjA5OjUzIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQ2hh
bndvbyBDaG9pOgo+ID4gSSdtIHNvcnJ5IGZvciBsYXRlIHJlcGx5Lgo+ID4KPiA+IExvb2tzIGdv
b2QgdG8gbWUuIEJ1dCwgdGhpcyBwYXRjaCBjb250YWlucyB0aGUgY2hhbmdlIG9mIGZvbGxvd2lu
ZyBoZWFkZXIuCj4gPiBJZiB0aGVyZSBhcmUgQUNLIGFib3V0IGNoYW5nZSBpbiBpbmNsdWRlL3Nv
Yy9yb2NrY2hpcCwgSSdsbCBtZXJnZSB0aGlzIHNlcmllcy4KPiA+Cj4gPiBpbmNsdWRlL3NvYy9y
b2NrY2hpcC9yazM1ODhfZ3JmLmggICAgfCAgOCArKystCj4gPiBpbmNsdWRlL3NvYy9yb2NrY2hp
cC9yb2NrY2hpcF9ncmYuaCAgfCAgMSArCj4KPiBkb25lIDotKQoKVGhhbmtzLgoKQXBwbGllZCBp
dC4KCihzbmlwKQoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9pClNhbXN1bmcgRWxlY3Ry
b25pY3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
