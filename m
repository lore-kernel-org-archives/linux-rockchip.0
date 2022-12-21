Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FA57C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 09:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X7cfInVM1xZiAg49i4LkyMbTIfoenROt4DI5b8R2/qE=; b=MiDahUFkJ1myxX
	um/WgvyYAeORCs6CBmqDXS2ZTP8uAPMypdoC4A1QKuHHfYcsSm/LWpbG0yv1eiPJd1HmCjSZ1tNIL
	a2/t4vxhl2gsSsWljNhLxnYWQHMybOBjvpS6D4KHeFpOeWJ2MOMH4rIvlb+RKzInHjMC1ftIYe3rR
	RwFpfJgJKdJGwXOD/RVoXILdu/e1VsaRHKPfYwnU0widZqy27yWzRETJ315az0RkoU/8CsYvMmbFU
	lX2cGUG8TFgDD9EKaa1yMUQbCku/bVlmoQhBBUalePFHvvtSnzK+MHTICxvbRsb5OGa6Bc7Bs7qTM
	T4Mkr7vW8Rp9hRCHHzBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7vXv-00CuEN-Mf; Wed, 21 Dec 2022 09:37:55 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7vXQ-00Cts7-3E; Wed, 21 Dec 2022 09:37:25 +0000
Received: by mail-qt1-x82e.google.com with SMTP id s9so13216151qtx.6;
        Wed, 21 Dec 2022 01:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XASlYx7O9B9S8ryihKVMGI8Jj8VcSqnxG28gXEDkV2Y=;
        b=ILhE7A8AHKhhtMDA+yTmaOUxLSO12P7UBqkfjq9HBifr3sWkvcu40HaXym2zpEuLnj
         h5Mf4+WrOINgkffy49D07gxxwpzJXRouJuZPNhe6PddtTNQ3GnNIYyBfwqjuoqWrE06U
         rja7QwFcMmxaox7o6aFhhXLU/XjydDD3XrsFZTfnjE0R+v/5XYF2A7ePy+roaMjYxYzp
         CLJkERnHENxhfTBe5TE5/PljpbUZIOW1qEFEvr4OpsyPpRyaAd8TwII5MkzRyQuht9DS
         s0+kr0lNaoWN4oZ4mwAJYtl7OHlQYP2/s9x+jnl6HCGx2CeTkoeevF8T2UcxzD8kubyK
         oDAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XASlYx7O9B9S8ryihKVMGI8Jj8VcSqnxG28gXEDkV2Y=;
        b=GBo2kqrAaOYesWZ95r2ZcI6bJePfwXvjvKywjSRHrPPPpZgUY8rneqNPHeMjbwmYY1
         t1r0hvhidfCvmTLcY7rRf+IWRSJ/iIy0c72Y5mP0SW9Uktq3k1AvUSi6i7G22Eb9xuvX
         TrbhCssT6AVBoaombI5GmhYctjlqQms9/HTlMOKMDtPCOOq7qDPja/u07wwn47dz7OMZ
         8RNoAwVGpXmF7yZZOGQzpJ86y33jXW+/PUdTLx9cGZxqgZOps6/kWn8M6lv0d1lhBfY/
         eDyS2jPsH3k1+Oyn8jRa9d7yFLjYqihKRdufalVR37H8CmFddOAYdacl+0bts7jZuX6N
         USsg==
X-Gm-Message-State: AFqh2krXm39e93P7FQBsEQr9I7+N+l2NfE4WsNnCvWhNUsH0a+qQ2ard
	RWa3+J9ceG8Aam8aA/BpHHbkU9Wt7Nxzq5NFLqQ=
X-Google-Smtp-Source: AMrXdXvFxbd/oQRYag7eCk4bBpmPD09EaCTo/iafvuW2CU4WNAj3RZ7t88RKgdrwaPo66KNUlItFdZoOsnwG2p/uDQo=
X-Received: by 2002:ac8:6a13:0:b0:3a8:e8b:2204 with SMTP id
 t19-20020ac86a13000000b003a80e8b2204mr39563qtr.235.1671615442560; Wed, 21 Dec
 2022 01:37:22 -0800 (PST)
MIME-Version: 1.0
References: <Y6GMnq3AC7Kbnag8@VM-66-53-centos> <a113d20c-dc6c-2e44-009f-d4b17beb8820@linaro.org>
 <CAMmci2XuiwZje53L6Nv9+EG+W6pvXSbwyR2Ko5h8n9LEppS5pg@mail.gmail.com>
 <9474ae59-babb-0cfc-d838-447ff90c40f9@linaro.org> <CAMmci2USuDf2C4hTG=_kRC08uLyiZ8cUnuZwxXHkQkifWUekiQ@mail.gmail.com>
