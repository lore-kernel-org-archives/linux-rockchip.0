Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14D57C27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 11:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Hd9dA2WXckH0x8RIVphvfdHI0zm/XI2kinK8gt7Udc=; b=ImAQww9GihSEIB
	he45wYie1xiS91GHDk2BagdVOneSGyysw+iBkrNfo5CYf2i2n0wTYfYw0bsdDAHB7N8e39WLhookc
	94X08qgAS88Hm8gCovb/+gONZedFbAAyhGz22X0GgfIu57Bslxx3YAU6O38IK3BtBXsXtJGiNKZI6
	s+tJyz42Y7irrQkzCD48YJnk6wxFJzF29rGPin435t87wU58NTB62gWIZuAN+nwa9AQ+XwNWTv5f6
	CFGluozYC1URf0HcS31auorsd5nDLtUzQYimabj4sCC5VzdTQmo8itEr94LNnOu/reuHr68ogMGGg
	l/X5YH/pDPDr4uDWxyuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJANC-0000000AR9G-3wYu;
	Mon, 17 Jun 2024 11:18:06 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAN8-0000000AR7i-04cS;
	Mon, 17 Jun 2024 11:18:03 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-43fecdecd32so20972241cf.1;
        Mon, 17 Jun 2024 04:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718623081; x=1719227881; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1R/gFx9Klqha3kU9BqkNKnQ9gJqwp56eACgbNepYfSU=;
        b=RwB06Z5GVeyPs9FCT1lLjH+ghDI+Sc/FwBygoQS1f48pcdhdnmsE2XvVvRVWDQIOwv
         HH1NoRn2CLraoBiFa8sxOPu8kzlKg3FoBjMxxaEiJz3sEkee8d+SOJVp84DiEZrHQ09r
         TMll0rKo3xH3Ny07QmnoaIFGrCsB/C/Kqhf0j/KiOmIrMQxgqczpMwWLjI64/Azn0zzl
         gapUa33rJDJFrLQ7VIYPhUu5nU/meKqCjBtq1ENzk+r/myytm31hcgWmoBC2MRFInj96
         dxlt0dHtgD3dXUvt/4pDgliA4z+tdInc9VOFlJGpw188MCwjwtToDKtS5ZBMj9YoW4Sh
         7SeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718623081; x=1719227881;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1R/gFx9Klqha3kU9BqkNKnQ9gJqwp56eACgbNepYfSU=;
        b=p2o5OOWbHBVFgif08qIIGiBKiOAYXRkWRDHeC7hGdmwZHghysAfUZ0/hqvMbLR2AEg
         yzvca+MuC6tXRfaMuPRLC8aqOCtgRtoBPHTRpihNnZqRSYIUlwZVpZ4Egbic+AqlMrbA
         MjoEYmxwZwiwVeRtl/ym330vWiH1ztXsgDsE9koz8CdRJxj7KJgXXFxciX19oR9sBf1t
         Jf+e5j2DoHtba0VzQUb9j/BL81DV2VJgJ5VmJ9A0+Hqnk1iyL+OR24HMK87ryvk7OB4i
         Kaw6P0nbqKljo9iMP81hGlQuUSEgT360Ya5s0fpGbe5rDHBYcoOFOiUyoLMfEA08qL3A
         ft4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWLFY2TwMWguGe+Rm6TNYLzqGN8w/8Aknqq1RuJQE+M5dLAuumFuTkuFdbDqPnf8lkh+7s20eEmHqQPEzVpQPxmonyd5P4elTE/VxbAS82U/MPxZDgmm2zCGcN7bkjFfZe2E9i8uSmO1rtcEwFQcarmk4FYqmH/EPs=
X-Gm-Message-State: AOJu0YxCEKd7TCPil963qrVNxl3IvpzRJJ6jafRAU2xYQ3izmPTM5AkP
	9IBP1WMdHTmEsCLMUM55enNP7RlwhvugNO+uvkDWwxECmAUDE7aEKk/5msS93oaOp5Wh7A3xGl0
	3C8Rn2yc4C/PYe/QnTEkNgHKjZRg=
X-Google-Smtp-Source: AGHT+IEyItUZz65B+zlSMBk6nl6Jg+t2tO7sCrLH5kOIrqFG6mZo+hISsRlvGiuQURieKYYrFVyjFrnVdE8+V+gytkY=
X-Received: by 2002:ac8:5a8c:0:b0:441:560e:4172 with SMTP id
 d75a77b69052e-4421687b4f3mr86953841cf.15.1718623080712; Mon, 17 Jun 2024
 04:18:00 -0700 (PDT)
MIME-Version: 1.0
References: <20240617071112.3133101-1-jacobe.zang@wesion.com>
 <20240617071112.3133101-5-jacobe.zang@wesion.com> <feeb8dcd-661f-415e-be08-afe175d0102e@gmail.com>
 <TYZPR03MB70012C66B789B09195FCD92580CD2@TYZPR03MB7001.apcprd03.prod.outlook.com>
