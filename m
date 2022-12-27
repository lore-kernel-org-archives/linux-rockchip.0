Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0003C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Dec 2022 11:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cLOEMV0bd0j3GQqaDcelQpiAQvp8A1j2FyMSqmHQWPU=; b=dTzYoKJiAzIeij
	0arPRh7kBowZEQEuEasha2BiRwHmgCwKGafkeapCG0zFg2tj8o6BYI2oB8G8AvJMUF0D6vkzsXI7n
	bc08yfLVcpR4HTep+oMg2dkVGH4kAWynBGxuTADm3tm85Tb1iTw7pZLWy2ekUTtjXn03KNbQvPt86
	YhRN1Iy8o7Y51iF1IKS5efiqHHjRoswJv7n7cYe20OUBK88QAkbQZjQM2qEuxSJC7ps8raeE/hIgT
	Zr99haDU3H72CNlvORmrlkWa9qfI7eO/UqKkUpp6BUf7qphWPsR+0DI1EF0DdlP9lpcPfW74PSC6K
	mGv4i8iju/b1rQ8GKUkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA7kO-00CKEB-Lq; Tue, 27 Dec 2022 11:03:53 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA7kF-00CK9y-Sf
	for linux-rockchip@lists.infradead.org; Tue, 27 Dec 2022 11:03:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672139023;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nkS0uo5evck1whC4UlRL7zEzShwAWRdnhJUD05ERnDk=;
	b=ADzZAe0mGs7989NOxpbCVKoPiFz6/6EYcJbTAH283JUElvfvwhocrRsAxviTW8pMpF/fWo
	0S2nRHMnWtJh8dNx8zsveKyL973CX67euV3HMSKx+FHUFPvrQXBko23mjsQ62i0HBlEx88
	vzN5+h0lXVlVEsLGPEglFJKZi88txSs=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-99-LAI6Du4rNI-CFry7oio4yg-1; Tue, 27 Dec 2022 06:03:42 -0500
X-MC-Unique: LAI6Du4rNI-CFry7oio4yg-1
Received: by mail-wm1-f69.google.com with SMTP id q6-20020a05600c2e4600b003d211775a99so5548675wmf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Dec 2022 03:03:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nkS0uo5evck1whC4UlRL7zEzShwAWRdnhJUD05ERnDk=;
        b=HOXL08hqX5stbJyE4SDSfyMfb12Y84ON0Il7MS7l4ivx4yyg+6BRZSQF31YGu0L3Lb
         V6kKXIqVQvJj4kSMq0e8YT7hM9Q8ZSvuShK/40fnEmzaq0PM4pI4KiozmF5PqYihoGx8
         Gv3ThK9wIyY30K/x5xG7AZctc4ZRH22JApE5wZzFc2iehjWzisRd1wdxVqf5+Pl/nhq+
         TYtdGCwnoikkPSFBac+Eyi2xqbUxrwklgR10Tu6hKyOjBqUBYWry8yYvBJWM6ey7nfj/
         znhGeQTV2CgRgtKhwz13pG/aHLP8tHtZuva8da+RTYf+GkeYNq360hFnFDAf+y8fUR3r
         tTJA==
X-Gm-Message-State: AFqh2kokrwku7hbsRSKI9MIFtzb2OyXGj/4t61kEWixq5b6TALSkDzbf
	s1XHIaXTgYfAoxyvR75DdDAQgsAomCwLum5a7/KXPLDplFjaPs0AJai2alt18suXLS5Uou7amoT
	nXrofUCa1Kr/zMx/cOqm15mj9ZmEGGTUg
X-Received: by 2002:adf:9b93:0:b0:26e:d96b:da7a with SMTP id d19-20020adf9b93000000b0026ed96bda7amr12298835wrc.61.1672139020371;
        Tue, 27 Dec 2022 03:03:40 -0800 (PST)
X-Google-Smtp-Source: AMrXdXv5y/kkiAuwA5Llqp+Wayp+ny7mbOOuXGVQjt+WhczDlzljG99CbF/SmOlAkyohJ5FLjxT8qg==
X-Received: by 2002:adf:9b93:0:b0:26e:d96b:da7a with SMTP id d19-20020adf9b93000000b0026ed96bda7amr12298807wrc.61.1672139020100;
        Tue, 27 Dec 2022 03:03:40 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id p18-20020a056000019200b00279d23574c4sm7374557wrx.13.2022.12.27.03.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Dec 2022 03:03:39 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>,
	Martijn Braam <martijn@brixit.nl>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Neal Gompa <ngompa13@gmail.com>,
	=?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Robert Mader <robert.mader@posteo.de>,
	Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
	Ondrej Jirman <megi@xff.cz>,
	dri-devel@lists.freedesktop.org,
	Javier Martinez Canillas <javierm@redhat.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 0/4] Add PinePhone Pro display support
