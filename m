Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB982C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dkg2ugvGL1p7MaftTc6CIS9001dxacN4axohxWVSmjU=; b=M970WR63m7AVoB
	49pUeG8WeXXg3D2/FCtZI+qBbLdI505lgoUsAGXunbV/diA6+5Vmet2CR3zVy6fLHyPmmOT70I0IY
	k97kOQp5mCS/Cb+20rii0J/5O97IlgxKDUmHFbYR8TgGDLTC2L6gE3ocIgZDE28aGEiqtOHGpWSUN
	B7razPZA4pLXxu9i6x1JGpGkdpI8oVWE2WTArkqyyPqwfLfwrRSyfbvluufd8P1Dp216uKzs5VHNc
	yQ6+X8mJu8MH5CIrRf8ol5wjCx/3SnYejJCzHgDrt95FI3nWcY0zN3vENEWeteIoULgD13nGF2HB+
	41+LLaQLUbID+teWuKKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjZr-006YWi-2X;
	Fri, 22 Dec 2023 17:44:51 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXk-006WUK-1x;
	Fri, 22 Dec 2023 17:42:42 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-33666fb9318so1833407f8f.2;
        Fri, 22 Dec 2023 09:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266957; x=1703871757; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3qEiW87NdWMqG1i3IC5TsTsEJY+4saJvfxd4Py7tBWk=;
        b=cg6jF0yU9BWwIDJ5UnXNCQaEpmphNSg03plxTl8IZpVevtcDvZBwHQMzwUhk/WqJQu
         Fvq7umFTTJecWg7UqyTfRW5OCNCbBPUEy9H1yv+XPWYgOyXQiwiDXcmlg2RsXhc7SNqc
         4gHNyRRmX4iH5yX487nbmrhuLIYhrz3bgznWfLT8CNdzzNXHwT5vfeH3ariqZ4wkHOSZ
         4NJvM6IYlGBUxVacOBZPu+xpYOzQHVIlPDxdSACbUTcdIe8W/tefVwC9jZEoeLsWJr3s
         KoOv6+o/pVkaLdNskOpzwXowvAh4D6NsYQq0MQTW6I4jw7SxioBWasqL1U7sv7R2cto3
         EBCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266957; x=1703871757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3qEiW87NdWMqG1i3IC5TsTsEJY+4saJvfxd4Py7tBWk=;
        b=ASDZCkXsvn0B8PMTL6JOFs83cMi6RagdKY2t2LWNGrkJsLDnURHMCD2TfTsQ5H/sQ3
         u8q4SllsInT7aOl/8ukvgNZZjGxCYBKqDXei/ut8HEu9zHyULDnJqcAkaxErQFlEe55L
         pfH79ryqbELNrbA5KfQRdFx3UheVDwBN6KQ6ziMgrKweeK9VXj6sxe7lyburnvFGFu4f
         d0ZDqBLwhcfZKPyxr8yaKRtXynT8ZPdpd2UaLXPUV6k97w3MdxxDGV0IHtDfhsTjF+NH
         KopA/vV0VGrOqsnrnizja4m/jBRo1GFRrk6NGRwMj0GgGB5D0Te2lYWzAsRZULdTwrzu
         Q1qw==
X-Gm-Message-State: AOJu0Yw2kvfEz908sWoMo44pPemfGRsLJ4TfIPOzjhGzMJKU6bI78yOZ
	NJIHB6dbsyjmVaylPet7sA==
X-Google-Smtp-Source: AGHT+IF/ILntBURjV10Ff56yN/onR9KNU6i4awRUbCKr+V/5OKfVGrXyAKwoOVxh00kqNwRL7i24VQ==
X-Received: by 2002:adf:dd8b:0:b0:336:8940:c4dd with SMTP id x11-20020adfdd8b000000b003368940c4ddmr968833wrl.8.1703266957184;
        Fri, 22 Dec 2023 09:42:37 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:36 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 21/29] drm/rockchip: inno_hdmi: Don't power up the phy after resetting
Date: Fri, 22 Dec 2023 18:42:12 +0100
Message-ID: <20231222174220.55249-22-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094240_669319_4B9D3C53 
X-CRM114-Status: GOOD (  14.07  )
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

aW5ub19oZG1pX3Jlc2V0IGlzIG9ubHkgZXZlciBjYWxsZWQgd2hlbiBpbml0aWFsaXppbmcgdGhl
IGNvbnRyb2xsZXIuIEF0CnRoaXMgcG9pbnQgaXTigJlzIGNvbXBsZXRlbHkgdW5lY2Nlc3Nhcnkg
dG8gcG93ZXIgdXAgdGhlIFBIWSwgc2luY2UgYWxsCndoYXQgaGFzIHRvIHdvcmsgYXQgdGhpcyBw
b2ludCBpcyB0aGUgRERDIGJ1cy4gVGhlIHBoeSB3aWxsIGJlIHBvd2VyZWQgdXAKY29ycmVjdGx5
IHdoZW4gYSBtb2RlIGlzIHNldCBpbiBpbm5vX2hkbWlfZW5jb2Rlcl9lbmFibGUgYW5kIGRpc2Fi
bGVkIGluCmlubm9faGRtaV9lbmNvZGVyX2Rpc2FibGUuClNldCBpdCB0byBMT1dFUl9QV1IgYWZ0
ZXIgcmVzZXR0aW5nIHRoZSBjb250cm9sbGVyLgoKU2lnbmVkLW9mZi1ieTogQWxleCBCZWUgPGtu
YWVyemNoZUBnbWFpbC5jb20+Ci0tLQpjaGFuZ2VzIGluIHYzOgogLSBuZXcgcGF0Y2gKCmNoYW5n
ZXMgaW4gdjQ6CiAtIG5vbmUKCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMg
fCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMKaW5kZXggZjNiOTBiNDc5YWI5Li41MmI0OWY0
NGE0ZjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMKQEAgLTIwMiw3ICsyMDIs
NyBAQCBzdGF0aWMgdm9pZCBpbm5vX2hkbWlfcmVzZXQoc3RydWN0IGlubm9faGRtaSAqaGRtaSkK
IAl2YWwgPSB2X1JFR19DTEtfSU5WIHwgdl9SRUdfQ0xLX1NPVVJDRV9TWVMgfCB2X1BXUl9PTiB8
IHZfSU5UX1BPTF9ISUdIOwogCWhkbWlfbW9kYihoZG1pLCBIRE1JX1NZU19DVFJMLCBtc2ssIHZh
bCk7CiAKLQlpbm5vX2hkbWlfc2V0X3B3cl9tb2RlKGhkbWksIE5PUk1BTCk7CisJaW5ub19oZG1p
X3NldF9wd3JfbW9kZShoZG1pLCBMT1dFUl9QV1IpOwogfQogCiBzdGF0aWMgdm9pZCBpbm5vX2hk
bWlfZGlzYWJsZV9mcmFtZShzdHJ1Y3QgaW5ub19oZG1pICpoZG1pLAotLSAKMi40My4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
