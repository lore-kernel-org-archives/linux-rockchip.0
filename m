Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48137C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 00:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQwjdIipl9MIOy6Ljpoe/jM2LG07/VDBcLa9rAy6Yc8=; b=LQduA8NiLEorpG
	g2LC3gROdDul5NkcVs4Oywtd2GTd6iEX1HyMggDdISYI5NHyqSzGsiEzXOGAt9CjODZj2Yuh2Ih/S
	4JUCtp0EfVEN7jwPHiRYXYNTgaNGyfM9OlEoMglTim2ed53aAAvcLKSfN/s0ALrPszvJoBz6ReYea
	NLO021+cnK8X4ooLznV7vqik8iPnSxC+SA73skYzSotupYmRYMxRmpJbDb4igteE9zPgVEHL0tlqc
	O54JoOqem1ls/FGXCFwKIbfpB+N2YZCAm1hPZsqXwBR3gHHMrwk4nqJA+o/YQKRqwDGbQ/q7RuG1U
	1aE3gkghg7i0qeLEQZRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRNVJ-0024yi-Ni; Tue, 08 Mar 2022 00:15:05 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRNQs-0022QG-7k
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 00:10:32 +0000
Received: by mail-pj1-x1029.google.com with SMTP id
 z12-20020a17090ad78c00b001bf022b69d6so776044pju.2
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 16:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=geOsN3B5D2pajGUjtYVHTo7ODDoeZA/dXvJuvUQtYe4=;
 b=hjPl2DvyYx/GEZ+qumgSSPAABz/WMel6Ui3Jxr/YPZ4TuUpIPHRifzbMcMPXc8Y11M
 hb5es3SQHBRHCZSITcdyqS5YiCk+iPC4Q5JZQyvSmXjfBjDeLRDnLOBJYnne14oFVpOO
 psz9mQQbD6xj5kjFQKke4sLAmYf4DFgKN3RcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=geOsN3B5D2pajGUjtYVHTo7ODDoeZA/dXvJuvUQtYe4=;
 b=Kl+WhB+TFfSwaMd6vBk07Epqr3i5mirue+9AzwMjzoRsKce3PVZqS9NUBNc4eri0oz
 mwFgyeQLamKyqcS4kOR5ysLg/tVVOE884LxORdAn/BYMUNs9lyKiVEsQCT94QlHJQnzt
 5jwWFCrDC1+/+hXjqrH5miujKsbDbZ1rM2gMLoOp1NLn9+gJMjuJRsLbAdCDJ8ty4YP1
 xsKh71UEF2CNmuaCA1jqhbEIb8GM4RoXGow6pJOpEoXWtfXxAOPy3D2N5CWua8MFo7Y8
 DYRIdiyM6ujgMdHb35pvxjlMlY40hChzbAOuOs8UZdK7eK+QYUUvs7Mj6i125HDp6Gy6
 3RoQ==
X-Gm-Message-State: AOAM530QPQ5i1mxAwVwDYnMErSDtmpyPbYcEKCmEWuIBTZ3aYsj7MoQd
 NWcAiW/XdFYi7QLabK4cCd4PaA==
X-Google-Smtp-Source: ABdhPJzo+XNtxT80abl8dqw6Hu7fiwRBj0FMUaBeRKVcz5jjcBEwspiAWqkbPrki6wcmwdjDiqNmTQ==
X-Received: by 2002:a17:903:1c8:b0:150:12cd:a02d with SMTP id
 e8-20020a17090301c800b0015012cda02dmr14672422plh.174.1646698229373; 
 Mon, 07 Mar 2022 16:10:29 -0800 (PST)
Received: from localhost ([2620:15c:202:201:e551:44dc:2842:57f1])
 by smtp.gmail.com with UTF8SMTPSA id
 z14-20020aa7888e000000b004e5c2c0b9dcsm17778315pfe.30.2022.03.07.16.10.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Mar 2022 16:10:28 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Lin Huang <hl@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Derek Basehore <dbasehore@chromium.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v3 11/15] arm64: dts: rk3399: Add dfi and dmc nodes
Date: Mon,  7 Mar 2022 16:09:41 -0800
Message-Id: <20220307160918.v3.11.Ie97993621975c5463d7928a8646f3737c9f2921d@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308000945.706701-1-briannorris@chromium.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_161030_332457_587611B6 
X-CRM114-Status: GOOD (  11.35  )
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

