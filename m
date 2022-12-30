Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7C3BC10F1B
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Dec 2022 11:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9lNn6MRb9+ubp9iamXRps3jLQ4OPhBjCdIEkGtVpeC4=; b=YaZeZH9F6EOc8v
	F4XwJXNrp8xv9KPODNr2qbuaz044FO6P1BZJph3q13oqNw+5gO+qJQJ+0xliAQkAgrmue9bHDNbbh
	/s4+xBSulrEXwAtE9pPnu7zpusmRw0mGGjlVi5AhpoLGXtij1Mf6ufbB5iRh8KD+xULRBUMuK6iHb
	Q4+Lx1fR7BEeAgo47ZSTu+6oujhVTqa4FHZROIB6O3tL+nSkhmfOqIYTqO/geSYXRQ4XZNoXyQHov
	i5W4r0TK/dYdc8yQqOfzrL4LFAppYUie0ep7UrQaytwhuomhuVFsK5g/Chu/0ZpCKEhgtUo+3duJp
	FEQMFdyUM2jYNyJFhkig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBDhw-008buV-V3; Fri, 30 Dec 2022 11:37:53 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBDch-008Yzq-4b
	for linux-rockchip@lists.infradead.org; Fri, 30 Dec 2022 11:32:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672399946;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=w4EOTaScDiWLOjXXokoUDPMj1ubuks55AAvOUz+Vx7M=;
	b=MQ/AWFJulqeiMCXqt8Rntl9/bVSZ/uDuWmjE7SDIghg25FfkEeAk411OINlHnXtaXL1npv
	24sX+xJJD/PZjz0Ymadzf4UjO9JNpz8k0u6f6hAa//Q4kvBChCP0aUaonZvMQg/oFsz/AT
	yAzpnNNyI430CoGfUMB/CqE+fyzu+pk=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-663-yCzVIlsUPhKN1oci3hdTgg-1; Fri, 30 Dec 2022 06:32:24 -0500
X-MC-Unique: yCzVIlsUPhKN1oci3hdTgg-1
Received: by mail-wm1-f71.google.com with SMTP id r15-20020a05600c35cf00b003d9a14517b2so1036556wmq.2
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Dec 2022 03:32:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w4EOTaScDiWLOjXXokoUDPMj1ubuks55AAvOUz+Vx7M=;
        b=TSA0/WEIQR1257YOMfuKDHma4RyfPSzF9yyCC4sM1ND+bNCaUP/ZeRJzmmrCjCAwZR
         C39TGqpuZJZdpbJQHuwifaUYJ1yvtT2qnnrybW3s7VxPsB4AMz8fE3L0Vb5xaOyLKDRC
         CZ93SkPODRz5/+gMaPcweKK0BpdI+uToEasDpVHHrUc6ln2ptdL/ITm+Yw1j6B3ZO8Wf
         Fea3oFqGxuaxplEjF6pDrXjSKT4eYL+3C1+F+vmN8eYBt3/y2EYI3de7107oJ6hKvqzV
         pc2Y9ABBn6uCD4OZhFCPfESNSkyrfKz7NPqGet32468Mw+6wmEatjystucpqAN6bwaAA
         VJGg==
X-Gm-Message-State: AFqh2kr3ZCwBXdai8qxpGd036PHeSjuhFbuvE8JmsouhfIxfFocBfFVo
	RSExjhXDE4x7nQKu0xJLK9xUGxI2LewHC/25QgUcDUidd4IH2o6nobQr/OIQOjENTAijK/JtDs0
	lfvNnQOiPIHvKrQGmD2DBfZ1tEHuhywY7
X-Received: by 2002:a05:600c:b4d:b0:3d3:49db:d84 with SMTP id k13-20020a05600c0b4d00b003d349db0d84mr21984087wmr.20.1672399943521;
        Fri, 30 Dec 2022 03:32:23 -0800 (PST)
X-Google-Smtp-Source: AMrXdXszsZjoNFeeeWYKKgDciXJIvKKmm+zGF6f73kyyeBdYo9aUbjRSrQkAKNWWoxHRxaiR62Fjaw==
X-Received: by 2002:a05:600c:b4d:b0:3d3:49db:d84 with SMTP id k13-20020a05600c0b4d00b003d349db0d84mr21984072wmr.20.1672399943254;
        Fri, 30 Dec 2022 03:32:23 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id y22-20020a1c4b16000000b003d01b84e9b2sm27638432wma.27.2022.12.30.03.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Dec 2022 03:32:22 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Martijn Braam <martijn@brixit.nl>,
	Sam Ravnborg <sam@ravnborg.org>,
	Robert Mader <robert.mader@posteo.de>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Peter Robinson <pbrobinson@gmail.com>,
	Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
	dri-devel@lists.freedesktop.org,
	Ondrej Jirman <megi@xff.cz>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Neal Gompa <ngompa13@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 4/4] arm64: dts: rk3399-pinephone-pro: Add internal display support
