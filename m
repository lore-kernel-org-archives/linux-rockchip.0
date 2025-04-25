Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7508AC369C2
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 16:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fz0a4QJ3MklJrFaoxKO2S4YvHsSdvI0C2zBIldd4IG0=; b=siojMd8/m9e+AT
	P12RvkkmXj+Lv7H9kLk4iNJTxjlSFdf6xkjX5OMe+6BbhWcgjWbhf00KgGO2rjm4DyOOB0w+gcc5v
	Dsso5CUJat4BFJBfutp55Zd8n9rIx87Rdwrbc2Wvrb1JleD3rKKhKpiHU2vypWSie65mQ/1fpvQyO
	kxEdobS41E/2qRDxUw6DKizJPq8a74/iGqZB03fWz/DIJHxmyFlylICliOPbi6infiavKQggkIfDW
	eEGdgYEWkIvUwxKUze1OAbWC98nQiCiwfgYnkbxJob9ae7Tn390OXRSm19PADPbg4lUem2Eb83uG7
	wmOBbq7e/Kv7NdJAa2YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Lwq-00000000E7X-1RnP;
	Fri, 25 Apr 2025 16:30:44 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8KpG-0000000015e-0zge
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Apr 2025 15:18:51 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5e8be1c6ff8so4030725a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Apr 2025 08:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1745594328; x=1746199128; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3NqGpeCgEQAUcPs6hxmWuzzpxKmr/yNO0w1y1ZqO3+o=;
        b=rcYUU6DZkJ/GgXtaPt4Xh12QIHl6vzYo75AWDoybQTBTFcmTvbXPP6W/nv2etA93gY
         TTQvCZJJV0qsuEDAYIFzqfIPipMVQjCeluUvPESkgAufQXReLH47TJ+NvKdGDqWikS/a
         zIoiNG3Y47Wk7EwrRwR9wekaZbJY/F/1qf0Ioe/yKfeO7C59RpiC2WWjcWCl2XczdaHL
         gw6yTJyUrm1M11Tau4Yg7W2NoJf3J5Qf3BgWuYitwCSCy3IElVnL9ymRwsLTn1zpMehb
         6jRZMaGs25Xyg9JstFRLtdomtOFTP6TTUmKcLrj/GY1jesC7UeF8OiWCCP8OWOxnFloz
         K/wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745594328; x=1746199128;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3NqGpeCgEQAUcPs6hxmWuzzpxKmr/yNO0w1y1ZqO3+o=;
        b=vYHXq/FCkC5rTy4PX6yyxerbk2Ir0VB8K/DjDeeGbq7hvKp4TAdwV9pC8CG6sU9DMY
         64hYzCPrjgzRcbdxOjC0d9V0b+x3al1pEb2r9OhJ4ljTpoEuWOalW3U61J+ysBFmhhOe
         H2skUuY8GKolPCIRcKXEVRXy9IZnJCErbfaA/fxhrWwctVU575gBXdRk2FTNLZ/gGxco
         nEODUWZMXdjGIXCLtrhTBj/3mafljlgXwZuVNvoP7JJht3HPK9hAWgv6HpPARaQl8en8
         Ja5yDKoOBJQHdhcFqAqFUCNJ+kFEytIJDT13tMEqUCcSHooBBVdCSGv+gtD5SE1j692O
         kAnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAW9YPFIMJNmh4jwo8uqDlInOG1mKbTOWHL90q+L37l9eXkrAw43pqyy/kJUE08BzJe4nzhaxl7cU/f0ghSg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJd0vPVi/9n/+cDd8rWqrzWT9PWUS97VjDipNx9CodvZqWo3WC
	FpRFiuRmwd6BhkOx1UiqfKJWnZB5dqExmkp8mpNvKI/N8m50Z6u5KCUpZ90YBbc=
X-Gm-Gg: ASbGnctXVL+/stWDVurT+TYHwSeJctzL1y8an58h7mIzX86Pq8PNd/c9aaKpM20fl19
	E6OEXAZ/kLeH8a9BhtChvUKZJ+cFKxuuiqt/285l+7KXdZs0h1sAxmGeQQdezStrueQrvwhTqGG
	6OQxqqUiDToH7l5C99/oQziqkr6LKcD3p+DqAa++9B9DrkUEiDbdKihHhDuMa5OPYertNI0VMKM
	85yDvUwgh3Xx+6evDh7AguVfByzU8KK9FVB+sdz2YPeaiX1WkRS+4zRf0lEmQCvx7Jq6jmo2G57
	RNWh0cTTwJ3Rq6kbpdA9mRxKV3zm8vkjgaWvuUwzyREbfzE6ZvXc3QhnIw==
