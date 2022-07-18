Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3227CC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 12:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:To:References:
	Date:Subject:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RRwfthtuqiTZyztWeNj1NbNP+Vr+dIxZHzgOCi6FSIk=; b=2wMI5DM9Q3b29x
	Qq9/nY+feVfrrpFqWf6xlNrvs+f7rUSWsca9nQoyu+vwkuXPqDevdrveXoCiLIzhFyOBNux3atQGs
	vZHLa7sh50VSnD6jBY7BfcvLgCmKiuHwYI5CXcrdIMMc3eoCB/pmyxwk9vDTJ1/TMopgbkjtHcmrm
	DC4kupQtghL5V0aHlhp2PGz+qWCm///eexpMq+q03tHAysFDhpUs9JqojqTg/oh62vVbpSiK/67AI
	r6lnp3KJs7rStDGv0kGjw5M/6wJIJHLFFrVSxzP2ZNjqchfQGuEtjpJ+ZOw7LObttJE24d6hFAjhf
	mhFFHYcL9W5A4GkbDdWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPUL-00D59g-Mw; Mon, 18 Jul 2022 12:04:37 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPUI-00D57B-AR
	for linux-rockchip@lists.infradead.org; Mon, 18 Jul 2022 12:04:37 +0000
Received: by mail-ej1-x633.google.com with SMTP id ss3so20741814ejc.11
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Jul 2022 05:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=PQ4rIL+dXxSoAf2L0QQkIcDArwZfdbAiRX/9Z9IDwAw=;
        b=dr8niMg/x9uzV0DOsVncE9RkhT1oLr5LE0woFvKhtJ45utWsNlJnyZ/8DTL+kBmYVc
         LcBOcGwzSlhjgw0BS1N2Be/+xR+0sD/1ccVATUv/ntkZ/t8gC7vGoG6pCmQeeh7/N0AR
         5050cBbIH78lYFq5F0xJBYqyo0XmgaI8x/al1bhu9EDHSi5hDqq7+iezJ+4YCCItM/9Q
         VIK15dubVZb6YSdGmdOwO/WLsyyfi1oiqOi/I8YQx5BkNX4K9dO4afPIGOXiq2XzIpVv
         RcEdogrJE7WMtu8hwTuuxewAB85SB3hUOCCzviAzaaGRQClJT8dbhQ88asS7735HCsKC
         PvXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=PQ4rIL+dXxSoAf2L0QQkIcDArwZfdbAiRX/9Z9IDwAw=;
        b=zq4ELDsLBXW2fEl9a/71OIVLO4wA4Zjbe7pR1QC2TTHqUI4wavUtNXWzoWtsooxOj/
         PnPp9SiPa13wMRc2loD2/tA+ixtP9PkpYtSA6rVQotvbWKDiPxfkaZ5MzflxDSYNdmnz
         n7ecv4grlIk6wR/59SY17xWPi/BOxYBAtYIU+yvPnx0WNAJATBaK4EZpAZwsTjeIUx+d
         nbHki2zMq7HVTpVccWvlQtbqYCOQkn02nKXyh/jz33Zd4iZSnc7bRGTn698KO8mmnSLz
         TQLi8+9SCuDZiMZn0Ne5oq1+KZpss9EDqRdrCmFnyiebmCsOHWSIDSWxr2dzT+vhqjU4
         dg/w==
X-Gm-Message-State: AJIora9y9hNgYEJastEPO5gicn7doALBEpxbi7yHKMhPisucnnZ1eiaN
	mdsPxubly0TfXNsbNgz7Vn+Blg==
