Return-Path: <SRS0=vwyG=DW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AEECC433E7
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2020 15:23:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 366C12225A
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2020 15:23:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Z5oTwEnF";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="T+bebg+Y"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 366C12225A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rRg6es386tUklS17LClHogLhWyZaGRDcd/Ol5ETxPOQ=; b=Z5oTwEnFYu9R4/TqvvH4c6FmS
	5l4n4viexb45bBrBfKSIle0HAmVP1a/vxLQeWFO5dnl9flKf3iEc/Rbtbz/nbGx6xk6TSoPduIA0u
	7T1U90mLuVlTvo2+ORCOwQ5kAgpbAw9F6DdwFjMttYx9mv9u92PfCk+uqbcAs8akzQbyNrXAX+slO
	yB9Ee79a5d/4XwAcgWyNhRShOTL4Zze8nN5Nz+dEBYBSvoOf4v9bYuDOtNgQG8DN77nE6WZrkPzRi
	ySutgEIvgTOPx7RhTWvOxsVVJexEOVBFwfzPM6uMbxV+3zyEkU4LZIQPEQCFKuA96PBm8bK71QPK/
	pgU5nT+PQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kT55z-00012U-2S; Thu, 15 Oct 2020 15:23:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kT55w-00011Y-Bj
 for linux-rockchip@lists.infradead.org; Thu, 15 Oct 2020 15:23:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id n15so4017458wrq.2
 for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2020 08:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=37I63cZBodA+13wzLqZfOcrBqfvt4ww4Wg+i0WcmZ1o=;
 b=T+bebg+YD46I6Hulxd9R88hBGXswgNHgXR0A/YJJrQtmpNN2az61LLTpHx08Ky8qfP
 rg0NBZBPJk2cKDM+H4K3WnVuFEZejqm1XPacEKoLgD1V8exuQRx/JBP47RiMfp0lrNKs
 qSjJ4WyTF02hebJ0G5b1UxVgqX83E1+oYSL74=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=37I63cZBodA+13wzLqZfOcrBqfvt4ww4Wg+i0WcmZ1o=;
 b=pa+nBclLLN9NIQq0BR22ocqYhWXHcTJyR8Hg/YKAZ8n4489iiFi+lUsy4aauk25TOm
 0G9R/05vr5/s6HiVgBGTfO7Kk3/zGW4rglceX6tb+GNY5CSh54UeUz5/4H1jvWXXpJlV
 Jsq/akYzlV2hS5e/dg3HNuP/MVfcckUlQnBjXGyd6mwc9uUZp55F2VMjf9vNYFZQ2+N1
 V5neZIWiYB7dAUbctCaODvawuvwz4G6x/+ABcaNA2yoVmBNDbC6h2h3psEPQOH5H8PH2
 ryNgF/DUjZoEu08WhqEDaS1UZ3Dx1ca5IUOLDA8/Qo58AzfX3s8L4dc3DTtlViGhaD9C
 PMYg==
X-Gm-Message-State: AOAM532Tr6xBN6IdNB4+kQbj0Og4OwNu8d4RCp/XkysGUaIrNWKB92Oc
 d1bALIslXyq3NLp0dG42U8bYmw==
X-Google-Smtp-Source: ABdhPJz60cxmP1IUgfdwoRtfsr/U5/cjrhpBEp04wKon+qeZgoUhNl224cILQcKvdUU3iiEaIgb54g==
X-Received: by 2002:a5d:5106:: with SMTP id s6mr4820538wrt.51.1602775384469;
 Thu, 15 Oct 2020 08:23:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x3sm5050001wmi.45.2020.10.15.08.23.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Oct 2020 08:23:03 -0700 (PDT)
Date: Thu, 15 Oct 2020 17:23:01 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2] drm/of: Consider the state in which the ep is disabled
Message-ID: <20201015152301.GE438822@phenom.ffwll.local>
Mail-Followup-To: Kever Yang <kever.yang@rock-chips.com>,
 Sandy Huang <hjc@rock-chips.com>, heiko@sntech.de,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, huangtao@rock-chips.com,
 andy.yan@rock-chips.com, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20200707112526.18438-1-hjc@rock-chips.com>
 <5c0cdb9d-8e35-fa0c-35b3-adfa7770fb30@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c0cdb9d-8e35-fa0c-35b3-adfa7770fb30@rock-chips.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201015_112308_440547_28A418A8 
X-CRM114-Status: GOOD (  19.27  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: huangtao@rock-chips.com, heiko@sntech.de, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 andy.yan@rock-chips.com, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBPY3QgMTQsIDIwMjAgYXQgMDk6NDg6NDNBTSArMDgwMCwgS2V2ZXIgWWFuZyB3cm90
ZToKPiBIaSBNYWludGFpbmVycywKPiAKPiDCoMKgwqAgRG9lcyB0aGlzIHBhdGNoIHJlYWR5IHRv
IG1lcmdlPwoKV291bGQgbWF5YmUgYmUgZ29vZCB0byBnZXQgc29tZSBhY2tzIGZyb20gb3RoZXIg
ZHJpdmVycyB1c2luZyB0aGlzLCB0aGVuClNhbmR5IGNhbiBwdXNoIHRvIGRybS1taXNjLW5leHQu
Ci1EYW5pZWwKPiAKPiBPbiAyMDIwLzcvNyDkuIvljYg3OjI1LCBTYW5keSBIdWFuZyB3cm90ZToK
PiA+IGRvbid0IG1hc2sgcG9zc2libGVfY3J0Y3MgaWYgcmVtb3RlLXBvaW50IGlzIGRpc2FibGVk
Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29t
Pgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fb2YuYyB8IDMgKysrCj4gPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fb2YuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fb2YuYwo+ID4gaW5kZXgg
ZmRiMDVmYmY3MmEwLi41NjVmMDVmNWYxMWIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX29mLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fb2YuYwo+ID4gQEAgLTY2
LDYgKzY2LDkgQEAgdWludDMyX3QgZHJtX29mX2ZpbmRfcG9zc2libGVfY3J0Y3Moc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwKPiA+ICAgCXVpbnQzMl90IHBvc3NpYmxlX2NydGNzID0gMDsKPiA+ICAg
CWZvcl9lYWNoX2VuZHBvaW50X29mX25vZGUocG9ydCwgZXApIHsKPiA+ICsJCWlmICghb2ZfZGV2
aWNlX2lzX2F2YWlsYWJsZShlcCkpCj4gPiArCQkJY29udGludWU7Cj4gPiArCj4gPiAgIAkJcmVt
b3RlX3BvcnQgPSBvZl9ncmFwaF9nZXRfcmVtb3RlX3BvcnQoZXApOwo+ID4gICAJCWlmICghcmVt
b3RlX3BvcnQpIHsKPiA+ICAgCQkJb2Zfbm9kZV9wdXQoZXApOwo+IAo+IExvb2tzIGdvb2QgdG8g
bWUuCj4gCj4gCj4gUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlw
cy5jb20+Ci0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3Jh
dGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
