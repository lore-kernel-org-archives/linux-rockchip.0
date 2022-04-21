Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 594AAC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 17:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgrLsbXiZO76dD/hvwNVlF7X7TZUPgtQd3HZwmzb9so=; b=GdmDqpQgBIQg9w
	a8rsG5Ydz2qg/PjCma3D6GParERvr178uGSNQuOSdk5oRhbJmpsgTKBs+BIfEGko4adbf38rRxm2W
	sZKhijjsRh+PvuWqnM2DMJJsaRs1k+Lu3c59qAn9fQP8rrc+VgMU99t6TJXre1uDtiI4MjvDuf0Wl
	0YYe8ZvJzBylplIuxh41ud/3hdv3JJLHHzfP85gdOxEkA8ivxyikT1yiMKGRoPxpPppxqxUrc9VA8
	LzAddYN+psGfDp8IYDLMKxdFjolUSYWY8ige6p085kuVVUciD066XBQW1VP2dv8TVnRNQMoJGByS8
	SRE4V+nhQgCkUz829lvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhaHq-00EOTj-Vm; Thu, 21 Apr 2022 17:08:11 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhaHS-00EOBb-Lk; Thu, 21 Apr 2022 17:07:48 +0000
Received: by mail-wm1-x329.google.com with SMTP id
 r4-20020a05600c35c400b0039295dc1fc3so3845806wmq.3; 
 Thu, 21 Apr 2022 10:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+Fvcbf2Jm5l/vRCSGsuIt2faeX/qaz6+Vl1oafOAcKQ=;
 b=NMfSYNOPYP5wVJpdUDLQMLA9kSTWWoJS6DdQqc6sbuqGuz75ibsvUdGuuvwEplCgPM
 iFS7sQm+KrsRrQ38IV7thWl9D7GoM/s45vg7Zs8NMR9NQuZrj5peb1saZeX5NghZ2mJH
 /WU5rs+mq9WiOHP5cA8jNkFqzKfub6miD+dB9JoFLMW8yHVc/ISmwCJH6wJXAIvYYaTm
 Q+amkXrv5Xr7c4mq4s/2BELAdO73Dc5Wovph1WiFw7x/92IPLZfRmPh0U44iJLQr4YZZ
 JSJs+Urv3gKaQY6SgTcepc4t9aUZ430cSQwlRjfBW1dx6rHKeJ8DjUvRgZfbT6cGEx1F
 yWtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+Fvcbf2Jm5l/vRCSGsuIt2faeX/qaz6+Vl1oafOAcKQ=;
 b=B+VVPaGM7kRaL9vVoXrycUgyeKP93xgDvhPZHYAM+ni8bVk5AL5Ehjgo/QoltAKjew
 kcpsQh4+/FF7H/acGptsEPv1tL1IFDc5su1jeJ4G37zWGCldfQcoe6s44RxNAAH1Ak7G
 fT9fK9m4KFfeoflJ6sX2dLK7FIQqW6isZSH5pRUQH51bwJoPGpoqKu6zz3k4LIE+iTIY
 7B+sd5K5jvKitadyX2x8Nmzz4AycdZKzAecn4FrrOzK8e451TiSG8xg5nh4iw6hEjfpM
 VE8AsqOds9G/cfjKDkTsnwLsxHMMEMBUzA1PZBMJ8LgghyozRcvbgyo8gyYyiyi3Dsvy
 nkVQ==
X-Gm-Message-State: AOAM532D5lP0OVMPomvghi6FXY8fInxy4mxZZAKbe7fHbWPst6Ju9iwH
 pHqz7DSDxGslolFVqyw1W4qH6IoFgd/STA==
X-Google-Smtp-Source: ABdhPJwR0kknMZpvf1LjdEueL/t7nBEI/Q5b0+MyD3XtVoquZJFTZctKAaW4elf7wJkbs+MyuxguFQ==
X-Received: by 2002:a1c:35c1:0:b0:38e:c4f6:1931 with SMTP id
 c184-20020a1c35c1000000b0038ec4f61931mr280617wma.161.1650560859146; 
 Thu, 21 Apr 2022 10:07:39 -0700 (PDT)
Received: from localhost.localdomain ([94.73.37.128])
 by smtp.gmail.com with ESMTPSA id
 i11-20020a5d584b000000b0020a8d859e5fsm2963849wrf.10.2022.04.21.10.07.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Apr 2022 10:07:38 -0700 (PDT)
From: =?UTF-8?q?Jos=C3=A9=20Exp=C3=B3sito?= <jose.exposito89@gmail.com>
To: inki.dae@samsung.com
Cc: jy0922.shim@samsung.com, sw0312.kim@samsung.com, kyungmin.park@samsung.com,
 airlied@linux.ie, daniel@ffwll.ch, krzk@kernel.org,
 alim.akhtar@samsung.com, lgirdwood@gmail.com, broonie@kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 hjc@rock-chips.com, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 alain.volmat@foss.st.com, p.zabel@pengutronix.de, mripard@kernel.org,
 wens@csie.org, jernej.skrabec@gmail.com, samuel@sholland.org,
 linux-sunxi@lists.linux.dev, laurent.pinchart@ideasonboard.com,
 =?UTF-8?q?Jos=C3=A9=20Exp=C3=B3sito?= <jose.exposito89@gmail.com>
