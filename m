Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FB11CD1292
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 17:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZJZfR2F1IOQPFrHk3jQwFJaFm/bx+nAOFK6289rEu4=; b=R9aFTzx2Ole9WW
	99QixvFa38gLEsQtFMAqLMVLDASRW5ZtFc/Z2wXrew9WzLj0GOiyYnaUAcgU+CV/tvHvrCtOmcLw0
	FnQRPh9VchsZzb1Uqz705iqZJlJoiHywWRQA6dOKo30hT6RHaaPZUVF4q/odswsRs/kTKt7WDfedI
	D4ZgNeIQzQUitECaavv70XoUBEdZhjqUT/L/+u5sgJeNoe4GwEwVVj4RqHCxwprimEWSbulAXuMf1
	lwSHNzbfHJ2M3B5i18jm6sivtP+77X7rFro2GGLSiCXIUu2NFKo/Pga5+J/SYKAG6tL28vGKlHOBQ
	ypuIJG6eMlKcotMpQvEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsR5W-00000003gVE-2EBp;
	Thu, 04 Apr 2024 17:41:22 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsR5S-00000003gTo-1rrF
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Apr 2024 17:41:21 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6e6e0867be8so664794a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Apr 2024 10:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1712252476; x=1712857276; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PDCUlJMzIv/laHrjUCGrOmU4Uxm0ZKwh32oebCX4CUg=;
        b=XuSpZX9DaiTLYkLkiWDl+O17YvQj4wohqnRXI17ylwuJj5eo9uGSXs0E9+15xqLMZw
         6PwfhXVxMX1ZomEDNPz8WMqJmEYIsjYqDxG2ibEZOotzJZcNpR67Q4p0BnNGCR2s1qYs
         B5V/ZBQD5JH5dHINERg1nEpNF8Au1Dsok7B7zXlaiJeDQ9vS9CW7RMbhWWcwBDzZMjYc
         lNb5tjlHc0sv1FKmgI/a/JgdRvis0J5Ty9TIowYGawVfsoOy7hAsG+VDBYOL7PyyfSN4
         cAd+U/rp6AFIWZcJ/EJ5xenjMqJl5OO4QMtlUbXEalYDrk6l8L78knT+cmPKcvYHz68v
         20uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712252476; x=1712857276;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PDCUlJMzIv/laHrjUCGrOmU4Uxm0ZKwh32oebCX4CUg=;
        b=g1MjZAiXMMgN4USdijx+Z1X/2HQm8GhT8fanBoHDUFT6NwgXTiNqasedeqDHq5rKxf
         82Trj7zMY8jqmJXjbbmWQuS38soixsLbxHqttPzI7TiVaXj6RjJgHFPlyCgCZSCixNEC
         EOs7BAZruaIyZYBHUnQuP2H7PNQ/xZx4AT3FqKEHTnISwV1URtPgP5/pHqrA/0bDS3Tk
         Xo4FDqwbb9wAs48deoixcnIlViJeh2lC6uS8RgkR0ZzK8sA5AjvRM3fz4e3Xff6Ni0PK
         FganBjz8w8qi1xjhDdekQcuVR+60P/4/oHLWIyCKnDqfVjkT7TDzX83LUH1qOPQZxeHE
         yltQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhmdBZgXE5b25q219IoHvxuVmVKfdoEpdLBnMHtHF5hSTNc2SiVyq+AEyFh7yiVrxTDIPtEW9YBjTS1X2VlHr34PpsN/bChJCC36KCBweAnXRt
X-Gm-Message-State: AOJu0Yz5MHzHCku4Xtr0F1+8PxhDe+DuBLRIZ21vEZacfmQQQkKLSeYP
	6uvJK+zKvBdN7irqY2xAPRj7JMSy8uEWKa+qrIl9cztBIfgURjdfq+WU+otz3g0=
X-Google-Smtp-Source: AGHT+IH6SPgr9ERE/vwlY2jNucRJ8k5kekJ4QNJCT/jjb/z1ac1mW4/lQwO5MYeuUEjOj8KsCc0l4g==
X-Received: by 2002:a05:6870:c194:b0:22e:15fd:e247 with SMTP id h20-20020a056870c19400b0022e15fde247mr3396329oad.5.1712252476562;
        Thu, 04 Apr 2024 10:41:16 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:17:6448:fa75:a4ff:fe45:b56])
        by smtp.gmail.com with ESMTPSA id l13-20020a37f50d000000b0078a4d950935sm6051176qkk.12.2024.04.04.10.41.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 10:41:16 -0700 (PDT)
