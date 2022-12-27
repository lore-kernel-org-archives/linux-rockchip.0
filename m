Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADBD2C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Dec 2022 11:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjFrPDCN/4VPqAqus2t3RB6BYotXXoWVDVT2RA1jcW4=; b=lsqaOHw9+URd6i
	XvXiDR6dq4vptCPxifQHTGOXXPIYKTiMKyijactTvGgolc8DbgB53+ro31+6mlaZXOw5q4l9/L4wi
	/bRILmonmOLAqVR8aWwg3KgY0QTEnFdVp199G6ecUs4ajspribCA8G+AVjwa504tCpYr+XJGwNMnb
	7PQ6F6QeoHr30UmE5uwmT8bWDq7C3n8Ex7zSl+WC9tzLKsFgXbjLdIoNIzeN3BpZkSJGOsoy3j3M9
	towmJQ0mP1pqpnubfmg5X+BkrsNL54OHqc2FWsx/WU8M8eqit+WPKiSUYBQ9BNaY8kdE+USg4XKMF
	a+pQeqGhav562L7BOYGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA7kq-00CKQU-3v; Tue, 27 Dec 2022 11:04:20 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA7kP-00CKDK-5z
	for linux-rockchip@lists.infradead.org; Tue, 27 Dec 2022 11:03:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672139029;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=k8o9PJLZzeoyXagi9bjgA3sw56iv+c4Whqy1GxWqDbQ=;
	b=GP5PuLVeT+CAei/NbN5CkE0yrNZ8xqJug9jwdPI/FQ16KvbntayB1nXvEnINOEZR0IOFhK
	O6TdP5yQjVA+6mQ+LJma4/EzDF5wWIuQ6J8+ztmDJYNx2eAdMzKq6lWoK2b3rTbLSruaRA
	HyjJmJoc3DvMhFAmaftlMwNY9pEcxOU=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-126-NndRlvcfN_2zWImeiSxr7A-1; Tue, 27 Dec 2022 06:03:48 -0500
X-MC-Unique: NndRlvcfN_2zWImeiSxr7A-1
Received: by mail-wm1-f70.google.com with SMTP id m7-20020a05600c4f4700b003d971a5e770so4708743wmq.3
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Dec 2022 03:03:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k8o9PJLZzeoyXagi9bjgA3sw56iv+c4Whqy1GxWqDbQ=;
        b=nGDKDiaE+hUprLbJdWQwvBltdlM0C5ham/doGTiKqoKpzx6DS+WFRnGFET6Fs0IDtY
         +xtyR7UfVS5U00akLMEPVCjsLNOoU4jiSA0joC6noTSCQhiB3pZxQkSkK6X3Nyk/HUv9
         4obrh/NkA2zfkWFB49G2y/o0KWxqHdjfWCeudKck87VmdwRbWXno+mI+gO8+hOo4NaYq
         uJDeLe7OyDu77M7ZzYKpfOQf4PQ3UrGkS22thKHgfy45GgZ+XB6f53gKrq3vCJAafz1Y
         c2SB0m9rpOQF6BjDJEscNIiuzC82QL/qdrAGmR3PvN4DCWOgeAZl0dfu/Lbc04YP04M0
         rkYA==
X-Gm-Message-State: AFqh2kq0OinN64uyu/Me4gG6MlTn4f8RO3g3t2VgWaWNvRrlXAp5jU6X
	4HpmA9muOv/aj4NCkgkvnYgNcaJw7Awu8XsUi1tmJPKkjyRtG6q4L/CJSVsozFPW6+SiUm/kk1r
	2hdUEwk5uILEmaa9ic+yqRMB006E6XYN4
X-Received: by 2002:a5d:54d0:0:b0:242:1926:ea3d with SMTP id x16-20020a5d54d0000000b002421926ea3dmr13199579wrv.35.1672139026758;
        Tue, 27 Dec 2022 03:03:46 -0800 (PST)
