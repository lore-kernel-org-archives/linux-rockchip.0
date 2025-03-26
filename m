Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C1E7C36008
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Mar 2025 16:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAp4t+3ohAi9QjHKRNxhWA24TB4wl3x7SkZ5sUcSwYY=; b=zST8gwAFVDMsUf
	EcU/kOw17FMdM7V2tMgDn8/X4eMB1aP3v8PlHkUam9yM5Tu78IDQhLEb3Z05MF+Zm/TiyOiG+bxUR
	pgDPaN/9SNCOYzWWYD+uSrC0omEckNADDduafZs76ajuMrjSYPhvV13U2P8lX3+/HrmXXNG/SQ/rj
	BW9IPy6qZGu951OeJWjYFWPyBCNrcxpB3pjw+8wubexBC+7m7zZFW3bBnJlENd2F4u+89h/HwlUOd
	i2vVHc4rY/P6s8cCzZMpi4Rsgg3FNLGHjf2uwCs0k0+IJrgziHk5Hgz4jebzHw2Ctf3r1mfoa8JNX
	Y5Wx5A8cMHxAPJHp7mEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txTcu-000000091VJ-1XJR;
	Wed, 26 Mar 2025 16:29:12 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txTXl-000000090Lr-2llf
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Mar 2025 16:23:55 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-ac25d2b2354so1172347266b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Mar 2025 09:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1743006232; x=1743611032; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gDeO2nIfMOICmbdN4iB492bLj9a77KMSQWKqvg2E0aY=;
        b=sButZP//yVhaU93N/FM2Q7yOZltx9tFWZ/rnt1q1VhUBzvISFweID8PbbglB/OgJhX
         dvjzXSku0WGD76rNaaXnDbLyujkhtsjRlFdewxFOGKpquBJT2C0bHGsQOCtCMEYGKmNi
         is/31tTiC2psJsM+nnC0Q/DVah+advDDhKFnzS5/LNYWrtibSIIuCHXbf+vBV6fptDyu
         9VkMopHkZlVA+y1ia1Bl8TlRrwbb3JyswRLkxzqh9vRf/1iYbs3ZIs4MuM1tdHgqTe2+
         q/4E8n7VltsXgaIfArGawJx1l+WJl5+XYtc78bCZgBZSLxrPnVAw3jYX2E3duf3nmiCI
         J8bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743006232; x=1743611032;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gDeO2nIfMOICmbdN4iB492bLj9a77KMSQWKqvg2E0aY=;
        b=VGUJBVLXzqq8BymzV/Odg7MiIg90JHIB7UFhUQq6mm1dRfKWaQUzjKoInVjAoOkxVE
         1g8B4oPqrIqKY3yqSHLmFXlmKx0KYP9w7tjyWnOnlzU5pDtA7Gk0++CKrtMUIqHhjhcr
         2LHM9IlWMr88xSbNWT5Labtfv+/UJlOM20v3dYqTMWGBLwp/5M4FijgXa0gfIw8+ZZu/
         LexWripurV0yvQ7p7v0s17qa+3Bcb+nKR74UjCZl2YMBrY1ASHnDhLFDxrEdkCwxV8Rd
         58c2mE5uAd8iYygBhxDkj4FPvqQaLlxKIxzjoMHhLRrkSBPzd87fhO2VQDL1TBVL3SVG
         zuiw==
X-Forwarded-Encrypted: i=1; AJvYcCUwv730d6rZs9NMOI4qWyTIITdBqBIxPSHHj8cZ7DSc+3ZMBb0zZvIEP9Ph5zM+HjCQiGJbBbW2lbjNGCr5nQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/FM1HkLk5S3Q1MEbzl/1J8jTO1RRfMAh+B6pr0rKMZUdUMoOq
	BuZbzyn+sibF+3Jz9XLjqybhh077vXOJijB+K21C+jA/Tn7ulVuTGRIrYQuEFoc=
