Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8971DC5B555
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jun 2025 06:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YX50rjJEpBliH/TXQjEq6GA4T8Pe4sDjARC8xcKFGr8=; b=hmfgww+Gpomr+K
	MfDcqmH2OuGj1Hq1LaV+JFhjeXItLzjDSpNhyu68Ga3DE4o+CPWzcGoFzUtpWwkFXXlLOis1cRJQk
	PZbD6hz2pKRj/QLf0r/MLUgdGn4OVHTVMZRCfVAlrEKLmPaUlo8tjCbLFcA1ZHoOfterXWBvRttni
	fIKj4EhaY+H9Cud9QstVyEArBMXR8vd2E600hM34vzBAX/iJ83y7dJpE3eTdIi19ObpTK9V4ec3mE
	/mjtLSwmW07dg4Q3Ma7bdVusLcW6Idk2rAJPFMhf4Rqqx3ZBIsMZl0Or0kEQp4jnj6ywYYhij97XS
	u768Etyi6pmQ20NSdfXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQn7-0000000HDyF-1O3H;
	Fri, 06 Jun 2025 06:43:01 +0000
Received: from mail-ed1-f45.google.com ([209.85.208.45])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNQZg-0000000HBoE-1nFF;
	Fri, 06 Jun 2025 06:29:09 +0000
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-607434e1821so1256850a12.0;
        Thu, 05 Jun 2025 23:29:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749191347; x=1749796147;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iPukWtw2G3pjbqdi0Ei1Rnuvtpi0YW6Xb0VOKSKt6ek=;
        b=LlxW2x/2t4Oqp6q5/k/bR7QyEjPOwy9s+mN9ZHTnbtngNE0bdKjaZ2Qo51U7YE8Sc7
         RGOiEzljGuv82iiDzePU/Se4oOiosBIP7ztbzg0MaTJhh9jT8MZPMeiL253hmVlRYhzO
         ial+hlbsocICo1+cJamr/GUJ4NiU3nlfsJIGZolXQUVMYfmPbt+Lz6cRftCPZie0u4X3
         TzSkIXanedZTj92eLFNzTIqYVzIY9CKgeA7/1hdkauCRMjRg5WN6LGhirhJDwCWaULLa
         cF52/XuNxeSAO8YkWacdMXcxRjmM2+cRO4/JV5swnrvCHgJ9MHXLbHkk3YrBzdLuMDEs
         xYbA==
X-Forwarded-Encrypted: i=1; AJvYcCWLjSA8ySHE9ao3vtqDFub37nObbJBNt0MgDuRXgDduBM9zf4T8CsdGiOOp8OkEp21K4TTpMCnvofzAGolWXnk+@lists.infradead.org, AJvYcCWRY1TTyQta7hcA4aYedYpdf39J4jwvLyRyAIWQAto2T5GGMPaAyhEHr6ORKY3vOMQXZqxMVYVIVNFeDxzhQek=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7amqBu3Ep8kD4Kc0udlVmUdT4kn8BI3d0ML3bMFLxwlqWZaIT
	RP5nyOzsSHfEapiq5d+ro7ssIv59rs22Lu9hhEVvhXApucIGjAeRVweu
X-Gm-Gg: ASbGncvut8NOZAOQw+ju2rgEZOPCo1WhKd5qyygmSVBmZSSnu7Ck02bYhSN7N3qGQHT
	MideXFuzxkAWTXviGMdLQg53Jgmpv44MU3HIYij76asPZ4fAEjpQHfojYuIoGvyTH24eFB/PnbD
	cFwISVLZJ9hmCujIiKSTHky5C13ii8irF12movYpPR+OWL6JsDBhePR+iCm7moJe6W9KbP5D89g
	2wGaHFoKX2Z6Xdgut0iGrqMU/1GT9Mr/7qFU7cwIfviExhizxX5hFCA4agkY9qHpGIZZueylWpg
	MA6j0jADmQZ08zU0BERlU1A0iHm/bjpzyjkfl2maqGB9PP87P7XP6r8gUzWU255ijAhKGxsDse8
	mmk3TyY7ybA==
X-Google-Smtp-Source: AGHT+IEsag9vw6Nn7OEnilm+FmZVJ6FdiJUajR3eq5nDZMSo0SkP7dbEPJwLxYEQcAnCF8Ld4GIxJg==
X-Received: by 2002:a17:906:6a16:b0:ade:7c3:7e14 with SMTP id a640c23a62f3a-ade1ab8771dmr170871266b.46.1749191346629;
        Thu, 05 Jun 2025 23:29:06 -0700 (PDT)