In-Reply-To: <TYZPR03MB70012C66B789B09195FCD92580CD2@TYZPR03MB7001.apcprd03.prod.outlook.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 17 Jun 2024 15:17:50 +0400
Message-ID: <CABjd4YyHUzm4EBPPzia5VRXGvJiXDObDHQYNCjpCMJDs=BqALg@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: rockchip: Add AP6275P wireless support
 to Khadas Edge 2
To: Jacobe Zang <jacobe.zang@wesion.com>
Cc: "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, Nick Xie <nick@khadas.com>, 
	"efectn@protonmail.com" <efectn@protonmail.com>, "jagan@edgeble.ai" <jagan@edgeble.ai>, 
	"dsimic@manjaro.org" <dsimic@manjaro.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_041802_080752_44EEC431 
X-CRM114-Status: GOOD (  13.29  )
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

T24gTW9uLCBKdW4gMTcsIDIwMjQgYXQgMjo1OOKAr1BNIEphY29iZSBaYW5nIDxqYWNvYmUuemFu
Z0B3ZXNpb24uY29tPiB3cm90ZToKPgo+ID5JJ20gYWxzbyB3b25kZXJpbmcgd2h5IHdvdWxkIGFk
ZGluZyBhIERUIG5vZGUgZm9yIGEgUENJIGRldmljZSBiZSBuZWVkZWQKPiA+aW4gdGhlIGZpcnN0
IHBsYWNlLCBnaXZlbiB0aGF0IFBDSSBzdXBwb3J0cyBkZXZpY2UgZGlzY292ZXJ5Pwo+Cj4gSW4g
ZmFjdCwgSSBsZWFybiB0aGF0IFBDSWUgYnVzIGRldmljZXMgZG8gbm90IG5lZWQgY29tcGF0aWJs
ZSB0byBwcm9iZSBqdXN0IG5vdy4uLiBCZWZvcmUgc2VuZGluZyB0aGlzIHBhdGNoLCBJIGNvbW1p
dHRlZCB0aGUgY29kZSB0aGF0IGFkZGVkICJwY2kxNGU0LDQ0OWQiIHRvIHZlbmRvci1wcmVmaXgu
eWFtbCBhbmQgbmV0L3dpcmVsZXNzL2JyY20sYnJjbTQzMjktZm1hYy55YW1sLiBOb3cgSSBrbm93
IHRoZSByZWFzb24gd2h5IG15IGFkZGl0aW9uIHdhcyByZWplY3RlZC4gQnkgdGhlIHdheSwgZXhj
ZXB0IGZvciB0aGUgY29tcGF0aWJsZSBiaW5kaW5nLCBpcyB0aGVyZSBhbnkgb3RoZXIgYmluZGlu
ZyB0aGF0IEkgc2hvdWxkIHJlbW92ZT8/CgpJZiB5b3VyIFBDSSBicmlkZ2UgaXMgZnVuY3Rpb25p
bmcgcHJvcGVybHkgYW5kIGlmIHlvdXIgV2lGaSBhZGFwdGVyIGlzCmNvbm5lY3RlZCBhbmQgcGh5
c2ljYWxseSBlbmFibGVkIChpbiB0ZXJtcyBvZiBwb3dlciBhbmQgUkZLSUxMKSBJCmJlbGlldmUg
aXQgc2hvdWxkIGJlIGF1dG9tYXRpY2FsbHkgZGlzY292ZXJlZCBhbmQgeW91IHNob3VsZCBzZWUg
aXQgaW4KbHNwY2kuIE5vIGFkZGl0aW9uYWwgRFQgbm9kZXMgbmVlZGVkIC0gYnV0IGNoZWNrIGlm
IHlvdSBuZWVkIGFueQphZGRpdGlvbmFsIERUIHByb3BlcnR5IHNvbWV3aGVyZSB0byBrZWVwIHRo
ZSBIWU04NTYzIGNsb2NrIGVuYWJsZWQuCkknbSBub3Qgc3VyZSB5b3VyIHBjaWVAMCwwIG5vZGUg
aXMgbmVlZGVkIGVpdGhlci4KClRoZW4gaXQncyB1cCB0byB0aGUgZHJpdmVyIHRvIHJlY29nbml6
ZSB5b3VyIGFkYXB0ZXIgYnkgaXRzIFBDSSBJRCBhbmQKYXR0YWNoLiBJIGd1ZXNzIHlvdSdkIG5l
ZWQgdG8gZXh0ZW5kIHRoZSBoYXJkd2FyZSBJRHMgdGFibGUgaW4gdGhlCmJyY21mbWFjIGRyaXZl
ciBmb3IgaXQgdG8gYXR0YWNoIC0gc2ltaWxhciB0byBbMV0KClsxXSBodHRwczovL2dpdGh1Yi5j
b20vYXJtYmlhbi9idWlsZC9ibG9iL21haW4vcGF0Y2gva2VybmVsL2FyY2hpdmUvcm9ja2NoaXAt
cmszNTg4LTYuMTAvMDgwMS13aXJlbGVzcy1hZGQtYmNtNDM3NTIucGF0Y2gKCkJlc3QgcmVnYXJk
cywKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
