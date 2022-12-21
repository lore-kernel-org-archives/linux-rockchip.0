Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45D9DC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 12:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuo/lF/AGAD19sCfa9fPhRafn97gSqwDE8UQED49+M0=; b=JCCGHZqyAA53S+
	OiSkyNmtQ7+3DBMsDtFwPRmNb2W0p/HZDmwQ4oxL256UAoN468dOQ8H2gVrIBbv/MrgyYxPWYH14o
	AGX4dPRB/7yBz9aqYEDPy3+drFZpA//hoKTgi4cXnJtxjwi8fuBelH9+9Uhkbn6a4N1nj34dORrLr
	8QVUDgk1UOEVCy6e2fyPivx/O6MW7ENGCaRT/N9BoejZzJBRiXBhGKGIuDh/iJjvlnKmIV7lYthkC
	ITMV3JGkcdt9pwmLQEUdLYK1FZlGpo8eTA8KIEDrHya5KnXgo+YcFMoAP73EIFFlSg9cytcCY23Bz
	fWuvNBP9DxKnwQ6RolkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7xyx-00Ecpk-08; Wed, 21 Dec 2022 12:13:59 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7xxW-00EcOr-Kf; Wed, 21 Dec 2022 12:12:31 +0000
Received: by mail-qv1-xf32.google.com with SMTP id r15so10203927qvm.6;
        Wed, 21 Dec 2022 04:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oQf5YLAPimW4Vw+lXekg7aGz4djtucNpOLvkhBsL8fY=;
        b=MyQgM3oNihULVPGYU+e06vCoKN5a/flzi84nvSKLIPFKcbzcABA4S8BwGSUlcCFOqV
         lN6w6ZsEZXlcfEW7+9JzAj9olv9B+iRhJqSS6o4J98blKQEAONcNLrPZgv0EjvdexRUe
         VI71fSP+yaZulhoFSxLRfWc2fYAtpwW9ih9lIQ5twYPhaHOVyvFFZcSKDnf+GAFEom0F
         HUr0r2oKpdHe/gGWq15oVcgfOKwTIdNIMrtQsFMNzRhh5+xVrifksmFa3DhPOlqRug1H
         ZfYrVkbSjtgcCalWzdy2xgW1pk+1mVtWsxmPGAd92n3Cec8qi7Zu/bRWP2fwDAA+zu4Z
         MMRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oQf5YLAPimW4Vw+lXekg7aGz4djtucNpOLvkhBsL8fY=;
        b=49Ol7rnf0ZZzpDcPSmExqd8Lw6LtwDBv9b9oUE9iifOghkzVIvyCjwhzRrbz0oJ587
         dG/zxnbxZObzPrIiUVlXc/EYAFuVbtULH6tYnD59PLT4m/k97Jt9+b8LRS38kijyuANK
         prosxCTgKhUsY2BiqsJRr+KI6zCDLE1oM4aaKPldskhtIcU/Q7JKoN/wowbqZNLeYi3B
         rPZoLd/2g3J9Pa6fUJz9rvRzAuZm9jRsJ9I4yfRjbJiqWAiQbRIPrni1K+bi9WLOOXI7
         cVRaf9omIVw0mch6Pj/x4ICqEVb4te2GtboMUMP0ESGE6qwhksHl4wSGBa5denWM7zxf
         COAQ==
X-Gm-Message-State: AFqh2kpV82OIAmbjdcuojHBx1n/k3ExCsVF/dcke1vauBIwsShnr3fwm
	srz686mhnrBpOLdIxcSM8oBTMF8r1f9s2S1nAG8=
X-Google-Smtp-Source: AMrXdXs3I6lQEOnWGKd4HpQBGugdIGOO6wFs7aYgVIashBCALecxPLc7OZbV9+5OFuIdu/AX2jtgr+AY080gTizJnOY=
X-Received: by 2002:a05:6214:a91:b0:4bb:7998:fed6 with SMTP id
 ev17-20020a0562140a9100b004bb7998fed6mr69417qvb.86.1671624748724; Wed, 21 Dec
 2022 04:12:28 -0800 (PST)
