Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF480C83F25
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jul 2025 10:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97eLzVKQJP93CPEMd6HyYeP7jmxf1hHdy6U0WxIgf3c=; b=Ggn5VsLa1KIoB6
	0OQke59sUjxPr1lhFM9AHFgPVKAUwFSie2t44g65saZE1A2aCWlULNqJRyfcZC9+MCkVvSNdF/XxA
	WgFXLJiegz8cSFgaQP+M3jGDvu15GD5jyes/G8vskkKxPcYw/I0viNYYc/GmNmFluUHKn+mKaf0A0
	mdtBXxHQKsyaUE4/UDJSRdpCNEvAs1FIIlsnBs4kNHp6S9ivYqKbQHDdngXHhnA1k7zAjSue4OaOY
	3QyAwZEun57XmhhNzSfjwDNKpX2jNF4ALrxveylrgfshLFnqqS29F7zltYDRXpTe2VNjJX6GG5tO2
	2MR3t2Fuk23U64mrsz/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udnLk-0000000GuDs-25z6;
	Mon, 21 Jul 2025 10:02:24 +0000
Received: from mail-ej1-f42.google.com ([209.85.218.42])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udmf5-0000000GmLI-0nC6;
	Mon, 21 Jul 2025 09:18:20 +0000
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ae0de0c03e9so609765766b.2;
        Mon, 21 Jul 2025 02:18:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753089498; x=1753694298;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s0shnpD272LCTIcktSbOwec73NOpSSL15XOo8LgFeXc=;
        b=bk33tfL5qOk/mgMxBhl+RIhTaLUYX28bYvHk867pPYfXH1uaFal0n6NwX+DEBX/3JO
         HWgPv8Nw+F6AXVQ4JjDxfHmGmQa3oRwe1ZnBq/u072XlntbNdqbwVmvLLzZqckgIb4Y6
         /KPFjXs32ZFp5t5jK1Zw0/h6Q3zWmT4A8sVVSVKK6ggmAKFrFso5dFhiu6A0+ZZoX0oK
         SIfaoWpJ+qX0T9RW9358/1zoHT/gLs6SWj9pFT+Ifi8eSy4PWMjmNKERHZaywZFs0eGU
         V2dvsJPubiW7ogzTnsLsINVmE/SZ/f68sh2Bx+To2xayfbX6rRUNOCnggDfESZwBa0x0
         fJKw==
X-Forwarded-Encrypted: i=1; AJvYcCVBo115RaW95orP4hTFYWr2YjmjQ53vr3U31GeBGrNf6S1OyZXwS9mzcVYnls4AJv29HY+sW9ALBBA/f8zFmz8v@lists.infradead.org, AJvYcCVpoRrU+LlS1p+LL5h5tJcrcF2vNtN9lrAmWOZWFtM1tBBWtSgwVScbuZXeuSKVE/cqNoFDD7idZnNxGT6kug8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwnwpTQwVo6DLbodEySnI3hUy0UG9rNDskoMuplXa1v7O+NK/sW
	BE5ZqDLdNaCfu+NEU1EcchNSq+g51ELW72PuoziwF0YEf7JEhO1Zh18Q
X-Gm-Gg: ASbGncv2gQJsVuY/NJCOKnGRQ2eziUHpNoS+NLI+ONfxouRPgu/wrBzoj/kqdpRkGIo
	Hxkk9h/KghIqOIP5Dp95nK0iqayKOwTEdgwJPbY0pzL/GWLW5NcFZotH/D62CG7qgkEMV56Qjol
	6BjEe/FBPzQSnCU1B3Cv26+d34Q7Riy1FomLEesC0V/ZKwWEm0bc9jE2muxqaRWriEpqngecurb
	SRjC7woNYVcqhtUX84J0CU3qg478RaPySFstHndMJ8xFRkqybPw9BjNn4SRO5/Xa/ELFXBpHU9s
	LEXGMpZ65rj3xrSToCdI8nf6bqQyY5s67qURXT11emqgCrDHmhgHU8igNtDuxVsZF+zA8uyVsmc
	9OAsRidnE6GpiB2iJijivr/KmFBto6DTmsBMYlupDavvW3ComUp+TA1Et
X-Google-Smtp-Source: AGHT+IE++yQ6J3zklxF4MKp/EF/leIEps5+hFjKqjdF7o1BmnbGKHkCjf3wy7jm1GMw4qcEy+y+sJw==
X-Received: by 2002:a17:906:d263:b0:ad8:9a3b:b26e with SMTP id a640c23a62f3a-ae9c9b5ddd4mr1870923966b.56.1753089497441;
        Mon, 21 Jul 2025 02:18:17 -0700 (PDT)
Received: from [10.42.0.1] (cst-prg-46-162.cust.vodafone.cz. [46.135.46.162])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6ca2efc1sm643125266b.83.2025.07.21.02.18.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 02:18:16 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Mon, 21 Jul 2025 11:17:33 +0200
Subject: [PATCH v9 06/10] dt-bindings: npu: rockchip,rknn: Add bindings
MIME-Version: 1.0
Message-Id: <20250721-6-10-rocket-v9-6-77ebd484941e@tomeuvizoso.net>
References: <20250721-6-10-rocket-v9-0-77ebd484941e@tomeuvizoso.net>
In-Reply-To: <20250721-6-10-rocket-v9-0-77ebd484941e@tomeuvizoso.net>
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
X-CRM114-CacheID: sfid-20250721_021819_226308_E2F2F7A0 
X-CRM114-Status: GOOD (  15.10  )
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
MDAwLi5jYWNhMmE0OTAzY2QxNTU2MjI2ZmQyYmZmNmVhOWE2M2RiZDM3NWMyCi0tLSAvZGV2L251
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
cyA9IDwmcmtubl9tbXVfMD47CisgICAgICAgIG5wdS1zdXBwbHkgPSA8JnZkZF9ucHVfczA+Owor
ICAgICAgICBwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1ODhfUERfTlBVVE9QPjsKKyAgICAg
ICAgcmVzZXRzID0gPCZjcnUgU1JTVF9BX1JLTk4wPiwgPCZjcnUgU1JTVF9IX1JLTk4wPjsKKyAg
ICAgICAgcmVzZXQtbmFtZXMgPSAic3JzdF9hIiwgInNyc3RfaCI7CisgICAgICAgIHNyYW0tc3Vw
cGx5ID0gPCZ2ZGRfbnB1X21lbV9zMD47CisgICAgICB9OworICAgIH07CisuLi4KCi0tIAoyLjUw
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
