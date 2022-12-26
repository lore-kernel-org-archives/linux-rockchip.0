Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADF3EC3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 13:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DO45IC0NrYroaj3bK2bpvrrhN/FssZt1EGnn/P78whU=; b=e8R8p7S3Zp27LR
	ZgBruyDtlLtckMp3WDxau3U3lKuYeLBSh0ekR08dAsGMO0EWkmCKMBgnlEoKclAe+WV+t/lVVwuXi
	MDosJ0OgorP0nlWOUp5CnvvmK6UbJ5cvDVBhrokzA6usFnVAmZq90j9O/sE6pUepmSld2gIqSEIH5
	zjb3chMD8Kd4FIPVlfYDll8YP6esre/y9rYBp3MwDEiK9UDhYR7j9RWA4PYlaWClAEpq8fjzVO9qx
	qQpldlsIZx5sVM8mHEKOKvBvi2sRbCy1jEoU4zE6R2R9Q2r7LeRohCSBL3zD8S9HZXnbR2EaG2R8A
	bqIyPdmHJk70sOAFXmcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9nr8-004MCp-8e; Mon, 26 Dec 2022 13:49:30 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9nr4-004M9l-TA
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 13:49:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672062563;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=zUK8ohDvHrqcANf/NgU5DC4WBrgNFcEfShtnNkgckEM=;
	b=O4MI79toXJnEL7uzduGYR9A2y3+ObMwOyFBlON8EAmeYRDjWbao+ELwsc3ap8z5aijVjwW
	PVSYsjmt7x3xokGugenWapj812X40MePXf54Tp4pFMHwUeZCT/xEyYcGsZDQmwSZp1poT+
	Pfty1GG6KAB61pSyhjrdpoG446/NOl4=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-348-Wa1_Wx7MM3uVX6Gche8JGw-1; Mon, 26 Dec 2022 08:49:21 -0500
X-MC-Unique: Wa1_Wx7MM3uVX6Gche8JGw-1
Received: by mail-wm1-f70.google.com with SMTP id fl12-20020a05600c0b8c00b003d96f0a7f36so4203142wmb.1
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 05:49:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zUK8ohDvHrqcANf/NgU5DC4WBrgNFcEfShtnNkgckEM=;
        b=IdflQ9au33QssWJfMULhKH+SNG27QhyVpPih36iqN/XtoPsfFP8v5Y3wd171C+LiM9
         iZFtBo3TwjisHZFJ48bxGajxUlp66Uw7UTyqyqh6tMoCnrDazlA9VEO8VV9EfsbmU+WF
         R91CLBiIVNvvCzPMImRkTs7VG/KO/NA21CguPDegTiXPARVGckMuc3O7YA5qkmlurYpf
         mH7Ym2CIPXhOktq2ZfNqLj1bTj3sLaF+dm2xBO76ccScsEIamd0dDnO1Cwxsi13KE7ug
         2OFIBJSnY6Ps8Jn2v7pGY7Y+ZXS/lEzjMYmrpLlAa0X7X8MwfApvL4+ycktCF7IWe/pI
         H/WQ==
X-Gm-Message-State: AFqh2ko4OYAt2IB7D8LmoStL3LcjGZnP4CeC7dqMzuCKnxE6y0b/6pQR
	OFx+YUs21Z2gHeFZN/tpe1PXxxgHZgM2KsiGJLPdqhaFXosI5bZZcKVpefJyii7RjWwQOp3ZxuA
	F+A73WeuLHNElDhvhkjx9b9tclkvd//1O
X-Received: by 2002:a5d:53cd:0:b0:261:d8be:3047 with SMTP id a13-20020a5d53cd000000b00261d8be3047mr12086646wrw.3.1672062560711;
        Mon, 26 Dec 2022 05:49:20 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtsZFk+AKv2denQ6Lk8VrO7aAH7Y5BneyC/FpbtIetK0t17olrLdqcrM70WD3U/nREM6lduGQ==
X-Received: by 2002:a5d:53cd:0:b0:261:d8be:3047 with SMTP id a13-20020a5d53cd000000b00261d8be3047mr12086623wrw.3.1672062560498;
        Mon, 26 Dec 2022 05:49:20 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id a18-20020adfed12000000b0027cfd9463d7sm3340947wro.110.2022.12.26.05.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 05:49:19 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Robert Mader <robert.mader@posteo.de>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	=?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Martijn Braam <martijn@brixit.nl>,
	Peter Robinson <pbrobinson@gmail.com>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/4] Add PinePhone Pro display support