Date: Tue, 27 Dec 2022 12:03:31 +0100
Message-Id: <20221227110335.2923359-1-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_030344_238874_CC2E0C1B 
X-CRM114-Status: GOOD (  20.35  )
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

VGhpcyBzZXJpZXMgYWRkIHN1cHBvcnQgZm9yIHRoZSBkaXNwbGF5IHByZXNlbnQgaW4gdGhlIFBp
bmVQaG9uZSBQcm8uCgpQYXRjaCAjMSBhZGRzIGEgZHJpdmVyIGZvciBwYW5lbHMgdXNpbmcgdGhl
IEhpbWF4IEhYODM5NCBwYW5lbCBjb250cm9sbGVyLApzdWNoIGFzIHRoZSBIU0QwNjBCSFc0IDcy
MHgxNDQwIFRGVCBMQ0QgcGFuZWwgcHJlc2VudCBpbiB0aGUgUGluZVBob25lIFByby4KClBhdGNo
ICMyIGFkZHMgYSBkZXZpY2V0cmVlIGJpbmRpbmcgc2NoZW1hIGZvciB0aGlzIGRyaXZlciBhbmQg
cGF0Y2ggIzMgYWRkcwphbiBlbnRyeSBmb3IgdGhlIGRyaXZlciBpbiB0aGUgTUFJTlRBSU5FUlMg
ZmlsZS4KCkZpbmFsbHkgcGF0Y2ggIzQgYWRkcyB0aGUgbmVlZGVkIGRldmljZXRyZWUgbm9kZXMg
aW4gdGhlIFBpbmVQaG9uZSBQcm8gRFRTLAp0byBlbmFibGUgYm90aCB0aGUgZGlzcGxheSBhbmQg
dGhlIHRvdWNoc2NyZWVuLiBUaGlzIG1ha2VzIHRoZSB1cHN0cmVhbSBEVFMKbXVjaCBtb3JlIHVz
YWJsZSBhbmQgd2lsbCBhbGxvdyBmb3IgZXhhbXBsZSB0byBlbmFibGUgc3VwcG9ydCBmb3IgdGhl
IHBob25lCmluIHRoZSBGZWRvcmEgZGlzdHJpYnV0aW9uLgoKSSBvbmx5IGFkZGVkIG15c2VsZiBh
cyB0aGUgbWFpbnRhaW5lciBmb3IgdGhlIGRyaXZlciBiZWNhdXNlIEkgZG9uJ3Qga25vdwppZiBL
YW1pbCBhbmQgT25kcmVqIHRoYXQgd29ya2VkIGluIHRoZSBkcml2ZXIgd291bGQgYmUgaW50ZXJl
c3RlZC4gUGxlYXNlCmxldCBtZSBrbm93IGZvbGtzIGlmIHlvdSBhcmUsIGFuZCBJIGNhbiBhZGQg
eW91IHRvbyBpbiB0aGUgbmV4dCByZXZpc2lvbi4KClRoaXMgaXMgYSB2MyBvZiB0aGUgcGF0Y2gt
c2V0IHRoYXQgYWRkcmVzc2VzIGlzc3VlcyBwb2ludGVkIG91dCBpbiB2MjoKCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL2FyY2hpdmVzL2RyaS1kZXZlbC8yMDIyLURlY2VtYmVyLzM4NDUx
My5odG1sCgpUaGUgcGF0Y2hlcyB3ZXJlIHRlc3RlZCBvbiBhIFBpbmVQaG9uZSBQcm8gRXhwbG9y
ZXIgRWRpdGlvbiB1c2luZyBhIEZlZG9yYQozNyBXb3Jrc3RhdGlvbiBpbWFnZS4KCkJlc3QgcmVn
YXJkcywKSmF2aWVyCgpDaGFuZ2VzIGluIHYzOgotIEZpeCBleGFtcGxlIHNuaXBwZXQgZm9yIGBt
YWtlIGR0X2JpbmRpbmdfY2hlY2tgIHRvIHBhc3MgKEtyenlzenRvZiBLb3psb3dza2kpLgotIEFk
ZCBTYW0gUmF2bmJvcmcncyByZXZpd2VkLWJ5IHRhZy4KLSBNb3ZlIGRyaXZlciBwYXRjaCBhZnRl
ciBvbmUgaW50cm9kdWNpbmcgdGhlIERUIGJpbmRpbmcgKFNhbSBSYXZuYm9yZykuCgpDaGFuZ2Vz
IGluIHYyOgotIERyb3AgcmVkdW5kYW50ICJiaW5kaW5ncyIgaW4gc3ViamVjdCAoS3J6eXN6dG9m
IEtvemxvd3NraSkuCi0gRHJvcCAiZGV2aWNlIHRyZWUgYmluZGluZ3MiIGluIHRpdGxlIChLcnp5
c3p0b2YgS296bG93c2tpKS4KLSBQdXQgcG9ydCBuZXh0IHRvIG90aGVyICJ0cnVlIiBwcm9wZXJ0
aWVzIChLcnp5c3p0b2YgS296bG93c2tpKS4KLSBBZGQgS3J6eXN6dG9mIEtvemxvd3NraSdzIFJl
dmlld2VkLWJ5IHRhZy4KLSBBZGQgeWVhciB0byBkcml2ZXIncyBjb3B5cmlnaHQgbm90aWNlIChT
YW0gUmF2bmJvcmcpCi0gUmVtb3ZlIHVudXNlZCA8dmlkZW8vZGlzcGxheV90aW1pbmcuaD4gaGVh
ZGVyIGluY2x1ZGUgKFNhbSBSYXZuYm9yZykuCi0gVXNlIG1pcGlfZHNpX2Rjc193cml0ZV9zZXEo
KSBoZWxwZXIgYW5kIGRyb3AgY3VzdG9tIG1hY3JvIChTYW0gUmF2bmJvcmcpLgotIERyb3AgdW5u
ZWNlc3NhcnkgaW5mbyBtZXNzYWdlcyBhbmQgbW92ZSB1c2VmdWwgb25lIHRvIGRlYnVnIChTYW0g
UmF2bmJvcmcpLgotIEZpeCByZWd1bGF0b3Igbm9kZSBuYW1lcyAoTWF5YSBNYXR1c3pjenlrKS4K
LSBEcm9wIG5vbi1leGlzdGVudCAicG93ZXJvZmYtaW4tc3VzcGVuZCIgcHJvcGVydHkgKE1heWEg
TWF0dXN6Y3p5aykuCi0gUmVtb3ZlIHVubmVjZXNzYXJ5IGNvbW1lbnRzIGluIHBhbmVsIG5vZGUg
KE1heWEgTWF0dXN6Y3p5aykuCgpKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMgKDIpOgogIGR0LWJp
bmRpbmdzOiBkaXNwbGF5OiBBZGQgSGltYXggSFg4Mzk0IHBhbmVsIGNvbnRyb2xsZXIKICBNQUlO
VEFJTkVSUzogQWRkIGVudHJ5IGZvciBIaW1heCBIWDgzOTQgcGFuZWwgY29udHJvbGxlciBkcml2
ZXIKCkthbWlsIFRyemNpxYRza2kgKDEpOgogIGRybTogcGFuZWw6IEFkZCBIaW1heCBIWDgzOTQg
cGFuZWwgY29udHJvbGxlciBkcml2ZXIKCk9uZHJlaiBKaXJtYW4gKDEpOgogIGFybTY0OiBkdHM6
IHJrMzM5OS1waW5lcGhvbmUtcHJvOiBBZGQgaW50ZXJuYWwgZGlzcGxheSBzdXBwb3J0CgogLi4u
L2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvaGltYXgsaHg4Mzk0LnlhbWwgIHwgIDc0ICsrKwogTUFJ
TlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA3ICsKIC4uLi9k
dHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzICAgICB8IDEyMyArKysrKwogZHJp
dmVycy9ncHUvZHJtL3BhbmVsL0tjb25maWcgICAgICAgICAgICAgICAgIHwgIDEyICsKIGRyaXZl
cnMvZ3B1L2RybS9wYW5lbC9NYWtlZmlsZSAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJz
L2dwdS9kcm0vcGFuZWwvcGFuZWwtaGltYXgtaHg4Mzk0LmMgICAgfCA0NDYgKysrKysrKysrKysr
KysrKysrCiA2IGZpbGVzIGNoYW5nZWQsIDY2MyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvaGlt
YXgsaHg4Mzk0LnlhbWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vcGFuZWwv
cGFuZWwtaGltYXgtaHg4Mzk0LmMKCi0tIAoyLjM4LjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
