Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 441CCC5B572
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2026 12:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LyXnXDQDa035x6cmN1F6YITyXy9dEFyCf2gvX0sUjSo=; b=4BOkjMszhNyIMM
	J/yI83K8s4K+UiVm1J2Z9B+WRws40UfBriIfhtMTmFwcix5sMN90C0ggvKHJwiD7thKc8JVybPXAS
	Ag1mE+e+2Jaf3cZ8/fQEKytG/2VW/D7aOeNv3U1ROwV63hRsmWtoNYgw76yc6awHrBHbhnAlQWNKz
	5WThjQxmBpPEQbAQT31g6LPCMI+Sk4BMAUm4xlouO0kOsLo5O4UuBKjgT6cnmtlxU563J3Szsfiz8
	8y/G+0psrgQJUIlogLmnimS2YzSyEjgSDMb0qqvTYr0qmY9u7dcMhrh5Slg0qg+vut8UclMJbz1Jh
	l4/6Rt7ErCAyCGIPx5Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvwoP-000000069hb-0uRC;
	Mon, 17 Aug 2026 12:51:33 +0000
Received: from mail-yx1-xb12c.google.com ([2607:f8b0:4864:20::b12c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvwoH-000000069eg-22Uo
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Aug 2026 12:51:27 +0000
Received: by mail-yx1-xb12c.google.com with SMTP id 956f58d0204a3-66898920476so470918d50.3
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Aug 2026 05:51:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786971084; cv=none;
        d=google.com; s=arc-20260327;
        b=XiabNaKqK6+2B8DTsqcgijryKfWzDrk/b4nOl8bQYyuVL12Ty/eQ/8EUcdo12c5b8Q
         TL1oS7ZKmUl8KASqp4WohcVJrl8rYE2WGWnUfmLXEU7uelw0HSSZDtb37GO7BTgPzWMK
         pQvUxcYxn6du0F9kSqn53WTyDzl9LH/d5Y27VUfJn9F9n08Pzwc+AIetf8CgRDpqqKd+
         PN/2DSoaMXTT9eTUGp85fHgXqyPqx3WSB0ogDVYPpdaDiEjTomCGHEgI7DqrffxrsXcT
         MdtCtD8ykpRMy+eSMIyuYpVN1O0/QfAIQ6s3Uqj84mCT7ehBu057Cs2KgvlCeftrlIkG
         8aUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IsoFeL55aXnoSLzM6IlQSU+HvX9Cmm12pl1T+E59Rcg=;
        fh=EY1ETyrZXwN3qr7/KeJqDbxh0g/WOcLL7nyrw3OcSmI=;
        b=bhv+GiBI164CHxzb1Ki6iqbLMo5d0HY22xvHM1M2XF9P+eE0DHCTQfzMx+vmhrXLPb
         j2vsAY8t7CNscyEsM9mTOm4seDBgRKoQ02HlwEXWhnLrvRFcBcm4zusPMxH+dguF70aO
         yD/QcGB7GWYmz3QHD6KqrcBWdUYMEMQmYAV1FGjkpN2w8BjEdQ+ZTg+ef64jn0Lpoo5Q
         N8+KitlRMA5GoEectb5xskUWoFSKUb7N7+4viCY/xfo2UwyvPGEoUAycor5nDkcJVsn9
         7LFTUn6ZNTrpTM2IJtJWV9n+RmhOewd/QQbBvA/lszAlUgTWMr/k5KbGQPAr6IAuvdtP
         AgWQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786971084; x=1787575884; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=IsoFeL55aXnoSLzM6IlQSU+HvX9Cmm12pl1T+E59Rcg=;
        b=rTLw1JVluE6NKfQPz7emMceMgatcXLqsIAtk5rBrOsqcyOvXeuU9+ZCZfHo13+/mkb
         pxX1aamlLTN0PFmSRwzUiyIWEV8F4DAOgp3soYYECRERLsIDbXB/DpT0cF6oK3GsHS6/
         D7wNQ8TqB761NkJqlr5EYA6nH4TFfUVHI+SLktadwd/6kyKsq1FGl+yeL3K+YgSuAz0A
         aUrfrw27gPff9vvxgZ1mVsE540GnKhNBvRvkXFryhJdb0rhzV8xOZcIbcNiBHClokD54
         TEi6hK6mBbqQCQuGp8H7lnCBtxouKeNvrk85/lbGQOq585fsYI6LnrNhvPPi+FUCqpIo
         vyTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786971084; x=1787575884;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IsoFeL55aXnoSLzM6IlQSU+HvX9Cmm12pl1T+E59Rcg=;
        b=CPPu35k43CVSpxWF+ZbeHc3lsCHDagF6t+cFFrMfnKKu99xBYJBjwzhvqBs3MliyX/
         1O0alox70EaSBv1VR21deIHyiRRFvJxC4T6HXYF74IUH+okYPpkEug/aLYWAA2zWLQHw
         Z4e4KV0zrPVnH85b7mIfckTdpjBGUyHYm9C6iLWY+fPPzG3U8jlEnfCCnnBvXojm8zdn
         FR9oDYRmzzFDvwrEpDTIjzIPleu5FFL1y5aNKVhlBjFsaln5wW16HI1R/oXpH4znAWhX
         F0ntoPF62SGpGbqwD9Hv23isNI9PUOEj2MKrypSJ+Cj5/ARKOABPyZjaAdiCR/VaKgAy
         5kvw==
X-Forwarded-Encrypted: i=1; AHgh+RqX1moYwwmHtlAb0JiWwDiOiHNtL0FylWB0DXHa7ndwhQo6UxcsT+y81NJNaA49Z1N152fzVEF1XqYoB4pOuQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyAsYxtDQNH1Q8apS13wsXFtj7PP8qHdftmrcTyQkCHVquWV+/i
	2jeQ120ZJvqLrlOEh14uQrEDGO7IVYWMReR15QzhV/yWmZFZdKiGNEcf/pm7HG7zMpXV0S6mjUI
	dcCivt9cNE80Vq8M8BQJQQFazvfaiV4Y=
X-Gm-Gg: AR+sD13PIyTkWY1MaGylivQCgqocfLWZ7ld9PCWPi9+GYK3dy+Xwex62FZRjKcsMvpq
	yRQD1pDTorgW9ulOE0bkIvR/h9CW1r7HM9NqVq2UGDuxaxIy/w13PF0jqhkJqbXjACx2G/OAesj
	FveawcBbA0DvF62VdhRc5Lv6NG5B4Uc0sgLF2h+eRE9zdnaOl8b8gNuumSTw6e92tI2BARMXKvT
	JiZL7k6M7aY1DF7JXYhtZj37fUl9PUaAIwd3Dbc2WatrI1wUzou00Os9vgjA2299nMN2qPsn6j0
	gI9pn8iPeBDoqDVXev2pUKkIeGdpJ6Q2Y86XHKuHLV71jKAiWuwTFOuw5kArG3C6CohBRj0bivG
	BPJo=
X-Received: by 2002:a05:690c:b0f:b0:80d:5c71:d08c with SMTP id
 00721157ae682-8371308c88amr90606897b3.3.1786971083604; Mon, 17 Aug 2026
 05:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <20260817113603.1436067-1-gahing@gahingwoo.com> <20260817113603.1436067-4-gahing@gahingwoo.com>
In-Reply-To: <20260817113603.1436067-4-gahing@gahingwoo.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Mon, 17 Aug 2026 14:51:12 +0200
X-Gm-Features: AcwNN1W5X2wGC2Q1I1TaTBqzvN2kUY3psEQZvOBiX0NX6cHaLHwnhi2fG-mcjGs
Message-ID: <CAEWPSH4VAR5VTJUW4PdJczrtueQzPzzo6og8PzWaupwd-t=BFQ@mail.gmail.com>
Subject: Re: [PATCH v8 03/12] accel/rocket: factor the completion tail out of
 the IRQ handler
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, 
	robin.murphy@arm.com, ulfh@kernel.org, p.zabel@pengutronix.de, 
	ogabbay@kernel.org, zhangqing@rock-chips.com, chaoyi.chen@rock-chips.com, 
	diederik@cknow-tech.com, alchark@flipper.net, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, iommu@lists.linux.dev, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_055125_564987_2E78E13E 
X-CRM114-Status: GOOD (  29.84  )
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

SGkgSmlheGluZywKCllvdSBhc2tlZCBmb3IgYSBsb29rIGF0IHRoaXMgb25lLCBzbyBJIGNoZWNr
ZWQgaXQgYXMgYSBubyBmdW5jdGlvbmFsCmNoYW5nZSByZWZhY3RvciByYXRoZXIgdGhhbiBvbmx5
IHJlYWRpbmcgaXQuIEl0IGhvbGRzLgoKSSByZWNvbnN0cnVjdGVkIHRoZSB0aHJlZSBzb3VyY2Ug
c3RhdGVzIGZyb20gdGhlIHBvc3RlZCBkaWZmcyBhbmQgYnVpbHQKdGhlIGJlZm9yZSBhbmQgYWZ0
ZXIgd2l0aCB0aGUgZHJpdmVyJ3Mgb3duIGtlcm5lbCBmbGFncyBmb3IgYXJtNjQuCnJvY2tldF9q
b2JfaGFuZGxlX2lycSgpIGlzIHN0YXRpYyBhbmQgaW5saW5lcyBpbnRvCnJvY2tldF9qb2JfaXJx
X2hhbmRsZXJfdGhyZWFkKCk7IGF0IC1PMiBib3RoIHN0YXRlcyBlbWl0IHRoZSBzYW1lIGNhbGxz
CmFuZCB0aGUgc2FtZSBzdGFjayBmcmFtZSwgYW5kIGRpZmZlciBvbmx5IGluIHdoaWNoIHNpZGUg
b2YgdGhlIGJyYW5jaAp0aGUgcm9ja2V0X2pvYl9od19zdWJtaXQoKSBjYWxsIGlzIGxhaWQgb3V0
IG9uLgoKVGhlIGxvYWQgYmVhcmluZyBzZW50ZW5jZSBpbiB5b3VyIG1lc3NhZ2UgaXMgdGhlIGVh
cmx5IHJldHVybiwgYW5kIHRoYXQKY2hlY2tzIG91dCB0b28uIEF0IC1PMSB0aGUgcHJlLTMvMTIg
Y29kZSBlbWl0cyBtdXRleF91bmxvY2sgdHdpY2UsIG9uY2UKb24gdGhlIHBhdGggc3RyYWlnaHQg
YWZ0ZXIgcm9ja2V0X2pvYl9od19zdWJtaXQoKSBhbmQgb25jZSBhdCB0aGUgZ3VhcmQKZXhpdC4g
VGhhdCBpcyB0aGUgc2NvcGVkX2d1YXJkIGNsZWFudXAgZmlyaW5nIG9uIHRoZSBlYXJseSByZXR1
cm4uIEFmdGVyCjMvMTIgdGhlcmUgaXMgb25lLCBiZWNhdXNlIHRoZSByZXR1cm4gbGVhdmVzIHRo
ZSBoZWxwZXIgYW5kIGFsbCB0aHJlZQpwYXRocyBjb252ZXJnZSBvbiB0aGUgZ3VhcmQgZXhpdC4g
Qm90aCB2ZXJzaW9ucyB1bmxvY2sgZXhhY3RseSBvbmNlIG9uCmV2ZXJ5IHBhdGguCgoiTm90aGlu
ZyBmb2xsb3dzIGl0IiBhbHNvIGhvbGRzIHRocm91Z2ggdGhlIHJlc3Qgb2YgdGhlIHNlcmllcywg
bm90IG9ubHkKaGVyZS4gMTAvMTIgaXMgdGhlIG9ubHkgbGF0ZXIgcGF0Y2ggdGhhdCB0b3VjaGVz
IHJvY2tldF9qb2IuYywgYW5kIGl0cwp0d28gaHVua3MgYXJlIHRoZSBkZWZpbmVzIGF0IHRoZSB0
b3AgYW5kIHRoZSBQQ19UQVNLX0NPTiB3cml0ZSBpbnNpZGUKcm9ja2V0X2pvYl9od19zdWJtaXQo
KS4gTm90aGluZyBpcyBhZGRlZCBhZnRlciB0aGUgc2NvcGVkX2d1YXJkIGluIHRoZQpoYW5kbGVy
IGFueXdoZXJlIGluIHY4LgoKV2hpbGUgcmVjb25zdHJ1Y3RpbmcgdGhlIGJhc2UgSSBjaGVja2Vk
IHdoZXJlIHRoZSBzZXJpZXMgc2l0cy4KZHJpdmVycy9hY2NlbC9yb2NrZXQvcm9ja2V0X2pvYi5j
IGluIG5leHQtMjAyNjA4MTQgaGFzaGVzIHRvIDMxNDFmMjEwZiwKd2hpY2ggaXMgZXhhY3RseSAx
LzEyJ3MgcHJlLWltYWdlLCBhbmQgYXBwbHlpbmcgMSwgMiBhbmQgMyBpbiBvcmRlcgpyZXByb2R1
Y2VzIDVmMGY5NjgyZSwgZDQ4NGEzYTZmIGFuZCAwYmIxMWM3MTggYnl0ZSBmb3IgYnl0ZS4gU28g
dGhlc2UKdGhyZWUgYXBwbHkgdG8gYW4gdW5tb2RpZmllZCBsaW51eC1uZXh0IHJvY2tldF9qb2Iu
YyBhbmQgbmVlZCBuZWl0aGVyCnRoZSBSSzM1NzYgcGF0Y2hlcyBub3IgbXkgY2xvY2tzLWJ5LW5h
bWUgcGF0Y2guIFRvbWV1LCB0aGF0IGlzIG1lYW50IGFzCmluZm9ybWF0aW9uIGluIGNhc2UgeW91
IHdhbnQgdG8gcGljayB0aGVtIHVwIGluZGVwZW5kZW50bHksIG5vdCBhcyBhCnJlcXVlc3QgZm9y
IGEgcmUtY3V0LgoKUmV2aWV3ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWls
LmNvbT4KClJlZ2FyZHMsCklnb3IKCgpPbiBNb24sIEF1ZyAxNywgMjAyNiBhdCAxOjM24oCvUE0g
SmlheGluZyBIdSA8Z2FoaW5nQGdhaGluZ3dvby5jb20+IHdyb3RlOgo+Cj4gcm9ja2V0X2pvYl9o
YW5kbGVfaXJxKCkgc3RvcHMgdGhlIGJsb2NrIGFuZCB0aGVuIGVpdGhlciBzdGFydHMgdGhlIGpv
YidzCj4gbmV4dCB0YXNrIG9yIHJldGlyZXMgdGhlIGpvYi4gVGhlIHNlY29uZCBoYWxmIGlzIGEg
c3RlcCBvZiBpdHMgb3duIGFuZAo+IHJlYWRzIGJldHRlciB3aXRoIGEgbmFtZSwgbm93IHRoYXQg
dGFraW5nIHRoZSByZWdpc3RlciB3cml0ZXMgdW5kZXIKPiBqb2JfbG9jayBoYXMgbW92ZWQgaXQg
YSBsZXZlbCBkZWVwZXIgaW5zaWRlIHRoZSBzY29wZWQgZ3VhcmQuCj4KPiBNb3ZlIGl0IHRvIHJv
Y2tldF9qb2JfbmV4dF9sb2NrZWQoKS4gVGhlIGVhcmx5IHJldHVybiB0aGF0IHVzZWQgdG8gbGVh
dmUKPiB0aGUgaGFuZGxlciBub3cgbGVhdmVzIHRoZSBoZWxwZXIsIHdoaWNoIGlzIHRoZSBzYW1l
IHRoaW5nIGhlcmU6IHRoZQo+IHNjb3BlZCBndWFyZCBkcm9wcyBqb2JfbG9jayBlaXRoZXIgd2F5
IGFuZCBub3RoaW5nIGZvbGxvd3MgaXQuCj4KPiBEb2luZyBpdCBhcyBpdHMgb3duIHBhdGNoIGtl
ZXBzIHRoZSBsb2NraW5nIGZpeCBhdCB0aGUgaGVhZCBvZiB0aGUKPiBzZXJpZXMgbWluaW1hbCwg
c28gYSBiaXNlY3QgdGhhdCBzdG9wcyBiZWZvcmUgdGhpcyBvbmUgZ2V0cyB0aGF0IGZpeCBhbmQK
PiBub3RoaW5nIGVsc2UuIFRoZXJlIGlzIG9uZSBjYWxsZXIsIGFuZCBubyBmdW5jdGlvbmFsIGNo
YW5nZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEppYXhpbmcgSHUgPGdhaGluZ0BnYWhpbmd3b28uY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfam9iLmMgfCAzMSArKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25z
KCspLCAxMSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL3JvY2tl
dC9yb2NrZXRfam9iLmMgYi9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfam9iLmMKPiBpbmRl
eCBkNDg0YTNhNmYuLjBiYjExYzcxOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2FjY2VsL3JvY2tl
dC9yb2NrZXRfam9iLmMKPiArKysgYi9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfam9iLmMK
PiBAQCAtMzQxLDYgKzM0MSwyNSBAQCBzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSAqcm9ja2V0X2pv
Yl9ydW4oc3RydWN0IGRybV9zY2hlZF9qb2IgKnNjaGVkX2pvYikKPiAgICAgICAgIHJldHVybiBF
UlJfUFRSKHJldCk7Cj4gIH0KPgo+ICsvKiBTdGFydCB0aGUgam9iJ3MgbmV4dCB0YXNrLCBvciBy
ZXRpcmUgaXQuIENhbGxlciBob2xkcyBqb2JfbG9jay4gKi8KPiArc3RhdGljIHZvaWQgcm9ja2V0
X2pvYl9uZXh0X2xvY2tlZChzdHJ1Y3Qgcm9ja2V0X2NvcmUgKmNvcmUpCj4gK3sKPiArICAgICAg
IGxvY2tkZXBfYXNzZXJ0X2hlbGQoJmNvcmUtPmpvYl9sb2NrKTsKPiArCj4gKyAgICAgICBpZiAo
IWNvcmUtPmluX2ZsaWdodF9qb2IpCj4gKyAgICAgICAgICAgICAgIHJldHVybjsKPiArCj4gKyAg
ICAgICBpZiAoY29yZS0+aW5fZmxpZ2h0X2pvYi0+bmV4dF90YXNrX2lkeCA8IGNvcmUtPmluX2Zs
aWdodF9qb2ItPnRhc2tfY291bnQpIHsKPiArICAgICAgICAgICAgICAgcm9ja2V0X2pvYl9od19z
dWJtaXQoY29yZSwgY29yZS0+aW5fZmxpZ2h0X2pvYik7Cj4gKyAgICAgICAgICAgICAgIHJldHVy
bjsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICBpb21tdV9kZXRhY2hfZ3JvdXAoTlVMTCwgaW9t
bXVfZ3JvdXBfZ2V0KGNvcmUtPmRldikpOwo+ICsgICAgICAgZG1hX2ZlbmNlX3NpZ25hbChjb3Jl
LT5pbl9mbGlnaHRfam9iLT5kb25lX2ZlbmNlKTsKPiArICAgICAgIHBtX3J1bnRpbWVfcHV0X2F1
dG9zdXNwZW5kKGNvcmUtPmRldik7Cj4gKyAgICAgICBjb3JlLT5pbl9mbGlnaHRfam9iID0gTlVM
TDsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQgcm9ja2V0X2pvYl9oYW5kbGVfaXJxKHN0cnVjdCBy
b2NrZXRfY29yZSAqY29yZSkKPiAgewo+ICAgICAgICAgcG1fcnVudGltZV9tYXJrX2xhc3RfYnVz
eShjb3JlLT5kZXYpOwo+IEBAIC0zNTQsMTcgKzM3Myw3IEBAIHN0YXRpYyB2b2lkIHJvY2tldF9q
b2JfaGFuZGxlX2lycShzdHJ1Y3Qgcm9ja2V0X2NvcmUgKmNvcmUpCj4gICAgICAgICAgICAgICAg
IHJvY2tldF9wY193cml0ZWwoY29yZSwgT1BFUkFUSU9OX0VOQUJMRSwgMHgwKTsKPiAgICAgICAg
ICAgICAgICAgcm9ja2V0X3BjX3dyaXRlbChjb3JlLCBJTlRFUlJVUFRfQ0xFQVIsIDB4MWZmZmYp
Owo+Cj4gLSAgICAgICAgICAgICAgIGlmIChjb3JlLT5pbl9mbGlnaHRfam9iKSB7Cj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgaWYgKGNvcmUtPmluX2ZsaWdodF9qb2ItPm5leHRfdGFza19pZHgg
PCBjb3JlLT5pbl9mbGlnaHRfam9iLT50YXNrX2NvdW50KSB7Cj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByb2NrZXRfam9iX2h3X3N1Ym1pdChjb3JlLCBjb3JlLT5pbl9mbGlnaHRf
am9iKTsKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybjsKPiAtICAgICAg
ICAgICAgICAgICAgICAgICB9Cj4gLQo+IC0gICAgICAgICAgICAgICAgICAgICAgIGlvbW11X2Rl
dGFjaF9ncm91cChOVUxMLCBpb21tdV9ncm91cF9nZXQoY29yZS0+ZGV2KSk7Cj4gLSAgICAgICAg
ICAgICAgICAgICAgICAgZG1hX2ZlbmNlX3NpZ25hbChjb3JlLT5pbl9mbGlnaHRfam9iLT5kb25l
X2ZlbmNlKTsKPiAtICAgICAgICAgICAgICAgICAgICAgICBwbV9ydW50aW1lX3B1dF9hdXRvc3Vz
cGVuZChjb3JlLT5kZXYpOwo+IC0gICAgICAgICAgICAgICAgICAgICAgIGNvcmUtPmluX2ZsaWdo
dF9qb2IgPSBOVUxMOwo+IC0gICAgICAgICAgICAgICB9Cj4gKyAgICAgICAgICAgICAgIHJvY2tl
dF9qb2JfbmV4dF9sb2NrZWQoY29yZSk7Cj4gICAgICAgICB9Cj4gIH0KPgo+IC0tCj4gMi40My4w
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
