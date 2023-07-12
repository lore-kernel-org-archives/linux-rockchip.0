Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73375EB64D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jul 2023 11:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYDh5DccHAVeGOX5AysJGVQLELBdgvqOCm7lLt5ip5A=; b=bfNE7RyPuBcKgB
	YQosVgnHYuyznGOMh3TagMPxX9kL+XgNAB7y4qqxRVkgeY72BFjnk8wHwgH/017HK4Wq5gxOKFjPE
	rVH6HNr6ofy1LHNrKMbDUSZsDasr8QSAS7AOnqgI632bqNKI67UPvPe65HDRlO9Yc3UIKO5KD06Nw
	FAety3EdHEK9Y8DGZjXNwK13AqOrq5TU9/Og5vCAam2vUWkKw8wT4CoDMZy9bQfbwu0b4aAH2fmD2
	AZdBPiENOowXGnV54J2RUfV+ix4SyoKmWW/6PFNl9Rv6QrPjuWj9jB/gSvrH9+DV/JJ2MTeijzGpZ
	B9gR8WMoYLMiq7Zv2NNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJXrW-00HNnP-1G;
	Wed, 12 Jul 2023 11:18:26 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJXrQ-00HNmA-1z
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jul 2023 11:18:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689160698;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sqF46ZIeTTxnF0x2v0q2HtXa3ZhclBx145UBtd0H60M=;
	b=JxFM7DLx2MYoQZCczMjBskftkfA1LJHcKtpnLuc6wNHq4zYUdo2IXKrHwbcp3ykwgTmUqA
	OckkZVElV8PTHNOM9oKnEFdYVdviOp+zr/y+tlSfk5dP2IQNcfTA2MfoA83bSaPs+dPw8j
	tdQ3A9FK9zcHE8/22HOWbsPADNM2F5g=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-464-O7pQSHRDNJOVtGBmuPafbw-1; Wed, 12 Jul 2023 07:18:17 -0400
X-MC-Unique: O7pQSHRDNJOVtGBmuPafbw-1
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-3fb416d7731so39683195e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Jul 2023 04:18:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689160696; x=1691752696;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mGmoSdcAtbAnvFmDIfmKNE01xrI5yfsr2LA1G6eD+Js=;
        b=T59z4BX3lCsPxesCgcasdSnapvmH5zbqSqpUZCwl6Q20LN8Qtyos/tbWFuJE4ecS55
         TgwLTX+dFrQQrghsRb58UYBn8hIzD5FkjWbHSJ4dhhdlKqKsjrpB7v/iFHk9EKURfxUs
         gVATlsW8fBeHyKgvkScNznzTEuU7FAZyQRcpTpInXN4j7YoRcOvMmuaAt1+92G/fo3ui
         1BLNx55UcDgbgbDKfNuRHq5KvY2IwaGsCBtx+SUE627/Bdr4a6egTm5ImFtD7jz1wW7o
         GgTSzkiv5IoBxqAeniY+C2BuJE2tPRLrtS71+Anud5+Jtut0z/UXw9G0kQNZrSn3Sn1P
         eQMw==
X-Gm-Message-State: ABy/qLboLh/a+4RBsvmtdyDS/+JFnPr3knpivjMzB+fGvJiGNVMzVE2T
	mNj4ui33DYBAdbWuPQluNA6gsCWIrgZ4tCWVK9mluJCKxGUxT6SMoZuEnDaGm4dUHJMVz36IKTW
	Br34N/OZ80zCO8zoxs2CKHYK7KjEJjxI4
X-Received: by 2002:a05:600c:3644:b0:3fc:627:ea31 with SMTP id y4-20020a05600c364400b003fc0627ea31mr12056783wmq.38.1689160695903;
        Wed, 12 Jul 2023 04:18:15 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHe6rz0BytbzD5//h/wnxrk0jp/oOEOt3AbTKSXStRClYkvIUVNGHa0orOjttguAlZUCgSKTg==
