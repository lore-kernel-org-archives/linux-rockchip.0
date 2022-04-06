Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77128C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 16:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeV9qzOgFmgLYc6bnTAHX3a5RgSYD7O8zjt/W2CoU8s=; b=zQH65rfSjcjiSK
	z/TC0knxg6m03rHyWs2ht6pFWSnal+GkIjMuLLXaxbEsf35DE6aKpGwz9S/wNyt6OcUdZ9x93NQbt
	w7XeH3E7Nz+4EAmnnGcug3dRcKLn6Lh/zBAcdm9GcWm19cu2sCudugpgBePlVEFOREF4O6VtrG0Si
	JlWbEstKu83LL/7xqYfnqnS62sxDEBG+PeFvJQJW4K1tAxC2Hb4NPWfvm/BnYcmsaNCoExTkQm2VF
	TnA20XWTJl2P7Um2K+9rrVXufq2NXlewMMEf+jp/Pr6NbhYnPenk7B8TTTquxXtzo0zHeHIjnSdaT
	/Q681wHAdeGfllX1fuYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc84y-0071oM-M0; Wed, 06 Apr 2022 16:00:20 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc84l-0071fx-Eg; Wed, 06 Apr 2022 16:00:09 +0000
Received: by mail-lf1-x135.google.com with SMTP id f16so48265lfe.11;
 Wed, 06 Apr 2022 09:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=HPRQgXRjC4atPl72bb1ewJJi+e0GsToCEPkcAuvez6o=;
 b=nA76NQ4I018Nvr5xO/CSVvNNmO27Sc0qc5/hcx8GHIw98s4Ajz2iNmg9XYs7h1yGW0
 TcKWn/k6nJQn/3ISQv9R7hjfw1JieOK69Ha8jN5NMZWChk7c1GmAeFmMgzJHTDDz4khw
 +oKA61QNSWZTvfhJjGlDRqwwKUV09MUPHKB8sT6wDBG3e+bCEiChj83OwklTVySl8iPg
 pIns7k5EGX3bwaxalYm6VqiBsny2ZsUFGfPHXo671l9pclE+Oob3bPwl2kODysqdFmoP
 z8/5ZPADb6Vv6s1NfhwwHe+FPv9k2pXQr0Cf1c6m2EwrPQOp0D0IQ7SecbZCYpiKizB+
 ZeTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=HPRQgXRjC4atPl72bb1ewJJi+e0GsToCEPkcAuvez6o=;
 b=h4x8Kb5+hTRQOFLX3Fdu5NHn+06bJ7HYrfKLiRETg8j4E7o67R5HLqa8aFkD15UYZZ
 scZtS1OVNkPpzY30UYZgbzTuHGNfjFFFGZ/1wNW6wDJeoVQIt5ImrVWGDpWbFDMlaqs2
 HB6hUuCj7IxWOgIRn0tpmfxGX/GNYytwSKye9Lu/yB6/QOW6xiCHXqjr7ubjhrNxAfRP
 YxWqDV5Nrf3J1n90jzuEV8G64noeeyi+ufdikuQn6aOjzE+s4dwcEZR0uSNMNdPTh2Nw
 5Ueand/u4bJmaQMyWg74V5SoLtFedrm8zuYhaHCsTl6pFRgzA9tdmh4PZbh+IChi1XCb
 CulQ==
X-Gm-Message-State: AOAM531Tx4b33n9KJNM/C3rTxduU/PmZUM2Ts6m3EFOZqNeNmQMCPPrp
 PD9TXCsXnXFa3fWNw65jSf0=
X-Google-Smtp-Source: ABdhPJzw1flYxDqL9d3uqjxYN2lRvj7oFW1wupoBbWmMvUGMsWak1tGLq9L1VBCzqRvFkZexmt6e6Q==
X-Received: by 2002:a05:6512:224a:b0:44b:111:1634 with SMTP id
 i10-20020a056512224a00b0044b01111634mr6163405lfu.367.1649260803181; 
 Wed, 06 Apr 2022 09:00:03 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 y12-20020a2e978c000000b0024b11369f20sm1309738lji.126.2022.04.06.09.00.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Apr 2022 09:00:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220406145847.GX4012@pengutronix.de>
