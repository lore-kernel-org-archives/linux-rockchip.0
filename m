Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 513A0C87FCA
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Jul 2025 07:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBEmBWy4nYY88LxL0pbEsK6Y9DckRnSjq6Up2hgYjsU=; b=AGAqNUWzwRvf+j
	AKbx0ZvW+VzJh7k7KtcM9ARxp/mYTSLjweIm6mmyQRhhg/DPRsQVMtbXH0rP1xa/n4ELdMLL0tuFT
	8qas6pvy/4sPukeJck6EoWZ1HQkehLa/lVDBK772gPuHriaKj5lC4tp3zStmMkLc8WRW8PTJ5cLQs
	6vW+jVaxquW6VwNizOiogVh5eG2phZ/y6k+jfwqokm8yvtkkYtItpfigmRISoTfGY1+Py9i7XfMvF
	PGX3oDpOEe3RY8OkMzT8Bk/kd7DgtnKd1lFfNygcjomX3HE1HnwXmFLcl17ErELY/ULTac0TTOP59
	p51rLSmqJEf/Sp3WIYdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhNsR-000000034Sp-3BMX;
	Thu, 31 Jul 2025 07:38:59 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhNnK-0000000346V-2q7O;
	Thu, 31 Jul 2025 07:33:43 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-4ab6e66ea68so7866391cf.1;
        Thu, 31 Jul 2025 00:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753947221; x=1754552021; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZOX9X8brnwUNsz5uO4Te0xlPw30giJyAMqsCiquXPp4=;
        b=LTpkl/GdEVfl8rZM1W1hDsS0/vElfoA7wIhN245dlH0YxUUwbaDnZUVoDv3IsQOBc5
         /CHJjQRMsIuY5Y7/nK1scAoRJlhb0tGv9GFYT6nvd25HODlOGKDVF1rAwA59hdWAtpVp
         isak5P12g7EyaovUEBRBxBFAPCWjv02dh3+pxSv8YZQlen40qpQAggSPZ6sCCuKmUDJl
         5LIXq+eNvoLVRXnQO1AzCdVkW/zwIp14RtxZI8QoetEAT1DMf0/GHMI0emTqEChq3TGS
         RzxcFpdvSiLN8/eeJn5d2NEjmjquEBiHP0/IqE2FGmCyz499ui4zyxE1Qnv1ur/DGog6
         Hkqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753947221; x=1754552021;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZOX9X8brnwUNsz5uO4Te0xlPw30giJyAMqsCiquXPp4=;
        b=i48dK9NlSRutf3YbLg0FO4BaZiLIbTJUcBZks7L219vyVwqvGzWbhEmYIeOp4czsp1
         BSAV5mIGtfbCIfD8Li982sv2buKzvkoT6X9FgyZUJuKbFtvV9kSsghXHTfZpnwIhE54D
         mWe+bt+HIjR2WPouGf+76uHFx1KKCAq6icjyv37t7MOP2PSLoJgAL4fA7LXts6U2+PRW
         et9eUI/vQLz9iGPug+3QVhiMmxLAfjrkYHACBP6/wOwDAnnByq9GZvOQsYQFjZsANBrB
         s8bkcr3DCOSwm3sJQ2JZIAQmxnDhC4LfwpIuWEqgcefl5NjnkhlbqXWsw2x/L1SbLI0n
         0JXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeSDohD4agayCVVGlsdB+IMFeq5ZVCESIhKgjAF4GiYhihkYdM+i1M5pgxlfsSjLKqADkm8LOOU6o+coqLf8X/@lists.infradead.org, AJvYcCWcxZN+O3NVeUeqrqIzRFnmsyPQHAa/R760uoshGRr5ftYvMvXeaZvU53zfwbZWoEI2OVzf1xzqWGUhMS6EpeA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzai7A7pujSG/N82wkKhRWTsUviA5Lm3YuFFse0Hz1HHcM9fg7U
	0dW6EmDuuGyB8fQix6k9J1FJQyyKHMCa8xUZaA1rfWW7Gri3o/07vPYSQBSsj7CHFEMs3g0l1UG
	5tcp1WRHyrrHm1bekzmMHZEgu6dodmlM=