MIME-Version: 1.0
References: <Y6KfFEChA67E7oX/@VM-66-53-centos> <5a7907e3-f79e-5de9-ed1b-ec24ea52c437@linaro.org>
 <CAMmci2UgwqDyPPJXwGRsMW1Y1Cy2c6LMybk+7v7pGz-LtYzGTw@mail.gmail.com> <2673859.iZASKD2KPV@diego>
In-Reply-To: <2673859.iZASKD2KPV@diego>
From: ty <zonyitoo@gmail.com>
Date: Wed, 21 Dec 2022 20:12:17 +0800
Message-ID: <CAMmci2XoF0M81mVt8zko3D3G2oTHq0ia_nZ9CPX9Xz20j92c9Q@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Peter Geis <pgwipeout@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_041230_714908_4C38FC61 
X-CRM114-Status: GOOD (  14.54  )
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

SGksIEtvemxvd3NraSBhbmQgU3TDvGJuZXIsCgpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciBwb2lu
dGluZyBtZSBpbiB0aGUgcmlnaHQgZGlyZWN0aW9uLgoKPiBTbyBob3cgZGlkIHlvdSBzb2x2ZSB0
aGUgY29tbWVudCAiRG9lcyBub3QgbG9vayBsaWtlIHByb3Blcmx5IG9yZGVyZWQuCj4gRG9uJ3Qg
YWRkIHN0dWZmIGF0IHRoZSBlbmQgb2YgZmlsZXMvbGlzdHMuIj8gV2hhdCBkaWQgeW91IGNoYW5n
ZSB0bwo+IHNvbHZlIGl0PwoKPiBmb3IgY29udGV4dCBzb3J0aW5nIG9yZGVyIGluIHRoYXQgZmls
ZSBpcyBhbHBoYWJldGljYWwgYnkgZGVzY3JpcHRpb24KCkkgZmluYWxseSBnb3QgaXQuIEl0IHNo
b3VsZCBiZSBwdXQgcmlnaHQgYWZ0ZXIgdGhlICJFbGdpbiBSVjExMDggUjEiLgoKPiBZb3UgZG8g
bm90IHdyYXAgYXQgNzUsIGJ1dCBhdCBzb21lIG90aGVyIHBsYWNlLiBKdXN0IHB1dCBpdCB0byBl
ZGl0b3IKPiBhbmQgY2hlY2sgd2hlcmUgaXMgd3JhcHBpbmcgKGNvdW50IGNoYXJhY3RlcnMpLgoK
VGhlIG9yaWdpbmFsIG1lc3NhZ2Ugd2FzOgoKPiAgZnJvbTogREhEQVhDVyA8bGFzc3RwNTAxMUBn
bWFpbC5jb20+Cj4KPiBMdWJhbkNhdCAxIGlzIGEgUm9ja2NoaXAgUkszNTY2IFNCQyBiYXNlZAo+
IGlzIGRldmVsb3BlZCBieSBFbWJlZEZpcmUgRWxlY3Ryb25pY3MgQ28uLCBMdGQuCj4gTWluaSBM
aW51eCBDYXJkIFR5cGUgQ2hlYXAgQ29tcHV0ZXIgRGV2ZWxvcG1lbnQgQm9hcmQKPgo+IFNpZ25l
ZC1vZmYtYnk6IFl1dGVuZyBaaG9uZyA8em9ueWl0b29AZ21haWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IERIREFYQ1cgPGxhc3N0cDUwMTFAZ21haWwuY29tPgoKVGhlIGxvbmdlc3QgbGluZSBpcyAi
TWluaSBMaW51eCBDYXJkIFR5cGUgQ2hlYXAgQ29tcHV0ZXIgRGV2ZWxvcG1lbnQKQm9hcmQiLCB3
aGljaCBoYXMgNTMgY2hhcmFjdGVycy4gT3IgLi4uIEkgc2hvdWxkIHVzZSB0aGUgd2hvbGUgbGlu
ZSBhcwptdWNoIGFzIHBvc3NpYmxlPyBUaGVuIEkgc2VlIHdoeSBJIHdhcyBkb2luZyB3cm9uZy4g
SXQgd2lsbCBiZSBmaXhlZAppbiB0aGUgUEFUQ0ggdjUuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
