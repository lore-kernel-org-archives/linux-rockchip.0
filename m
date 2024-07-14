Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20A64C3DA42
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jul 2024 19:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdrtKrbLOQ5OdIu7JwtYnDn/UIa4r/KbTCujPRafDSE=; b=CfDmIGAUarcZX9
	oACS/ZAlYHF6R+DtdtjYaqImZtSP+wQrf+Jsi5m8mCv5DgZ68PXWDRzrZ1U2qSBVpd+kgzR/UI1u6
	lpEmnk8Gj3/wcug+dwKOpmi7UmZublZxWKjyV/2E1Yjcg8R8m9fPslMpRZHsk0AvlXc8Bkcjrfqe6
	Z/gH013W6Ep8EOADFvdHIMaTB1KC8TSD7qPrxZXo+EMYGQFmZTwKFLTMachibRiCcmUbYoU78Ulkv
	Hogq8fu3sFdyRbULzeWu319WFbEhp6+f2mqLHfRA4QsjNnU8FIwvgrT+oxfy98spguAUxSX7grqtV
	WnkKp8Wyi9QIYTSj2FYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sT4VR-00000004xfR-2XeB;
	Sun, 14 Jul 2024 19:03:33 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sT4V6-00000004xZz-46qj;
	Sun, 14 Jul 2024 19:03:14 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-595856e2336so6000802a12.1;
        Sun, 14 Jul 2024 12:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720983790; x=1721588590; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vpLKCYqOq8OhTR/IQ+Mu2itaQqqnEIJciBUNt74hFys=;
        b=S6JO94rFBrFO1gIFFoDA/8qXjq/CtJ/Z/lvo5UFzNLXmFyATklmOc1ZBRUkVcYDmbX
         3Lye8BP/u0zMcoeMeuErcIKIFYLJWZm3+GGgl0G75YY7s3wPjrBEl6cIHHFBfqf4lyrC
         Uve+uzx81ax7hwoUYrEur9a/3IaoBeUA8xxVFpPoiZlGY+qHmDTAqfIJXIxSatkqL4wm
         f3e8tGuscTIDZJHETxLcspRJEzdvakfN6Wc23TWl5I69iUgl9mzRrXXCLh6knqvkKwIq
         No7PMeRDmfRnb8Xa4E3ESL3szTy29ZGlUYSmnHRWmKT9ukEDfQ3XZh7DoE3VwuKxXNMZ
         P1yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720983790; x=1721588590;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vpLKCYqOq8OhTR/IQ+Mu2itaQqqnEIJciBUNt74hFys=;
        b=fmCF3tyo4u7BWziBz0X0tZF4Eso9RltYZcoISJlNjowbG8rnejk9xQIUjsezm2wdbd
         zRG7R4NmRJ98cJtvcNsMzAmm7E1cI0lo7h+SMUvQEvEt3AHcAmg2tc16HGpHG1jBlZso
         OlxUMzRikyqV/235pwgOsG7NDzr3Hh//YcDsPt2VDlRQ219X1gM4IJI9LN2EUI2V3cp2
         +EEPGXEWMj2dffHv1kF68iMbsMevtrUI31SnKhXss5Q0FZY/oe0qi3l7R+/MPfxG5OY1
         XYd40l00VmIg0GEOq/4Lf24YyCMm3MpX8nyfSU68lVp0CwMgQkR3RUuRgUZu4cABE01D
         KgIg==
X-Forwarded-Encrypted: i=1; AJvYcCXwKEG1zfovuAcluWplHvfgGMW0Vd8GEePyrEnadkzDtOXu0BkRRvSGRZpQTnR7HbGjudcY7sgZIuAIWFvk7R9mjZZIqncbdM5fqajLkoBNOcyaUI7vT/5yMq7ToEqEH2CZSutVJ9/JwAmO6z7CijI8HfQkdVI8+mA=
X-Gm-Message-State: AOJu0Yzs6FkcA5EmoW7JJiwaE67cy/NWV0Cyqwm1K2dn1QjIVH3fP20n
	N/rMmo15OOyj1S7kyUQMzlUFnJ5FxCrP/gngjGtfn6dVEuDNTnuF