Received: from [10.42.0.1] (cst-prg-46-162.cust.vodafone.cz. [46.135.46.162])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1d754653sm67989966b.20.2025.06.05.23.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 23:29:06 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Fri, 06 Jun 2025 08:28:26 +0200
Subject: [PATCH v7 06/10] dt-bindings: npu: rockchip,rknn: Add bindings
MIME-Version: 1.0
Message-Id: <20250606-6-10-rocket-v7-6-dc16cfe6fe4e@tomeuvizoso.net>
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
In-Reply-To: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net>
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
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_232908_473167_AF94966B 
X-CRM114-Status: GOOD (  15.76  )
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
byBTdMO8Ym5lcikKClNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4u
cmVpY2hlbEBjb2xsYWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBUb21ldSBWaXpvc28gPHRvbWV1
QHRvbWV1dml6b3NvLm5ldD4KUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlz
enRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KLS0tCiAuLi4vYmluZGluZ3MvbnB1L3JvY2tjaGlw
LHJrMzU4OC1ya25uLWNvcmUueWFtbCAgICB8IDExOCArKysrKysrKysrKysrKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCAxMTggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25wdS9yb2NrY2hpcCxyazM1ODgt
cmtubi1jb3JlLnlhbWwKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMC4uMDU4OGMwODVhNzIzYTM0ZjRmYTMwYTk2ODBlYTk0
OGQ5NjBiMDkyZgotLS0gL2Rldi9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9ucHUvcm9ja2NoaXAscmszNTg4LXJrbm4tY29yZS55YW1sCkBAIC0wLDAgKzEsMTE4
IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNs
YXVzZSkKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFz
L25wdS9yb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlLnlhbWwjCiskc2NoZW1hOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKKwordGl0bGU6IE5ldXJhbCBQcm9j
ZXNzaW5nIFVuaXQgSVAgZnJvbSBSb2NrY2hpcAorCittYWludGFpbmVyczoKKyAgLSBUb21ldSBW
aXpvc28gPHRvbWV1QHRvbWV1dml6b3NvLm5ldD4KKworZGVzY3JpcHRpb246CisgIFJvY2tjaGlw
IElQIGZvciBhY2NlbGVyYXRpbmcgaW5mZXJlbmNlIG9mIG5ldXJhbCBuZXR3b3Jrcy4KKworICBU
aGVyZSBpcyB0byBiZSBhIG5vZGUgcGVyIGVhY2ggY29yZSBpbiB0aGUgTlBVLiBJbiBSb2NrY2hp
cCdzIGRlc2lnbiB0aGVyZQorICB3aWxsIGJlIG9uZSBjb3JlIHRoYXQgaXMgc3BlY2lhbCBiZWNh
dXNlIGl0IGlzIGFibGUgdG8gcmVkaXN0cmlidXRlIHdvcmsgdG8KKyAgdGhlIG90aGVyIGNvcmVz
IGJ5IGZvcndhcmRpbmcgcmVnaXN0ZXIgd3JpdGVzIGFuZCBzaGFyaW5nIGRhdGEuIFRoaXMgc3Bl
Y2lhbAorICBjb3JlIGlzIGNhbGxlZCB0aGUgdG9wIGNvcmUgYW5kIHNob3VsZCBoYXZlIHRoZSBj
b21wYXRpYmxlIHN0cmluZyB0aGF0CisgIGNvcnJlc3BvbmRzIHRvIHRvcCBjb3Jlcy4KKworcHJv
cGVydGllczoKKyAgJG5vZGVuYW1lOgorICAgIHBhdHRlcm46ICdebnB1QFthLWYwLTldKyQnCisK
KyAgY29tcGF0aWJsZToKKyAgICBlbnVtOgorICAgICAgLSByb2NrY2hpcCxyazM1ODgtcmtubi1j
b3JlLXRvcAorICAgICAgLSByb2NrY2hpcCxyazM1ODgtcmtubi1jb3JlCisKKyAgcmVnOgorICAg
IG1heEl0ZW1zOiAzCisKKyAgcmVnLW5hbWVzOgorICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDog
cGMKKyAgICAgIC0gY29uc3Q6IGNuYQorICAgICAgLSBjb25zdDogY29yZQorCisgIGNsb2NrczoK
KyAgICBtYXhJdGVtczogNAorCisgIGNsb2NrLW5hbWVzOgorICAgIGl0ZW1zOgorICAgICAgLSBj
b25zdDogYWNsaworICAgICAgLSBjb25zdDogaGNsaworICAgICAgLSBjb25zdDogbnB1CisgICAg
ICAtIGNvbnN0OiBwY2xrCisKKyAgaW50ZXJydXB0czoKKyAgICBtYXhJdGVtczogMQorCisgIGlv
bW11czoKKyAgICBtYXhJdGVtczogMQorCisgIG5wdS1zdXBwbHk6IHRydWUKKworICBwb3dlci1k
b21haW5zOgorICAgIG1heEl0ZW1zOiAxCisKKyAgcmVzZXRzOgorICAgIG1heEl0ZW1zOiAyCisK
KyAgcmVzZXQtbmFtZXM6CisgICAgaXRlbXM6CisgICAgICAtIGNvbnN0OiBzcnN0X2EKKyAgICAg
IC0gY29uc3Q6IHNyc3RfaAorCisgIHNyYW0tc3VwcGx5OiB0cnVlCisKK3JlcXVpcmVkOgorICAt
IGNvbXBhdGlibGUKKyAgLSByZWcKKyAgLSByZWctbmFtZXMKKyAgLSBjbG9ja3MKKyAgLSBjbG9j
ay1uYW1lcworICAtIGludGVycnVwdHMKKyAgLSBpb21tdXMKKyAgLSBwb3dlci1kb21haW5zCisg
IC0gcmVzZXRzCisgIC0gcmVzZXQtbmFtZXMKKyAgLSBucHUtc3VwcGx5CisgIC0gc3JhbS1zdXBw
bHkKKworYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCisKK2V4YW1wbGVzOgorICAtIHwKKyAg
ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTg4LWNydS5oPgorICAg
ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9pcnEuaD4KKyAgICAj
aW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgorICAg
ICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dlci9yazM1ODgtcG93ZXIuaD4KKyAgICAjaW5jbHVk
ZSA8ZHQtYmluZGluZ3MvcmVzZXQvcm9ja2NoaXAscmszNTg4LWNydS5oPgorCisgICAgYnVzIHsK
KyAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+OworICAgICAgI3NpemUtY2VsbHMgPSA8Mj47CisK
KyAgICAgIG5wdUBmZGFiMDAwMCB7CisgICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmsz
NTg4LXJrbm4tY29yZS10b3AiOworICAgICAgICByZWcgPSA8MHgwIDB4ZmRhYjAwMDAgMHgwIDB4
MTAwMD4sCisgICAgICAgICAgICAgIDwweDAgMHhmZGFiMTAwMCAweDAgMHgxMDAwPiwKKyAgICAg
ICAgICAgICAgPDB4MCAweGZkYWIzMDAwIDB4MCAweDEwMDA+OworICAgICAgICByZWctbmFtZXMg
PSAicGMiLCAiY25hIiwgImNvcmUiOworICAgICAgICBhc3NpZ25lZC1jbG9ja3MgPSA8JnNjbWlf
Y2xrIFNDTUlfQ0xLX05QVT47CisgICAgICAgIGFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDIwMDAw
MDAwMD47CisgICAgICAgIGNsb2NrcyA9IDwmY3J1IEFDTEtfTlBVMD4sIDwmY3J1IEhDTEtfTlBV
MD4sCisgICAgICAgICAgICAgICAgIDwmc2NtaV9jbGsgU0NNSV9DTEtfTlBVPiwgPCZjcnUgUENM
S19OUFVfUk9PVD47CisgICAgICAgIGNsb2NrLW5hbWVzID0gImFjbGsiLCAiaGNsayIsICJucHUi
LCAicGNsayI7CisgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSAxMTAgSVJRX1RZUEVfTEVW
RUxfSElHSCAwPjsKKyAgICAgICAgaW9tbXVzID0gPCZya25uX21tdV90b3A+OworICAgICAgICBu
cHUtc3VwcGx5ID0gPCZ2ZGRfbnB1X3MwPjsKKyAgICAgICAgcG93ZXItZG9tYWlucyA9IDwmcG93
ZXIgUkszNTg4X1BEX05QVVRPUD47CisgICAgICAgIHJlc2V0cyA9IDwmY3J1IFNSU1RfQV9SS05O
MD4sIDwmY3J1IFNSU1RfSF9SS05OMD47CisgICAgICAgIHJlc2V0LW5hbWVzID0gInNyc3RfYSIs
ICJzcnN0X2giOworICAgICAgICBzcmFtLXN1cHBseSA9IDwmdmRkX25wdV9tZW1fczA+OworICAg
ICAgfTsKKyAgICB9OworLi4uCgotLSAKMi40OS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
