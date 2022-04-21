Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 868AEC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 17:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpJP5Bn3EXoubJCaLMV9D8SB8Ov3pxvIcRQ/viSMMIw=; b=xI6wUybhxmRTsH
	q6lLRynBaul2kFYhyVzvl6uUDLiM+y979NSjOfrnlxxqfrMQQ8qO4EkQ9q7Q8pn3lEDMj3CkcEOTY
	kq+EaS3XScLXwjlUXndNn2C1EVSo7r1zuCiIQmka7ddFqxJrGtxNIzR9x2gK/+8bvsE42vi1ds126
	iRB29RGgLHSAnOOr5WdYUS5djyOPcLz/EQmTbjaxJcXbNj+kFvepq1eEKT6PSEPDdfCOFlX57qPe6
	dsuYVUvTug9g+G32APi7uUlsBCvcCocmrb8qPq9LNvONRrZbfCnQXyXixXB41yFHbXbD/QBZwp1uq
	C/+VYsKROTrGRZ+etoCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhaIY-00EOpO-3m; Thu, 21 Apr 2022 17:08:54 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhaHS-00EOCR-Mx; Thu, 21 Apr 2022 17:07:49 +0000
Received: by mail-wr1-x42a.google.com with SMTP id p18so7593719wru.5;
 Thu, 21 Apr 2022 10:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eKm3qfCfRTvpAFA5EAH6ryNQ7rOqn4mcVqOVEQ3yBg4=;
 b=Ni5qBNH54L+lErFbripcTI35F+F8JtthLEbq0Z0UUJSc163DjScfnStCqt9bEBOvOK
 hctqtlIoahTUOylzbbJ4kWGEMRVfn6zntL6xxtDiWk2uQSpwhsYwuLELDawTzVgiexkD
 rGi8mJrxMu88sIQgnK5khi5vuZkh+co9PLdJmPTb1WLaKrmWDuy2Se2gR8Mh1Oc+j5YU
 2ym+G7p8V5ZgmMzGmPxeE1CDk6apDaEHSgrOf0duRZ+Q2MLICnFa+O9qvASKeWIuwbvR
 Hj7i3iyl0pnsPjjSMttEQyMlkMbmJA8JJmPHcQ2Ut12rtDOq9U/mhylL8DmhUnwPy5VL
 YWCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eKm3qfCfRTvpAFA5EAH6ryNQ7rOqn4mcVqOVEQ3yBg4=;
 b=5VgHJJLVYq4DMWcvfHwleCwsuxnceQ0nMQFmZtNKq5Zx4Qy6FHL49oaNuFlDvnsX7o
 HhINpDhsDuh6I+W2qbTbfVDLHJnsnkwuXzQ+qwilvuiVAYm1ND9lNI/5qdEvSqo5m4ei
 wULo/YPAttC1HhQMkML6Y/gKb9LqQ7dPsqdk5DXwQIx6HiAMlg1YLTS68mSPpmJM0rfw
 pxG7UGZ6QbxqD1dNVlhtyUB7dJWX6o64Feu39iVBrM/0/t4ZL08bUzM/LQGuwDaAU1hh
 SAh2/5hZtKwtjH68mz0Va7vvxQcPelOSFY0iNTznDhdF2ChSjEVGUs5nPx6YnNO04JgY
 ao3A==
X-Gm-Message-State: AOAM5311jAlgo1Sui2e1omSdiaSnQWcIOeG/C3KhkKUdjMdBpwDY88g3
 2rVMp9UnTD5zg1L4nN/Iyqk=
X-Google-Smtp-Source: ABdhPJxlCcy8zYc1BDrHUPlz44VMsFdU0skH0FV3nalzzrkpovFXfzLqOTI6phAIdGGYdymHKVzVjw==
X-Received: by 2002:a5d:5953:0:b0:206:b5c:dfe8 with SMTP id
 e19-20020a5d5953000000b002060b5cdfe8mr527391wri.35.1650560861569; 
 Thu, 21 Apr 2022 10:07:41 -0700 (PDT)
Received: from localhost.localdomain ([94.73.37.128])
 by smtp.gmail.com with ESMTPSA id
 i11-20020a5d584b000000b0020a8d859e5fsm2963849wrf.10.2022.04.21.10.07.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Apr 2022 10:07:41 -0700 (PDT)
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
Subject: [PATCH 2/5] drm/rockchip: inno_hdmi: Replace
 drm_detect_hdmi_monitor() with is_hdmi
