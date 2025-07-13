Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C804CC83F1D
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Jul 2025 09:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwQALGAVBonqGisHh3DvZFk697rMpy3Y9ls+PCsP7GM=; b=hn8QRgqspLTsMq
	WvKNRQeCNbWMmi+CHjYl+VJ2gHq7OJL4lc0O5MbW4wjf54YLlxMOSwZ/pR1YVsCIDcv0dfBoQ+CkM
	fs7q3mAxX78DeZsUd3HUMS/iLkQKKtoJOeRX+j7Mwen/UsSAccPkMUwXSoOAuJJmABWofnhaGCuy6
	A/RbE0o/2AFB33PUNJMAT2gEYrgJcnAFCd/R3DnHTIcHKoTV5jIED+NH/dtWeZFY+6fe4+xainiB9
	pA4xIfK/k7d66WjJdOSDY/52DXvKs8rB9Zdy49GgI/M0vBb7TChOqnErMnknhYm0QlcOGRSU+Z1QE
	VgCMBk3ZlqJsf5Z0YLYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uasdW-0000000HZwZ-3Ejh;
	Sun, 13 Jul 2025 09:04:42 +0000
Received: from mail-ej1-f44.google.com ([209.85.218.44])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uasEs-0000000HXDP-2CPk;
	Sun, 13 Jul 2025 08:39:15 +0000
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ae708b0e83eso326230266b.2;
        Sun, 13 Jul 2025 01:39:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752395953; x=1753000753;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HOHpT8kGZSJVLxTQMVWR2M9VRzfmT5p8z/9ngbND8fo=;
        b=D/VLGTdbx2q+GPovIpSE5g6RTb8BFDFMIXQJ3dSUM8tha2caexLQbVp3y/7Z7iBF9X
         CCFDs/Y87cBU0ZqX1akQPPzWtM4BjFUxGkr1xo5oMDP3fEv/3zIXvtgs/3rTYWN9iZ7D
         XF49iXKZe/khKRZ5f2dX6nl1gEkGhtbZzhMsdklYRme/e/PXrIfgF6EXau4xPVE3ig5F
         HxlZumHLoNPaLhBWPv4WmsadsfvVfiBgQ92Zxeq9Iah8U86aKDueFm/mES1DhpgpTaVJ
         oNA6PnF18zSG67T9xDz9ZviV37yarhrsE2KEoxL7qI9dR8We05AscjOrqW+cIeJSEfoH
         Tg2A==
X-Forwarded-Encrypted: i=1; AJvYcCV4/WdQeCmt8LmyTBH4ofW4/oWiBTVyF+a5OSJqlJTXGyNp6FFCcWW72ziS/4Q7UmPhYl89BsdARigcdZae5ks=@lists.infradead.org, AJvYcCWUC45nJSLOu1wCeAJtNjhg/CyRn4ysuw79bB+LXAucb11iaipL/eEmHOHe2lGS3gdp+q7gkRz6DDLfmUo82JDb@lists.infradead.org
X-Gm-Message-State: AOJu0YzvEvY3ClPudJnT+6AddYCzafs3zArDPKiDli/iC6HVfnpVObv/
	mCMHTVMd8+MAFdp5VzMVndtH5R0oVOpvF+2rWxCp8IUGZS2ICUdPnf1oZZVKKFSx
X-Gm-Gg: ASbGnctb2MyNaIGc3I8EfP+gwtqL8AzNgF6xyhZF61NcE4b8taXCs3Tqi8W46w11ksI
	n6KFnKaSIyiD7riQhVQH/qepAX546B+HXYLbDA7R9def/5QZ8030AmiBwb7zzdyYthopD8zdn4a
	aPVtUbRvrja0ruvZb8Sp0WQfefruaFb/9SEbl1HfCq46ET1VPY0SsXakrajs9XuFYlU8/Cn9J/s
	HLORDWCcENhHNTvu12MzCjxe5Rx05YRJj/LjwH1maHSwU+m5hI3u+dsX/t+qQRBu//p9hhlC1OQ
	yfPAQ1go3s3kg+/HtNq+AYVTtN/BGbBWzyFJ+EOlQNi5Id7bUaTIX1U7AB+AEF2bCAZcm1MjnjC
	1Z2b69UjN3ipyGAVsltUEmoqKk68CDlsijLC/legD4u9EB5OAGevVy5hV
