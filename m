Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB0DDC369A5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 16:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+XVhHwLW/pU7NQ+pkEQHg0Eix8Zcgr85seAWY+Cs3U0=; b=aiisG4X37UhUmH
	TiwEqLc4rOXJlmhMizjd4n5UoEuWYMFWvjHuABF6Pp4+YXFXqg4GAukMM1MSpUY0eHZ36hqol9k2L
	pIpvEVh21MMAzYw0SGtKn3DTZWldO8E0MbSshXynG1/8+nXKp0NaNtY5waYKMPt3tWDLDgc4yE8/2
	NaLju9nVTyRtHOCs1WuCfIxZxbYHusnF/sj7gI0izdK2ObijRrKYmSEMfuYdHGgzc3ZhLAdSE1KBA
	+SLIZ5p5g/4I7bnakfyAiSJjWPI/kuKqxrj9oXL5K4dZE04qXfAoQ9Eo2S6/+dhK7+Ga3RNkkYJZw
	ykJqD3XS9n+3pXiAxvaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Bxi-00000004pnm-2PH3;
	Tue, 08 Apr 2025 16:38:10 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Bvv-00000004pc1-1psi
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Apr 2025 16:36:21 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-ac3fcf5ab0dso995925666b.3
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Apr 2025 09:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1744130177; x=1744734977; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i3wrvWVbOnRUQVWpOBEubP7kMDCUCq12GpzisA/3qfg=;
        b=p1gD4DJTy8UPEdDMCIWWE8QoC/iSAzCr1/JpuApyleLil0BdLA0lZXNRKzIEWAZYAG
         dLdTTG9j5lt1+JRxXoTQsel9V2gJHOibMmxjind7hHtHR6CP3jz8Oi22pMHUU5nJ2xV2
         scCju2+qpgJ3ZYagIf03L1UdsLy5jgOJx1DiH2cQCYHTNqmKRz730zMO+jI+eDV/eZEB
         blAGyjWYbSfAGFli7gefhe/JGp/CbRmdOGHuQCaTvZs1P36K//BrbsAcuKXgPUOU2Pil
         E4Gir1PUm1VUxh5R7a1uh/vQgG1LWqH8Tcpx32m66UMIk4ikG6DXTQufvj9QFS52jw/c
         J+vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744130177; x=1744734977;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i3wrvWVbOnRUQVWpOBEubP7kMDCUCq12GpzisA/3qfg=;
        b=vE0eXOEEdtJ6u/gzlHb8X1UQ0h5lFLn8tGTXT1hh8yUutzH7PVkIXnyFektWKaNc0d
         cwAGdm/5SUlw1/QYNz6AcpiPetRl0OrqngjQ4ecvzmJKwVRfwS46VcWlgl2f9U591iO7
         OBZ0ME7EAZi/80LzgPBIZ5dqZ5eqdci7eYnZ8T9wi1HREWHdh5hL99SBzmSEB/mIz2cI
         oAQUx7v6QG/HHNxSPHtPjut5W9a4Yo9bwGVp3vtkl38kUOhvs4OJgMbtGXL4t4a99pJy
         fOrkVSxSZdaHfIpTfhj+An5TcygE5ULM+JkqdTcZh7SDYnjdHTUpiT3fI6gtfU7j0jjO
         nPZg==
X-Forwarded-Encrypted: i=1; AJvYcCXMdn5++SC/5vCgFq/iEc2y0JcTW0c/cmoX7Gp61jo+BDdQNbhMqrtJFbDX2ivIbxjPUmK6NAKni8nC1Eh7Aw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwVPhCsLLlPgWsl3FhlZVfcNpiMu8MV+RzZn8sUz8fV0LB3I19y
	Pwk1BQVkf42oqk8MOLVDkpR8/2VPp2DArE3mrVcxpYJmPdTjxwTDbAyEGmRF4c2aHVWJpGqtm33
	KLfV9fIPMPj+wxeOn8vMQZRf3THL+/slXl7/o8Q==
