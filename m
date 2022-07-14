Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 334B8C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jul 2022 16:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:To:References:
	Date:Subject:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YM3XGc7sWRklMKlOZXbxLV2TWRpDj0bbwwym6raH2RE=; b=SJprfTdKj95vjo
	H56T9zpjZcnt2AVfD92iEiUoBju+gBzCqUj5k2xqYNLj6YQIVeITJ4oMBfdqZyWaFFXdHmUrFv0QD
	hjMHqyKaldYUpjtE8dmUdepBShpMeqzAbaw1Rml59PZAq9au10V1C0nz/CsQd2FsuV4jFgy4XwhWH
	/B3LyxP8iINPjKr0P5RvKyz5OiocDtu4EBGq1+cv+nU0zTj0TFZN+cLvsoz6zy0BSJ9Ea+aoKBy0A
	qPS+0rUaN0v9BjlnbFhExxUsJBdh3s+QxczkhqFrtIJLCLWPdce4XN4Z99R4WKDS8DMHp2wxH7YWH
	gnVkWJEpGKt8mJsoCynA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC1fo-00GFXA-Lw; Thu, 14 Jul 2022 16:26:44 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC1fl-00GFTj-JM
	for linux-rockchip@lists.infradead.org; Thu, 14 Jul 2022 16:26:42 +0000
Received: by mail-ej1-x62b.google.com with SMTP id l23so4365237ejr.5
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Jul 2022 09:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=7EsrX8RZzD1TPXFClMq2wq7FeJKp9EF1t1w9cW3xhJg=;
        b=ew7OS+ExEFwv26meWu3bPXo2KC9aPJHx4sgXnwhGd9BkvwvymYlLHwdjfl6ROM8hdx
         inR3ATH5CRCDYqasegeX8QsnvCBB16A5ecUh6+oQDSWhHKl2qv+76z6Ja44eO/9n38WY
         m3/Jn+T8FnQtoYklwIrP9yu9FpgtPAhcNoxZn/S1TPsxCxM1QFWs6Z76Issv9nO1sFgP
         +LOlISQpmEt79xRo0rQEQGVtdbVWaqLOaL09+mB7TNk6jcV4gw1/TYinnKhyD6evtcRD
         CtduV1B61RzuZHhmTPmTB7m3V4nKc0gISg7MgYdxEYL/ZNMstptB15W6BZLYQqinjvIk
         43GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=7EsrX8RZzD1TPXFClMq2wq7FeJKp9EF1t1w9cW3xhJg=;
        b=WYfejPuXfWD/Ij+su/0ZKZuoqVX+4mBtiqh1jI8MEcIQWJdFARG2vcPIRh/lpLF4bv
         rRIKEgvz47wSyZdJyKPczGYOBNtapDrFkR0SOiLOsJp0R9ufmgkgybbPzYeAA8YBFYIc
         ERgPV7FJBcqcrYg2VIQ4y4ofbHtMBeqZ7ZgzczOqZ+GCH/IEZ6WPWGDgdLh+KLkv1qb5
         I7Lfx5Cl/ZZ+F2Q8U4hJEoK+5N967f2kEcW9yEghQcHpluZG3nOYG/sdOHhk3Em7NSUi
         KaNNTvW/Gj9TzRobHbliClFLS9ohj6MLIpDDkm4c+lI5AqjlXsAiTe3fFsqJ/wKbXF5e
         Y88g==
X-Gm-Message-State: AJIora/E7kLxhvR9ToNxoxG4AMuqJWvaRUZvr6VurqDAmOeVh4Qb/e9z
	4I6XTJg5SbvWj4J5JZ+HeaBjcQ==
X-Google-Smtp-Source: AGRyM1tZTRUBFPqEmbiQrELRo8KQJc0vOQEwbM0TUYq7mZvrAv6anJA7BNMzkfzR3xqVc5OXuvS7UQ==
X-Received: by 2002:a17:907:1623:b0:72b:64e3:878a with SMTP id hb35-20020a170907162300b0072b64e3878amr9631814ejc.185.1657815999468;
        Thu, 14 Jul 2022 09:26:39 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id lb11-20020a170907784b00b007246492658asm879265ejc.117.2022.07.14.09.26.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jul 2022 09:26:38 -0700 (PDT)
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: [PATCH v2] arm64: dts: rockchip: Fix SD card init on rk3399-nanopi4
Date: Thu, 14 Jul 2022 18:26:38 +0200
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
To: Robin Murphy <robin.murphy@arm.com>,
 Markus Reichl <m.reichl@fivetechno.de>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Linux MMC List <linux-mmc@vger.kernel.org>
In-Reply-To: <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
Message-Id: <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_092641_656058_D26A1038 
X-CRM114-Status: GOOD (  12.96  )
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

bW1jL1NELWNhcmQgaW5pdGlhbGl6YXRpb24gbWF5IGZhaWwgb24gTmFub1BpIHI0cyB3aXRoCiJt
bWMxOiBwcm9ibGVtIHJlYWRpbmcgU0QgU3RhdHVzIHJlZ2lzdGVyIiAvCiJtbWMxOiBlcnJvciAt
MTEwIHdoaWxzdCBpbml0aWFsaXNpbmcgU0QgY2FyZCIKCk1vcmVvdmVyLCByZWJvb3Rpbmcgd291
bGQgYWxzbyBzb21ldGltZXMgaGFuZy4KClRoaXMgaXMgY2F1c2VkIGJ5IHRoZSBncGlvIGVudHJ5
IGZvciB0aGUgdmNjM3YwLXNkIHJlZ3VsYXRvcjsKZXZlbiB0aG91Z2ggaXQgYXBwZWFycyB0byBi
ZSB0aGUgY29ycmVjdCBHUElPIHBpbiwgdGhlIHByZXNlbmNlCm9mIHRoZSBiaW5kaW5nIGNhdXNl
cyB0aGVzZSBlcnJvcnMuCgpGaXggdGhlIHJlZ3VsYXRvciB0byBkcm9wIHRoZSBncGlvIGJpbmRp
bmcgYW5kIGFkZCBhIGNvbW1lbnQKdG8gcHJldmVudCBhY2NpZGVudGFsIHJlaW50cm9kdWN0aW9u
IG9mIHRoYXQgZW50cnkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS29obHNjaMO8dHRlciA8
Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktbmFub3BpNC5kdHNpIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktbmFub3BpNC5kdHNpCmluZGV4IDhjMGZmNmM5NmUwMy4uZDVmOGE2MmUwMWJlIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0
c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNp
CkBAIC02Nyw3ICs2Nyw3IEBAIHZjYzF2OF9zMzogdmNjMXY4LXMzIHsKIAl2Y2MzdjBfc2Q6IHZj
YzN2MC1zZCB7CiAJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKIAkJZW5hYmxlLWFj
dGl2ZS1oaWdoOwotCQlncGlvID0gPCZncGlvMCBSS19QQTEgR1BJT19BQ1RJVkVfSElHSD47CisJ
CS8vIGdwaW8gPSA8JmdwaW8wIFJLX1BBMSBHUElPX0FDVElWRV9ISUdIPjsgLy8gYnJlYWtzIFNE
SEMgY2FyZCBzdXBwb3J0CiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJCXBpbmN0cmwt
MCA9IDwmc2RtbWMwX3B3cl9oPjsKIAkJcmVndWxhdG9yLWFsd2F5cy1vbjsKLS0gCjIuMzYuMQoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