Message-ID: <bbcb66e9499120a86b367e7abdac2d8e2e704bfb.camel@ndufresne.ca>
Subject: Re: [PATCH v2 0/2] Enable JPEG encoding on rk3588
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, 
	linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>, Will
 Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Sebastian
 Reichel <sebastian.reichel@collabora.com>,  Cristian Ciocaltea
 <cristian.ciocaltea@collabora.com>, Dragan Simic <dsimic@manjaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>, Chris Morgan
 <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>, Nicolas
 Frattaroli <frattaroli.nicolas@gmail.com>,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  iommu@lists.linux.dev
Date: Thu, 04 Apr 2024 13:41:15 -0400
In-Reply-To: <20240327134115.424846-1-linkmauve@linkmauve.fr>
References: <20240327134115.424846-1-linkmauve@linkmauve.fr>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_104118_777258_E98451DF 
X-CRM114-Status: GOOD (  20.66  )
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

SGksCgpMZSBtZXJjcmVkaSAyNyBtYXJzIDIwMjQgw6AgMTQ6NDEgKzAxMDAsIEVtbWFudWVsIEdp
bCBQZXlyb3QgYSDDqWNyaXTCoDoKPiBPbmx5IHRoZSBKUEVHIGVuY29kZXIgaXMgYXZhaWxhYmxl
IGZvciBub3csIGFsdGhvdWdoIHRoZXJlIGFyZSBwYXRjaGVzCj4gZm9yIHRoZSB1bmRvY3VtZW50
ZWQgVlA4IGVuY29kZXIgZmxvYXRpbmcgYXJvdW5kWzBdLgoKWzBdIHNlZW1zIGxpa2UgYSBicm9r
ZW4gbGluay4gVGhlIFZQOCBlbmNvZGVyIFJGQyBpcyBmb3IgUkszMzk5IChhbmQgSGFudHJvIEgx
CnBvc3RlZCBieSBTVCBtb3JlIHJlY2VudGx5KS4gVGhlIFRSTSBzYXlzICJWRVBVMTIxKEpQRUcg
ZW5jb2RlciBvbmx5KSIsIHdoaWNoCnN1Z2dlc3QgdGhhdCB0aGUgSC4yNjQgYW5kIFZQOCBlbmNv
ZGVycyB1c3VhbGx5IGZvdW5kIG9uIHRoZSBWRVBVMTIxIGFyZQpyZW1vdmVkLiBBcyBSb2NrY2hp
cCBoYXZlIHJlbW92ZSB0aGUgc3ludGhlc2l6ZSByZWdpc3RlciB3aGlsZSBtb2RpZnlpbmcgdGhl
IEgxCklQLCBpdCBpcyBkaWZmaWN1bHQgdG8gdmVyaWZ5LiBDb25mdXNpbmdseSB0aGUgSC4yNjQg
c3BlY2lmaWMgcmVnaXN0ZXJzIGFyZQpkb2N1bWVudGVkIGluIHRoZSBUUk0gYXJvdW5kIFZFUFUx
MjEuCgo+IAo+IFRoaXMgaGFzIGJlZW4gdGVzdGVkIG9uIGEgcm9jay01YiwgcmVzdWx0aW5nIGlu
IGZvdXIgL2Rldi92aWRlbyoKPiBlbmNvZGVycy4gIFRoZSB1c2Vyc3BhY2UgcHJvZ3JhbSBJ4oCZ
dmUgYmVlbiB1c2luZyB0byB0ZXN0IHRoZW0gaXMKPiBPbml4WzFdLCB1c2luZyB0aGUganBlZy1l
bmNvZGVyIGV4YW1wbGUsIGl0IHdpbGwgcGljayBvbmUgb2YgdGhlc2UgZm91cgo+IGF0IHJhbmRv
bSAoYnV0IGRpc3BsYXlzIHRoZSBvbmUgaXQgcGlja2VkKToKPiAlIGZmbXBlZyAtaSA8aW5wdXQg
aW1hZ2U+IC1waXhfZm10IHl1dmo0MjBwIHRlbXAueXV2Cj4gJSBqcGVnLWVuY29kZXIgdGVtcC55
dXYgPHdpZHRoPiA8aGVpZ2h0PiBOVjEyIDxxdWFsaXR5PiBvdXRwdXQuanBlZwoKSSBkb24ndCBs
aWtlIHRoYXQgd2UgZXhwb3NpbmcgZWFjaCBpZGVudGljYWwgY29yZXMgYSBzZXBhcmF0ZSB2aWRl
byBub2Rlcy4gSQp0aGluayB3ZSBzaG91bGQgYWltIGZvciAxIGRldmljZSwgYW5kIHRoZW4gbXVs
dGktcGxleCBhbmQgc2NoZWR1bGUgZGUgY29yZXMgZnJvbQppbnNpZGUgdGhlIExpbnV4IGtlcm5l
bC4KCk5vdCBkb2luZyB0aGlzIG5vdyBtZWFucyB3ZSdsbCBuZXZlciBoYXZlIGFuIG9wdGltYWwg
aGFyZHdhcmUgdXNhZ2UKZGlzdHJpYnV0aW9uLiBKdXN0IGNvbnNpZGVyIHR3byB1c2Vyc3BhY2Ug
c29mdHdhcmUgd2FudGluZyB0byBkbyBqcGVnIGVuY29kaW5nLgpJZiB0aGV5IGJvdGggdGFrZSBh
IGd1ZXNzLCB0aGV5IG1heSBlbmR1cCB1c2luZyBhIHNpbmdsZSBjb3JlLiBXaGVyZSB3aXRoIHBy
b3BlcgpzY2hlZHVsaW5nIGluIFY0TDIsIHRoZSBrZXJuZWwgd2lsbCBiZSBhYmxlIHRvIHByb3Bl
cmx5IGRpc3RyaWJ1dGUgdGhlIGxvYWQuIEkKaW5zaXN0IG9uIHRoaXMsIHNpbmNlIGlmIHdlIG1l
cmdlIHlvdSBjaGFuZ2VzIGl0IGJlY29tZXMgYW4gQUJJIGFuZCB3ZSBjYW4ndApjaGFuZ2UgaXQg
YW55bW9yZS4KCkkgdW5kZXJzdGFuZCB0aGF0IHRoaXMgaW1wb3NlIGEgcmV3b3JrIG9mIHRoZSBt
ZW0ybWVtIGZyYW1ld29yayBzbyB0aGF0IHdlIGNhbgpydW4gbXVsdGlwbGUgam9icywgYnV0IHRo
aXMgd2lsbCBiZSBuZWVkZWQgYW55d2F5IG9uIFJLMzU4OCwgc2luY2UgdGhlIHJrdmRlYzIsCndo
aWNoIHdlIGRvbid0IGhhdmUgYSBkcml2ZXIgeWV0IGlzIGFsc28gbXVsdGktY29yZSwgYnV0IHlv
dSBuZWVkIHRvIHVzZSAyIGNvcmVzCndoZW4gdGhlIHJlc29sdXRpb24gaXMgY2xvc2UgdG8gOEsu
CgpOaWNvbGFzCgo+IAo+IFswXSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3Qv
bGludXgtcm9ja2NoaXAvbGlzdC8/c2VyaWVzPTc4OTg4NQo+IFsxXSBodHRwczovL2NyYXRlcy5p
by9jcmF0ZXMvb25peAo+IAo+IENoYW5nZXMgc2luY2UgdjE6Cj4gLSBEcm9wcGVkIHBhdGNoZXMg
MSBhbmQgNC4KPiAtIFVzZSB0aGUgcHJvcGVyIGNvbXBhdGlibGUgZm9ybSwgc2luY2UgdGhpcyBk
ZXZpY2Ugc2hvdWxkIGJlIGZ1bGx5Cj4gICBjb21wYXRpYmxlIHdpdGggdGhlIFZFUFUgb2Ygcmsz
NTZ4Lgo+IC0gRGVzY3JpYmUgd2hlcmUgdGhlIFZFUFUxMjEgbmFtZSBjb21lcyBmcm9tLCBhbmQg
bGlzdCBvdGhlciBlbmNvZGVycwo+ICAgYW5kIGRlY29kZXJzIHByZXNlbnQgaW4gdGhpcyBTb0Mu
Cj4gLSBQcm9wZXJseSB0ZXN0IHRoZSBkZXZpY2UgdHJlZSBjaGFuZ2VzLCBJIHByZXZpb3VzbHkg
Y291bGRu4oCZdCBzaW5jZSBJCj4gICB3YXMgdXNpbmcgYSB0b28gcmVjZW50IHZlcnNpb24gb2Yg
cHl0aG9uLWpzb25zY2hlbWHigKYKPiAKPiBFbW1hbnVlbCBHaWwgUGV5cm90ICgyKToKPiAgIG1l
ZGlhOiBkdC1iaW5kaW5nOiBtZWRpYTogRG9jdW1lbnQgcmszNTg44oCZcyBWRVBVMTIxCj4gICBh
cm02NDogZHRzOiByb2NrY2hpcDogQWRkIFZFUFUxMjEgdG8gcmszNTg4Cj4gCj4gIC4uLi9iaW5k
aW5ncy9tZWRpYS9yb2NrY2hpcCxyazM1NjgtdmVwdS55YW1sICB8ICA4ICstCj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpICAgICB8IDgwICsrKysrKysrKysrKysr
KysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA4NiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