X-Google-Smtp-Source: AGHT+IHl3nw9qjo4aS5LVukEuyLIVG/s6+0jGJrU9nM4JX0orxt25nmWT7xes/c92JOudJh9cADHRw==
X-Received: by 2002:a17:907:1b08:b0:ad8:a41a:3cd2 with SMTP id a640c23a62f3a-ae6fbe71f29mr1117728466b.16.1752395952721;
        Sun, 13 Jul 2025 01:39:12 -0700 (PDT)
Received: from [10.42.0.1] (cst-prg-46-162.cust.vodafone.cz. [46.135.46.162])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e90a42sm610876266b.27.2025.07.13.01.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 01:39:12 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Sun, 13 Jul 2025 10:38:56 +0200
Subject: [PATCH v8 06/10] dt-bindings: npu: rockchip,rknn: Add bindings
MIME-Version: 1.0
Message-Id: <20250713-6-10-rocket-v8-6-64fa3115e910@tomeuvizoso.net>
References: <20250713-6-10-rocket-v8-0-64fa3115e910@tomeuvizoso.net>
In-Reply-To: <20250713-6-10-rocket-v8-0-64fa3115e910@tomeuvizoso.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Kever Yang <kever.yang@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>, 
 Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250713_013914_573685_5232AF5D 
X-CRM114-Status: GOOD (  14.70  )
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