RnJvbTogTGluIEh1YW5nIDxobEByb2NrLWNoaXBzLmNvbT4KClRoZXNlIGFyZSByZXF1aXJlZCB0
byBzdXBwb3J0IEREUiBEVkZTIG9uIFJLMzM5OSBwbGF0Zm9ybXMuCgpTaWduZWQtb2ZmLWJ5OiBM
aW4gSHVhbmcgPGhsQHJvY2stY2hpcHMuY29tPgpTaWduZWQtb2ZmLWJ5OiBFbnJpYyBCYWxsZXRi
byBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBH
YcOrbCBQT1JUQVkgPGdhZWwucG9ydGF5QGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYtYnk6IERh
bmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPgpTaWduZWQtb2ZmLWJ5OiBC
cmlhbiBOb3JyaXMgPGJyaWFubm9ycmlzQGNocm9taXVtLm9yZz4KQ2hhbmdlIHNpbmNlIERhbmll
bCdzIHBvc3Rpbmc6IHJlb3JkZXJlZCBieSB1bml0IGFkZHJlc3MsIHBlciBleGlzdGluZwpzdHls
ZQoKLS0tCgoobm8gY2hhbmdlcyBzaW5jZSB2MikKCkNoYW5nZXMgaW4gdjI6CiAtIHJlbmFtZSBk
bWMgdG8gbWVtb3J5LWNvbnRyb2xsZXIKCkNoYW5nZXMgaW4gdjE6ClRoaXMgaXMgYmFzZWQgb24g
YSB2NSBwb3N0aW5nIGZyb20gdmFyaW91cyBhdXRob3JzOgpodHRwczovL2xvcmUua2VybmVsLm9y
Zy9sa21sLzIwMjEwMzA4MjMzODU4LjI0NzQxLTMtZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZy8K
TXVjaCBvZiB0aGF0IHNlcmllcyB3YXMgYWxyZWFkeSBtZXJnZWQsIHNvIEkgc3RhcnQgb3ZlciB3
aXRoIHRoZQpudW1iZXJpbmcuCgogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTku
ZHRzaSB8IDE5ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTku
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKaW5kZXggMDgw
NDU3YTY4ZTNjLi45MDY1YmI1NWVlN2QgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzOTkuZHRzaQpAQCAtMTI5NSw2ICsxMjk1LDI1IEBAIHB3bTM6IHB3bUBmZjQyMDAzMCB7CiAJ
CXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJfTsKIAorCWRmaTogZGZpQGZmNjMwMDAwIHsKKwkJcmVn
ID0gPDB4MDAgMHhmZjYzMDAwMCAweDAwIDB4NDAwMD47CisJCWNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszMzk5LWRmaSI7CisJCXJvY2tjaGlwLHBtdSA9IDwmcG11Z3JmPjsKKwkJaW50ZXJydXB0
cyA9IDxHSUNfU1BJIDEzMSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+OworCQljbG9ja3MgPSA8JmNy
dSBQQ0xLX0REUl9NT04+OworCQljbG9jay1uYW1lcyA9ICJwY2xrX2Rkcl9tb24iOworCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOworCX07CisKKwlkbWM6IG1lbW9yeS1jb250cm9sbGVyIHsKKwkJY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktZG1jIjsKKwkJcm9ja2NoaXAscG11ID0gPCZwbXVn
cmY+OworCQlkZXZmcmVxLWV2ZW50cyA9IDwmZGZpPjsKKwkJY2xvY2tzID0gPCZjcnUgU0NMS19E
RFJDPjsKKwkJY2xvY2stbmFtZXMgPSAiZG1jX2NsayI7CisJCXN0YXR1cyA9ICJkaXNhYmxlZCI7
CisJfTsKKwogCXZwdTogdmlkZW8tY29kZWNAZmY2NTAwMDAgewogCQljb21wYXRpYmxlID0gInJv
Y2tjaGlwLHJrMzM5OS12cHUiOwogCQlyZWcgPSA8MHgwIDB4ZmY2NTAwMDAgMHgwIDB4ODAwPjsK
LS0gCjIuMzUuMS42MTYuZzBiZGNiYjQ0NjQtZ29vZwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