Subject: [PATCH 1/5] drm/exynos: hdmi: Replace drm_detect_hdmi_monitor() with
 is_hdmi
Date: Thu, 21 Apr 2022 19:07:21 +0200
Message-Id: <20220421170725.903361-2-jose.exposito89@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220421170725.903361-1-jose.exposito89@gmail.com>
References: <20220421170725.903361-1-jose.exposito89@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_100746_777983_B0FC5554 
X-CRM114-Status: GOOD (  13.71  )
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

T25jZSBFRElEIGlzIHBhcnNlZCwgdGhlIG1vbml0b3IgSERNSSBzdXBwb3J0IGluZm9ybWF0aW9u
IGlzIGF2YWlsYWJsZQp0aHJvdWdoIGRybV9kaXNwbGF5X2luZm8uaXNfaGRtaS4KClRoaXMgZHJp
dmVyIGNhbGxzIGRybV9kZXRlY3RfaGRtaV9tb25pdG9yKCkgdG8gcmVjZWl2ZSB0aGUgc2FtZQpp
bmZvcm1hdGlvbiBhbmQgc3RvcmVzIGl0cyBvd24gY2FjaGVkIHZhbHVlLCB3aGljaCBpcyBsZXNz
IGVmZmljaWVudC4KCkF2b2lkIGNhbGxpbmcgZHJtX2RldGVjdF9oZG1pX21vbml0b3IoKSBhbmQg
dXNlIGRybV9kaXNwbGF5X2luZm8uaXNfaGRtaQppbnN0ZWFkIGFuZCBhbHNvIHJlbW92ZSBoZG1p
X2NvbnRleHQuZHZpX21vZGUgYXMgaXQgaXMgbm8gbG9uZ2VyCm5lY2Vzc2FyeS4KClNpZ25lZC1v
ZmYtYnk6IEpvc8OpIEV4cMOzc2l0byA8am9zZS5leHBvc2l0bzg5QGdtYWlsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19oZG1pLmMgfCAxNSArKysrKysrKystLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfaGRtaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2V4eW5vcy9leHlub3NfaGRtaS5jCmluZGV4IDc2NTUxNDJhNDY1MS4uYTY3NDNhZTg3NzI4
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19oZG1pLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfaGRtaS5jCkBAIC0xMTksNyArMTE5LDYgQEAg
c3RydWN0IGhkbWlfY29udGV4dCB7CiAJc3RydWN0IGRldmljZQkJCSpkZXY7CiAJc3RydWN0IGRy
bV9kZXZpY2UJCSpkcm1fZGV2OwogCXN0cnVjdCBkcm1fY29ubmVjdG9yCQljb25uZWN0b3I7Ci0J
Ym9vbAkJCQlkdmlfbW9kZTsKIAlzdHJ1Y3QgZGVsYXllZF93b3JrCQlob3RwbHVnX3dvcms7CiAJ
c3RydWN0IGNlY19ub3RpZmllcgkJKm5vdGlmaWVyOwogCWNvbnN0IHN0cnVjdCBoZG1pX2RyaXZl
cl9kYXRhCSpkcnZfZGF0YTsKQEAgLTgxMSwxMSArODEwLDEyIEBAIHN0YXRpYyBpbnQgaGRtaV9h
dWRpb19pbmZvZnJhbWVfYXBwbHkoc3RydWN0IGhkbWlfY29udGV4dCAqaGRhdGEpCiBzdGF0aWMg
dm9pZCBoZG1pX3JlZ19pbmZvZnJhbWVzKHN0cnVjdCBoZG1pX2NvbnRleHQgKmhkYXRhKQogewog
CXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptID0gJmhkYXRhLT5lbmNvZGVyLmNydGMtPnN0YXRl
LT5tb2RlOworCXN0cnVjdCBkcm1fZGlzcGxheV9pbmZvICpkaXNwbGF5ID0gJmhkYXRhLT5jb25u
ZWN0b3IuZGlzcGxheV9pbmZvOwogCXVuaW9uIGhkbWlfaW5mb2ZyYW1lIGZybTsKIAl1OCBidWZb
MjVdOwogCWludCByZXQ7CiAKLQlpZiAoaGRhdGEtPmR2aV9tb2RlKSB7CisJaWYgKCFkaXNwbGF5
LT5pc19oZG1pKSB7CiAJCWhkbWlfcmVnX3dyaXRlYihoZGF0YSwgSERNSV9BVklfQ09OLAogCQkJ
CUhETUlfQVZJX0NPTl9ET19OT1RfVFJBTlNNSVQpOwogCQloZG1pX3JlZ193cml0ZWIoaGRhdGEs
IEhETUlfVlNJX0NPTiwKQEAgLTg5Myw5ICs4OTMsOSBAQCBzdGF0aWMgaW50IGhkbWlfZ2V0X21v
ZGVzKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiAJaWYgKCFlZGlkKQogCQlyZXR1
cm4gLUVOT0RFVjsKIAotCWhkYXRhLT5kdmlfbW9kZSA9ICFkcm1fZGV0ZWN0X2hkbWlfbW9uaXRv
cihlZGlkKTsKIAlEUk1fREVWX0RFQlVHX0tNUyhoZGF0YS0+ZGV2LCAiJXMgOiB3aWR0aFslZF0g
eCBoZWlnaHRbJWRdXG4iLAotCQkJICAoaGRhdGEtPmR2aV9tb2RlID8gImR2aSBtb25pdG9yIiA6
ICJoZG1pIG1vbml0b3IiKSwKKwkJCSAgKGNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvLmlzX2hkbWkg
PyAiaGRtaSBtb25pdG9yIiA6CisJCQkJCQkJICAgICAiZHZpIG1vbml0b3IiKSwKIAkJCSAgZWRp
ZC0+d2lkdGhfY20sIGVkaWQtPmhlaWdodF9jbSk7CiAKIAlkcm1fY29ubmVjdG9yX3VwZGF0ZV9l
ZGlkX3Byb3BlcnR5KGNvbm5lY3RvciwgZWRpZCk7CkBAIC0xMTE4LDkgKzExMTgsMTAgQEAgc3Rh
dGljIHZvaWQgaGRtaV9hdWRpb19jb25maWcoc3RydWN0IGhkbWlfY29udGV4dCAqaGRhdGEpCiAK
IHN0YXRpYyB2b2lkIGhkbWlfYXVkaW9fY29udHJvbChzdHJ1Y3QgaGRtaV9jb250ZXh0ICpoZGF0
YSkKIHsKKwlzdHJ1Y3QgZHJtX2Rpc3BsYXlfaW5mbyAqZGlzcGxheSA9ICZoZGF0YS0+Y29ubmVj
dG9yLmRpc3BsYXlfaW5mbzsKIAlib29sIGVuYWJsZSA9ICFoZGF0YS0+YXVkaW8ubXV0ZTsKIAot
CWlmIChoZGF0YS0+ZHZpX21vZGUpCisJaWYgKCFkaXNwbGF5LT5pc19oZG1pKQogCQlyZXR1cm47
CiAKIAloZG1pX3JlZ193cml0ZWIoaGRhdGEsIEhETUlfQVVJX0NPTiwgZW5hYmxlID8KQEAgLTEx
NDMsNiArMTE0NCw4IEBAIHN0YXRpYyB2b2lkIGhkbWlfc3RhcnQoc3RydWN0IGhkbWlfY29udGV4
dCAqaGRhdGEsIGJvb2wgc3RhcnQpCiAKIHN0YXRpYyB2b2lkIGhkbWlfY29uZl9pbml0KHN0cnVj
dCBoZG1pX2NvbnRleHQgKmhkYXRhKQogeworCXN0cnVjdCBkcm1fZGlzcGxheV9pbmZvICpkaXNw
bGF5ID0gJmhkYXRhLT5jb25uZWN0b3IuZGlzcGxheV9pbmZvOworCiAJLyogZGlzYWJsZSBIUEQg
aW50ZXJydXB0cyBmcm9tIEhETUkgSVAgYmxvY2ssIHVzZSBHUElPIGluc3RlYWQgKi8KIAloZG1p
X3JlZ193cml0ZW1hc2soaGRhdGEsIEhETUlfSU5UQ19DT04sIDAsIEhETUlfSU5UQ19FTl9HTE9C
QUwgfAogCQlIRE1JX0lOVENfRU5fSFBEX1BMVUcgfCBIRE1JX0lOVENfRU5fSFBEX1VOUExVRyk7
CkBAIC0xMTU1LDcgKzExNTgsNyBAQCBzdGF0aWMgdm9pZCBoZG1pX2NvbmZfaW5pdChzdHJ1Y3Qg
aGRtaV9jb250ZXh0ICpoZGF0YSkKIAkvKiBkaXNhYmxlIGJsdWVzY3JlZW4gKi8KIAloZG1pX3Jl
Z193cml0ZW1hc2soaGRhdGEsIEhETUlfQ09OXzAsIDAsIEhETUlfQkxVRV9TQ1JfRU4pOwogCi0J
aWYgKGhkYXRhLT5kdmlfbW9kZSkgeworCWlmICghZGlzcGxheS0+aXNfaGRtaSkgewogCQloZG1p
X3JlZ193cml0ZW1hc2soaGRhdGEsIEhETUlfTU9ERV9TRUwsCiAJCQkJSERNSV9NT0RFX0RWSV9F
TiwgSERNSV9NT0RFX01BU0spOwogCQloZG1pX3JlZ193cml0ZWIoaGRhdGEsIEhETUlfQ09OXzIs
Ci0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
