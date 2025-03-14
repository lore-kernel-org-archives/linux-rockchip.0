Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DC4FC282DE
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 02:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whwg+iL1rs8hFhpkZm9sG/ug9s+rigoe1cNOIynLK3c=; b=Ge6RqHkTqwTkyc
	AqE/zD5zKSN3JxUM64FnydDGIwUn2pbudmT0ynj2AGPGIgpoYrC0IMLXHd5fdu3s0QbiV5/9i5r/1
	8NUlB6CwqtxKXI8saWw3IJTblYKvKlPX+BjAJExTPPJmhUeMQ/EUUSGL5OXLN62ZPRe4cbWs6QRGD
	Bnh4wYOcu4xo2fqxM3NdAXcnhPLoyxJQ40MpL4brIywECHLguqUcKJU/g+HSaWWfLbK1bGWqEEfpH
	qhxIkyrf/mirn39/62JySnDODEKmKYgFE2MNuwSIg8ahKA2YJ5BzDNe0Xb/ebPnTelRE6Fr6pkaTW
	UU3NguPR0unPpilYBaoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsumP-0000000Cwjr-1l1V;
	Fri, 14 Mar 2025 02:28:09 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsumM-0000000Cwj5-0nOS
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 02:28:07 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-549946c5346so1714681e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Mar 2025 19:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741919282; x=1742524082; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3EDLto5Fj+QyO1rc5OeVTSwga/F1rC5M7RFzWcpsACU=;
        b=i9uPYlC0EX9Yg3mfSwOMVpX0G4yLOmHXOHi0qSE0bhOQuUMgn2ik3h/E2MhFmK9S/Q
         utV5w4v5E0YFdhWkFxdCmcqnA/YCI/+Je4DGKHqs4KJ4SsCzZUIig90l5l6SiiB4z8dS
         WHUxeHs64gEoujtJVd7q+OyJRANDpw5O/jhKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741919282; x=1742524082;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3EDLto5Fj+QyO1rc5OeVTSwga/F1rC5M7RFzWcpsACU=;
        b=kliww9P6C+lGyxaRl3+Czae4wZhlwI2XZQeFAEKQ9IyR6BDVQaKvy58ZcVLg5RRplj
         uRpBqbRqW8HyTPMxm6t8zZo4WNBuUEhYqSycXEwhtit4na/A03mwUK6OMe3PdKxwtgBZ
         lpqbqFc4600HBkvSb4wtnxtKqe3tNTuavrn5XKRztDf2z1DCZK6wFybTnnCZcybpifMh
         BzxJgIPiCh2TYWm8+NcQ1URX+mgxMy+sKEataJ8J9TNecKU1EboVGRWJ6psacEujakuz
         vnA0j+xW3qZzKyLLIda6y7FetDYzRCtrpN23qeW99Q0RDNwzSPALaIuNFY2auKzGmvFY
         ec4A==
X-Forwarded-Encrypted: i=1; AJvYcCXhq0KhPdc4L65fQFSACSF4GODgnsQfTHjqN5mQZn50EfoDvldRelf/L2bJ4WLcD/pWLnRUQ5NzXyS3mJrmZA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwNgYNhXyzQpXUKrMdyjpixaISjbg5M+M90bzi3u/3TgIu4o5zg
	jAx6YJ2FKnVFRYwhVOLGAzLMWFiXOya15i+qf3xXseWuOX/v7hvhuulzUb/yuNDW5naM/NpILo8
	ONQ==
X-Gm-Gg: ASbGnctedPaLsE44od1Erla1NMrfferGOVXv1AebhjtFpf/FZUXKgWkpmtb5a/vsPQe
	dSHx9f+2T9gg5TdXn7DXoWLg2T6q3Fk5GBWm4fE2bl5AR6juw6c61LUSAuKH2hs1YpqZDxTrpLn
	PVWtTKFnnwHY0vWAVVoCiXISgI1yFzaG+ZY9xT/za4pSYL5phv3n02snt4WY8a6ijP5FbF4/unJ
	dlFX3e/XHPF4gYKs5Lejo3Z5hzQicyjLoJxOBEWbZ2BWD2bHegxn8j/VjMeljBjruhnVonsRjYT
	ymaawA/GRWZAy8xxObqPL2DJ4UVaIUX1IciVhxll6uIDFFni9+n5VPXhYgz0SpC1kaZ/Y5Xj9ad
	h/ubwEePP
X-Google-Smtp-Source: AGHT+IHgajISXfZOWYDODtyzx+ntM60u59dP1YO1K7nFFWA+DXd3vfFAnOBHMw56j1r4KyY35ae/8w==
X-Received: by 2002:a05:6512:ba8:b0:545:109b:a9c7 with SMTP id 2adb3069b0e04-549c3924ec3mr208184e87.35.1741919282134;
        Thu, 13 Mar 2025 19:28:02 -0700 (PDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com. [209.85.167.47])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f1ec0e8sm3992961fa.107.2025.03.13.19.28.00
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 19:28:00 -0700 (PDT)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54954fa61c8so1540084e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Mar 2025 19:28:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW+VhikVhO28A+oLvkznMelfIQ3S+ggro8h8qFsTswEY3Hj7R1jZf9b6DvtcHggNjpSuXyIyHf6vnyQF4ZRYA==@lists.infradead.org
X-Received: by 2002:a05:6512:3b90:b0:549:c1e6:cbb9 with SMTP id
 2adb3069b0e04-549c38d07bemr214129e87.9.1741919280219; Thu, 13 Mar 2025
 19:28:00 -0700 (PDT)