X-Gm-Gg: ASbGncuIZH7jVH7+9L9YWS7ot3OTRXgRnNWQ5qiye3GQKb+P46QNdvQKu2FT9EJ4nw3
	r57k5KmxDF9+0exR6Ma1RGOnsdFlMejc56TvZk57hcUTZvLqmotLwfjh3l9sYXXShOugwlxUXqX
	K6DV2RHQZ3nPWF74lLFqV8JFkFS9XsfWom889TJuWWxGbNhXHsWcTn5MlhdDpeS5GFhKA8rYwpJ
	logiVmgyiL+o440JN1v4OAjSjW9PiAhSpxDJXE8DcOdtrp+cdH4l5jGeLQFPDKaYB9flpW9akSV
	h01fE/L3CBCHgZBPu2UuvCHK+iHzqFiN6AO4gl9F+y6VLEnF3LDpULgkIw==
X-Google-Smtp-Source: AGHT+IEc7BN+I9AuEBYkJp/jaWFUpD0J6wfKpFX9npNAzocR2TXh01hPKMJxC/w2Hwxq2f61h0F3IQ==
X-Received: by 2002:a17:906:6a04:b0:ac0:6e7d:cd0b with SMTP id a640c23a62f3a-ac6faf0b809mr4040966b.34.1743006232177;
        Wed, 26 Mar 2025 09:23:52 -0700 (PDT)
Received: from [127.0.1.1] ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac6f0f498ecsm76678866b.135.2025.03.26.09.23.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 09:23:51 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Wed, 26 Mar 2025 17:22:58 +0100
Subject: [PATCH 3/5] arm64: dts: rockchip: fix internal USB hub instability
 on RK3399 Puma
MIME-Version: 1.0
Message-Id: <20250326-onboard_usb_dev-v1-3-a4b0a5d1b32c@thaumatec.com>
References: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
In-Reply-To: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 quentin.schulz@cherry.de, stable@vger.kernel.org
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_092353_703362_13D83F41 
X-CRM114-Status: GOOD (  14.92  )
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

