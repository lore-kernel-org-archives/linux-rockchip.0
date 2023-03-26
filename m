Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D271FC6FD1C
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 12:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpDOi692gpAtjM+gRobVYaflkRnL8G+/kemKm2nKqdI=; b=e/i9CAYkxcbCOH
	cPOUlAJZiiL8J9oMJW4b48t9fMoHNVESt/Ly4Opl/KzzFmOpjk1jDhyCrkC8e+TpPIYNQJDLtBKQX
	6mc9UIR2YEIQc+ORPk4NZEq9I1TW8L9/Yx/vYNjo5tqeDRmYjIm7m9UHTnXQx0ob/EPTDadlLOdkE
	F4H+17bcxiFy2pshhbislS8jLsfomeaiViY/muA1SoAH005Cv7ccmJSZi/c14GH2RIJRTUj1il65O
	J5z+pgxaCDsi3FKqf440v5GTXhgcI7sf+9YVYIEhd0z2nv6gQ2KeTKruzY2uQRieMLKojtrAD+oKK
	L447AWux9zvyKH/Evbew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgPHZ-008OVR-37;
	Sun, 26 Mar 2023 12:15:33 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgPHW-008OUB-21;
	Sun, 26 Mar 2023 12:15:32 +0000
Received: by mail-wr1-x42a.google.com with SMTP id v1so5942992wrv.1;
        Sun, 26 Mar 2023 05:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679832926;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z0X0IVqjnE4GWpoQcuqF7rO1/hOAXNdvp0AiJjukc3U=;
        b=qVxt62xawSEhPWFgEX0PQW7ZAi7jWK9MHmWhc2MHtIrtxqXQvIojSpFrn8uDw2SbaG
         t/lb8nXS9CAqv6a6XdUMV8xbUHt75f+t5Kx1+8iuR9az6odwTS4Bkynr1iBvEi8t2QhV
         ejpoV5ip/bGRoANzpc2zxEgyFzAfPhCtXDwt2b78UYxgGEicMJbN4UVobm2Iehz/73iR
         8UkusbgQGJ3fjyc9jUC8s1H9wsG0N3xpbZjNqyUw8WrzRHWdsAnEhJL+26eyYFPSSWDC
         RqJjhejyLjwcC2mp0PPB9+7bOtitH0XBG9xE96+nMwghH5rh98yU3kTB1MFPOAnxajhn
         zN0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679832926;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z0X0IVqjnE4GWpoQcuqF7rO1/hOAXNdvp0AiJjukc3U=;
        b=MXJD9flQ/9E+bv40MW+IFrUxOiwA6zf+jNlxxha0hp12XWJCoz+L9/KCQYORtXJ7ll
         z2XKuoFI7EFuL/FqgwtN17w/CkRrAWb3PSqHgyqnZ6wUSlgLGi59rBTbsdFK1Uofp9bS
         wtOn98pqdGyxF1esfgzfC4uCFWClP6z3hy+h+PxK0pVVRVIDh0uESE1s/UT+jaksimb4
         BF5kVwtReiF0k6HvGrJxphmYfCHoZWhApqIWKjevZQWPmUOaXVIeFgPeUsErdaGL+zOg
         K+ijvcUiuqZ0ukdaUb1eGf+HIb9nivNE9GbPpkxX1fREm54OBAc26YRsVY6TpOXFfOVP
         IRhQ==
X-Gm-Message-State: AAQBX9dUW7CkEGeF8dyOkXX1O8iOZy9Vr1sMSWWAt0kLog29bhcIgzdP
	VtCl2bA5IyaYFu4Vp9dm7UXHQzBTmFQjkgKHsyE=
X-Google-Smtp-Source: AKy350ZyC1hmbCAqH2PE38tVkcOijPvTEjTrk6Bbob5z53kn/8egAoCIB4tn2r+qQLb2/2kGaO5z5XUWHXg5jmLzpuc=
X-Received: by 2002:adf:f4c2:0:b0:2ce:ad3a:551d with SMTP id
 h2-20020adff4c2000000b002cead3a551dmr1361058wrp.2.1679832925722; Sun, 26 Mar
 2023 05:15:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326001535.149539-2-bigbeeshane@gmail.com> <10930783-e1dd-5e75-a2cc-a09af862d949@linaro.org>