X-Gm-Gg: ASbGncsIU2PkOl5ZJ1dFNZHVMIOa84g3Z+jyWC8rVAIZG2yN8QCVocDkzmeh3RgVGnu
	SJxfzBWT4l/78NmU+CGm6piT/y6oxnvD6gJUMHSw0tdDhpyKBwq3xI8WdoyuhMlC2ac5QlRE4sf
	WFj5jSBpp/pUeZjOabwVyzA9FNAYJ1dlMeTQnMg93U9Q6GrjaMhe8xDVbU3AaYt/pFTaQ0714RQ
	zlbJVOnueJ/Pqd/clh84kCBZAZFwjiPZR8BGa65
X-Google-Smtp-Source: AGHT+IH1uwkUGAwbjx/9dKqcwJTQI9b2LQO1Th3mXrOlkX6OvkMWjy54q1bCvJ9oudoi0B/QbEA71tvh/WvbZgihO6E=
X-Received: by 2002:ac8:5913:0:b0:4ae:cc75:4704 with SMTP id
 d75a77b69052e-4aedbc6b2abmr108326681cf.59.1753947221032; Thu, 31 Jul 2025
 00:33:41 -0700 (PDT)
MIME-Version: 1.0
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
 <aHgHxR1_Gzu8Dwbm@mai.linaro.org> <4178173.5fSG56mABF@diego> <14c91ee4-3a09-4ec9-966f-0d563d7c8966@linaro.org>
