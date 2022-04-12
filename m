Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B56F6C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Apr 2022 10:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abM62k+iT8W8RCeor/li0Gnr30JQTCkqalhvBMYjVrI=; b=UniuGkYEvHYN7b
	wz3fhURO1BZ9OJ9jEt/P4+ektAoI39mjuZyFValircJ+/K+Fl2XsiE8Mq+QpMjBwfHmvTnccezFUV
	0fALLhAdRI+DxYh5PmHZsufIsbUeplF/HEi8GFFNPnodvLEgo3uw5op6TdZ9SGeXKdZX6TpYn97yB
	uWH0uDz53Elt1YiLQTaxJAdNSfTFGyxaVu+W0AQulFsASxbTXeGHhqOuXLt7ACZFlebRq/wim8cOM
	vyvN8YGR43CSVP/Eb8YUqbFzQLPVrwZhYMa2idVDsrsUgpSu1bX+T384Eah0omYvy28SS/yOLOeNF
	bzgCLtP6M6qEmickKXSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neDY8-00DDF5-TU; Tue, 12 Apr 2022 10:15:05 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neDXq-00DD8P-1D; Tue, 12 Apr 2022 10:14:50 +0000
Received: by mail-lf1-x12d.google.com with SMTP id w19so1925699lfu.11;
 Tue, 12 Apr 2022 03:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0Umzz/3orNHQpIevU9VMNB3lNCISCl1rxzO7PoUg9Jg=;
 b=frXOkEGTVdQfOBPfLo6/U0msIHVopok9BHPAtF9BQG1TpY/8Z9un/BUw3V1HIweJtQ
 W6cwDOA4s0H5XvVvDw9BGqxg4jzaE0YSB3GzP/jCtgDxNAOxuTmfnQJDVmGGozoPHeMP
 kaz0p8cgw2KUhZ5WDmsEE8oO62rgooT0CNAVJBL7X9KzGr4HNRwzn/PawukIcVGVgs/l
 SwykZ/+EX7cx0wWI38cyz1IYSSL80HQmf7P6nI9LxqevAeYqMfolVrMhsSHPJpJj9liT
 IcLv92fLQTmCKZzXOVSn4xnDP9gfrRMONo4NXJ0d2NgTAXFo1cVpizBH3I56rwNZZsU1
 aOGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0Umzz/3orNHQpIevU9VMNB3lNCISCl1rxzO7PoUg9Jg=;
 b=78BFN+XNmOeIHRreD7TMFPESodpYPXoRengJsV2dk/3MztizTZOoxU7JIVu1lDKpOI
 9AO3Izs5bvcOFlsjkBIgfJVaEm2cty+Pjb4CfsT1O4E2iDTyAyjJrXLnjTBbjCEDWS6r
 ojjSou86WkDAULmF5cTxGDjVio2G9noWJWEMFQjBjo/2O9OBwDSuFsr6dBe9G7VoBiq1
 7t49GtHQkVuffLRSTPqhrjAHOCazpHnXNAyKtinrPC8DbSJfMV8ZEP4MtN6lrumD079E
 MZDuzYZtdzuF3eUqyZDm910z1P8WujGHU8njzKz8SM6PgY8tLrFp4iFwrKwUt7NuwYY+
 YhQg==
X-Gm-Message-State: AOAM533n5hhKQJVvCVTZv0HTt1TRLWaLaWr/N4wzG/u9z5CS9Ma2MJb8
 gSacJru9dxo3wlB9dPX1E0A=
X-Google-Smtp-Source: ABdhPJyjygbNhDD5y/Nf2J02dsGMY17yvI0Q9aBaT9AoENk7aTCfqMn5oHs0B7C5tuon17rQnB7g3Q==
X-Received: by 2002:a05:6512:3403:b0:448:5f92:7b0c with SMTP id
 i3-20020a056512340300b004485f927b0cmr23864868lfr.237.1649758483494; 
 Tue, 12 Apr 2022 03:14:43 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 y14-20020a2eb00e000000b0024b55cda2eesm1119589ljk.30.2022.04.12.03.14.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Apr 2022 03:14:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <e2ef484b60fe9c5fc077240a26bd18275974dc4a.camel@pengutronix.de>