Date: Wed, 6 Apr 2022 18:00:00 +0200
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
Message-Id: <1A6985CC-CBEB-44B2-AA61-3005D204C023@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220406145847.GX4012@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_090007_586705_6CA05E54 
X-CRM114-Status: GOOD (  16.43  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gdyBkbml1IDA2LjA0LjIwMjIsIG8gZ29kei4gMTY6NTg6Cj4gCj4gT24gV2Vk
LCBBcHIgMDYsIDIwMjIgYXQgMTE6NDc6MjJBTSArMDIwMCwgUGlvdHIgT25pc3pjenVrIHdyb3Rl
Ogo+PiAKPj4gCj4+IFNhc2NoYSwKPj4gCj4+IEhhdmluZyB2b3AyIGZpbmFsbHkgd29ya2luZyB3
aXRoIGRybSBwbGFuZXMgcmVuZGVyaW5nIGkgZGlzY292ZXJlZCBhbm90aGVyIGlzc3VlOiBvdmVy
bGF5IG9zZCBpcyBpbnZpc2libGUgYXQgcGxheWJhY2suIAo+PiAKPj4gY29udGV4dDogcGxheWVy
IGRyYXdzIHZpZGVvIG9uIHBsYW5lICNYIGFuZCBvc2Qgb24gb3ZlcmxheSBwbGFuZSAjWQo+PiBX
aGVuIHVzZXIgZG8gaS5lLiBzZWVrIGF0IHBsYXliYWNrIC0gYXBwIHVzZXMgb3ZlcmxheSBPU0Qg
cGxhbmUgdG8gZGlzcGxheSBPU0QgdG8gdXNlci4gVGhpcyBhcHByb2FjaCBpcyB1c2VkIGJ5IG1h
am9yaXR5IG9mIHBsYXllcnMgKEtPREksIGV0Yy4pCj4+IAo+PiBUaGlzIHdvcmtzIHdlbGwgb24g
YWxsIHBsYXRmb3JtcyBpIGhhdmUgIC0gZXhjZXB0IHJrMzU2NiAKPj4gCj4+IEZvciBtZSBpdCBs
b29rcyBsaWtlIHotb3JkZXIgdm9wMiBpc3N1ZSBvciBhbHBoYSBibGVuZGluZyBpc3N1ZS4KPj4g
QXMgdGhpcyBpcyBvbmx5IG9uIHJrMzU2NiBhbmQgb25seSBvbiBkcm0tcGxhbmVzIG1vZGUgLSBp
c3N1ZSBpcyB2b3AyIHJlbGF0ZWQgaW1oby4KPiAKPiBEdXJpbmcgbXkgdGVzdGluZyBJIGhhdmVu
J3Qgc2VlbiBhbnkgei1vcmRlciBpc3N1ZXMsIGJ1dCB0aGF0IGRvZXNuJ3QKPiBtZWFuIG11Y2gu
IFdpdGggV2VzdG9uIEkgY2FuIGN1cnJlbnRseSBvbmx5IHVzZSB0aGUgQUZCQyBlbmFibGVkIGNs
dXN0ZXIKPiB3aW5kb3dzIGFuZCB3aXRoIG1vZGV0ZXN0IEkgY2FuIG9ubHkgdXNlIHRoZSBub24t
Y2x1c3RlciB3aW5kb3dzLiBBcmUKPiB5b3UgYWJsZSB0byBmaW5kIG91dCB3aGljaCB3aW5kb3cg
aXMgdXNlZCBmb3IgdGhlIE9TRD8KPiAKPiBTYXNjaGEKPiAKPiAtLSAKPiBQZW5ndXRyb25peCBl
LksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfAo+IFN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6
Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8Cj4gMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAg
ICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKPiBBbXRzZ2VyaWNo
dCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3
LTU1NTUgfAoKV2lJbCB0aGlzIGFuc3dlciB0byB5b3VyIFE/CgpwbGF5ZXI6CgoyMDIyLTA0LTA2
IDE3OjUyOjI2LjQyNDQ4NyBJIERpc3BsYXk6IEdlb21ldHJ5OiAxOTIweDEwODArMCswIFNpemUo
UXQpOiA5MzBtbXg1MzBtbQoyMDIyLTA0LTA2IDE3OjUyOjI2LjQyNDkyMiBJIC9kZXYvZHJpL2Nh
cmQwIFF0IEVHTEZTL0tNUyBGZDo1IENydGMgaWQ6NDkgQ29ubmVjdG9yIGlkOjUxIEF0b21pYzog
MQoyMDIyLTA0LTA2IDE3OjUyOjI2LjQyNTA2MSBJIC9kZXYvZHJpL2NhcmQwOiBBdXRoZW50aWNh
dGVkCjIwMjItMDQtMDYgMTc6NTI6MjYuNTM0MzYyIEkgL2Rldi9kcmkvY2FyZDA6IEZvdW5kIDMg
cGxhbmVzOyAzIGZvciB0aGlzIENSVEMKMjAyMi0wNC0wNiAxNzo1MjoyNi41MzQzODQgSSAvZGV2
L2RyaS9jYXJkMDogU2VsZWN0ZWQgUGxhbmUgIzM3IE92ZXJsYXkgZm9yIHZpZGVvCjIwMjItMDQt
MDYgMTc6NTI6MjYuNTM0NDMwIEkgL2Rldi9kcmkvY2FyZDA6IFN1cHBvcnRlZCBEUk0gdmlkZW8g
Zm9ybWF0czogTlYxMixOVjE2LE5WMjQsWVZZVSxWWVVZCjIwMjItMDQtMDYgMTc6NTI6MjYuNTM0
NDM3IEkgL2Rldi9kcmkvY2FyZDA6IFNlbGVjdGVkIFBsYW5lICM0MyBPdmVybGF5IGZvciBHVUkK
MjAyMi0wNC0wNiAxNzo1MjoyNi41MzQ0ODAgSSAvZGV2L2RyaS9jYXJkMDogRFJNIGRldmljZSBy
ZXRyaWV2ZWQgZnJvbSBRdAoyMDIyLTA0LTA2IDE3OjUyOjI2LjUzNDQ4OSBJIC9kZXYvZHJpL2Nh
cmQwOiBNdWx0aS1wbGFuZSBzZXR1cDogUmVxdWVzdGVkOiAxIFNldHVwOiAxCgpzbzoKcGxhbmUg
IzM3IGlzIHdoZXJlIHZpZGVvIGlzIGRyYXdpbmcKcGxhbmUgIzQzIGlzIEdVSS9PU0QKCgpkcmkg
c3RhdGU6Cgpyb290QE15dGgtRnJvbnRlbmQtMDZjN2U5NzNjMmYxOn4gIyBjYXQgL3N5cy9rZXJu
ZWwvZGVidWcvZHJpLzAvc3RhdGUKcGxhbmVbMzFdOiBTbWFydDAtd2luMAogICAgICAgIGNydGM9
dmlkZW9fcG9ydDAKICAgICAgICBmYj01OAogICAgICAgICAgICAgICAgYWxsb2NhdGVkIGJ5ID0g
bXl0aGZyb250ZW5kCiAgICAgICAgICAgICAgICByZWZjb3VudD0yCiAgICAgICAgICAgICAgICBm
b3JtYXQ9WFIyNCBsaXR0bGUtZW5kaWFuICgweDM0MzI1MjU4KQogICAgICAgICAgICAgICAgbW9k
aWZpZXI9MHgwCiAgICAgICAgICAgICAgICBzaXplPTE5MjB4MTA4MAogICAgICAgICAgICAgICAg
bGF5ZXJzOgogICAgICAgICAgICAgICAgICAgICAgICBzaXplWzBdPTE5MjB4MTA4MAogICAgICAg
ICAgICAgICAgICAgICAgICBwaXRjaFswXT03NjgwCiAgICAgICAgICAgICAgICAgICAgICAgIG9m
ZnNldFswXT0wCiAgICAgICAgICAgICAgICAgICAgICAgIG9ialswXToKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBuYW1lPTAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBy
ZWZjb3VudD00CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RhcnQ9MDAwMDAwMDAK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplPTgyOTQ0MDAKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBpbXBvcnRlZD1ubwogICAgICAgIGNydGMtcG9zPTE5MjB4MTA4
MCswKzAKICAgICAgICBzcmMtcG9zPTE5MjAuMDAwMDAweDEwODAuMDAwMDAwKzAuMDAwMDAwKzAu
MDAwMDAwCiAgICAgICAgcm90YXRpb249MQogICAgICAgIG5vcm1hbGl6ZWQtenBvcz0wCiAgICAg
ICAgY29sb3ItZW5jb2Rpbmc9SVRVLVIgQlQuNjAxIFlDYkNyCiAgICAgICAgY29sb3ItcmFuZ2U9
WUNiQ3IgbGltaXRlZCByYW5nZQpwbGFuZVszN106IEVzbWFydDAtd2luMAogICAgICAgIGNydGM9
KG51bGwpCiAgICAgICAgZmI9MAogICAgICAgIGNydGMtcG9zPTE5MjB4MTA4MCswKzAKICAgICAg
ICBzcmMtcG9zPTE5MjAuMDAwMDAweDEwODAuMDAwMDAwKzAuMDAwMDAwKzAuMDAwMDAwCiAgICAg
ICAgcm90YXRpb249MQogICAgICAgIG5vcm1hbGl6ZWQtenBvcz0wCiAgICAgICAgY29sb3ItZW5j
b2Rpbmc9SVRVLVIgQlQuNjAxIFlDYkNyCiAgICAgICAgY29sb3ItcmFuZ2U9WUNiQ3IgbGltaXRl
ZCByYW5nZQpwbGFuZVs0M106IENsdXN0ZXIwLXdpbjAKICAgICAgICBjcnRjPShudWxsKQogICAg
ICAgIGZiPTAKICAgICAgICBjcnRjLXBvcz0weDArMCswCiAgICAgICAgc3JjLXBvcz0wLjAwMDAw
MHgwLjAwMDAwMCswLjAwMDAwMCswLjAwMDAwMAogICAgICAgIHJvdGF0aW9uPTEKICAgICAgICBu
b3JtYWxpemVkLXpwb3M9MAogICAgICAgIGNvbG9yLWVuY29kaW5nPUlUVS1SIEJULjYwMSBZQ2JD
cgogICAgICAgIGNvbG9yLXJhbmdlPVlDYkNyIGxpbWl0ZWQgcmFuZ2UKY3J0Y1s0OV06IHZpZGVv
X3BvcnQwCiAgICAgICAgZW5hYmxlPTEKICAgICAgICBhY3RpdmU9MQogICAgICAgIHNlbGZfcmVm
cmVzaF9hY3RpdmU9MAogICAgICAgIHBsYW5lc19jaGFuZ2VkPTEKICAgICAgICBtb2RlX2NoYW5n
ZWQ9MAogICAgICAgIGFjdGl2ZV9jaGFuZ2VkPTAKICAgICAgICBjb25uZWN0b3JzX2NoYW5nZWQ9
MAogICAgICAgIGNvbG9yX21nbXRfY2hhbmdlZD0wCiAgICAgICAgcGxhbmVfbWFzaz0xCiAgICAg
ICAgY29ubmVjdG9yX21hc2s9MQogICAgICAgIGVuY29kZXJfbWFzaz0xCiAgICAgICAgbW9kZTog
IjE5MjB4MTA4MCI6IDUwIDE0ODUwMCAxOTIwIDI0NDggMjQ5MiAyNjQwIDEwODAgMTA4NCAxMDg5
IDExMjUgMHg0MCAweDUKY29ubmVjdG9yWzUxXTogSERNSS1BLTEKICAgICAgICBjcnRjPXZpZGVv
X3BvcnQwCiAgICAgICAgc2VsZl9yZWZyZXNoX2F3YXJlPTAKIApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
