Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD1BBEB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 14:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FeCZeV11Pi6ccGA52faG5/J5WeVorUWm4OBXIWjbtiA=; b=fxRwMYmhlj1+PE
	/8tbL8nxjnGw7FXmbVtUQ51wPmzs7mZUISmWtvuysoo7RAQBYOc2CReGoEvVduqsoBHBH8CczsSge
	rz5LW0aVrjpJvQGNWaxdnLyZ5lHJhEtX38dBoPRhSvtkXgNhkz67bUbVvIHRom8A3of25AHq5QAcN
	HPiHu0R4iFq4W0QSLgLLcecW3ijA0K5P5lt3Lycrfg6WumhAVYe46DHfg8e8B/r4kipv0hZz1870c
	l92pwJpf+PpZITv4WspZlXANS7uS6RnMmglInSkzGTEQpbNpXCaja6wMCuCV8x0ZYoT/DUSIwBjOr
	wC89HIAcXv18wY/Zfsyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9RLL-00Bswr-0x;
	Wed, 14 Jun 2023 14:19:27 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9RLI-00Bsu9-0w;
	Wed, 14 Jun 2023 14:19:25 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-56ff9cc91b4so8909817b3.0;
        Wed, 14 Jun 2023 07:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686752358; x=1689344358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KX5YO1WYul949jFQhaP2hJUbrdTDjTdGLvHcfir61kc=;
        b=i6gIt2eixifwvL/xKy/LTVOmXLGJXu83F20GOpWUc+DfdS9FpLot9sLufvFkUNociJ
         SR52ir+xMVHqmu/T+1dncFHrybZWnFKA3fI2lbYco5HZgQzsLBI6JsLUJi8GfLrjMqtH
         L80OvDo3uxbVTqLBLpyAJdL90rnuu1wHoy1VrfUWG6twpll4h4p2VSno8fC0YhCKIYkb
         Lt4mUX/3VIr9BSFjlGv+PFuI03s0vrPwSKpwFF9RzzOH2UPpHan1BFuAQEN55v95TojU
         TFHcdpLrJxZrFjl4PWPcV4GT9CTcpdGR1T1F25T+gfYDHVCVzR/LnJdg6DGcS+eNPXI9
         3olw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686752358; x=1689344358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KX5YO1WYul949jFQhaP2hJUbrdTDjTdGLvHcfir61kc=;
        b=Uw/bogupI2uRmLY7YEv1TZI5wW7ebifjTOG2Y+Bu4bMexPzFnTTBpy+pekZ9cT/eYp
         uHPAAuoAAHmB/QY8K1+6r0igZm4AZabD7qHaTYORmIn4KcJXtfncnf4LrJ+cAPmob5Ic
         FFdscpnxZwKSpDz/5ySwg+I5nInumzquu2mgCTEbQRlssFFx0PG8IvjmNA3LVhQNoIig
         9dx4PQ9oeY3sbRkxl76t7M81RxdHwrUemRNVKpRkWBgq0XDFC2dWELrJ1qE+vKkzFjWO
         UbQgfpazziXsw1/0tnwCDSdyOyROTmuOILPKmNceD8/EiB4mMVxhcdrs22s7v7g3pWx1
         NNoA==
X-Gm-Message-State: AC+VfDw7EKXWkLVBoSr2/s3Hp5tT/tKmvQOUv++hDCJ0vWoH+qhu7/pU
	4Khwxf7IEwsUH4ZaMZfXOPYwQHPkkLWxwgbwy38=
X-Google-Smtp-Source: ACHHUZ4x6WLud45wPegG2Lh8Ea6ssDXfxMlRzpQJzqGV7rINz/e9/iuzIawfj4+fKglV3jau7YuGI9MaoBNqtSycOK4=
X-Received: by 2002:a81:6e8a:0:b0:56d:24c:8896 with SMTP id
 j132-20020a816e8a000000b0056d024c8896mr1866564ywc.7.1686752357816; Wed, 14
 Jun 2023 07:19:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230524083153.2046084-1-s.hauer@pengutronix.de> <20230614134034.3p3p75a3jophi2eu@mercury.elektranox.org>
In-Reply-To: <20230614134034.3p3p75a3jophi2eu@mercury.elektranox.org>
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Wed, 14 Jun 2023 14:19:06 +0000
Message-ID: <CAEwRq=rUUatDp0JePkDPRkx81c9=sO6ZoW+V=g2S7B8_s-R3uA@mail.gmail.com>
Subject: Re: [PATCH v5 00/25] Add perf support to the rockchip-dfi driver
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de, 
	Michael Riesch <michael.riesch@wolfvision.net>, Robin Murphy <robin.murphy@arm.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_071924_330720_CC16DF55 
X-CRM114-Status: GOOD (  18.55  )
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

