Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6C49C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Mar 2023 07:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5dIQlqHhB/49zm1fPlTbgtMuru/QWyxc+7dnNkrLcU=; b=Cu8LVWxxw7ca9T
	DptFIGRDc3Dztn0dHVPVYHsuNTsyV+hbGvqtmw0K9liQx6Ft0kmMYlLj5FBp9CSHcsbEuDIVzG+U/
	fQLKIUSQ3KomIK1j6DbmpttHMOB510WgkzSsbRrgMzUzCYtVlfyeHJTBgnVRN1j8Z46C8MleAl9y1
	+XyxLa5jh4HWbDtptc8iEvucQ7QEZP6+yFFUx+fjNBjTsQMFBzvdt9H37eelKk03r18R9bJcgIUOP
	lLk6Hd63q1DwWSEiGkNfHwVIxQ7vfmiAM9MLOavs2/6ZvFjPXWYzcyl/r0AO5Or9rQhz4XYg67Azn
	f3MmNg+fKbQyYy2Hb+PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3ps-00DSNK-1s;
	Tue, 28 Mar 2023 07:33:40 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3pb-00DSGh-0n
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Mar 2023 07:33:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679988802;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nNdM7KSyRgCrr4mbIGjnmBDUe48JVTbvN2evKlFTHYo=;
	b=XtEtvIPK2RO7cjbVkPPDP3fifMoM+Ssy4zkcRGnL6dOTMS35ctjGKAI7E1ecUet3RldUWQ
	bUEDsZChasgQVsMKEcXBNtA12eCtlvlQJSNEq6TwTP9VUrQdA5X1TIMf/D4VeO7CxaMabH
	CgtVgAoz0bYaud/ssCQsi7s10yORIS8=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-582-lhhshQmqN6qhWTB00VC_NA-1; Tue, 28 Mar 2023 03:33:19 -0400
X-MC-Unique: lhhshQmqN6qhWTB00VC_NA-1
Received: by mail-wm1-f69.google.com with SMTP id bi27-20020a05600c3d9b00b003ef6ee937b8so2630511wmb.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Mar 2023 00:33:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679988798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nNdM7KSyRgCrr4mbIGjnmBDUe48JVTbvN2evKlFTHYo=;
        b=rZJZ8UhSKtWxQahVFsNK23IJLUesE2w679UPXmnwQKfWa1xFm2T7p7Ujwgn6c2hzK/
         eHkb9G1b8y2BpSAO/NgLLQeMWPh2jKUhkd/hvk1kmOdZNIZJ8ASDyHD0vHslf85Vv9QA
         r87Oka/zPtcACpwpNvgI2W5NswzV4/lvExm13YB8MHFlQZ7NsbaZ/UYTMgKe2H97Enmg
         BVMWP7nSBQhEeGDe+/sZh3VV19s8yuCnmK5NlRllObYGxKJ3G0ssdy83f5g1kamdPA24
         wrm5CmJmvkbAD4JaGRDuTC37LrnmBeYMNsAvwkDEwArp8bj/G+jInEEcmHgO65thXaN5
         EvQg==
X-Gm-Message-State: AO0yUKVCizMQuLPOLBLH1hCAPbY6dmIEiT/0n9HaaPs8v+iXOvtyhXRl
	L4GNuYqjxphNbdULL0jSb4m0KV5eJtEbolxHJH43PP6m55tqrEMozKd503A0kbgUBM49oIrBaPH
	zrUC5hMtqDEqsujhZVyxf/e/fAV2fsgFI
X-Received: by 2002:a05:600c:c6:b0:3ef:df3:1693 with SMTP id u6-20020a05600c00c600b003ef0df31693mr11393762wmm.32.1679988798071;
        Tue, 28 Mar 2023 00:33:18 -0700 (PDT)
