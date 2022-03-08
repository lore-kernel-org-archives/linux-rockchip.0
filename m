Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B206C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQwjdIipl9MIOy6Ljpoe/jM2LG07/VDBcLa9rAy6Yc8=; b=35MDyLmHOKHyv3
	OJDSJot8fR4Fq6L+4DkPdbLR4MTDX1Wu8DxB8HYt4mYfURnyLeqBfNOIJct/U16RgAMMU0oGwj80n
	rMnwK6eiF58X+Wf2YOq6D9xbJ+ICwEWuKSJzqGc0BoGefltdJrHTxUbf1BjWTyLO04uWe7H9/oMOC
	DDVd/3sOmxls4yilv5sKc9B9+kHAuFNk8pMQGB0nVnaqYDMGMH3A2tR6bU1et0zznJWb+P3xtFUN/
	M420cLxEzKyiHeRyrdTqOZXzDndzOHt9kjjelx66hG0RY39Mdl40CTsBQ5t7fx1hHOjiDkaJcpp69
	Fud4qXO/PQ4r1LeQchEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfIf-005viq-Pc; Tue, 08 Mar 2022 19:15:13 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfDE-005sOM-UP
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:38 +0000
Received: by mail-pj1-x102f.google.com with SMTP id
 p3-20020a17090a680300b001bbfb9d760eso3050660pjj.2
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=geOsN3B5D2pajGUjtYVHTo7ODDoeZA/dXvJuvUQtYe4=;
 b=bA+VT4I9ZxfwZ8yFKGSlTUtH+qIbs57S7WdlvHPPy9xMoPV+tbezSe48mUgDGXO0JP
 Hp/Cm5ngjF3p2FemiNiZ6A8b8CMOH1tPZ8pHWrIbUOyVU8zR9eJFxO8vTsMz38V1S9pg
 6BensZKMWCk8fclI4SFiey5MXSZMXswKXead8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=geOsN3B5D2pajGUjtYVHTo7ODDoeZA/dXvJuvUQtYe4=;
 b=Sd3UnHO7+bh61Cvyv7OI+VLG6gJBDMWP9Vzf23T8NyJHhB3Uift7DIUPAY02yarOzA
 OZUR7QwKLaF5w0jpc9ZbbzSvg3+bu5EYYRWYo8WKBgTLbHHdJNAIXFR1FU5xxnnroOFH
 4XsP3+cVLa+jK6bvbMrI7xPV8NU33zsATJo0omtbCAaCIbiEsF1P1f37eaUpqU4O7lkB
 pmh9ICIPCS8D17G9cmLaLSlrQllYO3/7Nz81AS0z3Mgi0NqOVivxOf+sUpC3UEwDAQ2H
 YF0/tCcMMGRvtIIHpk6mGshbvagGihBEfCbN4/DZI57NQGOvRUBLdea1K3yPrc6lAKTi
 pUqA==
X-Gm-Message-State: AOAM530hJJplyZU5+zyQIazgxjQUdubWogCG51D4wmjsEw4FroWbWh7F
 WNGZWOI1aMvZ9AyHSyLbRLKd+Q==
X-Google-Smtp-Source: ABdhPJz8sipP4o8OnOtzeYNcbMuAl0E8BVURef/sTsMInT3tF3+6fRadwtzliY/mkiCrGLMnIopp0A==
X-Received: by 2002:a17:90a:db96:b0:1bf:a7c9:9571 with SMTP id
 h22-20020a17090adb9600b001bfa7c99571mr326788pjv.173.1646766576051; 
 Tue, 08 Mar 2022 11:09:36 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 j11-20020a056a00234b00b004f7463022absm215258pfj.208.2022.03.08.11.09.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:35 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 11/15] arm64: dts: rk3399: Add dfi and dmc nodes
Date: Tue,  8 Mar 2022 11:08:57 -0800
Message-Id: <20220308110825.v4.11.Ie97993621975c5463d7928a8646f3737c9f2921d@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110937_024172_DAA7CB5D 
X-CRM114-Status: GOOD (  11.24  )
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