Date: Mon, 26 Dec 2022 14:49:04 +0100
Message-Id: <20221226134909.2822179-1-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_054927_334200_642BBF29 
X-CRM114-Status: GOOD (  19.99  )
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
eW91IHRvbyBpbiB0aGUgbmV4dCByZXZpc2lvbi4KClRoaXMgaXMgYSB2MiBvZiB0aGUgcGF0Y2gt
c2V0IHRoYXQgYWRkcmVzc2VzIGlzc3VlcyBwb2ludGVkIG91dCBpbiB2MToKCmh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8yMDIyMTIyMjIyMzgzMC4yNDk0OTAwLTEtamF2aWVybUByZWRoYXQu
Y29tL1QvI202OTI2NTVhMDYwOTNmZThkZjBkODc0OGIzZGYzMzhlNTc0OTRhZjJhCgpUaGUgcGF0
Y2hlcyB3ZXJlIHRlc3RlZCBvbiBhIFBpbmVQaG9uZSBQcm8gRXhwbG9yZXIgRWRpdGlvbiB1c2lu
ZyBhIEZlZG9yYQozNyBXb3Jrc3RhdGlvbiBpbWFnZS4KCkJlc3QgcmVnYXJkcywKSmF2aWVyCgpD
aGFuZ2VzIGluIHYyOgotIEFkZCB5ZWFyIHRvIGRyaXZlcidzIGNvcHlyaWdodCBub3RpY2UgKFNh
bSBSYXZuYm9yZykKLSBSZW1vdmUgdW51c2VkIDx2aWRlby9kaXNwbGF5X3RpbWluZy5oPiBoZWFk
ZXIgaW5jbHVkZSAoU2FtIFJhdm5ib3JnKS4KLSBVc2UgbWlwaV9kc2lfZGNzX3dyaXRlX3NlcSgp
IGhlbHBlciBhbmQgZHJvcCBjdXN0b20gbWFjcm8gKFNhbSBSYXZuYm9yZykuCi0gRHJvcCB1bm5l
Y2Vzc2FyeSBpbmZvIG1lc3NhZ2VzIGFuZCBtb3ZlIHVzZWZ1bCBvbmUgdG8gZGVidWcgKFNhbSBS
YXZuYm9yZykuCi0gRHJvcCByZWR1bmRhbnQgImJpbmRpbmdzIiBpbiBzdWJqZWN0IChLcnp5c3p0
b2YgS296bG93c2tpKS4KLSBEcm9wICJkZXZpY2UgdHJlZSBiaW5kaW5ncyIgaW4gdGl0bGUgKEty
enlzenRvZiBLb3psb3dza2kpLgotIFB1dCBwb3J0IG5leHQgdG8gb3RoZXIgInRydWUiIHByb3Bl
cnRpZXMgKEtyenlzenRvZiBLb3psb3dza2kpLgotIEFkZCBLcnp5c3p0b2YgS296bG93c2tpJ3Mg
UmV2aWV3ZWQtYnkgdGFnLgotIEZpeCByZWd1bGF0b3Igbm9kZSBuYW1lcyAoTWF5YSBNYXR1c3pj
enlrKS4KLSBEcm9wIG5vbi1leGlzdGVudCAicG93ZXJvZmYtaW4tc3VzcGVuZCIgcHJvcGVydHkg
KE1heWEgTWF0dXN6Y3p5aykuCi0gUmVtb3ZlIHVubmVjZXNzYXJ5IGNvbW1lbnRzIGluIHBhbmVs
IG5vZGUgKE1heWEgTWF0dXN6Y3p5aykuCgpKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMgKDIpOgog
IGR0LWJpbmRpbmdzOiBkaXNwbGF5OiBBZGQgSGltYXggSFg4Mzk0IHBhbmVsIGNvbnRyb2xsZXIK
ICBNQUlOVEFJTkVSUzogQWRkIGVudHJ5IGZvciBIaW1heCBIWDgzOTQgcGFuZWwgY29udHJvbGxl
ciBkcml2ZXIKCkthbWlsIFRyemNpxYRza2kgKDEpOgogIGRybTogcGFuZWw6IEFkZCBIaW1heCBI
WDgzOTQgcGFuZWwgY29udHJvbGxlciBkcml2ZXIKCk9uZHJlaiBKaXJtYW4gKDEpOgogIGFybTY0
OiBkdHM6IHJrMzM5OS1waW5lcGhvbmUtcHJvOiBBZGQgaW50ZXJuYWwgZGlzcGxheSBzdXBwb3J0
CgogLi4uL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvaGltYXgsaHg4Mzk0LnlhbWwgIHwgIDY1ICsr
KwogTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA3ICsK
IC4uLi9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzICAgICB8IDEyMyArKysr
KwogZHJpdmVycy9ncHUvZHJtL3BhbmVsL0tjb25maWcgICAgICAgICAgICAgICAgIHwgIDEyICsK
IGRyaXZlcnMvZ3B1L2RybS9wYW5lbC9NYWtlZmlsZSAgICAgICAgICAgICAgICB8ICAgMSArCiBk
cml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtaGltYXgtaHg4Mzk0LmMgICAgfCA0NDYgKysrKysr
KysrKysrKysrKysrCiA2IGZpbGVzIGNoYW5nZWQsIDY1NCBpbnNlcnRpb25zKCspCiBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcGFu
ZWwvaGltYXgsaHg4Mzk0LnlhbWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0v
cGFuZWwvcGFuZWwtaGltYXgtaHg4Mzk0LmMKCi0tIAoyLjM4LjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
