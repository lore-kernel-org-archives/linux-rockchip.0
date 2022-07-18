Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9306C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 12:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:To:References:
	Date:Subject:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MAAGRwhy7cDhngsSqFxmqs+ReRL+Sde4inDCtomBOg=; b=STjw0NjqO5clEl
	QfnXUT/lfmjZM9NC3FPtmrCu37TJpHeeYFwvdifVzqJSwvhjFIrRKgDRimphDXigFavOLEeCXNLGc
	pTd0Cw5zzWfC4xiaoYsIDdXrqmpFkzxfhQMp2GncLwPXBikkHVRrnYGSW8JkZwQIQ9uBLxjZhtkAt
	RGhOKBjMECUjbLOObg7DVs636G1Fi62o6DQ4ivmVPxcjEiGgLZZediV5ifP5fl5CkvseqZh7avTmX
	FdTlJcOKN7UsbD6XZfOrjTXFbNnb9+/TEeVQakR+MMPkWf0agPss9FHTTkLgHPhKtO2UarBO3U16j
	oWhFkjBUg8F2zX61ztFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPSD-00D43n-2y; Mon, 18 Jul 2022 12:02:25 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPS1-00D3x0-Nq
	for linux-rockchip@lists.infradead.org; Mon, 18 Jul 2022 12:02:15 +0000
Received: by mail-wm1-x332.google.com with SMTP id 8-20020a05600c024800b003a2fe343db1so7187653wmj.1
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Jul 2022 05:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=/Wjhe1Q4ojz7rsMCyD5ctxYAYQynJVyQzOqbmq13x+M=;
        b=VBEN/bhJNUvzckZpVfCiDdHgAK7UigIWSvfal3rwFk/4tpUC4IOIkEAj5G+4goZB6h
         Wt1GdfMgSvRlczraz0wEPEkH1JI6uv0ItpYQti+5E5oBSwJSU2KUmMWIha0Tf9+Q4EH+
         HoJw/Cnl2rlwNMwvUCcXrEPcmcVvKMv4r6OG9DZJZEWevaMj99FBXji3gIa1V1KDQxa/
         OGZxbwDjQcEX77iv70P4fDjJ1jl9CNoN+6pa/+cz9k8AIt+0NK0XlUFfcmZF+H4TtuEx
         ehoPL9VfA52v6hQo5Msl65DUNHwQoywx8ez+UB1MIMNAAh+oLxr54svJD3Tnxn/noiVW
         i6dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=/Wjhe1Q4ojz7rsMCyD5ctxYAYQynJVyQzOqbmq13x+M=;
        b=gPdVdcaABYh3P247Ms9sd345wPo3Ugmz2QrToDd6e1W4j0KGcXaTuyn8mpxKA5PTra
         9OA+338lfFphamKxTxLHmTN+CO9kKejUDShkFMst2DlMHkE9CGWupCufytFBId2oj3q8
         BewYZUxtZblFHsd8Aa60iZYvLivDBLDV28Am50BelVhTjMiFxLBLqhvoSREqt6Ptmo0r
         /BMruTegaJ7HpiCUl3MlCbOtReYgTmtAlhlXgvk/wYpuCqVEl5cZlR6KZ1nrkhUIqCM4
         e5d/0JysRph9hmu/5ciDYJSknXowq0VhsgbEFLRDNjnGr68hItKWnZey+I9N9QLsb7/7
         GaAA==
X-Gm-Message-State: AJIora+5XLP+SGqTybLXza9vREf658Mpikc/TQjbJLGz6LTTRJruGFZb
	EfOAWUMDBNfVbyqRpTy4F4RFjQ==
X-Google-Smtp-Source: AGRyM1tBFMDGVyuDtUpZDJKZn/k9znCha3K7cNXmOzqGeRLKOzqZjr0gyk4atocyOVVdijeJqID0XQ==
X-Received: by 2002:a05:600c:1f0a:b0:3a3:15a8:a8e1 with SMTP id bd10-20020a05600c1f0a00b003a315a8a8e1mr8485096wmb.167.1658145729122;
        Mon, 18 Jul 2022 05:02:09 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id o3-20020adfeac3000000b0021d6ac977fasm10639696wrn.69.2022.07.18.05.02.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jul 2022 05:02:08 -0700 (PDT)
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: [PATCH v2] arm64: dts: rockchip: rk3399-nanopi4: Fix voltage
 regulator config
Date: Mon, 18 Jul 2022 14:02:07 +0200
References: <963AF33B-54B7-4172-92D1-E2898E256A7E@kohlschutter.com>
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>
In-Reply-To: <963AF33B-54B7-4172-92D1-E2898E256A7E@kohlschutter.com>
Message-Id: <14EE0603-99C5-49AE-BDDB-C22C5B1924E2@kohlschutter.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_050213_989607_715976D4 
X-CRM114-Status: GOOD (  10.47  )
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

QSBzZXJpZXMgb2YgaXNzdWVzIGV4aXN0IGFyb3VuZCB0aGUgInZjYzN2MF9zZCIgdm9sdGFnZSBy
ZWd1bGF0b3IgdGhhdAptYWRlIGl0IG5lY2Vzc2FyeSB0byBtYXJrIGl0ICJhbHdheXMtb24iLgoK
V2l0aCB0aGUgcGF0Y2ggInJlZ3VsYXRvcjogY29yZTogUmVzb2x2ZSBzdXBwbHkgbmFtZSBlYXJs
aWVyIHRvIHByZXZlbnQKZG91YmxlLWluaXQiLCB0aGlzIG9wdGlvbiBpcyBubyBsb25nZXIgbmVj
ZXNzYXJ5LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIgPGNocmlzdGlh
bkBrb2hsc2NodXR0ZXIuY29tPgotLS0KYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktbmFub3BpNC5kdHNpIHwgMSAtCjEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNp
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpCmluZGV4
IDhjMGZmNmM5NmUwMy4uNTViOTNlYWMyZjk5IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpCkBAIC03MCw3ICs3MCw2IEBAIHZjYzN2MF9z
ZDogdmNjM3YwLXNkIHsKCQlncGlvID0gPCZncGlvMCBSS19QQTEgR1BJT19BQ1RJVkVfSElHSD47
CgkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKCQlwaW5jdHJsLTAgPSA8JnNkbW1jMF9wd3Jf
aD47Ci0JCXJlZ3VsYXRvci1hbHdheXMtb247CgkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8
MzAwMDAwMD47CgkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47CgkJcmVndWxh
dG9yLW5hbWUgPSAidmNjM3YwX3NkIjsKLS0gCjIuMzYuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