X-Google-Smtp-Source: AGRyM1uWQJUGPqMWpWdlTVf5h7q2TWkLPk6FGThh1XPMLHY9dPNkba2XOHKyvOSAHt30hQyeppF+3g==
X-Received: by 2002:a17:906:6a29:b0:72e:e716:d220 with SMTP id qw41-20020a1709066a2900b0072ee716d220mr17696601ejc.82.1658145872777;
        Mon, 18 Jul 2022 05:04:32 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id mb1-20020a170906eb0100b0072aa38d768esm5430355ejb.64.2022.07.18.05.04.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jul 2022 05:04:32 -0700 (PDT)
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: [PATCH v6] arm64: dts: rockchip: Fix SD card init on rk3399-nanopi4
Date: Mon, 18 Jul 2022 14:04:31 +0200
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
 <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
 <502b3fbe-3077-407e-6010-a8cb3ffce7d6@arm.com>
 <449292CA-CE60-4B90-90F7-295FBFEAB3F8@kohlschutter.com>
 <73F9AED0-D2A8-4294-B6E1-1B92D2A36529@kohlschutter.com>
 <115AD6A4-021B-4879-BFB5-BC7689A0203E@kohlschutter.com>
 <17a4c6f6-d79c-a7b2-860f-e5944b778f9f@arm.com>
 <9405b97a-6758-ad4e-ccff-eed072096539@arm.com>
 <BF7CC548-88C9-4889-8A41-8E99C31EF81C@kohlschutter.com>
 <daf3b61c-d886-98eb-0443-de233d742041@arm.com>
 <CDF716FC-F6CF-44A9-84D9-B48C46E6AC2C@kohlschutter.com>
 <3912A668-9F73-40FD-8993-5060F632238A@kohlschutter.com>
 <7E830C9F-BB5D-4EFC-B3F4-1C580E9326A3@kohlschutter.com>
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
In-Reply-To: <7E830C9F-BB5D-4EFC-B3F4-1C580E9326A3@kohlschutter.com>
Message-Id: <E5A1A1E7-449F-4161-87B9-7A6CA0CAA42C@kohlschutter.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_050434_379435_90B9682A 
X-CRM114-Status: GOOD (  14.98  )
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

