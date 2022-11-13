Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FE11C43219
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Nov 2022 19:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKPPaWTF3AXDP1VFeTFbBtDx9VcHU9jgxhg8mdaqRU8=; b=e3RwnRFdY7Wabs
	mWmRhvjRJf0iqaeKW4lYOgAzdO9UH7mMLzYhSioZlCGiUtutJ2655Fdlp6ezH4PB3J+BJtyYl8El4
	mgugFhFBie94csru//sB+x2Sp0YxjuXjDEy7z9n648I1rV7Ce+DKBhYHaxoPuMvxv580rzOO48OUR
	tzNNYWnTSHQ/CzJVOT0jCA5Nhep7oZ1jOvVA/eJifZn9/tZVsiXah7FuJfQr5KDLzWIbBBvhxE49T
	P4uJohm6NIy5QxUs3egBGmMdpCSpLKLXYvWzclKdjm4HgNF+m0n7w9+iLsj4PD5eWbwQKenxas2Uh
	29I7VUjFxmFne94R3ZZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouIyV-00DQ33-RE; Sun, 13 Nov 2022 19:49:03 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouIyK-00DPws-2G
	for linux-rockchip@lists.infradead.org; Sun, 13 Nov 2022 19:48:55 +0000
Received: by mail-wr1-x431.google.com with SMTP id o4so13883928wrq.6
        for <linux-rockchip@lists.infradead.org>; Sun, 13 Nov 2022 11:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=urtGGp5NSKnCzuNmXw8f0REx4oVfO4cm/5CFl8huK7k=;
        b=sWuR3DluAzhLY0r9rRBiXIRKVARJIxWuX97LL6z/Ma201raTGFXLhGiIP0psImJorI
         XxoyyaOV8UY43efNeYjhkp4/X5fGpy4cwnOcXRE6sFKwmoM1Yuh9+VxypmIdr49F2tKo
         G/Y7ACZnLx+Z4pP3xlA+u831eXwruRHaXZuOh1F71TM3dzbPmMnPV5HmXVDkzDIqeQKT
         879Ku/ITAv0dMn3lGDMtuBwuWNrOmpWtICdaUVTU2TxBZhjwyw2FATwPmBhxbsLufUub
         oxoIhjbVJVMO/i+0bmDeG1DfELuVYfaO6lb8ytasFXDXyExfTSLLE9urigJ4Ve8rVADP
         258w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=urtGGp5NSKnCzuNmXw8f0REx4oVfO4cm/5CFl8huK7k=;
        b=zQ5dewTibGnUHz5Z8MJtguzMk9gRcod60NS5As5cT7V/X9y4EUr3IgoIIfXD6tWZfe
         gokLj3jzmJcI5ueGop+vpV6K5CWPQjVkGkyoYca0D43B92t+8M7qSDRDVMGYk7hHHiKh
         9zise1ePfFkT+RizhFZFY0YSccXcUnoH4jXm/e8R15A3suNN7p9wdLPxBncHWSRe868x
         FNe4Gh5eDxW+d2h3JF1LcfNhEj7z097slhTMjmG4clRRB344qM0KCcJDcmgUmYgpf4Io
         IKbv3Sz2STKnQ20hHoZ8Y53NLYK+xO0vyRqULsPweuyqL91ej18wjwdUSp2rvYuJ9EXD
         wLPQ==
X-Gm-Message-State: ANoB5pncb6mI2l5PbuRIog4We2fvP8tOHaLkztgdjbSHTjtfSihuYnbi
	lo5nVi6Jq8GKbEy0ypxmRNo48w==
X-Google-Smtp-Source: AA0mqf7dHWm0nu9EyIOQEhW9pElK5EQKu08wMF+XsqBePbB1wQDev5K2ghiHPElC7l0zOJX+GLyD3w==
X-Received: by 2002:adf:fc8f:0:b0:22e:362e:570a with SMTP id g15-20020adffc8f000000b0022e362e570amr5538648wrr.127.1668368929033;
        Sun, 13 Nov 2022 11:48:49 -0800 (PST)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.gmail.com with ESMTPSA id m10-20020a5d56ca000000b00241736714c3sm6588801wrw.14.2022.11.13.11.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 11:48:48 -0800 (PST)