QWRkIHRoZSBiaW5kaW5ncyBmb3IgdGhlIE5ldXJhbCBQcm9jZXNzaW5nIFVuaXQgSVAgZnJvbSBS
b2NrY2hpcC4KCnYyOgotIEFkYXB0IHRvIG5ldyBub2RlIHN0cnVjdHVyZSAob25lIG5vZGUgcGVy
IGNvcmUsIGVhY2ggd2l0aCBpdHMgb3duCiAgSU9NTVUpCi0gU2V2ZXJhbCBtaXNjLiBmaXhlcyBm
cm9tIFNlYmFzdGlhbiBSZWljaGVsCgp2MzoKLSBTcGxpdCByZWdpc3RlciBibG9jayBpbiBpdHMg
Y29uc3RpdHVlbnQgc3ViYmxvY2tzLCBhbmQgb25seSByZXF1aXJlCiAgdGhlIG9uZXMgdGhhdCB0
aGUga2VybmVsIHdvdWxkIGV2ZXIgdXNlIChOaWNvbGFzIEZyYXR0YXJvbGkpCi0gR3JvdXAgc3Vw
cGxpZXMgKFJvYiBIZXJyaW5nKQotIEV4cGxhaW4gdGhlIHdheSBpbiB3aGljaCB0aGUgdG9wIGNv
cmUgaXMgc3BlY2lhbCAoUm9iIEhlcnJpbmcpCgp2NDoKLSBDaGFuZ2UgcmVxdWlyZWQgbm9kZSBu
YW1lIHRvIG5wdUAgKFJvYiBIZXJyaW5nIGFuZCBLcnp5c3p0b2YgS296bG93c2tpKQotIFJlbW92
ZSB1bm5lZWRlZCBpdGVtczogKEtyenlzenRvZiBLb3psb3dza2kpCi0gRml4IHVzZSBvZiBtaW5J
dGVtcy9tYXhJdGVtcyAoS3J6eXN6dG9mIEtvemxvd3NraSkKLSBBZGQgcmVnLW5hbWVzIHRvIGxp
c3Qgb2YgcmVxdWlyZWQgcHJvcGVydGllcyAoS3J6eXN6dG9mIEtvemxvd3NraSkKLSBGaXggZXhh
bXBsZSAoS3J6eXN6dG9mIEtvemxvd3NraSkKCnY1OgotIFJlbmFtZSBmaWxlIHRvIHJvY2tjaGlw
LHJrMzU4OC1ya25uLWNvcmUueWFtbCAoS3J6eXN6dG9mIEtvemxvd3NraSkKLSBTdHJlYW1saW5l
IGNvbXBhdGlibGUgcHJvcGVydHkgKEtyenlzenRvZiBLb3psb3dza2kpCgp2NjoKLSBSZW1vdmUg
bWVudGlvbiB0byBOVkRMQSwgYXMgdGhlIGhhcmR3YXJlIGlzIG9ubHkgaW5jaWRlbnRhbGx5IHJl
bGF0ZWQKICAoS2V2ZXIgWWFuZykKLSBNYXJrIHBjbGsgYW5kIG5wdSBjbG9ja3MgYXMgcmVxdWly
ZWQgYnkgYWxsIGNsb2NrcyAoUm9iIEhlcnJpbmcpCgp2NzoKLSBSZW1vdmUgYWxsT2Ygc2VjdGlv
biwgbm90IG5lZWRlZCBub3cgdGhhdCBhbGwgbm9kZXMgcmVxdWlyZSA0IGNsb2NrcwogIChIZWlr
byBTdMO8Ym5lcikKCnY4OgotIFJlbW92ZSBub3Rpb24gb2YgdG9wIGNvcmUgKFJvYmluIE11cnBo
eSkKClNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBj
b2xsYWJvcmEuY29tPgpSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9m
Lmtvemxvd3NraUBsaW5hcm8ub3JnPgpUZXN0ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+ClNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28u
bmV0PgotLS0KIC4uLi9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1s
ICAgIHwgMTEyICsrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDExMiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L25wdS9yb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbnB1L3JvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbApuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwLi5hMWJkZDgzMWE4ZTY2NWE3YzczYjczZjE1YTljZGU4ZGViNDc0MDk1Ci0tLSAvZGV2L251
bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9yb2NrY2hpcCxy
azM1ODgtcmtubi1jb3JlLnlhbWwKQEAgLTAsMCArMSwxMTIgQEAKKyMgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQorJVlBTUwgMS4yCistLS0K
KyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvbnB1L3JvY2tjaGlwLHJrMzU4OC1y
a25uLWNvcmUueWFtbCMKKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVt
YXMvY29yZS55YW1sIworCit0aXRsZTogTmV1cmFsIFByb2Nlc3NpbmcgVW5pdCBJUCBmcm9tIFJv
Y2tjaGlwCisKK21haW50YWluZXJzOgorICAtIFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpv
c28ubmV0PgorCitkZXNjcmlwdGlvbjoKKyAgUm9ja2NoaXAgSVAgZm9yIGFjY2VsZXJhdGluZyBp
bmZlcmVuY2Ugb2YgbmV1cmFsIG5ldHdvcmtzLgorCisgIFRoZXJlIGlzIHRvIGJlIGEgbm9kZSBw
ZXIgZWFjaCBOUFUgY29yZSBpbiB0aGUgU29DLCBhbmQgZWFjaCBjb3JlIHNob3VsZCByZWZlcmVu
Y2UgYWxsIHRoZQorICByZXNvdXJjZXMgdGhhdCBpdCBuZWVkcyB0byBmdW5jdGlvbiwgc3VjaCBh
cyBjbG9ja3MsIHBvd2VyIGRvbWFpbnMsIGFuZCByZXNldHMuCisKK3Byb3BlcnRpZXM6CisgICRu
b2RlbmFtZToKKyAgICBwYXR0ZXJuOiAnXm5wdUBbYS1mMC05XSskJworCisgIGNvbXBhdGlibGU6
CisgICAgZW51bToKKyAgICAgIC0gcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZQorCisgIHJlZzoK
KyAgICBtYXhJdGVtczogMworCisgIHJlZy1uYW1lczoKKyAgICBpdGVtczoKKyAgICAgIC0gY29u
c3Q6IHBjICMgUHJvZ3JhbSBDb250cm9sLXJlbGF0ZWQgcmVnaXN0ZXJzCisgICAgICAtIGNvbnN0
OiBjbmEgIyBDb252b2x1dGlvbiBOZXVyYWwgTmV0d29yayBBY2NlbGVyYXRvciByZWdpc3RlcnMK
KyAgICAgIC0gY29uc3Q6IGNvcmUgIyBNYWluIE5QVSBjb3JlIHByb2Nlc3NpbmcgdW5pdCByZWdp
c3RlcnMKKworICBjbG9ja3M6CisgICAgbWF4SXRlbXM6IDQKKworICBjbG9jay1uYW1lczoKKyAg
ICBpdGVtczoKKyAgICAgIC0gY29uc3Q6IGFjbGsKKyAgICAgIC0gY29uc3Q6IGhjbGsKKyAgICAg
IC0gY29uc3Q6IG5wdQorICAgICAgLSBjb25zdDogcGNsaworCisgIGludGVycnVwdHM6CisgICAg
bWF4SXRlbXM6IDEKKworICBpb21tdXM6CisgICAgbWF4SXRlbXM6IDEKKworICBucHUtc3VwcGx5
OiB0cnVlCisKKyAgcG93ZXItZG9tYWluczoKKyAgICBtYXhJdGVtczogMQorCisgIHJlc2V0czoK
KyAgICBtYXhJdGVtczogMgorCisgIHJlc2V0LW5hbWVzOgorICAgIGl0ZW1zOgorICAgICAgLSBj
b25zdDogc3JzdF9hCisgICAgICAtIGNvbnN0OiBzcnN0X2gKKworICBzcmFtLXN1cHBseTogdHJ1
ZQorCityZXF1aXJlZDoKKyAgLSBjb21wYXRpYmxlCisgIC0gcmVnCisgIC0gcmVnLW5hbWVzCisg
IC0gY2xvY2tzCisgIC0gY2xvY2stbmFtZXMKKyAgLSBpbnRlcnJ1cHRzCisgIC0gaW9tbXVzCisg
IC0gcG93ZXItZG9tYWlucworICAtIHJlc2V0cworICAtIHJlc2V0LW5hbWVzCisgIC0gbnB1LXN1
cHBseQorICAtIHNyYW0tc3VwcGx5CisKK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQorCitl
eGFtcGxlczoKKyAgLSB8CisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlw
LHJrMzU4OC1jcnUuaD4KKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRy
b2xsZXIvaXJxLmg+CisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9s
bGVyL2FybS1naWMuaD4KKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcG93ZXIvcmszNTg4LXBv
d2VyLmg+CisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3JvY2tjaGlwLHJrMzU4OC1j
cnUuaD4KKworICAgIGJ1cyB7CisgICAgICAjYWRkcmVzcy1jZWxscyA9IDwyPjsKKyAgICAgICNz
aXplLWNlbGxzID0gPDI+OworCisgICAgICBucHVAZmRhYjAwMDAgeworICAgICAgICBjb21wYXRp
YmxlID0gInJvY2tjaGlwLHJrMzU4OC1ya25uLWNvcmUiOworICAgICAgICByZWcgPSA8MHgwIDB4
ZmRhYjAwMDAgMHgwIDB4MTAwMD4sCisgICAgICAgICAgICAgIDwweDAgMHhmZGFiMTAwMCAweDAg
MHgxMDAwPiwKKyAgICAgICAgICAgICAgPDB4MCAweGZkYWIzMDAwIDB4MCAweDEwMDA+OworICAg
ICAgICByZWctbmFtZXMgPSAicGMiLCAiY25hIiwgImNvcmUiOworICAgICAgICBjbG9ja3MgPSA8
JmNydSBBQ0xLX05QVTA+LCA8JmNydSBIQ0xLX05QVTA+LAorICAgICAgICAgICAgICAgICA8JnNj
bWlfY2xrIFNDTUlfQ0xLX05QVT4sIDwmY3J1IFBDTEtfTlBVX1JPT1Q+OworICAgICAgICBjbG9j
ay1uYW1lcyA9ICJhY2xrIiwgImhjbGsiLCAibnB1IiwgInBjbGsiOworICAgICAgICBpbnRlcnJ1
cHRzID0gPEdJQ19TUEkgMTEwIElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisgICAgICAgIGlvbW11
cyA9IDwmcmtubl9tbXVfdG9wPjsKKyAgICAgICAgbnB1LXN1cHBseSA9IDwmdmRkX25wdV9zMD47
CisgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9OUFVUT1A+OworICAg
ICAgICByZXNldHMgPSA8JmNydSBTUlNUX0FfUktOTjA+LCA8JmNydSBTUlNUX0hfUktOTjA+Owor
ICAgICAgICByZXNldC1uYW1lcyA9ICJzcnN0X2EiLCAic3JzdF9oIjsKKyAgICAgICAgc3JhbS1z
dXBwbHkgPSA8JnZkZF9ucHVfbWVtX3MwPjsKKyAgICAgIH07CisgICAgfTsKKy4uLgoKLS0gCjIu
NTAuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