SGVsbG8gU2FzY2hhLCBTZWJhc3RpYW4sCgpPbiBXZWQsIEp1biAxNCwgMjAyMyBhdCAxOjQw4oCv
UE0gU2ViYXN0aWFuIFJlaWNoZWwKPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+IHdy
b3RlOgo+IE9uIFdlZCwgTWF5IDI0LCAyMDIzIGF0IDEwOjMxOjI4QU0gKzAyMDAsIFNhc2NoYSBI
YXVlciB3cm90ZToKPiA+IFRoaXMgaXMgdjUgb2YgdGhlIHNlcmllcyBhZGRpbmcgcGVyZiBzdXBw
b3J0IHRvIHRoZSByb2NrY2hpcCBERkkgZHJpdmVyLgo+ID4gWy4uLl0KPiA+IFRoZSBSSzM1ODgg
ZGV2aWNlIHRyZWUgY2hhbmdlcyBmb3IgdGhlIERGSSB3ZXJlIG5vdCBwYXJ0IG9mIHY0LiBBcwo+
ID4gVmluY2VudCBMZWdvbGwgc2hvd2VkIGludGVyZXN0IGluIHRlc3RpbmcgdGhpcyBzZXJpZXMg
dGhlIG5lY2Vzc2FyeQo+ID4gZGV2aWNlIHRyZWUgY2hhbmdlcyBhcmUgbm93IHBhcnQgb2YgdGhp
cyBzZXJpZXMuCj4KPiBJIHRlc3RlZCB0aGUgc2VyaWVzIG9uIFJLMzU4OCBFVkIxLiBUaGUgcmVh
ZC93cml0ZSBieXRzIGxvb2tzCj4gc2Vuc2libGUuIFNvbWV0aW1lcyBjeWNsZXMgcmVhZHMgdW5y
ZWFsaXN0aWMgdmFsdWVzLCB0aG91Z2g6Cj4gWy4uLl0KPiBPdGhlcndpc2UgdGhlIHNlcmllcyBp
cwo+Cj4gVGVzdGVkLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29s
bGFib3JhLmNvbT4KPgo+IC0tIFNlYmFzdGlhbgoKSSBhbHNvIHRlc3RlZCB0aGlzIG5ldyB2ZXJz
aW9uIG9mIHRoZSBzZXJpZXMgb24gYSBQaW5lNjQgUXVhcnR6UHJvNjQgZGV2IGJvYXJkLgoKSSBh
cHBsaWVkIHRoZSBzZXJpZXMgb24gdG9wIG9mIG15IGxvY2FsIGJyYW5jaCwgd2hpY2ggaXMgYmFz
ZWQgb24gQ29sbGFib3JhJ3MKcm9ja2NoaXAtMzU4OCBwbHVzIHNvbWUgUVA2NCBEVFMgcGF0Y2hl
cywgYW5kIHlvdXIgVjUgcGF0Y2ggc2VyaWVzLgoKTG9va3MgbGlrZSB0aGlzIGlzIHN0aWxsIHdv
cmtpbmcgcHJvcGVybHk6CgotYmFzaC01LjEjIHVuYW1lIC1hCkxpbnV4IHFwNjQgNi40LjAtcmMx
LTAwMTQwLWc2NThkZDIyMDBlMmEgIzI0IFNNUCBQUkVFTVBUIFdlZCBKdW4gMTQKMTU6NTA6MzQg
Q0VTVCAyMDIzIGFhcmNoNjQgR05VL0xpbnV4CgotYmFzaC01LjEjIHpncmVwIC1pIF9kZmkgL3By
b2MvY29uZmlnLmd6CkNPTkZJR19ERVZGUkVRX0VWRU5UX1JPQ0tDSElQX0RGST15CgotYmFzaC01
LjEjIHBlcmYgbGlzdCB8IGdyZXAgcm9ja2NoaXBfZGRyCiAgcm9ja2NoaXBfZGRyL2J5dGVzLyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgW0tlcm5lbCBQTVUgZXZlbnRdCiAgcm9ja2No
aXBfZGRyL2N5Y2xlcy8gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgW0tlcm5lbCBQTVUg
ZXZlbnRdCiAgcm9ja2NoaXBfZGRyL3JlYWQtYnl0ZXMvICAgICAgICAgICAgICAgICAgICAgICAg
ICAgW0tlcm5lbCBQTVUgZXZlbnRdCiAgcm9ja2NoaXBfZGRyL3JlYWQtYnl0ZXMwLyAgICAgICAg
ICAgICAgICAgICAgICAgICAgW0tlcm5lbCBQTVUgZXZlbnRdCiAgcm9ja2NoaXBfZGRyL3JlYWQt
Ynl0ZXMxLyAgICAgICAgICAgICAgICAgICAgICAgICAgW0tlcm5lbCBQTVUgZXZlbnRdCiAgcm9j
a2NoaXBfZGRyL3JlYWQtYnl0ZXMyLyAgICAgICAgICAgICAgICAgICAgICAgICAgW0tlcm5lbCBQ
TVUgZXZlbnRdCiAgcm9ja2NoaXBfZGRyL3JlYWQtYnl0ZXMzLyAgICAgICAgICAgICAgICAgICAg
ICAgICAgW0tlcm5lbCBQTVUgZXZlbnRdCiAgcm9ja2NoaXBfZGRyL3dyaXRlLWJ5dGVzLyAgICAg
ICAgICAgICAgICAgICAgICAgICAgW0tlcm5lbCBQTVUgZXZlbnRdCiAgcm9ja2NoaXBfZGRyL3dy
aXRlLWJ5dGVzMC8gICAgICAgICAgICAgICAgICAgICAgICAgW0tlcm5lbCBQTVUgZXZlbnRdCiAg
cm9ja2NoaXBfZGRyL3dyaXRlLWJ5dGVzMS8gICAgICAgICAgICAgICAgICAgICAgICAgW0tlcm5l
bCBQTVUgZXZlbnRdCiAgcm9ja2NoaXBfZGRyL3dyaXRlLWJ5dGVzMi8gICAgICAgICAgICAgICAg
ICAgICAgICAgW0tlcm5lbCBQTVUgZXZlbnRdCiAgcm9ja2NoaXBfZGRyL3dyaXRlLWJ5dGVzMy8g
ICAgICAgICAgICAgICAgICAgICAgICAgW0tlcm5lbCBQTVUgZXZlbnRdCgojIFdpdGggbm8gbWVt
b3J5IGxvYWQKLWJhc2gtNS4xIyBwZXJmIHN0YXQgLWEgLWUKcm9ja2NoaXBfZGRyL2N5Y2xlcy8s
cm9ja2NoaXBfZGRyL3JlYWQtYnl0ZXMvLHJvY2tjaGlwX2Rkci93cml0ZS1ieXRlcy8scm9ja2No
aXBfZGRyL2J5dGVzLwpzbGVlcCAxCgogUGVyZm9ybWFuY2UgY291bnRlciBzdGF0cyBmb3IgJ3N5
c3RlbSB3aWRlJzoKCiAgICAgICAgMTA1ODY5MTA0NyAgICAgIHJvY2tjaGlwX2Rkci9jeWNsZXMv
CiAgICAgICAgICAgICAgOS4zNSBNQiAgIHJvY2tjaGlwX2Rkci9yZWFkLWJ5dGVzLwogICAgICAg
ICAgICAgIDAuNTcgTUIgICByb2NrY2hpcF9kZHIvd3JpdGUtYnl0ZXMvCiAgICAgICAgICAgICAg
OS45MCBNQiAgIHJvY2tjaGlwX2Rkci9ieXRlcy8KCiAgICAgICAxLjAwMjYxNjQ5OCBzZWNvbmRz
IHRpbWUgZWxhcHNlZAoKIyBXaXRoIGEgaG9nCi1iYXNoLTUuMSMgbWVtdGVzdGVyIDRHID4gL2Rl
di9udWxsIDI+JjEgJgotYmFzaC01LjEjIHBlcmYgc3RhdCAtYSAtZQpyb2NrY2hpcF9kZHIvY3lj
bGVzLyxyb2NrY2hpcF9kZHIvcmVhZC1ieXRlcy8scm9ja2NoaXBfZGRyL3dyaXRlLWJ5dGVzLyxy
b2NrY2hpcF9kZHIvYnl0ZXMvCnNsZWVwIDEwCgogUGVyZm9ybWFuY2UgY291bnRlciBzdGF0cyBm
b3IgJ3N5c3RlbSB3aWRlJzoKCiAgICAgICAxMDU2MTU0MDAzOCAgICAgIHJvY2tjaGlwX2Rkci9j
eWNsZXMvCiAgICAgICAgICA2MDIxMi41OSBNQiAgIHJvY2tjaGlwX2Rkci9yZWFkLWJ5dGVzLwog
ICAgICAgICAgMzEzMTMuMDMgTUIgICByb2NrY2hpcF9kZHIvd3JpdGUtYnl0ZXMvCiAgICAgICAg
ICA5MTUyNS42MCBNQiAgIHJvY2tjaGlwX2Rkci9ieXRlcy8KCiAgICAgIDEwLjAwMTY1MTg4NiBz
ZWNvbmRzIHRpbWUgZWxhcHNlZAoKWW91IGNhbiBhZGQgbXkgVC1CLCBmb3IgdGhlIHdob2xlIHNl
cmllczoKClRlc3RlZC1ieTogVmluY2VudCBMZWdvbGwgPHZpbmNlbnQubGVnb2xsQGdtYWlsLmNv
bT4KCk9yIGlzIHRoZXJlIHNvbWV0aGluZyBlbHNlIHlvdSB3YW50IG1lIHRvIHRlc3QgPwoKVGhh
bmtzIGZvciB5b3VyIHdvcmsKUmVnYXJkcwoKLS0KVmluY2VudCBMZWdvbGwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