Date: Fri, 30 Dec 2022 12:31:54 +0100
Message-Id: <20221230113155.3430142-5-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221230113155.3430142-1-javierm@redhat.com>
References: <20221230113155.3430142-1-javierm@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221230_033227_650461_1EFE2BB8 
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

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpUaGUgcGhvbmUncyBkaXNwbGF5IGlz
IHVzaW5nIEhhbm5zdGFyIExDRCBwYW5lbCwgYW5kIEdvb2RpeCBiYXNlZAp0b3VjaHNjcmVlbi4g
U3VwcG9ydCBpdC4KClNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PgpD
by1kZXZlbG9wZWQtYnk6IE1hcnRpam4gQnJhYW0gPG1hcnRpam5AYnJpeGl0Lm5sPgpTaWduZWQt
b2ZmLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5ubD4KQ28tZGV2ZWxvcGVkLWJ5
OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1PgpTaWduZWQtb2ZmLWJ5OiBLYW1p
bCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1PgpTaWduZWQtb2ZmLWJ5OiBKYXZpZXIgTWFy
dGluZXogQ2FuaWxsYXMgPGphdmllcm1AcmVkaGF0LmNvbT4KVGVzdGVkLWJ5OiBUb20gRml0emhl
bnJ5IDx0b21AdG9tLWZpdHpoZW5yeS5tZS51az4KLS0tCgpDaGFuZ2VzIGluIHY0OgotIEFkZCBU
b20gRml0emhlbnJ5J3MgVGVzdGVkLWJ5IHRhZy4KLSBLZWVwIHRoZSBEVFMgbm9kZXMgc29ydGVk
IGFscGhhYmV0aWNhbGx5IChUb20gRml0emhlbnJ5KS4KCkNoYW5nZXMgaW4gdjI6Ci0gRml4IHJl
Z3VsYXRvciBub2RlIG5hbWVzIChNYXlhIE1hdHVzemN6eWspLgotIERyb3Agbm9uLWV4aXN0ZW50
ICJwb3dlcm9mZi1pbi1zdXNwZW5kIiBwcm9wZXJ0eSAoTWF5YSBNYXR1c3pjenlrKS4KLSBSZW1v
dmUgdW5uZWNlc3NhcnkgY29tbWVudHMgaW4gcGFuZWwgbm9kZSAoTWF5YSBNYXR1c3pjenlrKS4K
CiAuLi4vZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyAgICAgfCAxMjMgKysr
KysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTIzIGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJv
LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8u
ZHRzCmluZGV4IDA0NDAzYTc2MjM4Yi4uMGQ0OGZiYzVkYmU0IDEwMDY0NAotLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cworKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cwpAQCAtMjUs
NiArMjUsMTIgQEAgYWxpYXNlcyB7CiAJCW1tYzIgPSAmc2RoY2k7CiAJfTsKIAorCWJhY2tsaWdo
dDogYmFja2xpZ2h0IHsKKwkJY29tcGF0aWJsZSA9ICJwd20tYmFja2xpZ2h0IjsKKwkJcHdtcyA9
IDwmcHdtMCAwIDEwMDAwMDAgMD47CisJCXB3bS1kZWxheS11cyA9IDwxMDAwMD47CisJfTsKKwog
CWNob3NlbiB7CiAJCXN0ZG91dC1wYXRoID0gInNlcmlhbDI6MTE1MjAwbjgiOwogCX07CkBAIC04
Miw2ICs4OCwzMiBAQCB2Y2MxdjhfY29kZWM6IHZjYzF2OC1jb2RlYy1yZWd1bGF0b3IgewogCQl2
aW4tc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKIAl9OwogCisJLyogTUlQSSBEU0kgcGFuZWwgMS44
diBzdXBwbHkgKi8KKwl2Y2MxdjhfbGNkOiB2Y2MxdjgtbGNkLXJlZ3VsYXRvciB7CisJCWNvbXBh
dGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKKwkJZW5hYmxlLWFjdGl2ZS1oaWdoOworCQlyZWd1
bGF0b3ItbmFtZSA9ICJ2Y2MxdjhfbGNkIjsKKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8
MTgwMDAwMD47CisJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+OworCQl2aW4t
c3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKKwkJZ3BpbyA9IDwmZ3BpbzMgUktfUEE1IEdQSU9fQUNU
SVZFX0hJR0g+OworCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCQlwaW5jdHJsLTAgPSA8
JmRpc3BsYXlfcHdyZW4xPjsKKwl9OworCisJLyogTUlQSSBEU0kgcGFuZWwgMi44diBzdXBwbHkg
Ki8KKwl2Y2MydjhfbGNkOiB2Y2MydjgtbGNkLXJlZ3VsYXRvciB7CisJCWNvbXBhdGlibGUgPSAi
cmVndWxhdG9yLWZpeGVkIjsKKwkJZW5hYmxlLWFjdGl2ZS1oaWdoOworCQlyZWd1bGF0b3ItbmFt
ZSA9ICJ2Y2MydjhfbGNkIjsKKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MjgwMDAwMD47
CisJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDI4MDAwMDA+OworCQl2aW4tc3VwcGx5ID0g
PCZ2Y2MzdjNfc3lzPjsKKwkJZ3BpbyA9IDwmZ3BpbzMgUktfUEExIEdQSU9fQUNUSVZFX0hJR0g+
OworCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCQlwaW5jdHJsLTAgPSA8JmRpc3BsYXlf
cHdyZW4+OworCX07CisKIAl3aWZpX3B3cnNlcTogc2Rpby13aWZpLXB3cnNlcSB7CiAJCWNvbXBh
dGlibGUgPSAibW1jLXB3cnNlcS1zaW1wbGUiOwogCQljbG9ja3MgPSA8JnJrODE4IDE+OwpAQCAt
MTMyLDYgKzE2NCwxMSBAQCAmZW1tY19waHkgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZn
cHUgeworCW1hbGktc3VwcGx5ID0gPCZ2ZGRfZ3B1PjsKKwlzdGF0dXMgPSAib2theSI7Cit9Owor
CiAmaTJjMCB7CiAJY2xvY2stZnJlcXVlbmN5ID0gPDQwMDAwMD47CiAJaTJjLXNjbC1yaXNpbmct
dGltZS1ucyA9IDwxNjg+OwpAQCAtMjE0LDYgKzI1MSw5IEBAIHZjYzN2MF90b3VjaDogTERPX1JF
RzIgewogCQkJCXJlZ3VsYXRvci1uYW1lID0gInZjYzN2MF90b3VjaCI7CiAJCQkJcmVndWxhdG9y
LW1pbi1taWNyb3ZvbHQgPSA8MzAwMDAwMD47CiAJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8MzAwMDAwMD47CisJCQkJcmVndWxhdG9yLXN0YXRlLW1lbSB7CisJCQkJCXJlZ3VsYXRvci1v
ZmYtaW4tc3VzcGVuZDsKKwkJCQl9OwogCQkJfTsKIAogCQkJdmNjYTF2OF9jb2RlYzogTERPX1JF
RzMgewpAQCAtMzQ3LDYgKzM4NywyNSBAQCBvcHAwNyB7CiAJfTsKIH07CiAKKyZpMmMzIHsKKwlp
MmMtc2NsLXJpc2luZy10aW1lLW5zID0gPDQ1MD47CisJaTJjLXNjbC1mYWxsaW5nLXRpbWUtbnMg
PSA8MTU+OworCXN0YXR1cyA9ICJva2F5IjsKKworCXRvdWNoc2NyZWVuQDE0IHsKKwkJY29tcGF0
aWJsZSA9ICJnb29kaXgsZ3Q5MTdzIjsKKwkJcmVnID0gPDB4MTQ+OworCQlpbnRlcnJ1cHQtcGFy
ZW50ID0gPCZncGlvMz47CisJCWludGVycnVwdHMgPSA8UktfUEI1IElSUV9UWVBFX0VER0VfUklT
SU5HPjsKKwkJaXJxLWdwaW9zID0gPCZncGlvMyBSS19QQjUgR1BJT19BQ1RJVkVfSElHSD47CisJ
CXJlc2V0LWdwaW9zID0gPCZncGlvMyBSS19QQjQgR1BJT19BQ1RJVkVfSElHSD47CisJCUFWREQy
OC1zdXBwbHkgPSA8JnZjYzN2MF90b3VjaD47CisJCVZERElPLXN1cHBseSA9IDwmdmNjM3YwX3Rv
dWNoPjsKKwkJdG91Y2hzY3JlZW4tc2l6ZS14ID0gPDcyMD47CisJCXRvdWNoc2NyZWVuLXNpemUt
eSA9IDwxNDQwPjsKKwl9OworfTsKKwogJmlvX2RvbWFpbnMgewogCWJ0NjU2LXN1cHBseSA9IDwm
dmNjMXY4X2R2cD47CiAJYXVkaW8tc3VwcGx5ID0gPCZ2Y2NhMXY4X2NvZGVjPjsKQEAgLTM1NSw2
ICs0MTQsNDAgQEAgJmlvX2RvbWFpbnMgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZtaXBp
X2RzaSB7CisJc3RhdHVzID0gIm9rYXkiOworCWNsb2NrLW1hc3RlcjsKKworCXBvcnRzIHsKKwkJ
bWlwaV9vdXQ6IHBvcnRAMSB7CisJCQkjYWRkcmVzcy1jZWxscyA9IDwwPjsKKwkJCSNzaXplLWNl
bGxzID0gPDA+OworCQkJcmVnID0gPDE+OworCisJCQltaXBpX291dF9wYW5lbDogZW5kcG9pbnQg
eworCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmbWlwaV9pbl9wYW5lbD47CisJCQl9OworCQl9Owor
CX07CisKKwlwYW5lbEAwIHsKKwkJY29tcGF0aWJsZSA9ICJoYW5uc3Rhcixoc2QwNjBiaHc0Iiwg
ImhpbWF4LGh4ODM5NCI7CisJCXJlZyA9IDwwPjsKKwkJYmFja2xpZ2h0ID0gPCZiYWNrbGlnaHQ+
OworCQlyZXNldC1ncGlvcyA9IDwmZ3BpbzQgUktfUEQxIEdQSU9fQUNUSVZFX0xPVz47CisJCXZj
Yy1zdXBwbHkgPSA8JnZjYzJ2OF9sY2Q+OworCQlpb3ZjYy1zdXBwbHkgPSA8JnZjYzF2OF9sY2Q+
OworCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworCQlwaW5jdHJsLTAgPSA8JmRpc3BsYXlf
cnN0X2w+OworCisJCXBvcnQgeworCQkJbWlwaV9pbl9wYW5lbDogZW5kcG9pbnQgeworCQkJCXJl
bW90ZS1lbmRwb2ludCA9IDwmbWlwaV9vdXRfcGFuZWw+OworCQkJfTsKKwkJfTsKKwl9OworfTsK
KwogJnBtdV9pb19kb21haW5zIHsKIAlwbXUxODMwLXN1cHBseSA9IDwmdmNjXzF2OD47CiAJc3Rh
dHVzID0gIm9rYXkiOwpAQCAtMzY3LDYgKzQ2MCwyMCBAQCBwd3JidG5fcGluOiBwd3JidG4tcGlu
IHsKIAkJfTsKIAl9OwogCisJZHNpIHsKKwkJZGlzcGxheV9yc3RfbDogZGlzcGxheS1yc3QtbCB7
CisJCQlyb2NrY2hpcCxwaW5zID0gPDQgUktfUEQxIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX2Rv
d24+OworCQl9OworCisJCWRpc3BsYXlfcHdyZW46IGRpc3BsYXktcHdyZW4geworCQkJcm9ja2No
aXAscGlucyA9IDwzIFJLX1BBMSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9kb3duPjsKKwkJfTsK
KworCQlkaXNwbGF5X3B3cmVuMTogZGlzcGxheS1wd3JlbjEgeworCQkJcm9ja2NoaXAscGlucyA9
IDwzIFJLX1BBNSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9kb3duPjsKKwkJfTsKKwl9OworCiAJ
cG1pYyB7CiAJCXBtaWNfaW50X2w6IHBtaWMtaW50LWwgewogCQkJcm9ja2NoaXAscGlucyA9IDwx
IFJLX1BDNSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47CkBAIC00MDgsNiArNTE1LDEwIEBA
IGJ0X3Jlc2V0X3BpbjogYnQtcmVzZXQtcGluIHsKIAl9OwogfTsKIAorJnB3bTAgeworCXN0YXR1
cyA9ICJva2F5IjsKK307CisKICZzZGlvMCB7CiAJYnVzLXdpZHRoID0gPDQ+OwogCWNhcC1zZC1o
aWdoc3BlZWQ7CkBAIC00NzIsMyArNTgzLDE1IEBAIGJsdWV0b290aCB7CiAmdWFydDIgewogCXN0
YXR1cyA9ICJva2F5IjsKIH07CisKKyZ2b3BiIHsKKwlzdGF0dXMgPSAib2theSI7CisJYXNzaWdu
ZWQtY2xvY2tzID0gPCZjcnUgRENMS19WT1AwX0RJVj4sIDwmY3J1IERDTEtfVk9QMD4sCisJCQkg
IDwmY3J1IEFDTEtfVk9QMD4sIDwmY3J1IEhDTEtfVk9QMD47CisJYXNzaWduZWQtY2xvY2stcmF0
ZXMgPSA8MD4sIDwwPiwgPDQwMDAwMDAwMD4sIDwxMDAwMDAwMDA+OworCWFzc2lnbmVkLWNsb2Nr
LXBhcmVudHMgPSA8JmNydSBQTExfQ1BMTD4sIDwmY3J1IERDTEtfVk9QMF9GUkFDPjsKK307CisK
KyZ2b3BiX21tdSB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKLS0gCjIuMzguMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
