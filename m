Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C83D8C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 14:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpxjrPVXN0Cp+WwhMr7zHJRNXrbXu22Z0X1npQtB6Ag=; b=NIW9i/Rj/dQm9w
	ZuSKU7R/V2W0XWS9MQYeOV7tBbTSIbmmMiJvJxjDf4EI8qwX87FOK7t4FfOytBZa7xu0upTmFq8EE
	Gt5P0jxQ8vmtE6sPevLp3mRnPEBHViyNJb8dpY66ESd827ExUKs2OF+usfsV8N/JYSGv6y1acyida
	oZ04xXCuxH958C9INs9pCtDSdyTaA2LvSfla1WlNA6hhH4vSyfNSRNCU6yKwQVmcUlEfxf5lAMJiV
	jewrzqXmbijvIBuHTtjaIKQZPvz8HxTIR5kHLwhJJwO9AvvictQhrWcn4hjnKMKaL+UbLFhUEZ9Xk
	WgEWuw4bHWv3pw86kBnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDmdY-000XXq-29;
	Thu, 14 Dec 2023 14:24:28 +0000
Received: from mail-ua1-x931.google.com ([2607:f8b0:4864:20::931])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDmdV-000XVu-1T
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Dec 2023 14:24:27 +0000
Received: by mail-ua1-x931.google.com with SMTP id a1e0cc1a2514c-7cb66aa0a2cso222800241.3
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Dec 2023 06:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1702563864; x=1703168664; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n8hzjHa/oDAa5VXlxiZKu2h0BY/JRc6YD0syWlY0Zxs=;
        b=lqPCi66n6UzyetH8vODFXmETJ6Qs5n6LpAQHPl/dHXPnpu1Ixka5EZl5j59Wezd3bl
         SbegG0ELjdFNEp1cxxW9PHs3XK0lVhB8bqv0kgAAbBcGN6u13yLdjMkASAcKbGLooVFx
         G5YTjNaGCu+Lg2wk1VS06kCuTjdLBYvBxvFAh2nALDRuqFH5sDkK/NLRV4mPLUfXobhG
         pvvVTr6EV/l17ubuRqys8CnLs0H+ZTHsv8XVohc5+IwbBUoTFDs1Q0vlRRUQKfDm47il
         mX6+fwd0dwg8ZjlUSn9SsKKAQkLB79qqqnmf6mnCNEJQAJVGh/floxSsactA4ciMHfWT
         EjMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702563864; x=1703168664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8hzjHa/oDAa5VXlxiZKu2h0BY/JRc6YD0syWlY0Zxs=;
        b=tEwc9R/MfzqcHHRXTrOvIWOLp+9fxrhUdbVNZPW6mx/+a4KICT94HnGWWly/wZ7Z1b
         ZJ2jsf/04Lt1E495s/BkCRfW2y48MN2G5JYKk1oRxcyA9ObnTPDPoJjQaTFh0OtO7Kw9
         EkHUoytJ6XLkB0BbEr4bNRM2J0gxDUqLGbcvRezWZyQFT1tl9diUGYtSwQNvudfSqkn4
         Ea1tCsFj2LyAra821yMM3t1YJ85ZJ0jwhlr4OHDUXOrlwSdoNleBazW5R3xn8sMrgHV7
         BqzeIi8uYg8o7vBVzTmymUeS0H3pGZJX3NPJVsPJ10+htDlcF57o4AgjmonFF0UMz2hK
         3U/g==
X-Gm-Message-State: AOJu0Yw6AtEzvoQqUaxd6K94xGdC5hyl9jlC/QyEAHTB/9wQid0ugIHV
	mjHGHamj0WdBcDy3GE46AXi4cTVmf0t2Sbd+6n+GDq3/vVRIRFblC4A=
X-Google-Smtp-Source: AGHT+IHE+HSJBycqJMA34KSVioJpw4usXProHQmm+r0A0+kAWxb+v5YdOkPKo3COQ4z2ZnZ10tLyLbrPwfjRkkOimN0=
X-Received: by 2002:a05:6122:4681:b0:4b2:b964:1095 with SMTP id
 di1-20020a056122468100b004b2b9641095mr10991092vkb.10.1702563863726; Thu, 14
 Dec 2023 06:24:23 -0800 (PST)
MIME-Version: 1.0
References: <20231209232109.348999-1-i@shantur.com> <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org> <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
 <acbadb7f1d2c14b7003103c10d663d38@manjaro.org>