X-Google-Smtp-Source: AMrXdXvnIgdyH1lmfSWD9DSg9V3c69rU+g3lIXactnn+N1hq0KOYIrOqFll72xwpaQL0a49eaqo01A==
X-Received: by 2002:a5d:54d0:0:b0:242:1926:ea3d with SMTP id x16-20020a5d54d0000000b002421926ea3dmr13199559wrv.35.1672139026482;
        Tue, 27 Dec 2022 03:03:46 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id p18-20020a056000019200b00279d23574c4sm7374557wrx.13.2022.12.27.03.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Dec 2022 03:03:45 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>,
	Martijn Braam <martijn@brixit.nl>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Neal Gompa <ngompa13@gmail.com>,
	=?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Robert Mader <robert.mader@posteo.de>,
	Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
	Ondrej Jirman <megi@xff.cz>,
	dri-devel@lists.freedesktop.org,
	Javier Martinez Canillas <javierm@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 4/4] arm64: dts: rk3399-pinephone-pro: Add internal display support
Date: Tue, 27 Dec 2022 12:03:35 +0100
Message-Id: <20221227110335.2923359-5-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221227110335.2923359-1-javierm@redhat.com>
References: <20221227110335.2923359-1-javierm@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_030353_906312_1D457E87 
X-CRM114-Status: GOOD (  12.24  )
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
dGluZXogQ2FuaWxsYXMgPGphdmllcm1AcmVkaGF0LmNvbT4KLS0tCgoobm8gY2hhbmdlcyBzaW5j
ZSB2MikKCkNoYW5nZXMgaW4gdjI6Ci0gRml4IHJlZ3VsYXRvciBub2RlIG5hbWVzIChNYXlhIE1h
dHVzemN6eWspLgotIERyb3Agbm9uLWV4aXN0ZW50ICJwb3dlcm9mZi1pbi1zdXNwZW5kIiBwcm9w
ZXJ0eSAoTWF5YSBNYXR1c3pjenlrKS4KLSBSZW1vdmUgdW5uZWNlc3NhcnkgY29tbWVudHMgaW4g
cGFuZWwgbm9kZSAoTWF5YSBNYXR1c3pjenlrKS4KCiAuLi4vZHRzL3JvY2tjaGlwL3JrMzM5OS1w
aW5lcGhvbmUtcHJvLmR0cyAgICAgfCAxMjMgKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgMTIzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzCmluZGV4IDBlNDQ0MmI1OWE1NS4uNTUw
NDgyMzZlZWY3IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1waW5lcGhvbmUtcHJvLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1waW5lcGhvbmUtcHJvLmR0cwpAQCAtMjksNiArMjksMTIgQEAgY2hvc2VuIHsKIAkJc3Rk
b3V0LXBhdGggPSAic2VyaWFsMjoxNTAwMDAwbjgiOwogCX07CiAKKwliYWNrbGlnaHQ6IGJhY2ts
aWdodCB7CisJCWNvbXBhdGlibGUgPSAicHdtLWJhY2tsaWdodCI7CisJCXB3bXMgPSA8JnB3bTAg
MCAxMDAwMDAwIDA+OworCQlwd20tZGVsYXktdXMgPSA8MTAwMDA+OworCX07CisKIAlncGlvLWtl
eXMgewogCQljb21wYXRpYmxlID0gImdwaW8ta2V5cyI7CiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7CkBAIC04MSw2ICs4NywzMiBAQCB2Y2MxdjhfY29kZWM6IHZjYzF2OC1jb2RlYy1yZWd1
bGF0b3IgewogCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKIAkJdmluLXN1
cHBseSA9IDwmdmNjM3YzX3N5cz47CiAJfTsKKworCS8qIE1JUEkgRFNJIHBhbmVsIDEuOHYgc3Vw
cGx5ICovCisJdmNjMXY4X2xjZDogdmNjMXY4LWxjZC1yZWd1bGF0b3IgeworCQljb21wYXRpYmxl
ID0gInJlZ3VsYXRvci1maXhlZCI7CisJCWVuYWJsZS1hY3RpdmUtaGlnaDsKKwkJcmVndWxhdG9y
LW5hbWUgPSAidmNjMXY4X2xjZCI7CisJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAw
MDA+OworCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKKwkJdmluLXN1cHBs
eSA9IDwmdmNjM3YzX3N5cz47CisJCWdwaW8gPSA8JmdwaW8zIFJLX1BBNSBHUElPX0FDVElWRV9I
SUdIPjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJcGluY3RybC0wID0gPCZkaXNw
bGF5X3B3cmVuMT47CisJfTsKKworCS8qIE1JUEkgRFNJIHBhbmVsIDIuOHYgc3VwcGx5ICovCisJ
dmNjMnY4X2xjZDogdmNjMnY4LWxjZC1yZWd1bGF0b3IgeworCQljb21wYXRpYmxlID0gInJlZ3Vs
YXRvci1maXhlZCI7CisJCWVuYWJsZS1hY3RpdmUtaGlnaDsKKwkJcmVndWxhdG9yLW5hbWUgPSAi
dmNjMnY4X2xjZCI7CisJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDI4MDAwMDA+OworCQly
ZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwyODAwMDAwPjsKKwkJdmluLXN1cHBseSA9IDwmdmNj
M3YzX3N5cz47CisJCWdwaW8gPSA8JmdwaW8zIFJLX1BBMSBHUElPX0FDVElWRV9ISUdIPjsKKwkJ
cGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJcGluY3RybC0wID0gPCZkaXNwbGF5X3B3cmVu
PjsKKwl9OwogfTsKIAogJmNwdV9sMCB7CkBAIC0xMTEsNiArMTQzLDExIEBAICZlbW1jX3BoeSB7
CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJmdwdSB7CisJbWFsaS1zdXBwbHkgPSA8JnZkZF9n
cHU+OworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZpMmMwIHsKIAljbG9jay1mcmVxdWVuY3kg
PSA8NDAwMDAwPjsKIAlpMmMtc2NsLXJpc2luZy10aW1lLW5zID0gPDE2OD47CkBAIC0xOTMsNiAr
MjMwLDkgQEAgdmNjM3YwX3RvdWNoOiBMRE9fUkVHMiB7CiAJCQkJcmVndWxhdG9yLW5hbWUgPSAi
dmNjM3YwX3RvdWNoIjsKIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMDAwMDAwPjsK
IAkJCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMDAwMDAwPjsKKwkJCQlyZWd1bGF0b3It
c3RhdGUtbWVtIHsKKwkJCQkJcmVndWxhdG9yLW9mZi1pbi1zdXNwZW5kOworCQkJCX07CiAJCQl9
OwogCiAJCQl2Y2NhMXY4X2NvZGVjOiBMRE9fUkVHMyB7CkBAIC0zMjYsNiArMzY2LDI1IEBAIG9w
cDA3IHsKIAl9OwogfTsKIAorJmkyYzMgeworCWkyYy1zY2wtcmlzaW5nLXRpbWUtbnMgPSA8NDUw
PjsKKwlpMmMtc2NsLWZhbGxpbmctdGltZS1ucyA9IDwxNT47CisJc3RhdHVzID0gIm9rYXkiOwor
CisJdG91Y2hzY3JlZW5AMTQgeworCQljb21wYXRpYmxlID0gImdvb2RpeCxndDkxN3MiOworCQly
ZWcgPSA8MHgxND47CisJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8zPjsKKwkJaW50ZXJydXB0
cyA9IDxSS19QQjUgSVJRX1RZUEVfRURHRV9SSVNJTkc+OworCQlpcnEtZ3Bpb3MgPSA8JmdwaW8z
IFJLX1BCNSBHUElPX0FDVElWRV9ISUdIPjsKKwkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW8zIFJLX1BC
NCBHUElPX0FDVElWRV9ISUdIPjsKKwkJQVZERDI4LXN1cHBseSA9IDwmdmNjM3YwX3RvdWNoPjsK
KwkJVkRESU8tc3VwcGx5ID0gPCZ2Y2MzdjBfdG91Y2g+OworCQl0b3VjaHNjcmVlbi1zaXplLXgg
PSA8NzIwPjsKKwkJdG91Y2hzY3JlZW4tc2l6ZS15ID0gPDE0NDA+OworCX07Cit9OworCiAmaW9f
ZG9tYWlucyB7CiAJYnQ2NTYtc3VwcGx5ID0gPCZ2Y2MxdjhfZHZwPjsKIAlhdWRpby1zdXBwbHkg
PSA8JnZjY2ExdjhfY29kZWM+OwpAQCAtMzM0LDYgKzM5Myw0MCBAQCAmaW9fZG9tYWlucyB7CiAJ
c3RhdHVzID0gIm9rYXkiOwogfTsKIAorJm1pcGlfZHNpIHsKKwlzdGF0dXMgPSAib2theSI7CisJ
Y2xvY2stbWFzdGVyOworCisJcG9ydHMgeworCQltaXBpX291dDogcG9ydEAxIHsKKwkJCSNhZGRy
ZXNzLWNlbGxzID0gPDA+OworCQkJI3NpemUtY2VsbHMgPSA8MD47CisJCQlyZWcgPSA8MT47CisK
KwkJCW1pcGlfb3V0X3BhbmVsOiBlbmRwb2ludCB7CisJCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZt
aXBpX2luX3BhbmVsPjsKKwkJCX07CisJCX07CisJfTsKKworCXBhbmVsQDAgeworCQljb21wYXRp
YmxlID0gImhhbm5zdGFyLGhzZDA2MGJodzQiOworCQlyZWcgPSA8MD47CisJCWJhY2tsaWdodCA9
IDwmYmFja2xpZ2h0PjsKKwkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW80IFJLX1BEMSBHUElPX0FDVElW
RV9MT1c+OworCQl2Y2Mtc3VwcGx5ID0gPCZ2Y2MydjhfbGNkPjsKKwkJaW92Y2Mtc3VwcGx5ID0g
PCZ2Y2MxdjhfbGNkPjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJcGluY3RybC0w
ID0gPCZkaXNwbGF5X3JzdF9sPjsKKworCQlwb3J0IHsKKwkJCW1pcGlfaW5fcGFuZWw6IGVuZHBv
aW50IHsKKwkJCQlyZW1vdGUtZW5kcG9pbnQgPSA8Jm1pcGlfb3V0X3BhbmVsPjsKKwkJCX07CisJ
CX07CisJfTsKK307CisKICZwbXVfaW9fZG9tYWlucyB7CiAJcG11MTgzMC1zdXBwbHkgPSA8JnZj
Y18xdjg+OwogCXN0YXR1cyA9ICJva2F5IjsKQEAgLTM2MCw2ICs0NTMsMjAgQEAgdnNlbDJfcGlu
OiB2c2VsMi1waW4gewogCQl9OwogCX07CiAKKwlkc2kgeworCQlkaXNwbGF5X3JzdF9sOiBkaXNw
bGF5LXJzdC1sIHsKKwkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19QRDEgUktfRlVOQ19HUElPICZw
Y2ZnX3B1bGxfZG93bj47CisJCX07CisKKwkJZGlzcGxheV9wd3JlbjogZGlzcGxheS1wd3JlbiB7
CisJCQlyb2NrY2hpcCxwaW5zID0gPDMgUktfUEExIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX2Rv
d24+OworCQl9OworCisJCWRpc3BsYXlfcHdyZW4xOiBkaXNwbGF5LXB3cmVuMSB7CisJCQlyb2Nr
Y2hpcCxwaW5zID0gPDMgUktfUEE1IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX2Rvd24+OworCQl9
OworCX07CisKIAlzb3VuZCB7CiAJCXZjYzF2OF9jb2RlY19lbjogdmNjMXY4LWNvZGVjLWVuIHsK
IAkJCXJvY2tjaGlwLHBpbnMgPSA8MyBSS19QQTQgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfZG93
bj47CkBAIC0zNjcsNiArNDc0LDEwIEBAIHZjYzF2OF9jb2RlY19lbjogdmNjMXY4LWNvZGVjLWVu
IHsKIAl9OwogfTsKIAorJnB3bTAgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZzZG1tYyB7
CiAJYnVzLXdpZHRoID0gPDQ+OwogCWNhcC1zZC1oaWdoc3BlZWQ7CkBAIC0zOTYsMyArNTA3LDE1
IEBAICZ0c2FkYyB7CiAmdWFydDIgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CisKKyZ2b3BiIHsK
KwlzdGF0dXMgPSAib2theSI7CisJYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgRENMS19WT1AwX0RJ
Vj4sIDwmY3J1IERDTEtfVk9QMD4sCisJCQkgIDwmY3J1IEFDTEtfVk9QMD4sIDwmY3J1IEhDTEtf
Vk9QMD47CisJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MD4sIDwwPiwgPDQwMDAwMDAwMD4sIDwx
MDAwMDAwMDA+OworCWFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8JmNydSBQTExfQ1BMTD4sIDwm
Y3J1IERDTEtfVk9QMF9GUkFDPjsKK307CisKKyZ2b3BiX21tdSB7CisJc3RhdHVzID0gIm9rYXki
OworfTsKLS0gCjIuMzguMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