Date: Thu, 21 Apr 2022 19:07:22 +0200
Message-Id: <20220421170725.903361-3-jose.exposito89@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220421170725.903361-1-jose.exposito89@gmail.com>
References: <20220421170725.903361-1-jose.exposito89@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_100746_803022_B1875202 
X-CRM114-Status: GOOD (  13.01  )
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
X2RhdGFfaW5mby5zaW5rX2lzX2hkbWkgYXMgaXQgaXMgbm8gbG9uZ2VyCm5lY2Vzc2FyeS4KClNp
Z25lZC1vZmYtYnk6IEpvc8OpIEV4cMOzc2l0byA8am9zZS5leHBvc2l0bzg5QGdtYWlsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMgfCA4ICsrKystLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9pbm5vX2hkbWkuYwppbmRleCAwNDZlOGVjMmE3MWMuLmFhOGI3MDRkNDRhMiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2lubm9faGRtaS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYwpAQCAtMzAsNyArMzAsNiBAQAogCiBz
dHJ1Y3QgaGRtaV9kYXRhX2luZm8gewogCWludCB2aWM7Ci0JYm9vbCBzaW5rX2lzX2hkbWk7CiAJ
Ym9vbCBzaW5rX2hhc19hdWRpbzsKIAl1bnNpZ25lZCBpbnQgZW5jX2luX2Zvcm1hdDsKIAl1bnNp
Z25lZCBpbnQgZW5jX291dF9mb3JtYXQ7CkBAIC00MzMsNiArNDMyLDggQEAgc3RhdGljIGludCBp
bm5vX2hkbWlfY29uZmlnX3ZpZGVvX3RpbWluZyhzdHJ1Y3QgaW5ub19oZG1pICpoZG1pLAogc3Rh
dGljIGludCBpbm5vX2hkbWlfc2V0dXAoc3RydWN0IGlubm9faGRtaSAqaGRtaSwKIAkJCSAgIHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQogeworCXN0cnVjdCBkcm1fZGlzcGxheV9pbmZv
ICpkaXNwbGF5ID0gJmhkbWktPmNvbm5lY3Rvci5kaXNwbGF5X2luZm87CisKIAloZG1pLT5oZG1p
X2RhdGEudmljID0gZHJtX21hdGNoX2NlYV9tb2RlKG1vZGUpOwogCiAJaGRtaS0+aGRtaV9kYXRh
LmVuY19pbl9mb3JtYXQgPSBIRE1JX0NPTE9SU1BBQ0VfUkdCOwpAQCAtNDUyLDEzICs0NTMsMTMg
QEAgc3RhdGljIGludCBpbm5vX2hkbWlfc2V0dXAoc3RydWN0IGlubm9faGRtaSAqaGRtaSwKIAog
CS8qIFNldCBIRE1JIE1vZGUgKi8KIAloZG1pX3dyaXRlYihoZG1pLCBIRE1JX0hEQ1BfQ1RSTCwK
LQkJICAgIHZfSERNSV9EVkkoaGRtaS0+aGRtaV9kYXRhLnNpbmtfaXNfaGRtaSkpOworCQkgICAg
dl9IRE1JX0RWSShkaXNwbGF5LT5pc19oZG1pKSk7CiAKIAlpbm5vX2hkbWlfY29uZmlnX3ZpZGVv
X3RpbWluZyhoZG1pLCBtb2RlKTsKIAogCWlubm9faGRtaV9jb25maWdfdmlkZW9fY3NjKGhkbWkp
OwogCi0JaWYgKGhkbWktPmhkbWlfZGF0YS5zaW5rX2lzX2hkbWkpIHsKKwlpZiAoZGlzcGxheS0+
aXNfaGRtaSkgewogCQlpbm5vX2hkbWlfY29uZmlnX3ZpZGVvX2F2aShoZG1pLCBtb2RlKTsKIAkJ
aW5ub19oZG1pX2NvbmZpZ192aWRlb192c2koaGRtaSwgbW9kZSk7CiAJfQpAQCAtNTUzLDcgKzU1
NCw2IEBAIHN0YXRpYyBpbnQgaW5ub19oZG1pX2Nvbm5lY3Rvcl9nZXRfbW9kZXMoc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAogCWVkaWQgPSBkcm1fZ2V0X2VkaWQoY29ubmVjdG9y
LCBoZG1pLT5kZGMpOwogCWlmIChlZGlkKSB7Ci0JCWhkbWktPmhkbWlfZGF0YS5zaW5rX2lzX2hk
bWkgPSBkcm1fZGV0ZWN0X2hkbWlfbW9uaXRvcihlZGlkKTsKIAkJaGRtaS0+aGRtaV9kYXRhLnNp
bmtfaGFzX2F1ZGlvID0gZHJtX2RldGVjdF9tb25pdG9yX2F1ZGlvKGVkaWQpOwogCQlkcm1fY29u
bmVjdG9yX3VwZGF0ZV9lZGlkX3Byb3BlcnR5KGNvbm5lY3RvciwgZWRpZCk7CiAJCXJldCA9IGRy
bV9hZGRfZWRpZF9tb2Rlcyhjb25uZWN0b3IsIGVkaWQpOwotLSAKMi4yNS4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