X-Received: by 2002:a05:600c:3644:b0:3fc:627:ea31 with SMTP id y4-20020a05600c364400b003fc0627ea31mr12056740wmq.38.1689160695625;
        Wed, 12 Jul 2023 04:18:15 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id k6-20020a05600c0b4600b003fc00702f65sm14151776wmr.46.2023.07.12.04.18.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 04:18:15 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Zimmermann
 <tzimmermann@suse.de>
Cc: linux-samsung-soc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org, Xinwei Kong
 <kong.kongxinwei@hisilicon.com>, VMware Graphics Reviewers
 <linux-graphics-maintainer@vmware.com>, NXP Linux Team
 <linux-imx@nxp.com>, spice-devel@lists.freedesktop.org,
 linux-sunxi@lists.linux.dev, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Gurchetan Singh
 <gurchetansingh@chromium.org>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Andrew Jeffery
 <andrew@aj.id.au>, linux-mips@vger.kernel.org, Chia-I Wu
 <olvaffe@gmail.com>, linux-renesas-soc@vger.kernel.org,
 kernel@pengutronix.de, John Stultz <jstultz@google.com>,
 freedreno@lists.freedesktop.org, Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH RFC v1 00/52] drm/crtc: Rename struct drm_crtc::dev to
 drm_dev
In-Reply-To: <20230712105432.urgwb4zzwgsyfbwq@pengutronix.de>
References: <20230712094702.1770121-1-u.kleine-koenig@pengutronix.de>
 <abf26a82-4f17-51f2-5753-785f8516a81a@suse.de>
 <20230712105432.urgwb4zzwgsyfbwq@pengutronix.de>
Date: Wed, 12 Jul 2023 13:18:14 +0200
Message-ID: <87r0pdgyyx.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_041820_755203_4B574864 
X-CRM114-Status: GOOD (  17.43  )
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

VXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JpdGVz
OgoKW2Ryb3BwaW5nIHNvbWUgcmVjaXBpZW50cyBzaW5jZSBteSBTTVRQIHNlcnZlciB3YXMgY29t
cGxhaW5pbmcgYWJvdXQgdGhlIHNpemVdCgo+IEhlbGxvIFRob21hcywKPgo+IE9uIFdlZCwgSnVs
IDEyLCAyMDIzIGF0IDEyOjE5OjM3UE0gKzAyMDAsIFRob21hcyBaaW1tZXJtYW5uIHdyb3RlOgo+
PiBBbSAxMi4wNy4yMyB1bSAxMTo0NiBzY2hyaWViIFV3ZSBLbGVpbmUtS8O2bmlnOgo+PiA+IEhl
bGxvLAo+PiA+IAo+PiA+IHdoaWxlIEkgZGVidWdnZWQgYW4gaXNzdWUgaW4gdGhlIGlteC1sY2Rj
IGRyaXZlciBJIHdhcyBjb25zdGFudGx5Cj4+ID4gaXJyaXRhdGVkIGFib3V0IHN0cnVjdCBkcm1f
ZGV2aWNlIHBvaW50ZXIgdmFyaWFibGVzIGJlaW5nIG5hbWVkICJkZXYiCj4+ID4gYmVjYXVzZSB3
aXRoIHRoYXQgbmFtZSBJIHVzdWFsbHkgZXhwZWN0IGEgc3RydWN0IGRldmljZSBwb2ludGVyLgo+
PiA+IAo+PiA+IEkgdGhpbmsgdGhlcmUgaXMgYSBiaWcgYmVuZWZpdCB3aGVuIHRoZXNlIGFyZSBh
bGwgcmVuYW1lZCB0byAiZHJtX2RldiIuCj4+IAo+PiBJZiB5b3UgcmVuYW1lIGRybV9jcnRjLmRl
diwgeW91IHNob3VsZCBhbHNvIGFkZHJlc3MgKmFsbCogb3RoZXIgZGF0YQo+PiBzdHJ1Y3R1cmVz
Lgo+Cj4gWWVzLiBDaGFuZ2luZyBkcm1fY3J0Yzo6ZGV2IHdhcyBzb21lIGVmZm9ydCwgc28gSSB0
aG91Z2h0IHRvIHNlbmQgdGhhdAo+IG9uZSBvdXQgYmVmb3JlIGRvaW5nIHRoZSBzYW1lIHRvCj4K
PiAJZHJtX2RwX21zdF90b3BvbG9neV9tZ3IKPiAJZHJtX2F0b21pY19zdGF0ZQo+IAlkcm1fbWFz
dGVyCj4gCWRybV9icmlkZ2UKPiAJZHJtX2NsaWVudF9kZXYKPiAJZHJtX2Nvbm5lY3Rvcgo+IAlk
cm1fZGVidWdmc19lbnRyeQo+IAlkcm1fZW5jb2Rlcgo+IAlkcm1fZmJfaGVscGVyCj4gCWRybV9t
aW5vcgo+IAlkcm1fZnJhbWVidWZmZXIKPiAJZHJtX2dlbV9vYmplY3QKPiAJZHJtX3BsYW5lCj4g
CWRybV9wcm9wZXJ0eQo+IAlkcm1fcHJvcGVydHlfYmxvYgo+IAlkcm1fdmJsYW5rX2NydGMKPgo+
IHdoZW4gaW4gdGhlIGVuZCB0aGUgaW50ZW50aW9uIGlzbid0IHdlbGNvbWUuCj4KPj4gPiBJIGhh
dmUgbm8gc3Ryb25nIHByZWZlcmVuY2UgaGVyZSB0aG91Z2gsIHNvICJkcm1kZXYiIG9yICJkcm0i
IGFyZSBmaW5lCj4+ID4gZm9yIG1lLCB0b28uIExldCB0aGUgYmlrZXNoZWRpbmcgYmVnaW4hCj4+
IAo+PiBXZSd2ZSBkaXNjdXNzZWQgdGhpcyB0byBkZWF0aC4gSUlSQyAnZHJtJyB3b3VsZCBiZSB0
aGUgcHJlZmVyZWQgY2hvaWNlLgo+Cj4gImRybSIgYXQgbGVhc3QgaGFzIHRoZSBhZHZhbnRhZ2Ug
dG8gYmUgdGhlIDJuZCBtb3N0IGNvbW1vbiBuYW1lLiBXaXRoCj4gUGF1bCBLb2NpYWxrb3dza2kg
cHJlZmVyaW5nICJkcm1fZGV2IiB0aGVyZSBpcyBubyBjbGVhciBmYXZvdXJpdGUgeWV0LgoKSSB0
aGluayB0aGF0IGVpdGhlciAiZHJtIiBvciAiZHJtX2RldiIgd291bGQgYmUgbW9yZSBjbGVhciB0
aGFuICJkZXYiLAp3aGljaCBJIGFsc28gZm91bmQgaXQgY29uZnVzaW5nIGFuZCB0aGlua2luZyBh
Ym91dCBhICJzdHJ1Y3QgZGV2aWNlIi4KClByb2JhYmx5IGxlYW5pbmcgdG8gImRybSIsIHNpbmNl
IGFzIHlvdSBzYWlkIGlzIHRoZSBzZWNvbmQgbW9zdCB1c2VkIG5hbWUKaW4gZHJpdmVycyB0aGF0
IGFzc2lnbiBjcnRjLT5kZXYgdG8gYSBsb2NhbCB2YXJpYWJsZS4KCj4gTWF5YmUgYWxsIHRoZSBv
dGhlciBwZW9wbGUgd2l0aCBzdHJvbmcgb3BpbmlvbnMgYXJlIGRlYWQgaWYgdGhpcyB3YXMKPiAi
ZGlzY3Vzc2VkIHRvIGRlYXRoIiBiZWZvcmU/IDotKQo+Cj4gQmVzdCByZWdhcmRzCj4gVXdlCj4K
PiAtLSAKPiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCBVd2Ug
S2xlaW5lLUvDtm5pZyAgICAgICAgICAgIHwKPiBJbmR1c3RyaWFsIExpbnV4IFNvbHV0aW9ucyAg
ICAgICAgICAgICAgICAgfCBodHRwczovL3d3dy5wZW5ndXRyb25peC5kZS8gfAoKLS0gCkJlc3Qg
cmVnYXJkcywKCkphdmllciBNYXJ0aW5leiBDYW5pbGxhcwpDb3JlIFBsYXRmb3JtcwpSZWQgSGF0
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