bW1jL1NELWNhcmQgaW5pdGlhbGl6YXRpb24gbWF5IGZhaWwgb24gTmFub1BpIFI0UyB3aXRoCiJt
bWMxOiBwcm9ibGVtIHJlYWRpbmcgU0QgU3RhdHVzIHJlZ2lzdGVyIiAvCiJtbWMxOiBlcnJvciAt
MTEwIHdoaWxzdCBpbml0aWFsaXNpbmcgU0QgY2FyZCIKZWl0aGVyIG9uIGNvbGQgYm9vdCBvciBh
ZnRlciBhIHJlYm9vdC4KCk1vcmVvdmVyLCB0aGUgc3lzdGVtIHdvdWxkIGFsc28gc29tZXRpbWVz
IGhhbmcgdXBvbiByZWJvb3QuCgpUaGlzIGlzIGNhdXNlZCBieSB2Y2MzdjAtc2QncyAicmVndWxh
dG9yLWFsd2F5cy1vbiIsIHdoaWNoIHRyaWdnZXJzCmFuIGVycm9uZW91cyBkb3VibGUtaW5pdGlh
bGl6YXRpb24gb2YgdGhlIHJlZ3VsYXRvci4gVGhpcyBjYXVzZXMKdm9sdGFnZSBmbHVjdHVhdGlv
bnMgdGhhdCBjYW4sIGRlcGVuZGluZyBvbiB0aW1pbmcsIHByZXZlbnQgdGhlClNEIGNhcmQgZnJv
bSBpbml0aWFsaXppbmcgY29ycmVjdGx5LgoKQWRkaW5nIHNvbWUgbGliZXJhbCBkZWxheSB2aWEg
Im9mZi1vbi1kZWxheS11cyIgaXMgaW5lZmZlY3RpdmUgc2luY2UKdGhhdCBjb2RlcGF0aCBpcyBz
a2lwcGVkIGFzIGxvbmcgInJlZ3VsYXRvci1hbHdheXMtb24iIGlzIHNldC4KClJlbW92aW5nICJy
ZWd1bGF0b3ItYWx3YXlzLW9uIiBhbG9uZSBpcyBub3Qgc3VmZmljaWVudCBiZWNhdXNlIHRoYXQK
d291bGQgYWxsb3cgdGhlIHN5c3RlbSB0byBzZXQgR1BJTzBfQTEgdG8gTE9XIHVwb24gcmVib290
LCB3aGljaCBtYXkKY2F1c2UgdGhlIHN5c3RlbSB0byBoYW5nLgoKSW4gb3JkZXIgdG8gYWxsb3cg
dGhlIHN5c3RlbSB0byBzZXQgR1BJTzBfQTEgdG8gSElHSCB1cG9uIGluaXRpYWxpemF0aW9uCmJ1
dCBwcmV2ZW50IGl0IGZyb20gY2hhbmdpbmcgaXQgYmFjayB0byBMT1csIHRoaXMgcGF0Y2ggaW5j
cmVhc2VzIHRoZQp1c2FnZSBjb3VudCBvZiB2Y2MzdjAtc2QgZnJvbSAxIHRvIDIsIHdoZXJlYXMg
dGhlIGFkZGl0aW9uYWwgcmVmZXJlbmNlLAoidmNjMXY4X3MzIiwgaXMgbWFya2VkIGFzICJhbHdh
eXMtb24iLCBjYXVzaW5nIHBlcm1hbmVudCByZXRlbnRpb24uCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS29obHNjaMO8dHRlciA8Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+Ci0tLQphcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kgfCAxMyArKysrKysr
KysrKy0tCjEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQpp
bmRleCA4YzBmZjZjOTZlMDMuLjM4NTA3YTZlMzA0NiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQpAQCAtNjEsNyArNjEsMTcgQEAgdmNj
MXY4X3MzOiB2Y2MxdjgtczMgewoJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAwMDA+
OwoJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+OwoJCXJlZ3VsYXRvci1uYW1l
ID0gInZjYzF2OF9zMyI7Ci0JCXZpbi1zdXBwbHkgPSA8JnZjY18xdjg+OworCisJCS8qCisJCSAq
IFdvcmthcm91bmQgdG8gc2tpcCBzZXR0aW5nIGdwaW8wIFJLX1BBMSB0byBMT1cgdXBvbiByZWJv
b3QsCisJCSAqIHdoaWNoIG1heSBmcmVlemUgdGhlIHN5c3RlbS4KKwkJICoKKwkJICogQWRkaW5n
IGEgcmVmZXJlbmNlIHRvIHZjYzN2MF9zZCBpbmNyZWFzZXMgaXRzIG51bV91c2VycworCQkgKiBj
b3VudCB0byAyLCBwcmV2ZW50aW5nIGRlYWN0aXZhdGlvbiBzaW5jZSB0aGlzIHJlZ3VsYXRvciBp
cworCQkgKiBtYXJrZWQgImFsd2F5cy1vbiIuCisJCSAqLworCQkvLyB2aW4tc3VwcGx5ID0gPCZ2
Y2NfMXY4PjsgLy8gYWN0dWFsIHN1cHBseQorCQl2aW4tc3VwcGx5ID0gPCZ2Y2MzdjBfc2Q+OwoJ
fTsKCgl2Y2MzdjBfc2Q6IHZjYzN2MC1zZCB7CkBAIC03MCw3ICs4MCw2IEBAIHZjYzN2MF9zZDog
dmNjM3YwLXNkIHsKCQlncGlvID0gPCZncGlvMCBSS19QQTEgR1BJT19BQ1RJVkVfSElHSD47CgkJ
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKCQlwaW5jdHJsLTAgPSA8JnNkbW1jMF9wd3JfaD47
Ci0JCXJlZ3VsYXRvci1hbHdheXMtb247CgkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzAw
MDAwMD47CgkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47CgkJcmVndWxhdG9y
LW5hbWUgPSAidmNjM3YwX3NkIjsKLS0gCjIuMzYuMQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
