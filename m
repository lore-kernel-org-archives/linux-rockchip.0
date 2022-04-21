Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44967C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 17:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQfyYu8q/Kgrc10KcxVG4G8e+vlsgiCjDT/s/ciKPZU=; b=kY9FsE4W9IdVBD
	Z8Z0cm4Ip+4Yzd+kqrOVgdvhm8Oz56TI7biFhsozwQDe0M31eK1ku5VunRfHq9LcIgGob8ETD6Caw
	KDht0m/AcO/10aLl+g5JEtKC/NxhpSBV67p9QueuXh34GJ2g/fycroEM05+PRbnZn43y53s9SdkqX
	YkcCB1NltGkXL0DC7vEfl0UUd4qjqzgy2G+h2nzj3err0X8kXtuNkxjrwMORJT0zMdmO77zrMd44z
	9OuDtPm4xX9doaQU0/7IGHLcBMol04bIA/yOImBv5/KugCV81/ks4gRiwEF/j7Aa9htwjcv5A4mUo
	FjpuEijZNpaxLRnD9ExQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhaJG-00EPFF-4J; Thu, 21 Apr 2022 17:09:38 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhaHY-00EOFQ-7S; Thu, 21 Apr 2022 17:07:54 +0000
Received: by mail-wr1-x430.google.com with SMTP id t6so4155372wra.4;
 Thu, 21 Apr 2022 10:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qu4miKRfTQ5edYvqjwCdNnoZhdelBzzQxfVquTwJYcU=;
 b=lxA+j4hsGR37CsR5Pcl2akYbQ+9eiuuBp4pFH2LGebfC+LqkKZfG7H6fzk2IvrFcJt
 XsLiYjdR69D9iGA6qPpMFTk86JChOo/AomlJ2VbMPmsm4kOgP3oXEXft47RFsMJQ57AD
 Vxq5gk2rZ+BCIbH7Q7mRAYDHCjfpsiXoGDowdX916/ea67KHw9NM4wkxsAh0+bigZfiB
 BLicaU7MNZmEtp1JQOHY8LTMwHeUEozRWMOg98gmeDh7p47EJ++knKYdojZlFOTASofN
 bcv+MxJLsTyn75mUnleqvvO4gvsuyQ8jk5VbOFAUlkrj0CqoZJT6BH8WnvYBiYa9HRXU
 bo6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qu4miKRfTQ5edYvqjwCdNnoZhdelBzzQxfVquTwJYcU=;
 b=3IFtEqxVYjtZZ77KzbDSrs9IGPd2xEo1hCONTWq9VdTSj9a/I5D7mhZ7zZPF9oBM2+
 Ch58KC8h4ioHQ6Q3VxT/7bNHx7hwYV6FRR/+H4NxoZv8vmv7orULliPdUx/VIuOVj/mE
 T7iWawYFLDz5YycC+D/OqYiYB1+rGXa7OdadFPTANeE7DO1TUG9sdBrAbzhCSfWIeMb+
 z1lirH5oTjC/BftFF+lrS/Y1FxLTHz6lUI5koNhA9WEANUdXRqIYOKRZptPQrgVGN+90
 5Ewokv7h6SAU0qePbIaClFIy3QvFG62Z4W53UPSmCNmwkc2nzW9uguHDe47MbhyVQvTO
 r4qw==
X-Gm-Message-State: AOAM531gh0gLJ3A3N2yKGS2pzTZRFhWHoqzPIvN0U6wTcDuXHhfV6hl0
 a/Pw76utBo6Fp/cGu4fOHnA=
X-Google-Smtp-Source: ABdhPJztCBlTtH8qv1VRhJlR2SzX0FcTLm+9xXk+65FTP+M5MyZVogXt4diKZu3QDquG6Bgk4X0BGQ==
X-Received: by 2002:a5d:6d0f:0:b0:20a:897d:ad95 with SMTP id
 e15-20020a5d6d0f000000b0020a897dad95mr552084wrq.113.1650560866018; 
 Thu, 21 Apr 2022 10:07:46 -0700 (PDT)
Received: from localhost.localdomain ([94.73.37.128])
 by smtp.gmail.com with ESMTPSA id
 i11-20020a5d584b000000b0020a8d859e5fsm2963849wrf.10.2022.04.21.10.07.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Apr 2022 10:07:45 -0700 (PDT)
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
Subject: [PATCH 4/5] drm/sti/sti_hdmi: Replace drm_detect_hdmi_monitor() with
 is_hdmi