MIME-Version: 1.0
References: <20250310104114.2608063-1-damon.ding@rock-chips.com> <20250310104114.2608063-7-damon.ding@rock-chips.com>
In-Reply-To: <20250310104114.2608063-7-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 13 Mar 2025 19:27:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V0Q5v6hcEFJqMfhCSQ80ki5SQRmrXvyeGCOQiFsXc28A@mail.gmail.com>
X-Gm-Features: AQ5f1Jpkp3eXwx7hKjmZ3N01Nrt914JFcQlKc2Ek2r-3Xhw1Wi6nZVzuUBUzhgE
Message-ID: <CAD=FV=V0Q5v6hcEFJqMfhCSQ80ki5SQRmrXvyeGCOQiFsXc28A@mail.gmail.com>
Subject: Re: [PATCH v8 06/13] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_192806_251221_3F8E1BA2 
X-CRM114-Status: GOOD (  16.32  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, dmitry.baryshkov@linaro.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, boris.brezillon@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBNb24sIE1hciAxMCwgMjAyNSBhdCAzOjQy4oCvQU0gRGFtb24gRGluZyA8ZGFtb24u
ZGluZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBUaGUgbWFpbiBtb2RpZmljYXRpb24gaXMg
bW92aW5nIHRoZSBEUCBBVVggaW5pdGlhbGl6YXRpb24gZnJvbSBmdW5jdGlvbgo+IGFuYWxvZ2l4
X2RwX2JpbmQoKSB0byBhbmFsb2dpeF9kcF9wcm9iZSgpLiBJbiBvcmRlciB0byBnZXQgdGhlIEVE
SUQgb2YKPiBlRFAgcGFuZWwgZHVyaW5nIHByb2JpbmcsIGl0IGlzIGFsc28gbmVlZGVkIHRvIGFk
dmFuY2UgUE0gb3BlcmF0aW9ucyB0bwo+IGVuc3VyZSB0aGF0IGVEUCBjb250cm9sbGVyIGFuZCBw
aHkgYXJlIHByZXBhcmVkIGZvciBBVVggdHJhbnNtaXNzaW9uLgo+Cj4gU2lnbmVkLW9mZi1ieTog
RGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNoaXBzLmNvbT4KPgo+IC0tLQo+Cj4gQ2hhbmdl
cyBpbiB2NDoKPiAtIFVzZSBkb25lX3Byb2JpbmcoKSB0byBjYWxsIGRybV9vZl9maW5kX3BhbmVs
X29yX2JyaWRnZSgpIGFuZAo+ICAgY29tcG9uZW50X2FkZCgpIHdoZW4gZ2V0dGluZyBwYW5lbCBm
cm9tIHRoZSBEUCBBVVggYnVzCj4KPiBDaGFuZ2VzIGluIHY1Ogo+IC0gQWR2YW5jZSBQTSBvcGVy
YXRpb25zIHRvIG1ha2UgZURQIEFVWCB3b3JrIHdlbGwKPgo+IENoYW5nZXMgaW4gdjY6Cj4gLSBV
c2UgZGV2bV9wbV9ydW50aW1lX2VuYWJsZSgpIGluc3RlYWQgb2YgZGV2bV9hZGRfYWN0aW9uX29y
X3Jlc2V0KCkKPiAtIEFkZCBhIG5ldyBmdW5jdGlvbiBhbmFsb2dpeF9kcF9yZW1vdmUoKSB0byBl
bnN1cmUgc3ltbWV0cnkgZm9yIFBNCj4gICBvcGVyYXRpb25zCj4KPiBDaGFuZ2VzIGluIHY3Ogo+
IC0gRml4IHRoZSBtaXNzcGVsbGluZyBvZiB3b3JkICdvcGVyYXRpb25zJyBpbiBjb21taXQgbWVz
c2FnZQo+IC0gUmVtb3ZlIHRoZSBjaGVjayByZWxhdGVkIHRvIENPTkZJR19QTQo+IC0gUmVtb3Zl
IHRoZSB1bm5lY2Vzc2FyeSBjYWxsIHRvIHBtX3J1bnRpbWVfZG9udF91c2VfYXV0b3N1c3BlbmQo
KSBpZgo+ICAgZGV2bV9wbV9ydW50aW1lX2VuYWJsZSgpIGZhaWxzCj4gLSBSZW1vdmUgdW5uZWNl
c3NhcnkgZnVuY3Rpb24gYW5hbG9naXhfZHBfcmVtb3ZlKCkKPiAtIEFkZCBuZXcgZnVuY3Rpb24g
YW5hbG9naXhfZHBhdXhfd2FpdF9ocGRfYXNzZXJ0ZWQoKQo+Cj4gQ2hhbmdlcyBpbiB2ODoKPiAt
IE1vdmUgdGhlIGFkZGl0aW9uIG9mIHRoZSBhbmFsb2dpeF9kcGF1eF93YWl0X2hwZF9hc3NlcnRl
ZCgpIHRvIHRoZQo+ICAgb3RoZXIgcGF0Y2gKPiAtLS0KPiAgLi4uL2RybS9icmlkZ2UvYW5hbG9n
aXgvYW5hbG9naXhfZHBfY29yZS5jICAgIHwgMjAgKysrKysrKysrKy0tLS0tLS0tLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKClJldmlld2VkLWJ5
OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJvbWl1bS5vcmc+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