Date: Tue, 12 Apr 2022 12:14:41 +0200
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Lucas Stach <lst@pengutronix.de>
Message-Id: <EF0F8E87-2618-4E5E-807D-259FEEC0FB24@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220408080748.GA2387@pengutronix.de> <20220408120021.GO4012@pengutronix.de>
 <B3E76A7A-9B62-4E6F-9472-00B6298689C5@gmail.com>
 <20220411090800.GR4012@pengutronix.de>
 <5929E7A7-776E-4BCB-92C8-A1CE05774FE3@gmail.com>
 <20220412075034.GS4012@pengutronix.de>
 <e2ef484b60fe9c5fc077240a26bd18275974dc4a.camel@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_031446_172312_4F1B5D3E 
X-CRM114-Status: GOOD (  17.63  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1
dHJvbml4LmRlPiB3IGRuaXUgMTIuMDQuMjAyMiwgbyBnb2R6LiAxMDoxMDoKPiAKPiBUaGlzIGNv
dWxkIGJlIGJvdGggYSBNZXNhL1BhbmZyb3N0IG9yIGFwcGxpY2F0aW9uIGlzc3VlLiBUaGUKPiBh
cHBsaWNhdGlvbiBpcyBzdXBwb3NlZCB0byB0cnkgdG8gYWxsb2NhdGUgd2l0aCBhIGFyYml0cmFy
eSBjaG9zZW4KPiBmb3JtYXQgYW5kIHRoZSB2YWxpZCBtb2RpZmllcnMgcXVlcmllZCBmcm9tIHRo
ZSBwbGFuZSBpdCB3YW50cyB0byBwdXQKPiB0aGUgc3VyZmFjZSBvbi4gSG93ZXZlciBJJ20gbm90
IHN1cmUgaWYgYWxsIGFwcGxpY2F0aW9ucyBoYXZlIGEKPiBmYWxsYmFjayBwYXRoIGluIHBsYWNl
IHRvIHRyeSBhbm90aGVyIGZvcm1hdCBzd2l6emxpbmcgaWYgdGhlIHN1cmZhY2UKPiBhbGxvY2F0
aW9uIGZhaWxzLgoKVGhpcyBpcyBnb29kIHJlbWFyayBpbWhvLgpJIHRoaW5rIHdlIGhhdmUgdGhp
cyBmYWxsYmFjay4KSSdsbCB0cnkgdmVyaWZ5IHRoaXMuCgpHZW5lcmFsaXNpbmcgYSBiaXQgLSBJ
IHRoaW5rIHdlIG15IGNvbnNpZGVyIGZvbGxvd2luZyBjYXNlczoKCmFcIGZvcm1hdCBpcyBjb3Jy
ZWN0bHkgbmVnb3RpYXRlZCBhbmQgc2lnbmFsbGVkIHRvIGNvbnN1bWVyL3Byb3ZpZGVyIGJ1dCB3
ZSBkb24ndCBzZWUgZXhwZWN0ZWQgcmVzdWx0cyAoPWNvcnJlY3Qgc2NyZWVuIHNlZW4gYnkgdXNl
cikKYlwgZm9ybWF0IHdhcyBjb3JyZWN0bHkgbmVnb3RpYXRlZCBidXQgY29uc3VtZXIvcHJvdmlk
ZXIgZmFpbGVkIHVzaW5nIHNpZ25hbGxlZCBmb3JtYXQgKGkuZS4gZHVlIGJ1ZyBpbiBpbXBsZW1l
bnRhdGlvbikKY1wgY29uc3VtZXIgb3IgcHJvdmlkZXIgYWR2ZXJ0aXNpbmcgLSBpbiByZWFsaXR5
IHVuc3VwcG9ydGVkIGZvcm1hdCAoZmFsc2UgcG9zaXRpdmUpIC0gc28gbmVnb3RpYXRpb24gcmVz
dWx0aW5nIHdpdGggc2lnbmFsbGluZyBlZmZpY2llbnRseSBub24td29ya2luZyBmb3JtYXQKICAK
U2FzY2hhIHNheXMgKGluIHRvZGF5J3MgZW1haWwpOgoKIkhlcmUgaXMgeW91ciBwcm9ibGVtLiBU
aGUgY2x1c3RlciB3aW5kb3dzIG9ubHkgYWxsb3cgQUZCQyBjb21wcmVzc2VkCmZvcm1hdHMuIEFS
MjQgaXMgc3VwcG9ydGVkIGJ5IHRoZSBjbHVzdGVyIHdpbmRvd3MsIGJ1dCBub3QgYnkgdGhlIEdQ
VSwKc2VlIHBhbmZyb3N0X2FmYmNfZm9ybWF0KCkgaW4gTWVzYToiCgpJJ20gcmVhZGluZyB0aGlz
IGFzIGNhc2UgY1wgYXMgU2FzY2hhIHNhaWQgIm5lZ290aWF0ZWQgZm9ybWF0IGlzIG5vdCBzdXBw
b3J0ZWQgYnkgR1BVIiAuLi4uYnV0IHRoaXMgZm9ybWF0IHdhcyBuZWdvdGlhdGVkLgoKLi4uLi4u
YnV0IGZvciBzdXJlIFNhc2NoYSBpcyBtdWNoIGJldHRlciB0aGFuIG1lIGhlcmUgaW4gc3ViamVj
dCAtIHNvIGknbSBtaWdodCBiZSB3cm9uZyBoZXJlCiAgICAKCj4gTm93IHRoZXJlIGFyZSB0d28g
cG9zc2libGUgZmFpbHVyZXMgaGVyZToKPiAKPiAxLiBUaGUgYXBwbGljYXRpb24gZmVlZHMgYSB3
cm9uZyBtb2RpZmllciBsaXN0IHRvIHRoZSBHQk0KPiBpbXBsZW1lbnRhdGlvbiwgYXMgaXQgbWF5
IGhhdmUgcXVlcmllZCBhbm90aGVyIHBsYW5lIGluIHRoZSBhc3N1bXB0aW9uCj4gdGhhdCBzdXBw
b3J0ZWQgbW9kaWZpZXJzIGFyZSB1bmlmb3JtIGFjcm9zcyBhbGwgcGxhbmVzLgo+IAoKVGhpcyB3
aWxsIGJlIGNhcmRpbmFsIGRlc2lnbiBlcnJvci4KKGtlZXBpbmcgaW4gbWluZCB3ZSBoYXZlIG11
bHRpcGxlIHByb2R1Y2VycyAoR1BVL3ZpZGVvIGRlY29kZXIpIGFuZCBtdWx0aXBsZSBjb25zdW1l
cnMgKGJhc2UgJiBvdmVybGF5IERSTSBwbGFuZXMpCiAgCgo+IDIuIFRoZSBHQk0gaW1wbGVtZW50
YXRpb24gKFBhbmZyb3N0KSBhY3R1YWxseSBhbGxvY2F0ZXMgYSBzdXJmYWNlCj4gaW5zdGVhZCBv
ZiBmYWlsaW5nIHRoZSBhbGxvY2F0aW9uLCBldmVuIGlmIGl0IGRvZXMgbm90IHN1cHBvcnQgYW55
Cj4gY29tYmluYXRpb24gb2YgdGhlIHByb3ZpZGVkIGZvcm1hdCBhbmQgbW9kaWZpZXIgbGlzdC4K
PiAKClRlc3RpbmcgU2FjaGEgcGF0Y2ggKHNlZSB0b2RheSdzIGVtYWlsIGZyb20gU2FzY2hhKSBp
J20gZ2V0dGluZwoKUXQ6IEVHTCBFcnJvciA6IENvdWxkIG5vdCBjcmVhdGUgdGhlIGVnbCBzdXJm
YWNlOiBlcnJvciA9IDB4MzAwOQoKaSdtIHJlYWRpbmcgdGhpcyBhczogUXQgdHJpZXMgYWxsb2Nh
dGUgRUdMIHN1cmZhY2UgYW5kIEVHTCByZXR1cm5zIGVycm9yLgoKb3IgaSdtIHdyb25nPwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
