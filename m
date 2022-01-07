Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D991C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 23:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OInNCXVwo5Q3FKX0sVSYTycoEsFCtNermGhxZJZx4S0=; b=rPLZGAC88m5Qru
	G7C229T/eRSp667PDsBmNovCvePQff6V43GFnB9ot79EfXFion2qI0AutNHUw0IsNIeq7dK8vN0q6
	LG8z57tJegy75Sl4Um+lczQ/30TURJMafx9MgrFr0UuIaMNFaeVVSaKIR2TMAyUlkJM+h36mFj/um
	SfEXMtN37RYem/4C4kKUKBjU/zmLoyQpNxU/VFucmFGe7mo9jF35nQNdPhv3zDPQbSID0zgTwrHXj
	vWR9OEGSbG8JFu4ZBhGk7JE02zoKbINNRVfZqA6ugchthkfspC2mKb9ZsRek6nuKxDbGkwNsjJxVr
	ARVeKwmjynLCdtmQeaEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5z6g-005anO-Up; Fri, 07 Jan 2022 23:57:15 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5z3N-005Yu8-PB
 for linux-rockchip@lists.infradead.org; Fri, 07 Jan 2022 23:53:51 +0000
Received: by mail-pg1-x536.google.com with SMTP id t32so7018816pgm.7
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jan 2022 15:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bLiXD9EPxhuhl4swC8hQ6wdNP1ClmDuHZfS+mTSLPMY=;
 b=BYk2607hHPmSvHDebgSv5EvoUO2Eu+i/iAiOXw2Ta1ucl/Xw1m3CkSEWSoxLGk+krW
 8TtKDL2dq86sfn3/TjOaQjddauSgNqwTr6imn4sJv7/DFenryx+A4mrAadJMQkIItgqo
 NeS17kOoVGXrYbz/o9aQI9i05ftBJHeTTORPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bLiXD9EPxhuhl4swC8hQ6wdNP1ClmDuHZfS+mTSLPMY=;
 b=VlaT7+PJD6cYe2TPDzfPVpmph4Bt651J2RqvGOnf8YGIFv8IJDZXpPycdjxdFwH9oD
 TanbDPq6aMMe3eG4GLjy0L5U6GLk7OEvpUGdHqW1Gjs04zvuWk+Loc9OP9+gc0DVWqaU
 CnebUQDIzOfm4DQQLe//wtOS+cTyFXqV8lv++b8gScuC6AwztB9TWfNI2TlQJYfGnG6x
 L2SINrJ9SuGUAXr+6uZdOjZUremHwvpibfD0rMHer/cB/KKyDdq2wdVnQUXWz5MaXjxE
 P9CZFxwsO2CFu+9PslSfiyWFJvBmVKNADIEMzMW88u++abJ8NRSmqnwy6VZ8Z3BAzPGj
 4edA==
X-Gm-Message-State: AOAM532hStkZGdzPVF1XYe0QL/4bgwpWWfZSXwBM3H5ShVstR11CWJb6
 zt87FNbAVtA99K40TXpFVYzJsQ==
X-Google-Smtp-Source: ABdhPJxec9Iz4K7SGQBxWwH4Aa43xT+erYjwZOOHGJsTnXVxoFwz2OkPS74l+sChFO3DcJQ2WklFNQ==
X-Received: by 2002:a05:6a00:26c5:b0:4bd:4ad6:9c71 with SMTP id
 p5-20020a056a0026c500b004bd4ad69c71mr482801pfw.45.1641599628943; 
 Fri, 07 Jan 2022 15:53:48 -0800 (PST)
Received: from localhost ([2620:15c:202:201:db:1c60:693f:c24e])
 by smtp.gmail.com with UTF8SMTPSA id y29sm56068pfa.54.2022.01.07.15.53.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 07 Jan 2022 15:53:48 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 Derek Basehore <dbasehore@chromium.org>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH 09/10] arm64: dts: rk3399: Add dfi and dmc nodes
Date: Fri,  7 Jan 2022 15:53:19 -0800
Message-Id: <20220107155215.9.Ie97993621975c5463d7928a8646f3737c9f2921d@changeid>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220107235320.965497-1-briannorris@chromium.org>
References: <20220107235320.965497-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_155349_910546_85864A31 
X-CRM114-Status: GOOD (  10.58  )
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
cmlhbiBOb3JyaXMgPGJyaWFubm9ycmlzQGNocm9taXVtLm9yZz4KLS0tClRoaXMgaXMgYmFzZWQg
b24gYSB2NSBwb3N0aW5nIGZyb20gdmFyaW91cyBhdXRob3JzOgpodHRwczovL2xvcmUua2VybmVs
Lm9yZy9sa21sLzIwMjEwMzA4MjMzODU4LjI0NzQxLTMtZGFuaWVsLmxlemNhbm9AbGluYXJvLm9y
Zy8KTXVjaCBvZiB0aGF0IHNlcmllcyB3YXMgYWxyZWFkeSBtZXJnZWQsIHNvIEkgc3RhcnQgb3Zl
ciB3aXRoIHRoZQpudW1iZXJpbmcuCgpDaGFuZ2Ugc2luY2UgRGFuaWVsJ3MgcG9zdGluZzogcmVv
cmRlcmVkIGJ5IHVuaXQgYWRkcmVzcywgcGVyIGV4aXN0aW5nCnN0eWxlCgogYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSB8IDE5ICsrKysrKysrKysrKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LmR0c2kKaW5kZXggZDNjZGY2ZjQyYTMwLi44NmUyZDg3ZTAwOGEgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQpAQCAtMTI5NSw2ICsxMjk1LDI1IEBA
IHB3bTM6IHB3bUBmZjQyMDAzMCB7CiAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJfTsKIAorCWRm
aTogZGZpQGZmNjMwMDAwIHsKKwkJcmVnID0gPDB4MDAgMHhmZjYzMDAwMCAweDAwIDB4NDAwMD47
CisJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzk5LWRmaSI7CisJCXJvY2tjaGlwLHBtdSA9
IDwmcG11Z3JmPjsKKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDEzMSBJUlFfVFlQRV9MRVZFTF9I
SUdIIDA+OworCQljbG9ja3MgPSA8JmNydSBQQ0xLX0REUl9NT04+OworCQljbG9jay1uYW1lcyA9
ICJwY2xrX2Rkcl9tb24iOworCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCX07CisKKwlkbWM6IGRt
YyB7CisJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzk5LWRtYyI7CisJCXJvY2tjaGlwLHBt
dSA9IDwmcG11Z3JmPjsKKwkJZGV2ZnJlcS1ldmVudHMgPSA8JmRmaT47CisJCWNsb2NrcyA9IDwm
Y3J1IFNDTEtfRERSQz47CisJCWNsb2NrLW5hbWVzID0gImRtY19jbGsiOworCQlzdGF0dXMgPSAi
ZGlzYWJsZWQiOworCX07CisKIAl2cHU6IHZpZGVvLWNvZGVjQGZmNjUwMDAwIHsKIAkJY29tcGF0
aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktdnB1IjsKIAkJcmVnID0gPDB4MCAweGZmNjUwMDAwIDB4
MCAweDgwMD47Ci0tIAoyLjM0LjEuNTc1Lmc1NWIwNThhOGJiLWdvb2cKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