X-Google-Smtp-Source: AGHT+IEUamcP+7odYOOdpoBpwq4Ga4sU/sBxRb/GHkSRX9M2Uw0bvZNoH1NBuPxH9S4vCQHnw3MNhg==
X-Received: by 2002:a17:907:72cf:b0:ac7:150e:8013 with SMTP id a640c23a62f3a-ace710a20a1mr291795166b.15.1745594328214;
        Fri, 25 Apr 2025 08:18:48 -0700 (PDT)
Received: from [127.0.1.1] ([185.164.142.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e59649fsm151099766b.85.2025.04.25.08.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:18:48 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Fri, 25 Apr 2025 17:18:08 +0200
Subject: [PATCH v2 3/5] arm64: dts: rockchip: fix internal USB hub
 instability on RK3399 Puma
MIME-Version: 1.0
Message-Id: <20250425-onboard_usb_dev-v2-3-4a76a474a010@thaumatec.com>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
In-Reply-To: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_081850_277953_0F84A93C 
X-CRM114-Status: GOOD (  16.90  )
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
eTMzMDRfcmVzZXQgdG8gYmUgbW9yZSBtZWFuaW5nZnVsLiBQaW4gaXMgY29uZmlndXJlZCB0bwpv
dXRwdXQtaGlnaCBieSBkZWZhdWx0LCB3aGljaCBzZXRzIHRoZSBodWIgaW4gcmVzZXQgc3RhdGUK
ZHVyaW5nIHBpbiBjb250cm9sbGVyIGluaXRpYWxpemF0aW9uLiBUaGlzIGFsbG93cyB0byBhdm9p
ZCBkb3VibGUKZW51bWVyYXRpb24gb2YgZGV2aWNlcyBpbiBjYXNlIHRoZSBib290bG9hZGVyIGhh
cyBzZXR1cCB0aGUgVVNCCmh1YiBiZWZvcmUgdGhlIGtlcm5lbC4KVGhlIHZkZC1zdXBwbHkgYW5k
IHZkZDItc3VwcGx5IHByb3BlcnRpZXMgaW4gaHViIG5vZGVzIGFyZQphZGRlZCB0byBwcm92aWRl
IGNvcnJlY3QgZHQtYmluZGluZ3MsIGFsdGhvdWdoIHBvd2VyIHN1cHBsaWVzIGFyZQphbHdheXMg
ZW5hYmxlZCBiYXNlZCBvbiBIVyBkZXNpZ24uCgpGaXhlczogMmM2NmZjMzRlOTQ1ICgiYXJtNjQ6
IGR0czogcm9ja2NoaXA6IGFkZCBSSzMzOTktUTcgKFB1bWEpIFNvTSIpCkNjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnICMgNi42CkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnICMgQmFja3BvcnQg
b2YgdGhlIHBhdGNoIGluIHRoaXMgc2VyaWVzIGZpeGluZyBwcm9kdWN0IElEIGluIG9uYm9hcmRf
ZGV2X2lkX3RhYmxlIGluIGRyaXZlcnMvdXNiL21pc2Mvb25ib2FyZF91c2JfZGV2LmMgZHJpdmVy
ClNpZ25lZC1vZmYtYnk6IEx1a2FzeiBDemVjaG93c2tpIDxsdWthc3ouY3plY2hvd3NraUB0aGF1
bWF0ZWMuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEu
ZHRzaSB8IDQwICsrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI2
IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LXB1bWEuZHRzaQppbmRleCA5OTViMzBhN2FhZTAxYTAzMjZlOWY4MGQ2
YmU5MzBmMjI3OTY4NTM5Li5kZDVhOWJjYTI2ZDFkMjIxNjA3ZTczMDcxNjg1ZDU3NzQzMzBkNzYw
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1wdW1hLmR0
c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcHVtYS5kdHNpCkBA
IC02MCwxNiArNjAsNiBAQCB2Y2MzdjNfc3lzOiByZWd1bGF0b3ItdmNjM3YzLXN5cyB7CiAJCXZp
bi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+OwogCX07CiAKLQl2Y2M1djBfaG9zdDogcmVndWxhdG9y
LXZjYzV2MC1ob3N0IHsKLQkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwotCQlncGlv
ID0gPCZncGlvNCBSS19QQTMgR1BJT19BQ1RJVkVfTE9XPjsKLQkJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKLQkJcGluY3RybC0wID0gPCZ2Y2M1djBfaG9zdF9lbj47Ci0JCXJlZ3VsYXRvci1u
YW1lID0gInZjYzV2MF9ob3N0IjsKLQkJcmVndWxhdG9yLWFsd2F5cy1vbjsKLQkJdmluLXN1cHBs
eSA9IDwmdmNjNXYwX3N5cz47Ci0JfTsKLQogCXZjYzV2MF9zeXM6IHJlZ3VsYXRvci12Y2M1djAt
c3lzIHsKIAkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwogCQlyZWd1bGF0b3ItbmFt
ZSA9ICJ2Y2M1djBfc3lzIjsKQEAgLTUyMSwxMCArNTExLDEwIEBAIHBtaWNfaW50X2w6IHBtaWMt
aW50LWwgewogCQl9OwogCX07CiAKLQl1c2IyIHsKLQkJdmNjNXYwX2hvc3RfZW46IHZjYzV2MC1o
b3N0LWVuIHsKKwl1c2IgeworCQljeTMzMDRfcmVzZXQ6IGN5MzMwNC1yZXNldCB7CiAJCQlyb2Nr
Y2hpcCxwaW5zID0KLQkJCSAgPDQgUktfUEEzIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+
OworCQkJICA8NCBSS19QQTMgUktfRlVOQ19HUElPICZwY2ZnX291dHB1dF9oaWdoPjsKIAkJfTsK
IAl9OwogCkBAIC01OTEsNyArNTgxLDYgQEAgdTJwaHkxX290Zzogb3RnLXBvcnQgewogCX07CiAK
IAl1MnBoeTFfaG9zdDogaG9zdC1wb3J0IHsKLQkJcGh5LXN1cHBseSA9IDwmdmNjNXYwX2hvc3Q+
OwogCQlzdGF0dXMgPSAib2theSI7CiAJfTsKIH07CkBAIC02MDMsNiArNTkyLDI5IEBAICZ1c2Jk
cmQzXzEgewogJnVzYmRyZF9kd2MzXzEgewogCXN0YXR1cyA9ICJva2F5IjsKIAlkcl9tb2RlID0g
Imhvc3QiOworCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJcGluY3RybC0wID0gPCZjeTMz
MDRfcmVzZXQ+OworCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCSNzaXplLWNlbGxzID0gPDA+Owor
CisJaHViXzJfMDogaHViQDEgeworCQljb21wYXRpYmxlID0gInVzYjRiNCw2NTAyIiwgInVzYjRi
NCw2NTA2IjsKKwkJcmVnID0gPDE+OworCQlwZWVyLWh1YiA9IDwmaHViXzNfMD47CisJCXJlc2V0
LWdwaW9zID0gPCZncGlvNCBSS19QQTMgR1BJT19BQ1RJVkVfSElHSD47CisJCXZkZC1zdXBwbHkg
PSA8JnZjYzF2Ml9waHk+OworCQl2ZGQyLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47CisKKwl9Owor
CisJaHViXzNfMDogaHViQDIgeworCQljb21wYXRpYmxlID0gInVzYjRiNCw2NTAwIiwgInVzYjRi
NCw2NTA0IjsKKwkJcmVnID0gPDI+OworCQlwZWVyLWh1YiA9IDwmaHViXzJfMD47CisJCXJlc2V0
LWdwaW9zID0gPCZncGlvNCBSS19QQTMgR1BJT19BQ1RJVkVfSElHSD47CisJCXZkZC1zdXBwbHkg
PSA8JnZjYzF2Ml9waHk+OworCQl2ZGQyLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47CisJfTsKIH07
CiAKICZ1c2JfaG9zdDFfZWhjaSB7CgotLSAKMi40My4wCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