X-Google-Smtp-Source: AGHT+IEiZ3XE5DCQgY9kNRkFpmTTq0d5xY4aw+RUuvL7vqErHI903pTnt1/xVZtLMdVodSxdewKJGw==
X-Received: by 2002:a50:d5d1:0:b0:57d:4409:4f48 with SMTP id 4fb4d7f45d1cf-59960007ed3mr6172383a12.15.1720983789914;
        Sun, 14 Jul 2024 12:03:09 -0700 (PDT)
Received: from smtpclient.apple (84-10-100-139.static.chello.pl. [84.10.100.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-59b24a77114sm2488563a12.6.2024.07.14.12.03.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Jul 2024 12:03:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.15\))
Subject: Re: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
Date: Sun, 14 Jul 2024 21:03:06 +0200
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Mark Yao <markyao0591@gmail.com>,
 dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org,
 kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
Message-Id: <C4BAF501-E5FE-498B-B5F3-A9818C4EA702@gmail.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
X-Mailer: Apple Mail (2.3654.120.0.1.15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240714_120313_046986_73216F97 
X-CRM114-Status: GOOD (  28.80  )
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

Q3Jpc3RpYW4sCgpJJ20gaGFja2luZyB3aXRoIGFkZGluZyBjZWMgc3VwcG9ydCBmb3IgcmszNTg4
IGhkbWkgb24gNi4xMC1yYzcgbWFpbmxpbmUuIAoKQ2VjIGtlcm5lbCBtb2R1bGUgaXMgbXkgYmFj
a3BvcnQgZnJvbSBic3AuIApNb2R1bGUgbG9hZHMuIENlYyBsaW5lIChvYnNlcnZlZCBvbiBvc2Np
bG9zY29wZSkgaGFzIHB1bHNlcyB3aGVuIGknbSBpc3N1aW5nIGkuZS4gY2VjLWN0bCAtZCAvZGV2
L2NlYzAgLS1waHlzLWFkZHI9MS4wLjAuMCDigJRwbGF5YmFjayAKCk15IGlzc3VlIGlzIHRoYXQg
dGltaW5ncyBhcmUgMiw5IHRpbWVzIGxvbmdlciB0aGF0IHNob3VsZCBiZSAoc3RhcnQgYml0IGlz
IDEwLDdtUyBpbnN0ZWFkIG9mIDMuNjsgemVybyBpcyA0LjQgaW5zdGVhZCAxLjUgd2hpbGUgb25l
IGlzIDEsNyBpbnN0ZWFkIG9mIDAuNikuCgpUaGlzIHN1Z2dlc3RzIG1lIGlzc3VlIGlzIGNlYyBj
bG9jayBpc24ndD8gCgpMb29raW5nIG9uIGJzcCBjb2RlIGh0dHBzOi8vZ2l0aHViLmNvbS9yYWR4
YS9rZXJuZWwvYmxvYi9saW51eC02LjEtc3Rhbi1ya3IxL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
c3lub3BzeXMvZHctaGRtaS1xcC1jZWMuYyNMMTg2IHRoZXJlIGlzIG5vdGhpbmcgd2l0aCBjbG9j
ay4gCgpTbyBwcm9iYWJseSBpc3N1ZSBpcyBpbiAzNTg4IGNsayBjb2RlLCBvcuKApuKApgpNYXli
ZSB5b3UgaGF2ZSBzb21lIGhpbnRzIGhvdyB0byBtb3ZlIGZvcndhcmQgd2l0aCB0aGlzIGlzc3Vl
PwoKCj4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlz
dGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4gdyBkbml1IDAxLjA2LjIwMjQsIG8gZ29kei4g
MTU6MTI6Cj4gCj4gVGhlIFJLMzU4OCBTb0MgZmFtaWx5IGludGVncmF0ZXMgYSBRdWFkLVBpeGVs
IChRUCkgdmFyaWFudCBvZiB0aGUKPiBTeW5vcHN5cyBEZXNpZ25XYXJlIEhETUkgVFggY29udHJv
bGxlciB1c2VkIGluIHRoZSBwcmV2aW91cyBTb0NzLgo+IAo+IEl0IGlzIEhETUkgMi4xIGNvbXBs
aWFudCBhbmQgc3VwcG9ydHMgdGhlIGZvbGxvd2luZyBmZWF0dXJlcywgYW1vbmcKPiBvdGhlcnM6
Cj4gCj4gKiBGaXhlZCBSYXRlIExpbmsgKEZSTCkKPiAqIDRLQDEyMEh6IGFuZCA4S0A2MEh6IHZp
ZGVvIG1vZGVzCj4gKiBWYXJpYWJsZSBSZWZyZXNoIFJhdGUgKFZSUikgaW5jbHVkaW5nIFF1aWNr
IE1lZGlhIFN3aXRjaGluZyAoUU1TKQo+ICogRmFzdCBWYWN0aXZlIChGVkEpCj4gKiBTQ0RDIEky
QyBEREMgYWNjZXNzCj4gKiBUTURTIFNjcmFtYmxlciBlbmFibGluZyAyMTYwcEA2MEh6IHdpdGgg
UkdCL1lDYkNyNDo0OjQKPiAqIFlDYkNyNDoyOjAgZW5hYmxpbmcgMjE2MHBANjBIeiBhdCBsb3dl
ciBIRE1JIGxpbmsgc3BlZWRzCj4gKiBNdWx0aS1zdHJlYW0gYXVkaW8KPiAqIEVuaGFuY2VkIEF1
ZGlvIFJldHVybiBDaGFubmVsIChFQVJDKQo+IAo+IFRoaXMgaXMgdGhlIGxhc3QgcmVxdWlyZWQg
Y29tcG9uZW50IHRoYXQgbmVlZHMgdG8gYmUgc3VwcG9ydGVkIGluIG9yZGVyCj4gdG8gZW5hYmxl
IHRoZSBIRE1JIG91dHB1dCBmdW5jdGlvbmFsaXR5IG9uIHRoZSBSSzM1ODggYmFzZWQgU0JDcywg
c3VjaAo+IGFzIHRoZSBSQURYQSBSb2NrIDVCLiBUaGUgb3RoZXIgY29tcG9uZW50cyBhcmUgdGhl
IFZpZGVvIE91dHB1dAo+IFByb2Nlc3NvciAoVk9QMikgYW5kIHRoZSBTYW1zdW5nIElQIGJhc2Vk
IEhETUkvZURQIFRYIENvbWJvIFBIWSwgZm9yCj4gd2hpY2ggYmFzaWMgc3VwcG9ydCBoYXMgYmVl
biBhbHJlYWR5IG1hZGUgYXZhaWxhYmxlIHZpYSBbMV0gYW5kIFsyXSwKPiByZXNwZWN0aXZlbHku
Cj4gCj4gVGhlIHBhdGNoZXMgYXJlIGdyb3VwZWQgYXMgZm9sbG93czoKPiAqIFBBVENIIDEuLjc6
IERXIEhETUkgVFggZHJpdmVyIHJlZmFjdG9yIHRvIG1pbmltaXplIGNvZGUgZHVwbGljYXRpb24g
aW4KPiAgdGhlIG5ldyBRUCBkcml2ZXIgKG5vIGZ1bmN0aW9uYWwgY2hhbmdlcyBpbnRlbmRlZCkK
PiAKPiAqIFBBVENIIDguLjExOiBSb2NrY2hpcCBEVyBIRE1JIGdsdWUgZHJpdmVyIGNsZWFudXAv
aW1wcm92ZW1lbnRzIChubwo+ICBmdW5jdGlvbmFsIGNoYW5nZXMgaW50ZW5kZWQpCj4gCj4gKiBQ
QVRDSCAxMi4uMTM6IFRoZSBuZXcgRFcgSERNSSBRUCBUWCBkcml2ZXIgcmV1c2luZyB0aGUgcHJl
dmlvdXNseQo+ICBleHBvcnRlZCBmdW5jdGlvbnMgYW5kIHN0cnVjdHMgZnJvbSBleGlzdGluZyBE
VyBIRE1JIFRYIGRyaXZlcgo+IAo+ICogUEFUQ0ggMTQ6IFJvY2tjaGlwIERXIEhETUkgZ2x1ZSBk
cml2ZXIgdXBkYXRlIHRvIHN1cHBvcnQgUkszNTg4IGFuZAo+ICBtYWtlIHVzZSBvZiBEVyBIRE1J
IFFQIFRYCj4gCj4gVGhleSBwcm92aWRlIGp1c3QgdGhlIGJhc2ljIEhETUkgc3VwcG9ydCBmb3Ig
bm93LCBpLmUuIFJHQiBvdXRwdXQgdXAgdG8KPiA0S0A2MEh6LCB3aXRob3V0IGF1ZGlvLCBDRUMg
b3IgYW55IG9mIHRoZSBIRE1JIDIuMSBzcGVjaWZpYyBmZWF0dXJlcy4KPiBBbHNvIG5vdGUgdGhl
IHZvcDIgZHJpdmVyIGlzIGN1cnJlbnRseSBub3QgYWJsZSB0byBwcm9wZXJseSBoYW5kbGUgYWxs
Cj4gZGlzcGxheSBtb2RlcyBzdXBwb3J0ZWQgYnkgdGhlIGNvbm5lY3RlZCBzY3JlZW5zLCBlLmcu
IGl0IGRvZXNuJ3QgY29wZQo+IHdpdGggbm9uLWludGVnZXIgcmVmcmVzaCByYXRlcy4KPiAKPiBB
IHBvc3NpYmxlIHdvcmthcm91bmQgY29uc2lzdHMgb2YgZW5hYmxpbmcgdGhlIGRpc3BsYXkgY29u
dHJvbGxlciB0bwo+IG1ha2UgdXNlIG9mIHRoZSBjbG9jayBwcm92aWRlZCBieSB0aGUgSERNSSBQ
SFkgUExMLiBUaGlzIGlzIHN0aWxsIHdvcmsKPiBpbiBwcm9ncmVzcyBhbmQgd2lsbCBiZSBzdWJt
aXR0ZWQgbGF0ZXIsIGFzIHdlbGwgYXMgdGhlIHJlcXVpcmVkIERUUwo+IHVwZGF0ZXMuCj4gCj4g
VG8gZmFjaWxpdGF0ZSB0ZXN0aW5nIGFuZCBleHBlcmltZW50YXRpb24sIGFsbCBIRE1JIG91dHB1
dCByZWxhdGVkCj4gcGF0Y2hlcywgaW5jbHVkaW5nIHRob3NlIHBhcnQgb2YgdGhpcyBzZXJpZXMs
IGFyZSBhdmFpbGFibGUgYXQgWzNdLgo+IFNvIGZhciBJIGNvdWxkIG9ubHkgdmVyaWZ5IHRoaXMg
b24gdGhlIFJBRFhBIFJvY2sgM0EgYW5kIDVCIGJvYXJkcy4KPiAKPiBUaGFua3MsCj4gQ3Jpc3Rp
YW4KPiAKPiBbMV06IDVhMDI4ZThmMDYyZiAoImRybS9yb2NrY2hpcDogdm9wMjogQWRkIHN1cHBv
cnQgZm9yIHJrMzU4OCIpCj4gWzJdOiA1NTNiZTI4MzBjNWYgKCJwaHk6IHJvY2tjaGlwOiBBZGQg
U2Ftc3VuZyBIRE1JL2VEUCBDb21ibyBQSFkgZHJpdmVyIikKPiBbM106IGh0dHBzOi8vZ2l0bGFi
LmNvbGxhYm9yYS5jb20vaGFyZHdhcmUtZW5hYmxlbWVudC9yb2NrY2hpcC0zNTg4L2xpbnV4Ly0v
Y29tbWl0cy9yazM1ODgtaGRtaS1icmlkZ2UtdjYuMTAtcmMxCj4gCj4gU2lnbmVkLW9mZi1ieTog
Q3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPiAt
LS0KPiBDcmlzdGlhbiBDaW9jYWx0ZWEgKDE0KToKPiAgICAgIGRybS9icmlkZ2U6IGR3LWhkbWk6
IFNpbXBsaWZ5IGNsb2NrIGhhbmRsaW5nCj4gICAgICBkcm0vYnJpZGdlOiBkdy1oZG1pOiBBZGQg
ZHctaGRtaS1jb21tb24uaCBoZWFkZXIKPiAgICAgIGRybS9icmlkZ2U6IGR3LWhkbWk6IENvbW1v
bml6ZSBkd19oZG1pX2kyY19hZGFwdGVyKCkKPiAgICAgIGRybS9icmlkZ2U6IGR3LWhkbWk6IEZh
Y3RvciBvdXQgQVZJIGluZm9mcmFtZSBzZXR1cAo+ICAgICAgZHJtL2JyaWRnZTogZHctaGRtaTog
RmFjdG9yIG91dCB2bW9kZSBzZXR1cAo+ICAgICAgZHJtL2JyaWRnZTogZHctaGRtaTogRmFjdG9y
IG91dCBoZG1pX2RhdGFfaW5mbyBzZXR1cAo+ICAgICAgZHJtL2JyaWRnZTogZHctaGRtaTogQ29t
bW9uaXplIGR3X2hkbWlfY29ubmVjdG9yX2NyZWF0ZSgpCj4gICAgICBkcm0vcm9ja2NoaXA6IGR3
X2hkbWk6IFVzZSBtb2Rlcm4gZHJtX2RldmljZSBiYXNlZCBsb2dnaW5nCj4gICAgICBkcm0vcm9j
a2NoaXA6IGR3X2hkbWk6IFNpbXBsaWZ5IGNsb2NrIGhhbmRsaW5nCj4gICAgICBkcm0vcm9ja2No
aXA6IGR3X2hkbWk6IFVzZSBkZXZtX3JlZ3VsYXRvcl9nZXRfZW5hYmxlKCkKPiAgICAgIGRybS9y
b2NrY2hpcDogZHdfaGRtaTogRHJvcCBzdXBlcmZsdW91cyBhc3NpZ25tZW50cyBvZiBtcGxsX2Nm
ZywgY3VyX2N0ciBhbmQgcGh5X2NvbmZpZwo+ICAgICAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IHJv
Y2tjaGlwLGR3LWhkbWk6IEFkZCBjb21wYXRpYmxlIGZvciBSSzM1ODgKPiAgICAgIGRybS9icmlk
Z2U6IHN5bm9wc3lzOiBBZGQgRFcgSERNSSBRUCBUWCBjb250cm9sbGVyIGRyaXZlcgo+ICAgICAg
ZHJtL3JvY2tjaGlwOiBkd19oZG1pOiBBZGQgYmFzaWMgUkszNTg4IHN1cHBvcnQKPiAKPiAuLi4v
ZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1oZG1pLnlhbWwgICAgICAgICB8IDEyNyArKyst
Cj4gZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9NYWtlZmlsZSAgICAgICAgICAgfCAg
IDIgKy0KPiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktY29tbW9uLmgg
ICB8IDE3OSArKysrKwo+IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1x
cC5jICAgICAgIHwgNzg3ICsrKysrKysrKysrKysrKysrKysKPiBkcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL3N5bm9wc3lzL2R3LWhkbWktcXAuaCAgICAgICB8IDgzMSArKysrKysrKysrKysrKysrKysr
KysKPiBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYyAgICAgICAgICB8
IDM1MyArKystLS0tLS0KPiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hp
cC5jICAgICAgICB8IDM1MSArKysrKysrLS0KPiBpbmNsdWRlL2RybS9icmlkZ2UvZHdfaGRtaS5o
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgOCArCj4gOCBmaWxlcyBjaGFuZ2VkLCAyMjkwIGlu
c2VydGlvbnMoKyksIDM0OCBkZWxldGlvbnMoLSkKPiAtLS0KPiBiYXNlLWNvbW1pdDogMTYxM2U2
MDRkZjBjZDM1OWNmMmE3ZmJkOWJlN2EwYmNmYWNmYWJkMAo+IGNoYW5nZS1pZDogMjAyNDA2MDEt
YjQtcmszNTg4LWJyaWRnZS11cHN0cmVhbS1hMjdiYWZmMWI4ZmMKPiAKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