X-Google-Smtp-Source: AK7set98gCyXpnG4Ha5cE59btAVfSKxfqXI1RJYKrRZnSKKWGrx+Oi6U2VNaI7A9EVKO8nI+cTTlEQ==
X-Received: by 2002:a05:600c:c6:b0:3ef:df3:1693 with SMTP id u6-20020a05600c00c600b003ef0df31693mr11393735wmm.32.1679988797783;
        Tue, 28 Mar 2023 00:33:17 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j6-20020a05600c190600b003ef6bc71cccsm7527075wmq.27.2023.03.28.00.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 00:33:17 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>,
	Tom <tom@tom-fitzhenry.me.uk>,
	Robert Mader <robert.mader@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Martijn Braam <martijn@brixit.nl>,
	Ondrej Jirman <megi@xff.cz>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	=?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jarrah Gosbell <kernel@undef.tools>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 2/2] arm64: dts: rk3399-pinephone-pro: Add touchscreen support
Date: Tue, 28 Mar 2023 09:33:09 +0200
Message-Id: <20230328073309.1743112-3-javierm@redhat.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230328073309.1743112-1-javierm@redhat.com>
References: <20230328073309.1743112-1-javierm@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_003323_355136_7271057C 
X-CRM114-Status: GOOD (  11.66  )
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

RnJvbTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+CgpUaGUgcGhvbmUgaGFzIGEg
R29vZGl4IEdUMTE1OCB0b3VjaHNjcmVlbiwgYWRkIGEgRFQgbm9kZSBmb3IgaXQuCgpTaWduZWQt
b2ZmLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5ubD4KQ28tZGV2ZWxvcGVkLWJ5
OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1PgpTaWduZWQtb2ZmLWJ5OiBLYW1p
bCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1PgpDby1kZXZlbG9wZWQtYnk6IE9uZHJlaiBK
aXJtYW4gPG1lZ2lAeGZmLmN6PgpTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhm
Zi5jej4KU2lnbmVkLW9mZi1ieTogSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIDxqYXZpZXJtQHJl
ZGhhdC5jb20+Ci0tLQoKQ2hhbmdlcyBpbiB2MzoKLSBVc2UgdGhlIGNvcnJlY3QgImdvb2RpeCxn
dDExNTgiIGNvbXBhdGlibGUgc3RyaW5nIChPbmRyZWogSmlybWFuKS4KLSBSZW1vdmUgInBvd2Vy
b2ZmLWluLXN1c3BlbmQiIG5vdCBzdXBwb3J0ZWQgaW4gbWFpbmxpbmUgKE9uZHJlaiBKaXJtYW4p
LgoKIC4uLi9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzICAgICB8IDE5ICsr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXBy
by5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJv
LmR0cwppbmRleCA1MzliMzZlOGJmZjUuLjQ3NWJhNzhhY2MwOSAxMDA2NDQKLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKQEAgLTM2
Nyw2ICszNjcsMjUgQEAgcmVndWxhdG9yLXN0YXRlLW1lbSB7CiAJfTsKIH07CiAKKyZpMmMzIHsK
KwlpMmMtc2NsLXJpc2luZy10aW1lLW5zID0gPDQ1MD47CisJaTJjLXNjbC1mYWxsaW5nLXRpbWUt
bnMgPSA8MTU+OworCXN0YXR1cyA9ICJva2F5IjsKKworCXRvdWNoc2NyZWVuQDE0IHsKKwkJY29t
cGF0aWJsZSA9ICJnb29kaXgsZ3QxMTU4IjsKKwkJcmVnID0gPDB4MTQ+OworCQlpbnRlcnJ1cHQt
cGFyZW50ID0gPCZncGlvMz47CisJCWludGVycnVwdHMgPSA8UktfUEI1IElSUV9UWVBFX0VER0Vf
UklTSU5HPjsKKwkJaXJxLWdwaW9zID0gPCZncGlvMyBSS19QQjUgR1BJT19BQ1RJVkVfSElHSD47
CisJCXJlc2V0LWdwaW9zID0gPCZncGlvMyBSS19QQjQgR1BJT19BQ1RJVkVfSElHSD47CisJCUFW
REQyOC1zdXBwbHkgPSA8JnZjYzN2MF90b3VjaD47CisJCVZERElPLXN1cHBseSA9IDwmdmNjM3Yw
X3RvdWNoPjsKKwkJdG91Y2hzY3JlZW4tc2l6ZS14ID0gPDcyMD47CisJCXRvdWNoc2NyZWVuLXNp
emUteSA9IDwxNDQwPjsKKwl9OworfTsKKwogJmNsdXN0ZXIwX29wcCB7CiAJb3BwMDQgewogCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOwotLSAKMi40MC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