In-Reply-To: <10930783-e1dd-5e75-a2cc-a09af862d949@linaro.org>
From: Shane Francis <bigbeeshane@gmail.com>
Date: Sun, 26 Mar 2023 13:15:15 +0100
Message-ID: <CABnpCuCh2kmvTRrmsY0cwNqjFR6nv1xwxrZPJieM4_Ph8qEGeA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: clock: update rk3588 clock definitions
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_051530_667041_61C10961 
X-CRM114-Status: GOOD (  24.17  )
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

PiBQbGVhc2Ugd3JhcCBjb21taXQgbWVzc2FnZSBhY2NvcmRpbmcgdG8gTGludXggY29kaW5nIHN0
eWxlIC8gc3VibWlzc2lvbgo+IHByb2Nlc3MgKG5laXRoZXIgdG9vIGVhcmx5IG5vciBvdmVyIHRo
ZSBsaW1pdCk6CgpXaWxsIGRvLCBJIGhhdmVuJ3Qgc3VibWl0dGVkIHBhdGNoZXMgZm9yIGEgd2hp
bGUgdG90YWxseSBmb3Jnb3QgdGhlCndyYXBwaW5nIGd1aWRlbGluZXMKCj4gVW5mb3J0dW5hdGVs
eSB0aGUgcmVhc29uIGlzIG5vdCBnb29kIGVub3VnaCBmb3IgQUJJIGJyZWFrLiBSZXBsYWNlCj4g
dmVuZG9yIGJvb3QgdWJvb3RzIHdpdGggb3Blbi1zb3VyY2Ugb25lIG9yIGp1c3QgY29ycmVjdCB0
aGVtIChpdCdzIHN0aWxsCj4gVS1Cb290IHNvIGV2ZW4gZm9yIHZlbmRvciBvbmUgeW91IGhhdmUg
dGhlIHNvdXJjZSkuCgpSZXBsYWNpbmcgdWJvb3QgaXMgZmluZSBmb3IgdGhpcyBjYXNlLCBob3dl
dmVyIEkgY2FuIGZvcmVzZWUgdGhhdCBjYW4KY2F1c2UgaXNzdWVzIGZ1cnRoZXIgZG93biB0aGUg
bGluZS4KCgoxLiBObyB1Ym9vdCBzb3VyY2UgZnJvbSB0aGUgdmVuZG9yLCB3ZSBhbGwga25vdyBu
byBldmVyeW9uZSByZXNwZWN0cwpjb2RlIGxpY2VuY2luZwoKMi4gU2VjdXJlIGVudmlyb25tZW50
cyAobGlrZSBhbmRyb2lkIHRhYmxlcyksIHRoaXMgY2hpcHNldCB3aWxsIGxpa2VseQplbmQgdXAg
aW4gYW5kcm9pZCB0YWJsZXRzIHRoYXQgaGF2ZSB0aGUgc2VjdXJlIGJvb3QgY2hhaW4gZW5hYmxl
LgpUaGVzZSB3aWxsIGJlIHVuYWJsZSB0byByZXBsYWNlIHVib290IGV2ZW4gaWYgc291cmNlIGlz
IGF2YWlsYWJsZS4KCkFzIHRoaXMgU29DIGlzIG5ldyB0byB0aGUgTGludXgga2VybmVsIChub3Qg
ZXZlbiB1c2VhYmxlIGZvciBtdWNoIGl0J3MKY3VycmVudCBzdGF0ZSkgd291bGQgaXQgbm90IGJl
IGJldHRlciB0byBhbGluZyBvbiB0aGlzIHNvIHZlbmRvciBhbmQKbWFpbmxpbmUgRFRTICJhZ3Jl
ZSIgbm93IHJhdGhlciB0aGFuIHBvc3NpYmx5IGhhdmUgdG8gYWRkcmVzcyBpcyBpbgp0aGUgZnV0
dXJlID8KCkkgaGF2ZSBhbHNvIGludmVzdGlnYXRlZCBzZXR0aW5nIHRoZXNlIGNsb2NrIHJhdGVz
IGR1cmluZyBrZXJuZWwgYm9vdCwKYnV0IHRoZSBTb0MgbG9ja3MgdXAuCgoKT24gU3VuLCBNYXIg
MjYsIDIwMjMgYXQgMTA6MzfigK9BTSBLcnp5c3p0b2YgS296bG93c2tpCjxrcnp5c3p0b2Yua296
bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gMjYvMDMvMjAyMyAwMToxNSwgU2hhbmUg
RnJhbmNpcyB3cm90ZToKPiA+IFNvbWUgdmVuZG9yIHVib290IGJvb3Rsb2FkZXJzIHVzZSB0aGUg
dGFyZ2V0IGtlcm5lbHMKPiA+IERUQiBpbWFnZSB0byBkZXRlcm1pbmUgdGhlIHRhcmdldCBjbG9j
ayBzcGVlZHMgZm9yCj4gPiBzb21lIFBMTHMsIGN1cnJlbnRseSB0aGlzIGNhbiBjYXVzZSB1Ym9v
dCB0byBzZXQgdGhlCj4gPiBjbG9jayByYXRlIGZvciBncGxsIGluY29ycmVjdGx5IG9uIHRvIGNw
bGwgKGJyZWFraW5nKQo+Cj4gUGxlYXNlIHdyYXAgY29tbWl0IG1lc3NhZ2UgYWNjb3JkaW5nIHRv
IExpbnV4IGNvZGluZyBzdHlsZSAvIHN1Ym1pc3Npb24KPiBwcm9jZXNzIChuZWl0aGVyIHRvbyBl
YXJseSBub3Igb3ZlciB0aGUgbGltaXQpOgo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xp
bnV4L3Y1LjE4LXJjNC9zb3VyY2UvRG9jdW1lbnRhdGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0
Y2hlcy5yc3QjTDU4Ngo+Cj4gPiBSR01JSS4KPiA+Cj4gPiBUaGlzIGNoYW5nZSBzdGFydHMgdGhl
IFBMTCBjbG9jayBkZWZpbml0aW9ucyBmcm9tIDEKPiA+IHRvIGNvcnJlY3QgdGhpcyBtaXNzLW1h
dGNoCj4KPiBVbmZvcnR1bmF0ZWx5IHRoZSByZWFzb24gaXMgbm90IGdvb2QgZW5vdWdoIGZvciBB
QkkgYnJlYWsuIFJlcGxhY2UKPiB2ZW5kb3IgYm9vdCB1Ym9vdHMgd2l0aCBvcGVuLXNvdXJjZSBv
bmUgb3IganVzdCBjb3JyZWN0IHRoZW0gKGl0J3Mgc3RpbGwKPiBVLUJvb3Qgc28gZXZlbiBmb3Ig
dmVuZG9yIG9uZSB5b3UgaGF2ZSB0aGUgc291cmNlKS4KPgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6
IFNoYW5lIEZyYW5jaXMgPGJpZ2JlZXNoYW5lQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9k
dC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1ODgtY3J1LmggICB8IDE0NDIgKysrKysrKyst
LS0tLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNzIxIGluc2VydGlvbnMoKyksIDcyMSBkZWxl
dGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9y
b2NrY2hpcCxyazM1ODgtY3J1LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlw
LHJrMzU4OC1jcnUuaAo+ID4gaW5kZXggYjU2MTZiY2E3YjQ0Li5kNjNiMDdkMDU0YjcgMTAwNjQ0
Cj4gPiAtLS0gYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUu
aAo+ID4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1ODgtY3J1
LmgKPiA+IEBAIC0xMiw3MjcgKzEyLDcyNyBAQAo+ID4KPiA+ICAvKiBjcnUtY2xvY2tzIGluZGlj
ZXMgKi8KPiA+Cj4gPiAtI2RlZmluZSBQTExfQjBQTEwgICAgICAgICAgICAgICAgICAgIDAKPgo+
Cj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