X-Gm-Gg: ASbGncshd6iTBo6yFqr1sqO2aME9ZzukaEkokkd4Wx5v2CpYeE9L4jPZ+RO51zN/aMv
	O7E0xOGfHMYJ/+qtB2JpGCnZUKFYZL6mlcAiatdxREWZhfqp9NcCo5iDMz9RXD5cWPoZszk6ocT
	LDk2FRz9dX4xw83ZY1SA+pTeqq2aXJ
X-Google-Smtp-Source: AGHT+IEKFLhzxNA8nE4j3QQLXx2xIaLoG80ZEqlxvEiciuURe4ovIM9jxkUyiDuLYEFOGCRYHlOLSuzofncZr+mD4JY=
X-Received: by 2002:a17:907:7da3:b0:ac2:55f2:f939 with SMTP id
 a640c23a62f3a-ac7e7170328mr1083292466b.6.1744130176982; Tue, 08 Apr 2025
 09:36:16 -0700 (PDT)
MIME-Version: 1.0
References: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
 <20250326-onboard_usb_dev-v1-2-a4b0a5d1b32c@thaumatec.com> <20250326-fanatic-onion-5f6bf8ec97e3@spud>
In-Reply-To: <20250326-fanatic-onion-5f6bf8ec97e3@spud>
From: =?UTF-8?Q?=C5=81ukasz_Czechowski?= <lukasz.czechowski@thaumatec.com>
Date: Tue, 8 Apr 2025 18:36:04 +0200
X-Gm-Features: ATxdqUGKDxJYzUIvQOK05tjpTcLCd2GeOTcg3K4KoR3MFRQVI_hcKPX99fihLeY
Message-ID: <CABd623tEGh=qtpF0h7PkRBBrR7V9EaxUv9HregqbPcLU_2Exbg@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: usb: cypress,hx3: Add support for all variants
To: Conor Dooley <conor@kernel.org>
Cc: Matthias Kaehlcke <mka@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Klaus Goger <klaus.goger@theobroma-systems.com>, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, quentin.schulz@cherry.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_093619_714099_7B88DC5C 
X-CRM114-Status: GOOD (  23.06  )
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