In-Reply-To: <CAMmci2USuDf2C4hTG=_kRC08uLyiZ8cUnuZwxXHkQkifWUekiQ@mail.gmail.com>
From: ty <zonyitoo@gmail.com>
Date: Wed, 21 Dec 2022 17:37:11 +0800
Message-ID: <CAMmci2W9zZkw9ymJfBx4Zs8UX23qAHHA+9_df8VPqBsqBKjyDA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add RK3566 LubanCat 1
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_013724_292482_CA3AC96E 
X-CRM114-Status: GOOD (  14.71  )
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

RGVhciBLb3psb3dza2ksCgpXZSBqdXN0IGdvdCB3aGVyZSB3ZSBkaWQgd3JvbmcgYnkgcmVhZGlu
ZyB0d2ljZSBhYm91dCB0aGUKZ2VuZXJpYy1uYW1lLXJlY29tbWVuZGF0aW9uIGRvY3VtZW50IGFu
ZCBjb21wYXJpbmcgb3VyIFBBVENIZXMgd2l0aApvdGhlcnMuIFdlIHdpbGwgbWFrZSBhIG5ldyBQ
QVRDSCB2NSBhZGRyZXNzaW5nIGFsbCB0aGUgY29tbWVudHMuCgpUaGFua3MgZm9yIHlvdXIgcGF0
aWVudC4gV2UgZmVsdCBzaW5jZXJlbHkgc29ycnkuCgpSZWNhcmRzLgoKWXV0ZW5nIFpob25nLCBE
SERBWENXLgoKdHkgPHpvbnlpdG9vQGdtYWlsLmNvbT4g5LqOMjAyMuW5tDEy5pyIMjHml6Xlkajk
uIkgMTc6MTjlhpnpgZPvvJoKPgo+IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3ps
b3dza2lAbGluYXJvLm9yZz4g5LqOMjAyMuW5tDEy5pyIMjHml6XlkajkuIkgMTc6MDXlhpnpgZPv
vJoKPiA+Cj4gPiBPbiAyMS8xMi8yMDIyIDEwOjAxLCB0eSB3cm90ZToKPiA+ID4gdGhhbmtzLiBJ
IGFtIHJlYWxseSBzb3JyeS4KPiA+ID4KPiA+ID4gSSBmaXhlZCB0aGlzIGJhc2VkIG9uIHlvdXIg
ZmVlZGJhY2sgaW4gdGhlIFBBVENIIFYyIGNvbnRlbnQuIFJlZ2FyZGluZwo+ID4gPiB0aGUgZHRz
IGlzc3VlLCBJIHVzZWQgdGhlIGtlcm5lbC01LjE1IGtlcm5lbCBhZGFwdGF0aW9uIGJlZm9yZSwg
d2hpY2gKPiA+ID4gbWF5IG5vdCBiZSBwZXJmZWN0IGF0IHRoYXQgdGltZS4KPiA+Cj4gPiBEbyBu
b3Qgc2VuZCBwYXRjaGVzIGJhc2VkIG9uIHY1LjE1LiBUaGlzIGlzIHNvbWUgdmVyeSBvbGQga2Vy
bmVsLiBXZSBkbwo+ID4gbm90IHdvcmsgb24gc3VjaCBzdHVmZi4KPgo+IFRoYW5rIHlvdSBmb3Ig
eW91ciBraW5kbHkgcmVtaW5kZXIuIFdlIGhhdmUgbW9kaWZpZWQgdGhlIHdob2xlIC5kdHMKPiBm
aWxlIGJhc2VkIG9uIHY2LjIga2VybmVsIGFuZCBmb2xsb3cgdGhlIGdlbmVyaWMtbmFtZS1yZWd1
bGF0aW9uWzBdIGluCj4gW1BBVENIIHY0XS4gQmVjYXVzZSBpdCB3YXMgYmFzaWNhbGx5IGEgd2hv
bGUgcmV3cml0ZSwgc28gSSBkZWNpZGVkIHRvCj4gc2VuZCBhIG5ldyBQQVRDSCB2NC4KPgo+IFsw
XSBodHRwczovL2RldmljZXRyZWUtc3BlY2lmaWNhdGlvbi5yZWFkdGhlZG9jcy5pby9lbi9sYXRl
c3QvY2hhcHRlcjItZGV2aWNldHJlZS1iYXNpY3MuaHRtbCNnZW5lcmljLW5hbWVzLXJlY29tbWVu
ZGF0aW9uCj4KPiA+Cj4gPiBUaGUgY29tbWVudCB3YXM6Cj4gPiAiTm9kZSBuYW1lcyBzaG91bGQg
YmUgZ2VuZXJpYywgc28gYXQgbGVhc3Qgd2l0aCByZWd1bGF0b3IgcHJlZml4IG9yIHN1ZmZpeC4i
Cj4KPiBZZXMuIE5vZGUgbmFtZXMgYXJlIGFsbCBjaGFuZ2VkIGluIFtQQVRDSCB2NF0uCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