References: <12dd5cb49efa7714f8e0389e4c7b3bc829e8a90e.1668289299.git.christophe.jaillet@wanadoo.fr>
 <3166437.e9J7NaK4W3@diego>
User-agent: mu4e 1.8.10; emacs 28.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>, Christophe JAILLET
 <christophe.jaillet@wanadoo.fr>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] clk: Remove a useless include
Date: Sun, 13 Nov 2022 20:29:43 +0100
In-reply-to: <3166437.e9J7NaK4W3@diego>
Message-ID: <1jo7ta3aao.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_114852_125184_325E1B89 
X-CRM114-Status: GOOD (  12.20  )
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

Ck9uIFN1biAxMyBOb3YgMjAyMiBhdCAwOTo0OCwgSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVj
aC5kZT4gd3JvdGU6Cgo+IEFtIFNhbXN0YWcsIDEyLiBOb3ZlbWJlciAyMDIyLCAyMjo0MzowMyBD
RVQgc2NocmllYiBDaHJpc3RvcGhlIEpBSUxMRVQ6Cj4+IDxsaW51eC9yYXRpb25hbC5oPiBpcyBu
b3QgbmVlZGVkIGZvciB0aGVzZSBkcml2ZXJzLiBSZW1vdmUgdGhlCj4+IGNvcnJlc3BvbmRpbmcg
I2luY2x1ZGUuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIEpBSUxMRVQgPGNocmlz
dG9waGUuamFpbGxldEB3YW5hZG9vLmZyPgo+PiAtLS0KPj4gIGRyaXZlcnMvY2xrL2Nsay12ZXJz
YWNsb2NrNS5jIHwgMSAtCj4+ICBkcml2ZXJzL2Nsay9tZXNvbi9jbGstcGxsLmMgICB8IDEgLQo+
PiAgZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmMgICAgfCAxIC0KPgo+IENsb2NrLXRyZWVzIGZv
ciBzb2MgZmFtaWxpZXMgbm9ybWFsbHkgaGF2ZSBkaWZmZXJlbnQgc3ViLW1haW50YWluZXJzLAo+
IHNvIGRlcGVuZGluZyBvbiBob3cgd2Ugd2FudCB0byBtZXJnZSB0aGlzLCB5b3UgbWlnaHQgbmVl
ZCB0byBzcGxpdAo+IHRoaXMgaW50byAzIHBhdGNoZXMuCj4KPiBCdXQgYXQgbGVhc3QgZm9yIHRo
ZSBSb2NrY2hpcCBwYXJ0LCBJJ20gYWxzbyBmaW5lIHdpdGggdGhlIHBhdGNoIGdvaW5nCj4gaW4g
YXMgYSB3aG9sZSwgc28gKGZvciB0aGUgUm9ja2NoaXAgcGFydCk6Cj4KPiBBY2tlZC1ieTogSGVp
a28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPgo+Cj4gSGVpa28KClNhbWUgZm9yIHRoZSBB
bWxvZ2ljIHBhcnQKCkFja2VkLWJ5OiBKZXJvbWUgQnJ1bmV0IDxqYnJ1bmV0QGJheWxpYnJlLmNv
bT4KCj4KPj4gIDMgZmlsZXMgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKPj4gCj4KPiBbLi4uXQo+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuYyBiL2RyaXZlcnMvY2xr
L3JvY2tjaGlwL2Nsay5jCj4+IGluZGV4IGU2M2Q0ZjIwYjQ3OS4uMzk4YzQyN2I4ZTgxIDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuYwo+PiArKysgYi9kcml2ZXJzL2Ns
ay9yb2NrY2hpcC9jbGsuYwo+PiBAQCAtMjEsNyArMjEsNiBAQAo+PiAgI2luY2x1ZGUgPGxpbnV4
L21mZC9zeXNjb24uaD4KPj4gICNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4KPj4gICNpbmNsdWRl
IDxsaW51eC9yZWJvb3QuaD4KPj4gLSNpbmNsdWRlIDxsaW51eC9yYXRpb25hbC5oPgo+PiAgCj4+
ICAjaW5jbHVkZSAiLi4vY2xrLWZyYWN0aW9uYWwtZGl2aWRlci5oIgo+PiAgI2luY2x1ZGUgImNs
ay5oIgo+PiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
