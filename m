Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50033C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 22:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O0Md00GfLrIS4aLQrRvyMWbJr+rS2/fsiaQu9qLiy9s=; b=gUMPYDHYKGhQ1v
	f3g2qwjaHWN99/PkYdI+2dSAiY11TSv9VU8FTTFo1ulomU6PtoALRzOp7FeAvvA/9/ZVP9p6XW8rv
	EoYwF3V4U0qlpGeRMOYsQIA+I3vCxpQX8gmOdBJbWK57YqgoT8cwIlNzU3jiB3mcYb9BPbIolSPHq
	j9495NIvD+rHnbIQO/anNIa+uJlic8DaTvZirrLxv12DN2+q1VuLb1F1KPJu2ltfaW7myrxt7frWt
	ZyUnuLHIeamrtoOhBhiblNNkF/cCbx1lZyNDLNJJKUYBTbAX09jI6KBCpstw0FmwITwJjsQAuzp3p
	Rn3JgRrF6XBwuAp9QVwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBkkZ-008e2l-FA; Wed, 13 Jul 2022 22:22:31 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBkkW-008dza-0O
	for linux-rockchip@lists.infradead.org; Wed, 13 Jul 2022 22:22:30 +0000
Received: by mail-ej1-x632.google.com with SMTP id ss3so164877ejc.11
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Jul 2022 15:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=pQm/h5cc7p63jEzDc2/PjwaXQCdshE0JwFSB1IlnVb8=;
        b=7dtdSUVhMGijDVe8wvX5oRl4wxjP1wsXnlSBk+043qVgC7zfF4z4VewgDw5uqlz8UV
         784zBtoD0K3TMhI03emrGS4USqsLWxlJ842C5E/uyNRCluSBPmYhxUdLlN1k/NtKjANg
         t2l6X5rKQCiLN2T6FVHYozBe0viAGA/QLT2bLR9g/suGAXk4kaChCSStc+SLC6/B/sS0
         /flF5/N0+sq12ohdXz0XaarI4R/j81xS0k+5AGB0HGlzrdhkN/M7Fz87oC676om7JATt
         pRZtZQy1Kf2F1eVpvX/6un5BEPYZarthL92OpYTKxfH9J+HgyBHdGzpaYHA7FqFo2Dov
         LB2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=pQm/h5cc7p63jEzDc2/PjwaXQCdshE0JwFSB1IlnVb8=;
        b=ldAWCdP96JWjjOB+xMJz3fhB54bdpT8aG9dBsh3T17Vj8FnjX6Y/w03tlL4ReX7Naq
         KgXCh9112+NLpKZv0b3LLsTrxDH2m4CKztAYFm9gdx7/km3ETB6V6BiLQCRRg7nZ5ffT
         DaG1YrVkJRL12TgfeuhbueC4ptMoKN5Jo7b46Gh6tkFxNFlmuDhcCG2jO9tAezRxq0Sy
         4ACdiF67xcpI9gPJ8QpkWcuj4DCq8WVWymzOe6C8tN92/kY9aLAKEyalhSiwdWV/7BND
         PJLvCjZBrnamJHYhs72u0qEzsrpNpnIJVCZhtbyh1iRjqHQbVUmmHhg79N4umvVUm2Ob
         2w4A==
X-Gm-Message-State: AJIora/ox7uhYKPn2SrFZgN2bm3u4yFxFrbd6hrEoKqAgQYK3B/nSD80
	ot5Sw3UBzX+1eaVAjU4PAB3Z9Q==
X-Google-Smtp-Source: AGRyM1vmoqVV3QU0wWaPibUGD+7z0kkmOmVlx4xPn1tbz7nXmubFlbaOgslmtIhht5sjZKRpkrziHg==
X-Received: by 2002:a17:907:7e94:b0:72b:53d2:c004 with SMTP id qb20-20020a1709077e9400b0072b53d2c004mr5681911ejc.387.1657750945203;
        Wed, 13 Jul 2022 15:22:25 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id d26-20020a170906345a00b00726e51b6d7dsm5403470ejb.195.2022.07.13.15.22.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Jul 2022 15:22:24 -0700 (PDT)
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: [PATCH] arm64: dts: rockchip: Fix SD card init on rk3399-nanopi4 
Message-Id: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
Date: Thu, 14 Jul 2022 00:22:23 +0200
To: Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_152228_288295_1169EC15 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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

bW1jL1NELWNhcmQgaW5pdGlhbGl6YXRpb24gbWF5IHNvbWV0aW1lcyBmYWlsIG9uIE5hbm9QaSBy
NHMgd2l0aAoibW1jMTogcHJvYmxlbSByZWFkaW5nIFNEIFN0YXR1cyByZWdpc3RlciIgLwoibW1j
MTogZXJyb3IgLTExMCB3aGlsc3QgaW5pdGlhbGlzaW5nIFNEIGNhcmQiCgpNb3Jlb3ZlciwgcmVi
b290aW5nIHdvdWxkIGFsc28gc29tZXRpbWVzIGhhbmcuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS29obHNjaMO8dHRlciA8Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+Ci0tLQogYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpIHwgNiArKystLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpCmluZGV4IDhjMGZm
NmM5NmUwMy4uOTE3ODk4MDFhYjAzIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktbmFub3BpNC5kdHNpCkBAIC02NywxMCArNjcsMTAgQEAgdmNjMXY4X3MzOiB2
Y2MxdjgtczMgewogCXZjYzN2MF9zZDogdmNjM3YwLXNkIHsKIAkJY29tcGF0aWJsZSA9ICJyZWd1
bGF0b3ItZml4ZWQiOwogCQllbmFibGUtYWN0aXZlLWhpZ2g7Ci0JCWdwaW8gPSA8JmdwaW8wIFJL
X1BBMSBHUElPX0FDVElWRV9ISUdIPjsKKwkJZ3BpbyA9IDwmZ3BpbzAgUktfUEQ2IEdQSU9fQUNU
SVZFX0hJR0g+OwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCQlwaW5jdHJsLTAgPSA8
JnNkbW1jMF9wd3JfaD47Ci0JCXJlZ3VsYXRvci1hbHdheXMtb247CisJCXJlZ3VsYXRvci1ib290
LW9uOwogCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMDAwMDAwPjsKIAkJcmVndWxhdG9y
LW1heC1taWNyb3ZvbHQgPSA8MzAwMDAwMD47CiAJCXJlZ3VsYXRvci1uYW1lID0gInZjYzN2MF9z
ZCI7CkBAIC01ODAsNyArNTgwLDcgQEAgd2lmaV9yZWdfb25faDogd2lmaS1yZWdfb24taCB7CiAK
IAlzZG1tYyB7CiAJCXNkbW1jMF9kZXRfbDogc2RtbWMwLWRldC1sIHsKLQkJCXJvY2tjaGlwLHBp
bnMgPSA8MCBSS19QQTcgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+OworCQkJcm9ja2NoaXAs
cGlucyA9IDwwIFJLX1BENiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47CiAJCX07CiAKIAkJ
c2RtbWMwX3B3cl9oOiBzZG1tYzAtcHdyLWggewotLSAKMi4zNi4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
