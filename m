Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90E63C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jul 2022 19:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Cc:Date:Message-Id:Subject:
	Mime-Version:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/K0STObiIfCdnqYA3pVIltFyBskKw0ctpGzldPPkkMQ=; b=HC+
	XLiaHmu2AuDjzNR9TfbPpnZeOTrb0DecrmLkr8hUY2Uvss4kYWOeFdegLOKfAEVyg9Mtbm9fU+Dw/
	maBpVdodEZNmfMsU+WpLAEMAka/tbc0f8FWiPJyAf8HIBh0bYu05y50jFkzidpk9g4ah9W0fmHRz0
	0AQo87qv1zHxmsUbUIwAwjA3ZaCvjbVqvlJ3BPNtMdI8Tzd/ja50vCzjNfuimQ01nFU0H6nnD/6fq
	sQr5aLJ3hifJp1v/GdFBTkxEaHmYurANDwe1q5PPQDe7ItO8kXNumFjhaixplTwL8au5TK076XJ5I
	2ipEPQ/b2o9CEiYDy1Wgz8qyhDRgPug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oD9wz-008FEd-Cv; Sun, 17 Jul 2022 19:29:09 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oD9ww-008FDC-5D
	for linux-rockchip@lists.infradead.org; Sun, 17 Jul 2022 19:29:07 +0000
Received: by mail-ed1-x535.google.com with SMTP id t3so12812564edd.0
        for <linux-rockchip@lists.infradead.org>; Sun, 17 Jul 2022 12:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :cc:to;
        bh=xXctcMyuUmlawA3nFYo56xgNoTbeCn1PRUaqrpg5K6E=;
        b=ZpSFJBjLczjzFvqWi4xf6rD2u41QbN6ixUWvq4q5pvigNainMwifZSgf75VyxrlPAf
         sQgXbaMvxeNjQaJWdiMJetC17XtmkeuTf2mKXLFKa54rSGwY0+8uff0tn4nHEilysL6f
         VyjRfO2Sx7diYK5Ps4+ch4/83peRJzMKXy5zHVWFjT0TdnRigeEPGU1KZHm+NxG32ucC
         zxeCoo0+GSlrw+DvexE3T3InHv6l7W9b/5NnAS7Xa4nfY1YsLILXclbpHRVRm29kA72w
         OOdFi7tuHFTa9us2m+oJV93aABLzwTRNXNkjn2QpYiJ3uQhTDysv0L1nS04zf+3ZFJC+
         aPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:cc:to;
        bh=xXctcMyuUmlawA3nFYo56xgNoTbeCn1PRUaqrpg5K6E=;
        b=o3CDlJEK1PuUbqkK+DGzuyqWpZzQP/9RoAZtTD6RyODqBN3+nVcjnFoedsgxYkBSi7
         RyNIi4+6s1n9c7VPF6/cwIh5ed4L+3v9E6fJf+wcGn3bE9A8wLGVMhVBHcT3yRN9rgw/
         ji3e89zQrRxptJUtFUB3XVcapMUUo3jp3+NkLiVuqEYMyPrBAP3T6XkQ8zwWSZjyq5cN
         2JxsOAR2rq4imqyZyDQ8x6dqxxjj0695nLTpusffEh+A9xlYUkYqlx3Tj9usPvDoI7Xg
         e6cpcmG+CO7nuN8fwEId1/UkrNYPNzBN0fauLU9jSQd9Lmo42aojoWGyqXc2wtiuwAws
         RUtw==
X-Gm-Message-State: AJIora85RB8C0OLSxyyxq6rTV+onyk48vdziFYJfvk34ai5xZmUtf29j
	QDGufovVG5HiltjSgd7K80S+LA==
X-Google-Smtp-Source: AGRyM1vFPngnTHOdEyGGe9wlwswHpg+d4JNRLJTxJLUUakuz8oH/gNyvv0Ar9Ezb/ipbBjAMqefHVA==
X-Received: by 2002:aa7:cac7:0:b0:43a:c5ba:24a6 with SMTP id l7-20020aa7cac7000000b0043ac5ba24a6mr32372348edt.84.1658086144315;
        Sun, 17 Jul 2022 12:29:04 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id lc10-20020a170906f90a00b0070efa110afcsm4676844ejb.83.2022.07.17.12.29.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Jul 2022 12:29:03 -0700 (PDT)
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: [PATCH] arm64: dts: rockchip: rk3399-nanopi4: Fix voltage regulator
 config
Message-Id: <963AF33B-54B7-4172-92D1-E2898E256A7E@kohlschutter.com>
Date: Sun, 17 Jul 2022 21:29:01 +0200
Cc: Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220717_122906_285071_D4507678 
X-CRM114-Status: GOOD (  10.02  )
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
ZXNzYXJ5LgoKUmVtb3ZpbmcgdGhpcyBvcHRpb24gbm90IG9ubHkgcHJldmVudHMgYSBoYW5nIHdo
ZW4gcmVib290aW5nIE5hbm9waSBSNFMsCml0IGFsc28gZW5zdXJlcyB0aGF0IGJvb3Rsb2FkZXJz
IGxpa2UgdS1ib290IGNhbiBib290IGZyb20gYW4gU0QgY2FyZApyaWdodCBhd2F5LCB3aXRob3V0
IG91dC1vZi10cmVlIHBhdGNoZXMgdGhhdCByZS1pbml0aWFsaXplIHZvbHRhZ2UgbGV2ZWxzLgoK
U2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIgPGNocmlzdGlhbkBrb2hsc2No
dXR0ZXIuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9w
aTQuZHRzaSB8IDEgLQogMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKaW5kZXggOGMwZmY2
Yzk2ZTAzLi41NWI5M2VhYzJmOTkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKQEAgLTcwLDcgKzcwLDYgQEAgdmNjM3YwX3NkOiB2Y2Mz
djAtc2QgewogCQlncGlvID0gPCZncGlvMCBSS19QQTEgR1BJT19BQ1RJVkVfSElHSD47CiAJCXBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJCXBpbmN0cmwtMCA9IDwmc2RtbWMwX3B3cl9oPjsK
LQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKIAkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzAw
MDAwMD47CiAJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMwMDAwMDA+OwogCQlyZWd1bGF0
b3ItbmFtZSA9ICJ2Y2MzdjBfc2QiOwotLSAKMi4zNi4xCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
