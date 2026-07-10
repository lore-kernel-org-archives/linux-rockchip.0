Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AD3CC43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 19:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3mwyI0Nwaqb55aaW1Ak0p4YYBX3YgoTp/GwahBFXmg=; b=oZXfIhosHvM6Ve
	9ttepy0dxcC1VL7C845iP6uJQQh5tLslC/jDnPW/PoMU7zUJBTrDwKf05d6DMFMM5yMwVM5b9LXo9
	HM3pYuBXa3PeYhXsnU+qZiPaDT4SXUnJKgpiqrFU0poyLlL7glCUtqbtNtbf0UTUNhcjfgM/K9nFP
	vBOQXeLNKuxi53G2Ggcp/TBcACLHy4jrT5MznLZvD2CTTniKEuEova9EoZNKvOmojB7ylh03l3PqI
	tQoe5RjOApbBV3+lmm1faZfLMc1WFBJ0Ym9EufFR3f/XMopgR8vq0ySmYFUShw4QxB7NCzlm0sb4H
	BlRRu++8ojeGrM/JPeBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiGU7-00000005ZOS-10Mj;
	Fri, 10 Jul 2026 19:02:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiGU5-00000005ZO3-35eM
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 19:02:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 37CE643814
	for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 19:02:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C7BE1F00ADE
	for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 19:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783710121;
	bh=GpEWBJuL/pS/j20ZxUcWSfSSNFaAt1ppfLoyiD655kg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=ObgHAimecvvh6gPj1DY4ZUJrBRD46dp6Dg5Nr89XMGRzQUiTn0vW4n1JHtXktq6OW
	 OxGhhGc6F9Atarck6If/pxpqWowc1esa9DAvQkfEHHpF5DWTnZ8W9/E7+1bIfRo6Ax
	 ehcJFdWWxmGG3aiUXAfvGZZYCBtoWnvvHYXtGnpO+6orZg6iWiVHMML7nRxthEkXTb
	 eFvCJTLN9TCEApq1S+YBrG1qU7I3tCcfS/SPNvA8TJZuNOCThHeE60wvkHMvuKKqCK
	 P/s3u4Cmx/umFZdMfZsNNqla2RJuWfceeg2VTLwlJMXa+52umYI8Cu8q8dUz6moy8n
	 qfc/exqx3zztQ==
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5aec6360133so892638e87.1
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 12:02:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpQY1BGQA0g/IstXvXBG/sSOPhdWuZvrzhqQWHjM+gi9y5O0pJ5xjfEhkLjSWI0psaznZsfF3MrKo2GzpLJNg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyhFXCrs+64iypLwfvF6kudcdC0S5AGGNt46AiYewek3E1ymf2v
	E3JRKHoXtYVOufJ05zPGTPCbv52pVJJ12NEAdxOpzr6CDTOIYagqbhgNCmqgoFVgRXKv+PQEQG7
	jN9T36AqZuJwYfMswOWi9bxwwZmF3tm8=
X-Received: by 2002:a05:6512:230e:b0:5b0:20b0:9589 with SMTP id
 2adb3069b0e04-5b023692f74mr71481e87.38.1783710119849; Fri, 10 Jul 2026
 12:01:59 -0700 (PDT)
MIME-Version: 1.0
References: <20260706195818.3906949-1-sjg@chromium.org> <20260706195818.3906949-5-sjg@chromium.org>
In-Reply-To: <20260706195818.3906949-5-sjg@chromium.org>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 10 Jul 2026 21:01:47 +0200
X-Gmail-Original-Message-ID: <CAD++jLmOT8iXRZR4RMutznQrG-WMWWGEw8OixV4KAbH669pyUw@mail.gmail.com>
X-Gm-Features: AUfX_mxOy0Dj7aqC1djpSRGlgSr5wpPV6RgV0fTGSsRv2oiz-izQ0OQDDTinfXM
Message-ID: <CAD++jLmOT8iXRZR4RMutznQrG-WMWWGEw8OixV4KAbH669pyUw@mail.gmail.com>
Subject: Re: [PATCH 04/12] pinctrl: rockchip: Add RV1106 pinctrl support
To: Simon Glass <sjg@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Fabio Estevam <festevam@nabladev.com>, 
	linux-arm-kernel@lists.infradead.org, Jeffy Chen <jeffy.chen@rock-chips.com>, 
	huang lin <hl@rock-chips.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org
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

T24gTW9uLCBKdWwgNiwgMjAyNiBhdCA5OjU54oCvUE0gU2ltb24gR2xhc3MgPHNqZ0BjaHJvbWl1
bS5vcmc+IHdyb3RlOgoKPiBBZGQgcGluY3RybCBzdXBwb3J0IGZvciB0aGUgUm9ja2NoaXAgUlYx
MTA2LCB0YWtlbiBmcm9tIHRoZSB2ZW5kb3IKPiBrZXJuZWwgaW4gdGhlIEx1Y2tmb3ggUGljbyBT
REsgWzFdIGF0IGNvbW1pdCA4MjRiODE3ZjggKGEgTGludXgKPiA1LjEwLjE2MCBrZXJuZWwgdHJl
ZSkuIFRoZSBJT0MgcmVnaXN0ZXJzIGFyZSBzcHJlYWQgYWNyb3NzIHNldmVyYWwKPiBibG9ja3Ms
IGFkZHJlc3NlZCB0aHJvdWdoIHBlci1iYW5rIG9mZnNldHMsIHdpdGggdGhlIEdQSU8wIGJsb2Nr
IGluIHRoZQo+IFBNVS4gVGhlIGRyaXZlIHN0cmVuZ3RoIHVzZXMgdGhlIFJLMzU2OC1zdHlsZSBl
eHBvbmVudGlhbCBlbmNvZGluZy4KPgo+IFRoZSBSVjExMDMgaXMgYSBwYWNrYWdlIHZhcmlhbnQg
b2YgdGhlIFJWMTEwNiB3aXRoIGZld2VyIHBpbnMgYW5kIHVzZXMKPiB0aGUgc2FtZSBwaW4gY29u
dHJvbGxlci4KPgo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vTHVja2ZveFRFQ0gvbHVja2ZveC1w
aWNvCj4KPiBTaWduZWQtb2ZmLWJ5OiBTaW1vbiBHbGFzcyA8c2pnQGNocm9taXVtLm9yZz4KClRo
aXMgbG9va3MgcHJldHR5IGdvb2QgdG8gbWUsIGFuZCBJIGRvbid0IGtub3cgaWYgdGhlIFJvY2tj
aGlwIG1haW50YWluZXJzCndpbGwgc2F5IG11Y2ggbW9yZSwgd2hhdCBkbyB5b3Ugc2F5IGFib3V0
IHRoZSBTYXNoaWtvCnJldmlldyBjb21tZW50PwoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