Q3VycmVudGx5LCB0aGUgb25ib2FyZCBDeXByZXNzIENZVVNCMzMwNCBVU0IgaHViIGlzIG5vdCBk
ZWZpbmVkIGluCnRoZSBkZXZpY2UgdHJlZSwgYW5kIGh1YiByZXNldCBwaW4gaXMgcHJvdmlkZWQg
YXMgdmNjNXYwX2hvc3QKcmVndWxhdG9yIHRvIHVzYiBwaHkuIFRoaXMgY2F1c2VzIGluc3RhYmls
aXR5IGlzc3VlcywgYXMgYSByZXN1bHQKb2YgaW1wcm9wZXIgcmVzZXQgZHVyYXRpb24uCgpUaGUg
Zml4ZWQgcmVndWxhdG9yIGRldmljZSByZXF1ZXN0cyB0aGUgR1BJTyBkdXJpbmcgcHJvYmUgaW4g
aXRzCmluYWN0aXZlIHN0YXRlIChleGNlcHQgaWYgcmVndWxhdG9yLWJvb3Qtb24gcHJvcGVydHkg
aXMgc2V0LCBpbgp3aGljaCBjYXNlIGl0IGlzIHJlcXVlc3RlZCBpbiB0aGUgYWN0aXZlIHN0YXRl
KS4gQ29uc2lkZXJpbmcgZ3BpbwppcyBHUElPX0FDVElWRV9MT1cgZm9yIFB1bWEsIGl0IG1lYW5z
IGl04oCZcyBkcml2aW5nIGl0IGhpZ2guIFRoZW4KdGhlIHJlZ3VsYXRvciBnZXRzIGVuYWJsZWQg
KGJlY2F1c2UgcmVndWxhdG9yLWFsd2F5cy1vbiBwcm9wZXJ0eSksCndoaWNoIGRyaXZlcyBpdCB0
byBpdHMgYWN0aXZlIHN0YXRlLCBtZWFuaW5nIGRyaXZpbmcgaXQgbG93LgoKVGhlIEN5cHJlc3Mg
Q1lVU0IzMzA0IFVTQiBodWIgYWN0dWFsbHkgcmVxdWlyZXMgdGhlIHJlc2V0IHRvIGJlCmFzc2Vy
dGVkIGZvciBhdCBsZWFzdCA1IG1zLCB3aGljaCB3ZSBjYW5ub3QgZ3VhcmFudGVlIHJpZ2h0IG5v
dwpzaW5jZSB0aGVyZSdzIG5vIGRlbGF5IGluIHRoZSBjdXJyZW50IGNvbmZpZywgbWVhbmluZyB0
aGUgaHViIG1heQpzb21ldGltZXMgd29yayBvciBub3QuIFdlIGNvdWxkIGFkZCBkZWxheSBhcyBv
ZmZlcmVkIGJ5CmZpeGVkLXJlZ3VsYXRvciBidXQgbGV0J3MgcmF0aGVyIGZpeCB0aGlzIGJ5IHVz
aW5nIHRoZSBwcm9wZXIgd2F5CnRvIG1vZGVsIG9uYm9hcmQgVVNCIGh1YnMuCgpEZWZpbmUgaHVi
XzJfMCBhbmQgaHViXzNfMCBub2RlcywgYXMgdGhlIG9uYm9hcmQgQ3lwcmVzcyBodWIKY29uc2lz
dCBvZiB0d28gJ2xvZ2ljYWwnIGh1YnMsIGZvciBVU0IyLjAgYW5kIFVTQjMuMC4KVXNlIHRoZSAn
cmVzZXQtZ3Bpb3MnIHByb3BlcnR5IG9mIGh1YiB0byBhc3NpZ24gcmVzZXQgcGluIGluc3RlYWQK
b2YgdXNpbmcgcmVndWxhdG9yLiBSZW5hbWUgdGhlIHZjYzV2MF9ob3N0IHJlZ3VsYXRvciB0bwpj
eTMzMDRfcmVzZXQgdG8gYmUgbW9yZSBtZWFuaW5nZnVsLgpUaGUgdmRkLXN1cHBseSBhbmQgdmRk
Mi1zdXBwbHkgcHJvcGVydGllcyBpbiBodWIgbm9kZXMgd2VyZQpza2lwcGVkLCBiZWNhdXNlIGh1
YiBwb3dlciBzdXBwbGllcyBhcmUgYWx3YXlzIGVuYWJsZWQgYmFzZWQKb24gSFcgZGVzaWduLgoK
Rml4ZXM6IDJjNjZmYzM0ZTk0NSAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgUkszMzk5LVE3
IChQdW1hKSBTb00iKQpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIDYuNgpDYzogc3RhYmxl
QHZnZXIua2VybmVsLm9yZyAjIEJhY2twb3J0IG9mIHRoZSBwYXRjaCBpbiB0aGlzIHNlcmllcyBm
aXhpbmcgcHJvZHVjdCBJRCBpbiBvbmJvYXJkX2Rldl9pZF90YWJsZSBhbmQgb25ib2FyZF9kZXZf
bWF0Y2ggaW4gZHJpdmVycy91c2IvbWlzYy9vbmJvYXJkX3VzYl9kZXYue2MsaH0gZHJpdmVyClNp
Z25lZC1vZmYtYnk6IEx1a2FzeiBDemVjaG93c2tpIDxsdWthc3ouY3plY2hvd3NraUB0aGF1bWF0
ZWMuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEuZHRz
aSB8IDMzICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIwIGlu
c2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXB1bWEuZHRzaQppbmRleCA5OTViMzBhN2FhZTAuLjNhOTA0OTM3MmUxMiAx
MDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcHVtYS5kdHNp
CisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEuZHRzaQpAQCAt
NjAsMTYgKzYwLDYgQEAgdmNjM3YzX3N5czogcmVndWxhdG9yLXZjYzN2My1zeXMgewogCQl2aW4t
c3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKIAl9OwogCi0JdmNjNXYwX2hvc3Q6IHJlZ3VsYXRvci12
Y2M1djAtaG9zdCB7Ci0JCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKLQkJZ3BpbyA9
IDwmZ3BpbzQgUktfUEEzIEdQSU9fQUNUSVZFX0xPVz47Ci0JCXBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Ci0JCXBpbmN0cmwtMCA9IDwmdmNjNXYwX2hvc3RfZW4+OwotCQlyZWd1bGF0b3ItbmFt
ZSA9ICJ2Y2M1djBfaG9zdCI7Ci0JCXJlZ3VsYXRvci1hbHdheXMtb247Ci0JCXZpbi1zdXBwbHkg
PSA8JnZjYzV2MF9zeXM+OwotCX07Ci0KIAl2Y2M1djBfc3lzOiByZWd1bGF0b3ItdmNjNXYwLXN5
cyB7CiAJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKIAkJcmVndWxhdG9yLW5hbWUg
PSAidmNjNXYwX3N5cyI7CkBAIC01MjEsOCArNTExLDggQEAgcG1pY19pbnRfbDogcG1pYy1pbnQt
bCB7CiAJCX07CiAJfTsKIAotCXVzYjIgewotCQl2Y2M1djBfaG9zdF9lbjogdmNjNXYwLWhvc3Qt
ZW4geworCXVzYiB7CisJCWN5MzMwNF9yZXNldDogY3kzMzA0LXJlc2V0IHsKIAkJCXJvY2tjaGlw
LHBpbnMgPQogCQkJICA8NCBSS19QQTMgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47CiAJ
CX07CkBAIC01OTEsNyArNTgxLDYgQEAgdTJwaHkxX290Zzogb3RnLXBvcnQgewogCX07CiAKIAl1
MnBoeTFfaG9zdDogaG9zdC1wb3J0IHsKLQkJcGh5LXN1cHBseSA9IDwmdmNjNXYwX2hvc3Q+Owog
CQlzdGF0dXMgPSAib2theSI7CiAJfTsKIH07CkBAIC02MDMsNiArNTkyLDI0IEBAICZ1c2JkcmQz
XzEgewogJnVzYmRyZF9kd2MzXzEgewogCXN0YXR1cyA9ICJva2F5IjsKIAlkcl9tb2RlID0gImhv
c3QiOworCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJcGluY3RybC0wID0gPCZjeTMzMDRf
cmVzZXQ+OworCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCSNzaXplLWNlbGxzID0gPDA+OworCisJ
aHViXzJfMDogaHViQDEgeworCQljb21wYXRpYmxlID0gInVzYjRiNCw2NTAyIjsKKwkJcmVnID0g
PDE+OworCQlwZWVyLWh1YiA9IDwmaHViXzNfMD47CisJCXJlc2V0LWdwaW9zID0gPCZncGlvNCBS
S19QQTMgR1BJT19BQ1RJVkVfSElHSD47CisJfTsKKworCWh1Yl8zXzA6IGh1YkAyIHsKKwkJY29t
cGF0aWJsZSA9ICJ1c2I0YjQsNjUwMCI7CisJCXJlZyA9IDwyPjsKKwkJcGVlci1odWIgPSA8Jmh1
Yl8yXzA+OworCQlyZXNldC1ncGlvcyA9IDwmZ3BpbzQgUktfUEEzIEdQSU9fQUNUSVZFX0hJR0g+
OworCX07CiB9OwogCiAmdXNiX2hvc3QxX2VoY2kgewoKLS0gCjIuNDMuMAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