In-Reply-To: <acbadb7f1d2c14b7003103c10d663d38@manjaro.org>
From: Shantur Rathore <i@shantur.com>
Date: Thu, 14 Dec 2023 14:24:12 +0000
Message-ID: <CABEcMwV8XhShnbJ_Z+2YW0EUCYt460pEyE-FPHW9jN16SR_Lpg@mail.gmail.com>
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_062425_498651_2E439B01 
X-CRM114-Status: GOOD (  27.45  )
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

SGkgRHJhZ2FuLAoKT24gU3VuLCBEZWMgMTAsIDIwMjMgYXQgMTI6MDjigK9BTSBEcmFnYW4gU2lt
aWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiAyMDIzLTEyLTEwIDAxOjAzLCBT
aGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4gPiBPbiBTYXQsIERlYyA5LCAyMDIzIGF0IDExOjQz4oCv
UE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gPiB3cm90ZToKPiA+PiBPbiAy
MDIzLTEyLTEwIDAwOjM1LCBTaGFudHVyIFJhdGhvcmUgd3JvdGU6Cj4gPj4gPiBVU0IgcG9ydCBy
ZWd1bGF0b3JzIHNob3VsZCBiZSBjb250cm9sbGVkIGJ5IFBIWXMKPiA+PiA+IHNvIHdlIHJlbW92
ZSBhbHdheXMtb24gcHJvcGVydHkgYW5kIGxldCBQSFlzIG1hbmFnZSB0aGUKPiA+PiA+IHJlZ3Vs
YXRvci4KPiA+PiA+Cj4gPj4gPiBUeXBlYyBwb3J0IGhhcyBtaXNjb25mdWdyZWQgcGh5LXN1cHBs
eSBhbmQgbm93IHRoYXQgd2UgYXJlCj4gPj4gPiByZW1vdmluZyByZWd1bGF0b3ItYWx3YXlzLW9u
LCB3ZSBuZWVkIHRvIGZpeCB0aGUgcGh5LXN1cHBseQo+ID4+ID4gc28gdGhlIFBIWXMgYXJlIGFi
bGUgdG8gdHVybiBwb3dlciB0byB0eXBlLWMgcG9ydC4KPiA+PiA+Cj4gPj4gPiBTaWduZWQtb2Zm
LWJ5OiBTaGFudHVyIFJhdGhvcmUgPGlAc2hhbnR1ci5jb20+Cj4gPj4gPiAtLS0KPiA+PiA+ICsg
ZGV2aWNldHJlZQo+ID4+ID4KPiA+PiA+IEFmdGVyIHRoaXMgcGF0Y2ggdGhlIHBvcnRzIHdlcmUg
Y29uZmlybWVkIHRvIHBvd2VyIHVwIGFuZCBkb3duCj4gPj4gPiBpbiB1LWJvb3Qgd2hlbiBkb2lu
ZyB1c2Igc3RhcnQgYW5kIHVzYiBzdG9wLgo+ID4+ID4gQXQgYm9vdCB0aGUgcmVndWxhdG9ycyB3
ZXJlIG9mZiwgdGhlIGRldmljZXMgY29ubmVjdGVkIHdlcmVuJ3QKPiA+PiA+IHBvd2VyZWQgdXAs
IG9uIHVzYiBzdGFydCB0aGUgUEhZcyBhcmUgYWJsZSB0byBwb3dlciBvbiB0aGUgcG9ydHMKPiA+
PiA+IGFuZCBvbiB1c2Igc3RvcCB0aGV5IHdlcmUgcG93ZXJlZCBkb3duLgo+ID4+ID4KPiA+PiA+
IEF0IHRoZSBib290LCB0aGUgcG9ydHMgd2VyZSBwb3dlcmVkIGRvd24gd2hpY2ggd2FzIGFnYWlu
IHBvd2VyZWQKPiA+PiA+IHVwIGJ5IExpbnV4IGtlcm5lbCB3aGVuIGJvb3RpbmcgdXAuCj4gPj4g
Pgo+ID4+ID4KPiA+PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2Nr
cHJvNjQuZHRzaSB8IDQgKy0tLQo+ID4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMyBkZWxldGlvbnMoLSkKPiA+PiA+Cj4gPj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiA+PiA+IGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiA+PiA+IGluZGV4IGJj
YTJiNTBlMGEuLmJkMjgyNGFhNDggMTAwNjQ0Cj4gPj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaQo+ID4+ID4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiA+PiA+IEBAIC0xOTIs
NyArMTkyLDYgQEAgdmNjNXYwX2hvc3Q6IHZjYzV2MC1ob3N0LXJlZ3VsYXRvciB7Cj4gPj4gPiAg
ICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPj4gPiAgICAgICAgICAg
ICAgIHBpbmN0cmwtMCA9IDwmdmNjNXYwX2hvc3RfZW4+Owo+ID4+ID4gICAgICAgICAgICAgICBy
ZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1djBfaG9zdCI7Cj4gPj4gPiAtICAgICAgICAgICAgIHJlZ3Vs
YXRvci1hbHdheXMtb247Cj4gPj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2
MF91c2I+Owo+ID4+ID4gICAgICAgfTsKPiA+PiA+Cj4gPj4gPiBAQCAtMjAzLDcgKzIwMiw2IEBA
IHZjYzV2MF90eXBlYzogdmNjNXYwLXR5cGVjLXJlZ3VsYXRvciB7Cj4gPj4gPiAgICAgICAgICAg
ICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPj4gPiAgICAgICAgICAgICAgIHBpbmN0
cmwtMCA9IDwmdmNjNXYwX3R5cGVjX2VuPjsKPiA+PiA+ICAgICAgICAgICAgICAgcmVndWxhdG9y
LW5hbWUgPSAidmNjNXYwX3R5cGVjIjsKPiA+PiA+IC0gICAgICAgICAgICAgcmVndWxhdG9yLWFs
d2F5cy1vbjsKPiA+PiA+ICAgICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX3VzYj47
Cj4gPj4gPiAgICAgICB9Owo+ID4+ID4KPiA+PiA+IEBAIC04NjMsNyArODYxLDcgQEAgdTJwaHkw
X290Zzogb3RnLXBvcnQgewo+ID4+ID4gICAgICAgfTsKPiA+PiA+Cj4gPj4gPiAgICAgICB1MnBo
eTBfaG9zdDogaG9zdC1wb3J0IHsKPiA+PiA+IC0gICAgICAgICAgICAgcGh5LXN1cHBseSA9IDwm
dmNjNXYwX2hvc3Q+Owo+ID4+ID4gKyAgICAgICAgICAgICBwaHktc3VwcGx5ID0gPCZ2Y2M1djBf
dHlwZWM+Owo+ID4+ID4gICAgICAgICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPj4gPiAgICAg
ICB9Owo+ID4+ID4gIH07Cj4gPj4KPiA+PiBRdWl0ZSBmcmFua2x5LCBzb21ldGhpbmcgZG9lc24n
dCBmZWVsIHJpZ2h0IHRoZXJlLiAgV291bGQgeW91IG1pbmQsCj4gPj4gcGxlYXNlLCB0byBwbGFj
ZSB0aGlzIHBhdGNoIG9uIGhvbGQgdW50aWwgbmV4dCB3ZWVrIG9yIHNvLCBhdCB3aGljaAo+ID4+
IHBvaW50IEkgc2hvdWxkIGhhdmUgZW5vdWdoIHRpbWUgdG8gZ28gdGhyb3VnaCB0aGUgUm9ja1By
bzY0IHNjaGVtYXRpYwo+ID4+IHRob3JvdWdobHkgb25jZSBhZ2FpbiwgYW5kIHRlc3QgdGhlIHBh
dGNoIGluIGRldGFpbD8KPiA+Cj4gPiBTdXJlLCBubyB3b3JyaWVzLgo+Cj4gR3JlYXQsIHRoYW5r
cy4KPgo+ID4gV291bGQgeW91IG1pbmQgbGV0dGluZyBtZSBrbm93IHdoaWNoIHBhcnQgZG9lc24n
dCBmZWVsIHJpZ2h0IHRvIHlvdT8KPgo+IFN1cmUsIGl0IHdhcyBhYm91dCB0aGUgbGFzdCBjaGFu
Z2UgaW4gdGhlIHBhdGNoLgoKVGhlIFR5cGVDIHBvcnQgVkJVUyBpcyBWQlVTX1RZUEVDIG9uIFBh
Z2UgMjAgb2YgMzMgbWFya2VkIGZvcgpWQlVTX1sxLTRdIGluIHNjaGVtYXRpYyBoZXJlIC0gWzBd
CgpbMF0gLSBodHRwczovL2ZpbGVzLnBpbmU2NC5vcmcvZG9jL3JvY2twcm82NC9yb2NrcHJvNjRf
djIxLVNDSC5wZGYKCktpbmQgcmVnYXJkcywKU2hhbnR1cgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
