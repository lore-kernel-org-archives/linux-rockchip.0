Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DE25C7619A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 07:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HoWZvsxAHHfh853fOl1QFEPVLIs60tlPHVLv8ewiVWk=; b=FvfDzHD3V8KeNO
	U52eiYqA8toPAz4cwt+0nVImoz8f2u1RWR1R3vdS9V8uU3P+BLsnhAPJJKJkGTLKiDwEPm6kPdUlN
	9hkOAt2Yh++9n9kS+JtrOVnF3HK2VZ8eGX5QPB6HXqXnq6dijhYncsH7gHQ6DP3dIHV7R1hp33+kj
	/kho2EolOY9mE5cTMRE6lamh4siZTQ8ADSWwfD0RrLtXzV4aMW257gZBaA7F77dQDXJbilXhp3j+S
	Re4lcm2KpA4OWwfySIILX56S1Fso/x6M/UeBo+Rr6MFkFefREh+sR4rP2WSa1Vtz4g3WucrgR6nDw
	ieCNEu8UCRERDOVkAX5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghUg-00A5yz-2l;
	Mon, 27 Mar 2023 07:42:18 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghUd-00A5xX-1y
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 07:42:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679902931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9gEvGzO/t3GSZzHhYPQWJ5afaAW4baouQV1YxDz4Oxo=;
	b=drdIsxQAgkqsxMO8fxCJLEhCocHP8AjsXecTE4UHGMyk4g6wRoQ/9EcbnFwSZod9NtWDlv
	AEnxMAt6sY2F/gQY8tuPYfiYfjFBPAUhooIGHAZxJzVBPP7mZREwWgICDHk9kSJXTiu3Zv
	p2qbxmMmmgRI1VgLoUp0NcaWLlE/QX0=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-423-2jTCsQwXM6uv3rB0bhRRjw-1; Mon, 27 Mar 2023 03:42:09 -0400
X-MC-Unique: 2jTCsQwXM6uv3rB0bhRRjw-1
Received: by mail-wm1-f71.google.com with SMTP id bg33-20020a05600c3ca100b003ef6d684105so1010520wmb.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 00:42:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679902928;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9gEvGzO/t3GSZzHhYPQWJ5afaAW4baouQV1YxDz4Oxo=;
        b=BLDjJpgd0ZWaVcSrp379dZGMSaK/glkKAqjWpNfjAJ5cxwewS/nl5T3qgLNCUgo6ex
         azRVlaLpnOKFrFi5msy6G3hdF6Obor8jcGbN2reVU25CfFmRxiYq/5wsGsK9OF/nHj3K
         6xU6xVJTQjDchT2hciBL0iVdIAJERoJJsCctIZ007HsAUP7FOgJ1pkNMxNy2/i8proh2
         I8kA0Q3P9Y9xfg935eyrsmgOBDbuDSimGQ6YZwXa+MXZEEcsuqHfRYlr5UIazMfi/T3O
         geQDt/ZOIyawey+bt8m69m1gYJlyHXCgceLpmFzCgmugME2HEGNkDfl7ws3DPlWaBImC
         gXpA==
X-Gm-Message-State: AO0yUKVU9Y8Vj/pIkOzvS8H5HE16APdJ7X/rU7ZZ3XDuYEZDILUy7bnI
	PRel5pFxE05PWu/lxWuFLlatfwzURXV7/Qngf8K/xbwcX/mFqoe0PzE0z+wzHoLvJCxVyliLu4G
	BNZlnRBsu82RB1ZgybwGcgP+3O2vWfNkV
X-Received: by 2002:a05:600c:b42:b0:3ee:6cdf:c357 with SMTP id k2-20020a05600c0b4200b003ee6cdfc357mr7727985wmr.20.1679902928474;
        Mon, 27 Mar 2023 00:42:08 -0700 (PDT)
