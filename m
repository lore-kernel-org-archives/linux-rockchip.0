Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E62FC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 09:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLvNg4Hoyp8SkcOj+diI807tYod8ns81gQe3auIvcAs=; b=i10h0FtSvlDXQH
	RKUvBbFicquxyMq1k0KRkoaP0Qw9B1FfF8l86PMnooZrwNtduS8Q6xn15IddMp/mh+u/QL/FeMNPG
	DF1+Ig6NGnkb5XH6P6mtoRKQ1E1nEKGAS/PQ/vjjyy2d0RqM+NC5Ks6cBDh9aZ6PKcLR9ZPdpxVtu
	Qwp4Kz+B7OmLKDDScHwbT00aUIh0+lZa3EPyUsmUvLDpy7NJKzosDoRVNyCvqJYT2GoBz9x1a4YIr
	5i+HQPQNC0wrOrAx/lJ105U0CbIRPgvmvgvx2WBgudQxTQkmdRgQqiTu9dKSwNv8Wz17gdKfc6tuc
	oISqmdoI8VwVu4CzVXbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc2Na-0059wC-LL; Wed, 06 Apr 2022 09:55:10 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc2GG-0056Sa-8v; Wed, 06 Apr 2022 09:47:37 +0000
Received: by mail-lf1-x12c.google.com with SMTP id b21so3126186lfb.5;
 Wed, 06 Apr 2022 02:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=E42yxEwN9hE1F4mWuGhw6zVEQZFBfw5J79gP+8Gl7J0=;
 b=iIjUtMWiW9sFTZs6ixgTkqoKUp9KooOrSiS9xGSuEy6/zJouQvGjaePtj3kWP5pzMD
 yTfKsp1ezsj9aZv6DkThlDhU+1QlwGrdUokDb493Jnpju0dK8/uGZQx4wEK6F9fft2nt
 AARzVJuVqUYQrdbf7wgRZJ4AKMuGQxj3qG3ReyNmigbaCWBjH2FLVLWZfrUq8Iub9RVu
 99npCDtAWWcjaLY9mHUhvWh08uqmN0OQ2Q8at89tr49Kog5UE8NGCROwS3flh7go1/NK
 MgKdW5OsYySzV9uK+gWIleRdTjgIjGBgSYyUzyIhwq+tNmr10Tw5hTtYr6EI4WwzqgOT
 iM6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=E42yxEwN9hE1F4mWuGhw6zVEQZFBfw5J79gP+8Gl7J0=;
 b=4sm1PzoHiwy9LROd+tnyAHraRTTgqWa6CfQl4qpbK4YjVSO+jYsz0rbCxVXajMgdaJ
 5ORbBm8Rsu8y0hVeBx14ul4MgMDXPejz0UVGNYXnJcUdFDEWNkzh8gh+YqYRCxknSaEs
 oP87Put8u9CWV8mHmyZ6cGOAm91KUVilCiI3XyBTbW0JpuF5EyLyO89+MliI9xFxGkuu
 Qhxb+KOuTMwpHiIizqsnW2uBqYpix/NDcAuHknf15R5XmwKJm+v11g0pzfjseCuy9ND4
 agQUjLH7cW4dyr7Oyc5cfKMk7hzy+3CTLMu7eElr9v6KI7d6K8eyLDKoFMYFhS7+RV5i
 1dGw==
X-Gm-Message-State: AOAM530EgY3UrWPjW64W5AsoZ8cl9d/sMAEq+Cfo+qtJb5Kj1n2WJhCK
 9b6ADd0CIjn8v4zpN560m24=
X-Google-Smtp-Source: ABdhPJwC+eyrRKTQfRnsJir5jLb4gCz3POVqq+LV1mkriib2J7vxsIWGH9wtcC3p7KlK7L+G3REqyA==
X-Received: by 2002:a05:6512:3341:b0:44a:eb29:c59c with SMTP id
 y1-20020a056512334100b0044aeb29c59cmr5331160lfd.596.1649238451239; 
 Wed, 06 Apr 2022 02:47:31 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 m22-20020a0565120a9600b0044a93d21093sm1776972lfu.279.2022.04.06.02.47.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Apr 2022 02:47:30 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
