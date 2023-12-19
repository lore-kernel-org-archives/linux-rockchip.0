Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3C06C41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMNGaZUukbreBChNymwfUsXl8PJDLtktNvCTwkijpp8=; b=odiPMaSg1VmEk/
	KNzz19OELhiY73urTFMEI/7Iu9DZh/rxz2kd625lLw19I1Ccn7ewldPHII3RTRKnLntT7MJePhDXC
	OLGLwcQ2vRVqyUZiVIel+5VuNQxF0lwQEMxiEu9ebv5paPbwjtavEIbzixTefQML6zg5Go6IlaV44
	MYJbDHhEbacPhaBEpHTHsk7xGEkrGMtETfS+9Gg009XuiTR6Jq2yhGvEk56nrnOey4Bnw1sT2HFv6
	xrWNhCvklq8iz7T8Sy2yc1+6kgjZg93r1CRbe593dVKDPgdJSmKuxfR0XCD9Qk6RIm7YfpgSJrF25
	PflZag5GLLF98YbNc0RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdUk-00Epr3-1v;
	Tue, 19 Dec 2023 17:03:02 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTE-00EoFW-15;
	Tue, 19 Dec 2023 17:01:31 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-33677fb38a3so110956f8f.0;
        Tue, 19 Dec 2023 09:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005286; x=1703610086; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h8JOWn9GU9Nla83BWtTSRAknxxtN8+L8TovD6+V8Mi4=;
        b=nR5RC1OZoAg2sDh8WqgMXq5zY4EduZPTh5NAWq0IjQf+QCXlWpfgNnXJxFIDgeJVta
         3diU7hqMgIQYgcWcC01Jk/G/Asr/tXlKPDVO2pZsXRferjEYoAmd1e5HfeKMnwyu52Nl
         gpz1MtzSv6OXgxw3Hl3sTkQojJL6Gd3jyE1F48THilEErCCZOsLSnla+TTqjqcDbuD0J
         lZSnzaj65E6BNkGF2gAKTBL7vN3cXadIoKuXLOEmQlq3vpk8YqQphiyHbA/DVoIeMApW
         4Abo5GrVKDQuShboA8fSt1qF7t/+YojGFzJGYH0kHLy3HcwZYYNp6ycqycqct1JOZpEO
         qaZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005286; x=1703610086;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h8JOWn9GU9Nla83BWtTSRAknxxtN8+L8TovD6+V8Mi4=;
        b=QFWyIFctAzeKZFDNPKTIxt6VnsJj3vK4rvkL3gBZSHST5ZhiioLOdEyXR0iZ0iVjJt
         beCas1DYyQQ9qSaP2M5yDac+ZWlXv4rlXhIFj59zCnwE+zIG1gOUBtmEb3b+RQtnUNsc
         rEmWLhtEeEPe97WpPOmYXH+XWkn8bFBH57fpXEJqJ0DKjbnoD3G9f6b3DCMbBusYyR94
         zhK7HHTZxOm3ITnMCSB3ECKXlQdXLjV8BT2SwUZyAlaEMY7PBcC5Zyf0ER2ek5jBfZZ4
         Rb4DSyxrsW9zMATuPolKPWwIG/GCOv1udyye7JT99l6/EIEvKAFeqJ6IsUhKUlUdW6Fz
         AAzw==
X-Gm-Message-State: AOJu0YyRq+XgKhagyoTLOPEelpoq1PaOPMoJvrxfgciIapRNhn5XgGqi
	SmMExOxFI8AFHENKxSMD/A==
X-Google-Smtp-Source: AGHT+IFvESFKFDDj+P6Hp56SjNt5xISbZzFocZziXX7FumH32R2Au9gUTKsNb6b63EcE9fIlyJTiZg==
X-Received: by 2002:a05:600c:2492:b0:40c:5583:c6b7 with SMTP id 18-20020a05600c249200b0040c5583c6b7mr6324639wms.109.1703005286360;
        Tue, 19 Dec 2023 09:01:26 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:26 -0800 (PST)
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
Subject: [PATCH v3 21/29] drm/rockchip: inno_hdmi: Don't power up the phy after resetting
Date: Tue, 19 Dec 2023 18:00:51 +0100
Message-ID: <20231219170100.188800-22-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090128_403436_F87EE949 
X-CRM114-Status: GOOD (  14.44  )
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
YWVyemNoZUBnbWFpbC5jb20+Ci0tLQpjaGFuZ2VzIGluIHYzOgogLSBuZXcgcGF0Y2gKCiBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvaW5ub19oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19o
ZG1pLmMKaW5kZXggZTZkMzc3NzI1MDBjLi45ZmVhNDY0YjYyMzQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9pbm5vX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvaW5ub19oZG1pLmMKQEAgLTIwMiw3ICsyMDIsNyBAQCBzdGF0aWMgdm9pZCBpbm5vX2hk
bWlfcmVzZXQoc3RydWN0IGlubm9faGRtaSAqaGRtaSkKIAl2YWwgPSB2X1JFR19DTEtfSU5WIHwg
dl9SRUdfQ0xLX1NPVVJDRV9TWVMgfCB2X1BXUl9PTiB8IHZfSU5UX1BPTF9ISUdIOwogCWhkbWlf
bW9kYihoZG1pLCBIRE1JX1NZU19DVFJMLCBtc2ssIHZhbCk7CiAKLQlpbm5vX2hkbWlfc2V0X3B3
cl9tb2RlKGhkbWksIE5PUk1BTCk7CisJaW5ub19oZG1pX3NldF9wd3JfbW9kZShoZG1pLCBMT1dF
Ul9QV1IpOwogfQogCiBzdGF0aWMgdm9pZCBpbm5vX2hkbWlfZGlzYWJsZV9mcmFtZShzdHJ1Y3Qg
aW5ub19oZG1pICpoZG1pLAotLSAKMi40My4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
