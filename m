Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4882C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 22:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=707cXeCxAo4Kg0GsI7p7D9GuQv9kOJw40qMoitt+0LY=; b=Cm6xZ3T9+DFsDU
	IxhGRBicOkANJSFjcf/D8egBaX02/Td5TvQD+aDKdjqISfX1v79Ku/RQQYvxrsrnveYwjqUJQQUxZ
	CGvU6qFArq91bGNcqTFMIHqHaVF4dEeTfRNTrFUTnnT7y1hiPlbbkrpxRXxwgATVd2O8vFo6aH9k3
	vCK4apHZBYDljBciwfwxxA5KJ+AyuGaESSwfkidvm6SquROlj+ET1Lon4PaHFqb1tuDW/KClqRfIf
	gYq35nxLY9BAnFO0koTyV1enuLqyFl7QF4ym9GhWxrQtkZRmsWciYBQc8YMo5hMkYRAqgOIZSkV5B
	32TkFuwbkppyPVf4t3zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8UDC-000EM6-KL; Thu, 22 Dec 2022 22:38:50 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8UD8-000EJq-Mr
	for linux-rockchip@lists.infradead.org; Thu, 22 Dec 2022 22:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1671748723;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TE23DSdNWuSZ0vKWHoTlUXd7XsU2QKplwAo6+35hXVY=;
	b=e+64sIAHPWsK7naYsrLLHD+nbzB5DWS2V1/rT0r8LLNR0fBYayBty8pzgIYZauDlnaLeTX
	xMIljlEdT5bT9nD1sHUZXLGAS1lnUvB0n7ZASuw/ZISGTbr/wCv4elBQiqR9RsYgsHnmHK
	/8VCglt8FblQHpJS20mugiiJ7Q/SUeg=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-505-o3x6NI6yPCKo9cYIiTj-zA-1; Thu, 22 Dec 2022 17:38:42 -0500
X-MC-Unique: o3x6NI6yPCKo9cYIiTj-zA-1
Received: by mail-wm1-f71.google.com with SMTP id j2-20020a05600c1c0200b003cf7397fc9bso1364935wms.5
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Dec 2022 14:38:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TE23DSdNWuSZ0vKWHoTlUXd7XsU2QKplwAo6+35hXVY=;
        b=AzFMIDE0hY9egd3KOM3hMXibObrjYHYnjdVAAJBVmI8yAqwcH/X0Zllsrbetw7nQ2g
         vHp5TEiRUjUIiJ05lhryp1+Rasi+awOHn/V1rQtT8kbnkGI86aUqPeqTJOnbajyJYr37
         amVrIzGAzPbuYdwq0dTPWqFHt9csv95ub/mzf1klXKEBHC5ZnrBgdxqViZnB5CmTJu1G
         iuEzsgFcTGoM1Raz2qi1l4bLZ9WUNgYR9ThND363yVEYMRKl9P9nrqKTiHHiwCI/mlVy
         /6JLKvK9bKQdFuLLkJ3aFqmtd8OQRYR+SJd6RJLqwCQzvzzM9ZFq5SYFCHwp+yUdpefO
         2ykQ==
X-Gm-Message-State: AFqh2krDGObG5bmJiTI+ERhHxQWwVvih2GRkr02lj3L3DNAtFLvnbPYp
	xrpsBSCA0WMWs+8tgHZHqsyKI97X8kAxgvzcN2ZLia6SnaHiBbyoYQ/OP1NBuw80HUFaq2+Db3J
	umu2WNr0rTcZQ+2yOpfdgH/DiwSJouD3P
X-Received: by 2002:a05:600c:1ca5:b0:3d1:d746:7bca with SMTP id k37-20020a05600c1ca500b003d1d7467bcamr5584833wms.4.1671748721319;
        Thu, 22 Dec 2022 14:38:41 -0800 (PST)
X-Google-Smtp-Source: AMrXdXt17D6lN1ULKnX6zKVXMwfCh9S42fx9uklw7XxdwaE+3NeI3tkubhfYDOtnhDoxlw6v3WzhTQ==
X-Received: by 2002:a05:600c:1ca5:b0:3d1:d746:7bca with SMTP id k37-20020a05600c1ca500b003d1d7467bcamr5584825wms.4.1671748721075;
        Thu, 22 Dec 2022 14:38:41 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n25-20020a7bc5d9000000b003d969a595fbsm2386239wmk.10.2022.12.22.14.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 14:38:40 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Robert Mader <robert.mader@posteo.de>,
	Peter Robinson <pbrobinson@gmail.com>,
	=?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Martijn Braam <martijn@brixit.nl>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 0/4] Add PinePhone Pro display support
Date: Thu, 22 Dec 2022 23:38:26 +0100
Message-Id: <20221222223830.2494900-1-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_143846_880863_FB93A39D 
X-CRM114-Status: GOOD (  17.94  )
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
eW91IHRvbyBpbiB0aGUgbmV4dCByZXZpc2lvbi4KClRoZSBwYXRjaGVzIHdlcmUgdGVzdGVkIG9u
IGEgUGluZVBob25lIFBybyBFeHBsb3JlciBFZGl0aW9uIHVzaW5nIGEgRmVkb3JhCjM3IFdvcmtz
dGF0aW9uIGltYWdlLgoKQmVzdCByZWdhcmRzLApKYXZpZXIKCgpKYXZpZXIgTWFydGluZXogQ2Fu
aWxsYXMgKDIpOgogIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiBBZGQgSGltYXggSFg4Mzk0IHBhbmVs
IGNvbnRyb2xsZXIgYmluZGluZ3MKICBNQUlOVEFJTkVSUzogQWRkIGVudHJ5IGZvciBIaW1heCBI
WDgzOTQgcGFuZWwgY29udHJvbGxlciBkcml2ZXIKCkthbWlsIFRyemNpxYRza2kgKDEpOgogIGRy
bTogcGFuZWw6IEFkZCBIaW1heCBIWDgzOTQgcGFuZWwgY29udHJvbGxlciBkcml2ZXIKCk9uZHJl
aiBKaXJtYW4gKDEpOgogIGFybTY0OiBkdHM6IHJrMzM5OS1waW5lcGhvbmUtcHJvOiBBZGQgaW50
ZXJuYWwgZGlzcGxheSBzdXBwb3J0CgogLi4uL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvaGltYXgs
aHg4Mzk0LnlhbWwgIHwgIDY4ICsrKwogTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgICA3ICsKIC4uLi9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1w
cm8uZHRzICAgICB8IDEyNCArKysrKwogZHJpdmVycy9ncHUvZHJtL3BhbmVsL0tjb25maWcgICAg
ICAgICAgICAgICAgIHwgIDEyICsKIGRyaXZlcnMvZ3B1L2RybS9wYW5lbC9NYWtlZmlsZSAgICAg
ICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtaGltYXgtaHg4
Mzk0LmMgICAgfCA0NjAgKysrKysrKysrKysrKysrKysrCiA2IGZpbGVzIGNoYW5nZWQsIDY3MiBp
bnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvaGltYXgsaHg4Mzk0LnlhbWwKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtaGltYXgtaHg4Mzk0LmMKCi0tIAoyLjM4
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