SGVsbG8sCgrFm3IuLCAyNiBtYXIgMjAyNSBvIDE4OjU4IENvbm9yIERvb2xleSA8Y29ub3JAa2Vy
bmVsLm9yZz4gbmFwaXNhxYIoYSk6Cj4KPiBPbiBXZWQsIE1hciAyNiwgMjAyNSBhdCAwNToyMjo1
N1BNICswMTAwLCBMdWthc3ogQ3plY2hvd3NraSB3cm90ZToKPiA+IFRoZSBDeXByZXNzIEhYMyBo
dWJzIHVzZSBkaWZmZXJlbnQgZGVmYXVsdCBQSUQgdmFsdWUgZGVwZW5kaW5nCj4gPiBvbiB0aGUg
dmFyaWFudC4gVXBkYXRlIGNvbXBhdGlibGVzIGxpc3QuCj4gPgo+ID4gRml4ZXM6IDFlY2E1MWY1
OGExMCAoImR0LWJpbmRpbmdzOiB1c2I6IEFkZCBiaW5kaW5nIGZvciBDeXByZXNzIEhYMyBVU0Ig
My4wIGZhbWlseSIpCj4gPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIDYuNgo+ID4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyBCYWNrcG9ydCBvZiB0aGUgcGF0Y2ggaW4gdGhpcyBz
ZXJpZXMgZml4aW5nIHByb2R1Y3QgSUQgaW4gb25ib2FyZF9kZXZfaWRfdGFibGUgYW5kIG9uYm9h
cmRfZGV2X21hdGNoIGluIGRyaXZlcnMvdXNiL21pc2Mvb25ib2FyZF91c2JfZGV2LntjLGh9IGRy
aXZlcgo+ID4gU2lnbmVkLW9mZi1ieTogTHVrYXN6IEN6ZWNob3dza2kgPGx1a2Fzei5jemVjaG93
c2tpQHRoYXVtYXRlYy5jb20+Cj4gPiAtLS0KPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdXNiL2N5cHJlc3MsaHgzLnlhbWwgfCA2ICsrKysrKwo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9jeXByZXNzLGh4My55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9jeXByZXNzLGh4My55YW1sCj4gPiBpbmRleCAxMDMzYjdh
NGI4ZjkuLmYwYjkzMDAyYmQwMiAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy91c2IvY3lwcmVzcyxoeDMueWFtbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9jeXByZXNzLGh4My55YW1sCj4gPiBAQCAtMTUsOCAr
MTUsMTQgQEAgYWxsT2Y6Cj4gPiAgcHJvcGVydGllczoKPiA+ICAgIGNvbXBhdGlibGU6Cj4gPiAg
ICAgIGVudW06Cj4gPiArICAgICAgLSB1c2I0YjQsNjUwMAo+ID4gKyAgICAgIC0gdXNiNGI0LDY1
MDIKPiA+ICsgICAgICAtIHVzYjRiNCw2NTAzCj4gPiAgICAgICAgLSB1c2I0YjQsNjUwNAo+ID4g
ICAgICAgIC0gdXNiNGI0LDY1MDYKPiA+ICsgICAgICAtIHVzYjRiNCw2NTA3Cj4gPiArICAgICAg
LSB1c2I0YjQsNjUwOAo+ID4gKyAgICAgIC0gdXNiNGI0LDY1MGEKPgo+IEFsbCB0aGVzZSBkZXZp
Y2VzIHNlZW0gdG8gaGF2ZSB0aGUgc2FtZSBtYXRjaCBkYXRhLCB3aHkgaXMgYSBmYWxsYmFjawo+
IG5vdCBzdWl0YWJsZT8KPgoKVGhhbmsgeW91IGZvciB0aGUgc3VnZ2VzdGlvbi4gSW5kZWVkIHRo
ZSBmYWxsYmFjayBjb21wYXRpYmxlIGFwcGVhcnMKdG8gd29yayBmaW5lIGluIHRoaXMgY2FzZSwK
YW5kIEkgYW0gYWJsZSB0byBhdm9pZCBhZGRpdGlvbmFsIGVudHJpZXMgaW4gb25ib2FyZF9kZXZf
bWF0Y2ggdGFibGUKYXMgYWRkZWQgaW4gdGhlIGZpcnN0IHBhdGNoIGluIHRoaXMgc2VyaWVzLgoK
SG93ZXZlciwgYWZ0ZXIgSSd2ZSB1cGRhdGVkIHRoZSBjeXByZXNzLGh4My55YW1sIHNjaGVtYSBm
aWxlIGFuZApyazMzOTktcHVtYS5kdHNpIGZpbGUsCkkgZ2V0IHRoZSBmb2xsb3dpbmcgd2Fybmlu
Z3MsIHdoZW4gcnVubmluZyAibWFrZSBkdGJzX2NoZWNrIjoKCmxpbnV4L2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEtaGFpa291LmR0YjogaHViQDE6CmNvbXBhdGlibGU6
IFsndXNiNGI0LDY1MDInLCAndXNiNGI0LDY1MDYnXSBpcyB0b28gbG9uZwrigIPigINmcm9tIHNj
aGVtYSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3VzYi9jeXByZXNzLGh4My55
YW1sIwpsaW51eC9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1wdW1hLWhhaWtv
dS5kdGI6IGh1YkAyOgpjb21wYXRpYmxlOiBbJ3VzYjRiNCw2NTAwJywgJ3VzYjRiNCw2NTA0J10g
aXMgdG9vIGxvbmcK4oCD4oCDZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcv
c2NoZW1hcy91c2IvY3lwcmVzcyxoeDMueWFtbCMKCkJlbG93IGlzIHRoZSBkaWZmIG9mIG15IGNo
YW5nZXM6CgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vz
Yi9jeXByZXNzLGh4My55YW1sCmIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vz
Yi9jeXByZXNzLGh4My55YW1sCmluZGV4IGYwYjkzMDAyYmQwMi4uZDZlYWMxMjEzMjI4IDEwMDY0
NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2N5cHJlc3MsaHgz
LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9jeXByZXNz
LGh4My55YW1sCkBAIC0xNCwxNSArMTQsMjIgQEAgYWxsT2Y6CgogcHJvcGVydGllczoKICAgY29t
cGF0aWJsZToKLSAgICBlbnVtOgotICAgICAgLSB1c2I0YjQsNjUwMAotICAgICAgLSB1c2I0YjQs
NjUwMgotICAgICAgLSB1c2I0YjQsNjUwMwotICAgICAgLSB1c2I0YjQsNjUwNAotICAgICAgLSB1
c2I0YjQsNjUwNgotICAgICAgLSB1c2I0YjQsNjUwNwotICAgICAgLSB1c2I0YjQsNjUwOAotICAg
ICAgLSB1c2I0YjQsNjUwYQorICAgIG9uZU9mOgorICAgICAgLSBlbnVtOgorICAgICAgICAgIC0g
dXNiNGI0LDY1MDQKKyAgICAgICAgICAtIHVzYjRiNCw2NTA2CisgICAgICAtIGl0ZW1zOgorICAg
ICAgICAgIC0gZW51bToKKyAgICAgICAgICAgICAgLSB1c2I0YjQsNjUwMAorICAgICAgICAgICAg
ICAtIHVzYjRiNCw2NTA4CisgICAgICAgICAgLSBjb25zdDogdXNiNGI0LDY1MDQKKyAgICAgIC0g
aXRlbXM6CisgICAgICAgICAgLSBlbnVtOgorICAgICAgICAgICAgICAtIHVzYjRiNCw2NTAyCisg
ICAgICAgICAgICAgIC0gdXNiNGI0LDY1MDMKKyAgICAgICAgICAgICAgLSB1c2I0YjQsNjUwNwor
ICAgICAgICAgICAgICAtIHVzYjRiNCw2NTBhCisgICAgICAgICAgLSBjb25zdDogdXNiNGI0LDY1
MDYKCiAgIHJlZzogdHJ1ZQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXB1bWEuZHRzaQpiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LXB1bWEuZHRzaQppbmRleCBkMGQ4NjczNzRiM2YuLjdmYWM2MWY5NWZjNiAxMDA2NDQKLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcHVtYS5kdHNpCisrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEuZHRzaQpAQCAtNTk0LDE0ICs1OTQs
MTQgQEAgJnVzYmRyZF9kd2MzXzEgewogICAgICAgICNzaXplLWNlbGxzID0gPDA+OwoKICAgICAg
ICBodWJfMl8wOiBodWJAMSB7Ci0gICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInVzYjRiNCw2
NTAyIjsKKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAidXNiNGI0LDY1MDIiLCAidXNiNGI0
LDY1MDYiOwogICAgICAgICAgICAgICAgcmVnID0gPDE+OwogICAgICAgICAgICAgICAgcGVlci1o
dWIgPSA8Jmh1Yl8zXzA+OwogICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW80IFJL
X1BBMyBHUElPX0FDVElWRV9ISUdIPjsKICAgICAgICB9OwoKICAgICAgICBodWJfM18wOiBodWJA
MiB7Ci0gICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInVzYjRiNCw2NTAwIjsKKyAgICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAidXNiNGI0LDY1MDAiLCAidXNiNGI0LDY1MDQiOwogICAgICAg
ICAgICAgICAgcmVnID0gPDI+OwogICAgICAgICAgICAgICAgcGVlci1odWIgPSA8Jmh1Yl8yXzA+
OwogICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW80IFJLX1BBMyBHUElPX0FDVElW
RV9ISUdIPjsKCgpEbyB5b3UgaGF2ZSBhbnkgc3VnZ2VzdGlvbnMgb24gaG93IEkgY2FuIHByb3Bl
cmx5IHVwZGF0ZSB0aGUgc2NoZW1hCmZpbGVzIHRvIGF2b2lkIHRoZSBhYm92ZSB3YXJuaW5ncz8K
Cj4gPgo+ID4gICAgcmVnOiB0cnVlCj4gPgo+ID4KPiA+IC0tCj4gPiAyLjQzLjAKPiA+CgpCZXN0
IHJlZ2FyZHMsCkx1a2FzegoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