Date: Wed, 6 Apr 2022 11:47:22 +0200
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Message-Id: <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_024736_359371_DEF8E2B4 
X-CRM114-Status: GOOD (  19.86  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBpb3RyIE9uaXN6Y3p1ayA8cGlvdHIub25p
c3pjenVrQGdtYWlsLmNvbT4gdyBkbml1IDAxLjA0LjIwMjIsIG8gZ29kei4gMTU6MDU6Cj4gCj4g
Cj4gCj4+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBw
ZW5ndXRyb25peC5kZT4gdyBkbml1IDAxLjA0LjIwMjIsIG8gZ29kei4gMTQ6NTI6Cj4+IAo+PiBC
YXNlZCBvbiB0aGUgZGlzY3Vzc2lvbiB3aXRoIEFuZHkgcGxlYXNlIHRyeSB0aGUgZm9sbG93aW5n
IHBhdGNoLCBpdAo+PiBzaG91bGQgZml4IHlvdXIgZ3JlZW4gc2NyZWVuIGlzc3VlLiBOb3RlIHRo
YXQgd2l0aCB0aGlzIHBhdGNoIHRoZQo+PiBDUlRDIGFuZCBwbGFuZSBpZHMgd2lsbCBjaGFuZ2Us
IHNvIHRoZSBtb2RldGVzdCBjb21tYW5kcyBuZWVkIHRvIGJlCj4+IGFkanVzdGVkIGFjY29yZGlu
Z2x5Lgo+PiAKPj4gU2FzY2hhCj4+IAo+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tODwtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4gCj4+IC0tIAo+PiBGcm9tIGNiYzAzMDczNjIzYTcx
ODAyNDMzMzFhYzI0YzNhZmFmOWRlYzc1MjIgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCj4+IEZy
b206IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KPj4gRGF0ZTogRnJpLCAx
IEFwciAyMDIyIDE0OjQ4OjQ5ICswMjAwCj4+IFN1YmplY3Q6IFtQQVRDSF0gZml4dXAhIGRybTog
cm9ja2NoaXA6IEFkZCBWT1AyIGRyaXZlcgo+PiAKPj4gLS0tCj4+IGRyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIHwgMTQgKysrKysrKysrKysrKysKPj4gMSBmaWxl
IGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKPj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+IGluZGV4IDdkYmE3YjliNjNkYzYuLjE0MjFiZjJm
MTMzZjEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fdm9wMi5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wMi5jCj4+IEBAIC0yMjg3LDYgKzIyODcsMjAgQEAgc3RhdGljIGludCB2b3AyX2NyZWF0ZV9j
cnRjKHN0cnVjdCB2b3AyICp2b3AyKQo+PiAJCQl9Cj4+IAkJfQo+PiAKPj4gKwkJaWYgKHZvcDIt
PmRhdGEtPnNvY19pZCA9PSAzNTY2KSB7Cj4+ICsJCQkvKgo+PiArCQkJICogT24gUkszNTY2IHRo
ZXNlIHdpbmRvd3MgZG9uJ3QgaGF2ZSBhbiBpbmRlcGVuZGVudAo+PiArCQkJICogZnJhbWVidWZm
ZXIuIFRoZXkgc2hhcmUgdGhlIGZyYW1lYnVmZmVyIHdpdGggc21hcnQwLAo+PiArCQkJICogZXNt
YXJ0MCBhbmQgY2x1c3RlcjAgcmVzcGVjdGl2ZWx5Lgo+PiArCQkJICovCj4+ICsJCQlzd2l0Y2gg
KHdpbi0+ZGF0YS0+cGh5c19pZCkgewo+PiArCQkJY2FzZSBST0NLQ0hJUF9WT1AyX1NNQVJUMToK
Pj4gKwkJCWNhc2UgUk9DS0NISVBfVk9QMl9FU01BUlQxOgo+PiArCQkJY2FzZSBST0NLQ0hJUF9W
T1AyX0NMVVNURVIxOgo+PiArCQkJCWNvbnRpbnVlOwo+PiArCQkJfQo+PiArCQl9Cj4+ICsKPj4g
CQlpZiAod2luLT50eXBlID09IERSTV9QTEFORV9UWVBFX09WRVJMQVkpCj4+IAkJCXBvc3NpYmxl
X2NydGNzID0gKDEgPDwgbnZwcykgLSAxOwo+PiAKPj4gLS0gCj4+IDIuMzAuMgo+PiAKPj4gUGVu
Z3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwKPj4gU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAg
ICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKPj4gMzExMzcgSGlsZGVzaGVpbSwg
R2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwK
Pj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0
OS01MTIxLTIwNjkxNy01NTU1IHwKPiAKPiBTYXNjaGEKPiAKPiBOb3cgd29ya3MgcGVyZmVjdGx5
IQo+IChoZCBwbGF5YmFjayB3aXRoIDMuNS4uLjUuNSUgY3B1IHdoaWxlIHJlbmRlcmluZyB0byBk
cm0gcGxhbmUpCj4gCj4gRmFudGFzdGljIHdvcmsgb2YgWW91IQoKU2FzY2hhLAoKSGF2aW5nIHZv
cDIgZmluYWxseSB3b3JraW5nIHdpdGggZHJtIHBsYW5lcyByZW5kZXJpbmcgaSBkaXNjb3ZlcmVk
IGFub3RoZXIgaXNzdWU6IG92ZXJsYXkgb3NkIGlzIGludmlzaWJsZSBhdCBwbGF5YmFjay4gCgpj
b250ZXh0OiBwbGF5ZXIgZHJhd3MgdmlkZW8gb24gcGxhbmUgI1ggYW5kIG9zZCBvbiBvdmVybGF5
IHBsYW5lICNZCldoZW4gdXNlciBkbyBpLmUuIHNlZWsgYXQgcGxheWJhY2sgLSBhcHAgdXNlcyBv
dmVybGF5IE9TRCBwbGFuZSB0byBkaXNwbGF5IE9TRCB0byB1c2VyLiBUaGlzIGFwcHJvYWNoIGlz
IHVzZWQgYnkgbWFqb3JpdHkgb2YgcGxheWVycyAoS09ESSwgZXRjLikKClRoaXMgd29ya3Mgd2Vs
bCBvbiBhbGwgcGxhdGZvcm1zIGkgaGF2ZSAgLSBleGNlcHQgcmszNTY2IAoKRm9yIG1lIGl0IGxv
b2tzIGxpa2Ugei1vcmRlciB2b3AyIGlzc3VlIG9yIGFscGhhIGJsZW5kaW5nIGlzc3VlLgpBcyB0
aGlzIGlzIG9ubHkgb24gcmszNTY2IGFuZCBvbmx5IG9uIGRybS1wbGFuZXMgbW9kZSAtIGlzc3Vl
IGlzIHZvcDIgcmVsYXRlZCBpbWhvLgoKd2hhdCB5b3UgdGhpbms/CgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