X-Google-Smtp-Source: AK7set9/tMR3AjsxF/BVjZ53UH5flNgkScCgYAEe7XzL7RWa18N1EYtYJbvZivLJq7GDux7Kr9leMA==
X-Received: by 2002:a05:600c:b42:b0:3ee:6cdf:c357 with SMTP id k2-20020a05600c0b4200b003ee6cdfc357mr7727965wmr.20.1679902928101;
        Mon, 27 Mar 2023 00:42:08 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id z8-20020a05600c0a0800b003edc4788fa0sm7902247wmp.2.2023.03.27.00.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 00:42:07 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Ondrej Jirman <megi@xff.cz>,
	Martijn Braam <martijn@brixit.nl>,
	=?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal display support
Date: Mon, 27 Mar 2023 09:41:35 +0200
Message-Id: <20230327074136.1459212-1-javierm@redhat.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_004215_743992_DD88C669 
X-CRM114-Status: GOOD (  12.38  )
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

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpUaGUgcGhvbmUncyBkaXNwbGF5IGlz
IHVzaW5nIGEgSGFubnN0YXIgTENEIHBhbmVsLiBTdXBwb3J0IGl0IGJ5IGFkZGluZyBhCnBhbmVs
IERUIG5vZGUgYW5kIGFsbCBuZWVkZWQgbm9kZXMgKGJhY2tsaWdodCwgTUlQSSBEU0ksIHJlZ3Vs
YXRvcnMsIGV0YykuCgpTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4K
Q28tZGV2ZWxvcGVkLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5ubD4KQ28tZGV2
ZWxvcGVkLWJ5OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1PgpTaWduZWQtb2Zm
LWJ5OiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMgPGphdmllcm1AcmVkaGF0LmNvbT4KLS0tCgpD
aGFuZ2VzIGluIHYyOgotIERyb3AgdG91Y2hzY3JlZW4gbm9kZSBiZWNhdXNlIHVzZWQgdGhlIHdy
b25nIGNvbXBhdGlibGUgKE9uZHJlaiBKaXJtYW4pLgotIEZpeCBhc3NpZ25lZC1jbG9jay1wYXJl
bnRzIGluIHZvcGIgbm9kZSAoT25kcmVqIEppcm1hbikuCi0gQWRkIHZvcGwgYW5kIHZvcGwgbm9k
ZXMuCgogLi4uL2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMgICAgIHwgMTEx
ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDExMSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25l
LXByby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUt
cHJvLmR0cwppbmRleCBhMDc5NWEyYjFjYjEuLjUxMTZmMTU2ZDU0OCAxMDA2NDQKLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKQEAg
LTI5LDYgKzI5LDEyIEBAIGNob3NlbiB7CiAJCXN0ZG91dC1wYXRoID0gInNlcmlhbDI6MTE1MjAw
bjgiOwogCX07CiAKKwliYWNrbGlnaHQ6IGJhY2tsaWdodCB7CisJCWNvbXBhdGlibGUgPSAicHdt
LWJhY2tsaWdodCI7CisJCXB3bXMgPSA8JnB3bTAgMCAxMDAwMDAwIDA+OworCQlwd20tZGVsYXkt
dXMgPSA8MTAwMDA+OworCX07CisKIAlncGlvLWtleXMgewogCQljb21wYXRpYmxlID0gImdwaW8t
a2V5cyI7CiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CkBAIC0xMDIsNiArMTA4LDMyIEBA
IHdpZmlfcHdyc2VxOiBzZGlvLXdpZmktcHdyc2VxIHsKIAkJLyogV0xfUkVHX09OIG9uIG1vZHVs
ZSAqLwogCQlyZXNldC1ncGlvcyA9IDwmZ3BpbzAgUktfUEIyIEdQSU9fQUNUSVZFX0xPVz47CiAJ
fTsKKworCS8qIE1JUEkgRFNJIHBhbmVsIDEuOHYgc3VwcGx5ICovCisJdmNjMXY4X2xjZDogdmNj
MXY4LWxjZCB7CisJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKKwkJZW5hYmxlLWFj
dGl2ZS1oaWdoOworCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MxdjhfbGNkIjsKKwkJcmVndWxhdG9y
LW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47CisJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0g
PDE4MDAwMDA+OworCQl2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKKwkJZ3BpbyA9IDwmZ3Bp
bzMgUktfUEE1IEdQSU9fQUNUSVZFX0hJR0g+OworCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
OworCQlwaW5jdHJsLTAgPSA8JmRpc3BsYXlfcHdyZW4xPjsKKwl9OworCisJLyogTUlQSSBEU0kg
cGFuZWwgMi44diBzdXBwbHkgKi8KKwl2Y2MydjhfbGNkOiB2Y2MydjgtbGNkIHsKKwkJY29tcGF0
aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQllbmFibGUtYWN0aXZlLWhpZ2g7CisJCXJlZ3Vs
YXRvci1uYW1lID0gInZjYzJ2OF9sY2QiOworCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwy
ODAwMDAwPjsKKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MjgwMDAwMD47CisJCXZpbi1z
dXBwbHkgPSA8JnZjYzN2M19zeXM+OworCQlncGlvID0gPCZncGlvMyBSS19QQTEgR1BJT19BQ1RJ
VkVfSElHSD47CisJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCXBpbmN0cmwtMCA9IDwm
ZGlzcGxheV9wd3Jlbj47CisJfTsKIH07CiAKICZjcHVfYWxlcnQwIHsKQEAgLTEzOSw2ICsxNzEs
MTEgQEAgJmVtbWNfcGh5IHsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCismZ3B1IHsKKwltYWxp
LXN1cHBseSA9IDwmdmRkX2dwdT47CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwogJmkyYzAgewog
CWNsb2NrLWZyZXF1ZW5jeSA9IDw0MDAwMDA+OwogCWkyYy1zY2wtcmlzaW5nLXRpbWUtbnMgPSA8
MTY4PjsKQEAgLTM2Miw2ICszOTksNDAgQEAgJmlvX2RvbWFpbnMgewogCXN0YXR1cyA9ICJva2F5
IjsKIH07CiAKKyZtaXBpX2RzaSB7CisJc3RhdHVzID0gIm9rYXkiOworCWNsb2NrLW1hc3RlcjsK
KworCXBvcnRzIHsKKwkJbWlwaV9vdXQ6IHBvcnRAMSB7CisJCQkjYWRkcmVzcy1jZWxscyA9IDww
PjsKKwkJCSNzaXplLWNlbGxzID0gPDA+OworCQkJcmVnID0gPDE+OworCisJCQltaXBpX291dF9w
YW5lbDogZW5kcG9pbnQgeworCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmbWlwaV9pbl9wYW5lbD47
CisJCQl9OworCQl9OworCX07CisKKwlwYW5lbEAwIHsKKwkJY29tcGF0aWJsZSA9ICJoYW5uc3Rh
cixoc2QwNjBiaHc0IjsKKwkJcmVnID0gPDA+OworCQliYWNrbGlnaHQgPSA8JmJhY2tsaWdodD47
CisJCXJlc2V0LWdwaW9zID0gPCZncGlvNCBSS19QRDEgR1BJT19BQ1RJVkVfTE9XPjsKKwkJdmNj
LXN1cHBseSA9IDwmdmNjMnY4X2xjZD47IC8vIDJ2OAorCQlpb3ZjYy1zdXBwbHkgPSA8JnZjYzF2
OF9sY2Q+OyAvLyAxdjgKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJcGluY3RybC0w
ID0gPCZkaXNwbGF5X3JzdF9sPjsKKworCQlwb3J0IHsKKwkJCW1pcGlfaW5fcGFuZWw6IGVuZHBv
aW50IHsKKwkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8Jm1pcGlfb3V0X3BhbmVsPjsKKwkJCX07CisJ
CX07CisJfTsKK307CisKICZwbXVfaW9fZG9tYWlucyB7CiAJcG11MTgzMC1zdXBwbHkgPSA8JnZj
Y18xdjg+OwogCXN0YXR1cyA9ICJva2F5IjsKQEAgLTM3NCw2ICs0NDUsMjAgQEAgcHdyYnRuX3Bp
bjogcHdyYnRuLXBpbiB7CiAJCX07CiAJfTsKIAorCWRzaSB7CisJCWRpc3BsYXlfcnN0X2w6IGRp
c3BsYXktcnN0LWwgeworCQkJcm9ja2NoaXAscGlucyA9IDw0IFJLX1BEMSBSS19GVU5DX0dQSU8g
JnBjZmdfcHVsbF9kb3duPjsKKwkJfTsKKworCQlkaXNwbGF5X3B3cmVuOiBkaXNwbGF5LXB3cmVu
IHsKKwkJCXJvY2tjaGlwLHBpbnMgPSA8MyBSS19QQTEgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxf
ZG93bj47CisJCX07CisKKwkJZGlzcGxheV9wd3JlbjE6IGRpc3BsYXktcHdyZW4xIHsKKwkJCXJv
Y2tjaGlwLHBpbnMgPSA8MyBSS19QQTUgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfZG93bj47CisJ
CX07CisJfTsKKwogCXBtaWMgewogCQlwbWljX2ludF9sOiBwbWljLWludC1sIHsKIAkJCXJvY2tj
aGlwLHBpbnMgPSA8MSBSS19QQzUgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfdXA+OwpAQCAtNDI5
LDYgKzUxNCwxMCBAQCAmc2RpbzAgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZwd20wIHsK
KwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmc2RtbWMgewogCWJ1cy13aWR0aCA9IDw0PjsKIAlj
YXAtc2QtaGlnaHNwZWVkOwpAQCAtNDc5LDMgKzU2OCwyNSBAQCBibHVldG9vdGggewogJnVhcnQy
IHsKIAlzdGF0dXMgPSAib2theSI7CiB9OworCismdm9wYiB7CisJc3RhdHVzID0gIm9rYXkiOwor
CWFzc2lnbmVkLWNsb2NrcyA9IDwmY3J1IERDTEtfVk9QMF9ESVY+LCA8JmNydSBEQ0xLX1ZPUDA+
LCA8JmNydSBBQ0xLX1ZPUDA+LCA8JmNydSBIQ0xLX1ZPUDA+OworCWFzc2lnbmVkLWNsb2NrLXJh
dGVzID0gPDA+LCA8MD4sIDw0MDAwMDAwMDA+LCA8MTAwMDAwMDAwPjsKKwlhc3NpZ25lZC1jbG9j
ay1wYXJlbnRzID0gPCZjcnUgUExMX0dQTEw+LCA8JmNydSBEQ0xLX1ZPUDBfRElWPjsKK307CisK
KyZ2b3BiX21tdSB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKworJnZvcGwgeworCXN0YXR1cyA9
ICJva2F5IjsKKwlhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBEQ0xLX1ZPUDFfRElWPiwgPCZjcnUg
RENMS19WT1AxPiwgPCZjcnUgQUNMS19WT1AxPiwgPCZjcnUgSENMS19WT1AxPjsKKwlhc3NpZ25l
ZC1jbG9jay1yYXRlcyA9IDwwPiwgPDA+LCA8NDAwMDAwMDAwPiwgPDEwMDAwMDAwMD47CisJYXNz
aWduZWQtY2xvY2stcGFyZW50cyA9IDwmY3J1IFBMTF9HUExMPiwgPCZjcnUgRENMS19WT1AxX0RJ
Vj47Cit9OworCismdm9wbF9tbXUgeworCXN0YXR1cyA9ICJva2F5IjsKK307CgpiYXNlLWNvbW1p
dDogZGE4ZTdkYTExZTRiYTc1OGNhZjRjMTQ5Y2M4ZDhjZDU1NWFlZmU1ZgotLSAKMi4zOS4yCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