In-Reply-To: <14c91ee4-3a09-4ec9-966f-0d563d7c8966@linaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 31 Jul 2025 11:33:32 +0400
X-Gm-Features: Ac12FXyBhKCe01359PD8yUXtXOTB-iOa83dWxetYoDpIa3sijPk9zpEZPKHbrQs
Message-ID: <CABjd4YzJeNf0Qq9qFeMcoYQV5erZGUeOpmJynRW88AeL9dJNhQ@mail.gmail.com>
Subject: Re: [PATCH v6 0/7] RK3576 thermal sensor support, including OTP trim adjustments
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_003342_719702_0BC3E1AB 
X-CRM114-Status: GOOD (  30.91  )
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
Cc: Ye Zhang <ye.zhang@rock-chips.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>, kernel@collabora.com, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28hCgpPbiBUaHUsIEp1bCAxNywgMjAyNSBhdCAxMjoyMOKAr1BNIERhbmllbCBMZXpj
YW5vCjxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIDcvMTcvMjUgMDk6
MjEsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+ID4gSGkgRGFuaWVsLAo+ID4KPiA+IEFtIE1pdHR3
b2NoLCAxNi4gSnVsaSAyMDI1LCAyMjoxMjo1MyBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVp
dCBzY2hyaWViIERhbmllbCBMZXpjYW5vOgo+ID4+IE9uIFR1ZSwgSnVuIDEwLCAyMDI1IGF0IDAy
OjMyOjM2UE0gKzAyMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90ZToKPiA+Pj4gVGhpcyBzZXJp
ZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgUkszNTc2J3MgdGhlcm1hbCBzZW5zb3IuCj4gPj4+Cj4g
Pj4+IFRoZSBzZW5zb3IgaGFzIHNpeCBjaGFubmVscywgcHJvdmlkaW5nIG1lYXN1cmVtZW50cyBm
b3IgdGhlIHBhY2thZ2UKPiA+Pj4gdGVtcGVyYXR1cmUsIHRoZSB0ZW1wZXJhdHVyZSBvZiB0aGUg
YmlnIGNvcmVzLCB0aGUgdGVtcGVyYXR1cmUgb2YgdGhlCj4gPj4+IGxpdHRsZSBjb3JlcywgYW5k
IHRoZSBHUFUsIE5QVSBhbmQgRERSIGNvbnRyb2xsZXIuCj4gPj4+Cj4gPj4+IEluIGFkZGl0aW9u
IHRvIGFkZGluZyBzdXBwb3J0IGZvciB0aGUgc2Vuc29yIGl0c2VsZiwgdGhlIHNlcmllcyBhbHNv
Cj4gPj4+IGFkZHMgc3VwcG9ydCBmb3IgcmVhZGluZyB0aGVybWFsIHRyaW0gdmFsdWVzIG91dCBv
ZiB0aGUgZGV2aWNlIHRyZWUuCj4gPj4+IE1vc3Qgb2YgdGhpcyBmdW5jdGlvbmFsaXR5IGlzIG5v
dCBzcGVjaWZpYyB0byB0aGlzIFNvQywgYnV0IG5lZWRlZCB0byBiZQo+ID4+PiBpbXBsZW1lbnRl
ZCB0byBtYWtlIHRoZSBzZW5zb3JzIGEgbGl0dGxlIG1vcmUgYWNjdXJhdGUgaW4gb3JkZXIgdG8K
PiA+Pj4gaW52ZXN0aWdhdGUgd2hldGhlciB0aGUgVFJNIHN3YXBwZWQgR1BVIGFuZCBERFIgb3Ig
ZG93bnN0cmVhbSBzd2FwcGVkCj4gPj4+IEdQVSBhbmQgRERSIGluIHRlcm1zIG9mIGNoYW5uZWwg
SURzLCBhcyBkb3duc3RyZWFtIGRpc2FncmVlcyB3aXRoIHdoYXQncwo+ID4+PiBpbiB0aGUgVFJN
LCBhbmQgdGhlIGRpZmZlcmVuY2UgaXMgc28gc21hbGwgYW5kIGhhcmQgdG8gcGluIGRvd24gd2l0
aAo+ID4+PiB0ZXN0aW5nIHRoYXQgdGhlIGNvbnN0YW50IG9mZnNldCBiZXR3ZWVuIHRoZSB0d28g
c2Vuc29ycyB3YXMgYSBsaXR0bGUKPiA+Pj4gYW5ub3lpbmcgZm9yIG1lIHRvIGRlYWwgd2l0aC4K
PiA+Pj4KPiA+Pj4gSSBlbmRlZCB1cCBnb2luZyB3aXRoIHRoZSBjaGFubmVsIGFzc2lnbm1lbnQg
dGhlIFRSTSBsaXN0cywgYXMgSSBzZWUgdGhlCj4gPj4+IEREUiBzZW5zb3IgZ2V0IGEgbGFyZ2Vy
IGRldmlhdGlvbiBmcm9tIGJhc2VsaW5lIHRlbXBlcmF0dXJlcyBkdXJpbmcgbWVtb3J5Cj4gPj4+
IHN0cmVzcyB0ZXN0cyAoc3RyZXNzLW5nIC0tbWVtcmF0ZSA4IC0tbWVtcmF0ZS1mbHVzaCkgdGhh
biB3aGF0IHRoZSBUUk0KPiA+Pj4gY2xhaW1zIGlzIHRoZSBHUFUgc2Vuc29yIGJ1dCBkb3duc3Ry
ZWFtIGNsYWltcyBpcyB0aGUgRERSIHNlbnNvci4gSW5wdXQKPiA+Pj4gZnJvbSBSb2NrY2hpcCBl
bmdpbmVlcnMgb24gd2hldGhlciB0aGUgVFJNIGlzIHJpZ2h0IG9yIHdyb25nIHdlbGNvbWUuCj4g
Pj4+Cj4gPj4+IFRoZSB0cmltIGZ1bmN0aW9uYWxpdHkgaXMgb25seSB1c2VkIGJ5IFJLMzU3NiBh
dCB0aGUgbW9tZW50LiBDb2RlIHRvCj4gPj4+IGhhbmRsZSBvdGhlciBTb0NzIGNhbiByZWx5IG9u
IHRoZSBzaGFyZWQgb3RwIHJlYWRpbmcgYW5kIHBlcmhhcHMgZXZlbgo+ID4+PiB0aGUgSVAgcmV2
aXNpb24gc3BlY2lmaWMgZnVuY3Rpb24sIGJ1dCBtYXkgbmVlZCBpdHMgb3duIElQIHJldmlzaW9u
Cj4gPj4+IHNwZWNpZmljIGZ1bmN0aW9ucyBhZGRlZCBhcyB3ZWxsLiBBYnNlbnQgdHJpbSBmdW5j
dGlvbmFsaXR5IGluIG90aGVyCj4gPj4+IFNvQ3Mgc2hvdWxkIG5vdCBpbnRlcmZlcmUgd2l0aCB0
aGUgbW9kaWZpZWQgY29tbW9uIGNvZGUgcGF0aHMuCj4gPj4+Cj4gPj4+IFBhdGNoIDEgaXMgYSBj
bGVhbnVwIHBhdGNoIGZvciB0aGUgcm9ja2NoaXAgdGhlcm1hbCBkcml2ZXIsIHdoZXJlIGEKPiA+
Pj4gZnVuY3Rpb24gd2FzIGNvbmZ1c2luZ2x5IG5hbWVkLgo+ID4+Pgo+ID4+PiBQYXRjaCAyIGFk
ZHMgdGhlIFJLMzU3NiBjb21wYXRpYmxlIHRvIHRoZSBiaW5kaW5ncy4KPiA+Pj4KPiA+Pj4gUGF0
Y2ggMyBhZGRzIHN1cHBvcnQgZm9yIHRoaXMgU29DJ3MgdGhlcm1hbCBjaGlwIHRvIHRoZSBkcml2
ZXIuIEl0IGlzIGEKPiA+Pj4gcG9ydCBvZiB0aGUgZG93bnN0cmVhbSBjb21taXQgYWRkaW5nIHN1
cHBvcnQgZm9yIHRoaXMuCj4gPj4+Cj4gPj4+IFBhdGNoIDQgYWRkcyBzb21lIGRvY3VtZW50YXRp
b24gZm9yIGltbWluZW50IGFkZGl0aW9uYWwgZnVuY3Rpb25hbGl0eSB0bwo+ID4+PiB0aGUgYmlu
ZGluZywgbmFtZWx5IHRoZSB0cmltIHZhbHVlIHN0dWZmLgo+ID4+Pgo+ID4+PiBQYXRjaCA1IGFk
ZHMgc3VwcG9ydCBmb3IgcmVhZGluZyB0aGVzZSBPVFAgdmFsdWVzIGluIHRoZQo+ID4+PiByb2Nr
Y2hpcF90aGVybWFsIGRyaXZlciwgYW5kIG1ha2VzIHVzZSBvZiB0aGVtLiBUaGUgY29kZSBpcyBt
b3N0bHkgbmV3Cj4gPj4+IHVwc3RyZWFtIGNvZGUgd3JpdHRlbiBieSBtZSwgdXNpbmcgZG93bnN0
cmVhbSBjb2RlIGFzIHJlZmVyZW5jZS4KPiA+Pgo+ID4+IFJlcGxhY2VkIHByZXZpb3VzbHkgYXBw
bGllZCB2ZXJzaW9uIFY1IHdpdGggdGhpcyBWNiBwYXRjaGVzIDEtNQo+ID4KPiA+IGFyZSB0aGVz
ZSBjb21taXRzIGF2YWlsYWJsZSBzb21ld2hlcmU/Cj4gPgo+ID4gQmVjYXVzZSBnaXQua2VybmVs
Lm9yZyByZXBvcnRzIHRoYXQKPiA+ICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9s
aW51eC9rZXJuZWwvZ2l0L3RoZXJtYWwvbGludXguZ2l0Cj4gPiBoYXMgbm90IHNlZW4gYWN0aXZp
dHkgaW4gYSB3aGlsZT8KPiA+Cj4KPiBJIGp1c3QgcHVzaGVkIHRoZSBibGVlZGluZy1lZGdlIGJy
YW5jaAoKSnVzdCB3b25kZXJpbmcgaWYgcGF0Y2hlcyA2LTcgZnJvbSB0aGlzIHNlcmllcyBhcmUg
b24geW91ciByYWRhcj8KRHJpdmVyIGNoYW5nZXMgYXJlIGluIC1uZXh0IEFGQUlDVCwgYnV0IG5v
dCBEVFMuIENhbid0IHdhaXQgdG8gZ2V0IHRoZQp0ZW1wZXJhdHVyZSBtb25pdG9yaW5nIHdvcmtp
bmcgb24gUkszNTc2IHdpdGhvdXQgb3V0LW9mLXRyZWUgcGF0Y2hlcwo7LSkKClRoYW5rcyBhIGxv
dCwKQWxleGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