Date: Thu, 21 Apr 2022 19:07:24 +0200
Message-Id: <20220421170725.903361-5-jose.exposito89@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220421170725.903361-1-jose.exposito89@gmail.com>
References: <20220421170725.903361-1-jose.exposito89@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_100752_374797_58EBC355 
X-CRM114-Status: GOOD (  13.69  )
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
dXNlIGRybV9kaXNwbGF5X2luZm8uaXNfaGRtaQppbnN0ZWFkIGFuZCBhbHNvIHJlbW92ZSBzdGlf
aGRtaS5oZG1pX21vbml0b3IgYXMgaXQgaXMgbm8gbG9uZ2VyCm5lY2Vzc2FyeS4KClNpZ25lZC1v
ZmYtYnk6IEpvc8OpIEV4cMOzc2l0byA8am9zZS5leHBvc2l0bzg5QGdtYWlsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9oZG1pLmMgfCA3ICsrKystLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9zdGkvc3RpX2hkbWkuaCB8IDIgLS0KIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2hk
bWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2hkbWkuYwppbmRleCBmM2FjZTExMjA5ZGQu
LjkzODQxYmE5MDdhOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfaGRtaS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2hkbWkuYwpAQCAtMjY2LDYgKzI2Niw3IEBA
IHN0YXRpYyB2b2lkIGhkbWlfYWN0aXZlX2FyZWEoc3RydWN0IHN0aV9oZG1pICpoZG1pKQogc3Rh
dGljIHZvaWQgaGRtaV9jb25maWcoc3RydWN0IHN0aV9oZG1pICpoZG1pKQogewogCXUzMiBjb25m
OworCXN0cnVjdCBkcm1fZGlzcGxheV9pbmZvICpkaXNwbGF5ID0gJmhkbWktPmRybV9jb25uZWN0
b3ItPmRpc3BsYXlfaW5mbzsKIAogCURSTV9ERUJVR19EUklWRVIoIlxuIik7CiAKQEAgLTI3NCw3
ICsyNzUsNyBAQCBzdGF0aWMgdm9pZCBoZG1pX2NvbmZpZyhzdHJ1Y3Qgc3RpX2hkbWkgKmhkbWkp
CiAKIAkvKiBTZWxlY3QgZW5jcnlwdGlvbiB0eXBlIGFuZCB0aGUgZnJhbWluZyBtb2RlICovCiAJ
Y29uZiB8PSBIRE1JX0NGR19FU1NfTk9UX09FU1M7Ci0JaWYgKGhkbWktPmhkbWlfbW9uaXRvcikK
KwlpZiAoZGlzcGxheS0+aXNfaGRtaSkKIAkJY29uZiB8PSBIRE1JX0NGR19IRE1JX05PVF9EVkk7
CiAKIAkvKiBTZXQgSHN5bmMgcG9sYXJpdHkgKi8KQEAgLTk4NCw5ICs5ODUsOSBAQCBzdGF0aWMg
aW50IHN0aV9oZG1pX2Nvbm5lY3Rvcl9nZXRfbW9kZXMoc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3RvcikKIAlpZiAoIWVkaWQpCiAJCWdvdG8gZmFpbDsKIAotCWhkbWktPmhkbWlfbW9uaXRv
ciA9IGRybV9kZXRlY3RfaGRtaV9tb25pdG9yKGVkaWQpOwogCURSTV9ERUJVR19LTVMoIiVzIDog
JWR4JWQgY21cbiIsCi0JCSAgICAgIChoZG1pLT5oZG1pX21vbml0b3IgPyAiaGRtaSBtb25pdG9y
IiA6ICJkdmkgbW9uaXRvciIpLAorCQkgICAgICAoY29ubmVjdG9yLT5kaXNwbGF5X2luZm8uaXNf
aGRtaSA/ICJoZG1pIG1vbml0b3IiIDoKKwkJCQkJCQkgImR2aSBtb25pdG9yIiksCiAJCSAgICAg
IGVkaWQtPndpZHRoX2NtLCBlZGlkLT5oZWlnaHRfY20pOwogCWNlY19ub3RpZmllcl9zZXRfcGh5
c19hZGRyX2Zyb21fZWRpZChoZG1pLT5ub3RpZmllciwgZWRpZCk7CiAKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9zdGkvc3RpX2hkbWkuaCBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2hk
bWkuaAppbmRleCAwNWIyZjNkMGQ0OGQuLjZkNGMzZjU3YmM0NiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3N0aS9zdGlfaGRtaS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9zdGkvc3RpX2hk
bWkuaApAQCAtNTcsNyArNTcsNiBAQCBzdHJ1Y3QgaGRtaV9hdWRpb19wYXJhbXMgewogICogQHJl
c2V0OiByZXNldCBjb250cm9sIG9mIHRoZSBoZG1pIHBoeQogICogQGRkY19hZGFwdDogaTJjIGRk
YyBhZGFwdGVyCiAgKiBAY29sb3JzcGFjZTogY3VycmVudCBjb2xvcnNwYWNlIHNlbGVjdGVkCi0g
KiBAaGRtaV9tb25pdG9yOiB0cnVlIGlmIEhETUkgbW9uaXRvciBkZXRlY3RlZCBlbHNlIERWSSBt
b25pdG9yIGFzc3VtZWQKICAqIEBhdWRpb19wZGV2OiBBU29DIGhkbWktY29kZWMgcGxhdGZvcm0g
ZGV2aWNlCiAgKiBAYXVkaW86IGhkbWkgYXVkaW8gcGFyYW1ldGVycy4KICAqIEBkcm1fY29ubmVj
dG9yOiBoZG1pIGNvbm5lY3RvcgpAQCAtODMsNyArODIsNiBAQCBzdHJ1Y3Qgc3RpX2hkbWkgewog
CXN0cnVjdCByZXNldF9jb250cm9sICpyZXNldDsKIAlzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmRkY19h
ZGFwdDsKIAllbnVtIGhkbWlfY29sb3JzcGFjZSBjb2xvcnNwYWNlOwotCWJvb2wgaGRtaV9tb25p
dG9yOwogCXN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKmF1ZGlvX3BkZXY7CiAJc3RydWN0IGhkbWlf
YXVkaW9fcGFyYW1zIGF1ZGlvOwogCXN0cnVjdCBkcm1fY29ubmVjdG9yICpkcm1fY29ubmVjdG9y
OwotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
