Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FE62CD8CB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 13:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kYN8EYDaMNWnA5Qo/jMPq5ELdL+Ze0EtAZj5+VGiwA=; b=Xq06uhWAc+0HR3
	FSLAb0Rl89J67oMN9IYwARvs7FXFKJTcT5rZqr+qb+x+spUL4L5lCE+KH2dRaGQjfzywadDNmGA2L
	N+J0zGHiGVXU+Zu2YX9gte+3XhwqzPa9FAsSxNvg3cawxkXkRYS+/IO97ZePmZfZrgFjBPCtXVtjO
	lGfhQ9q4mRkkObPIKq1wDEELWyH/ooG+HAtvZqXT7wDtCoYs/wz91BtSEZV7bKYvSQzjUeCThURQs
	gFNwUrWsQh2FJIAmoD0KMZsH0Q+i2EDtXk9aaQ/sqAjd3czejMLJUFpxQ64Zu0NZE2ljKXkNwuMuJ
	dL/eCYrZ13aF+3NbDQlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXJ5m-00000007nIx-2VYj;
	Wed, 10 Jun 2026 13:35:38 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXJ5i-00000007nHZ-2znI
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 13:35:37 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-bed2b9bfa02so919716766b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2026 06:35:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781098532; cv=none;
        d=google.com; s=arc-20240605;
        b=b0ZbgD44Fzb85q9T2mfbhz8TEZHghLxV9sPyzVi7w+v07SwYKoKAkJrVUJDJ90U5jx
         wX1pdocKhOVNbEO4Gy1afF2DS/kNREtDKctSj6oiMKqXTlwUQYr6HP0YwaC3AvI9bt+I
         CeMzGemO8O1cTLLeKm1BS6mBqymbD8Adlfr+4nIKoyMjjDFE9E+8HDDksP278HIjLOYm
         +xv3v5/AOs1+R/pFbUPeXW2V9144FrYGljaDc+eAq14U8ZfzZBJXONsOB9NoOXZqYWq0
         qdRVOaf5tC6nbFuWL/enat7Q3K8F3DlCh77XNxocspCe5SN/k6/6eXmCiGbg3R/JnaJZ
         6Fww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=WboogWqcoT+OL/ZD2SYskMF+y3oh6ksVJtvN7OeY8rI=;
        fh=L3N9umpDArP2BkW9ia9VxOsQNOYYvd1moGsFqW0FGxM=;
        b=Fnc3k3kxa8yxrisFgrVNZoIWOJ4rH8u/ja2bLoJMi7gHbi+COnog6yxYb4rltqUe62
         u21iiCC62KjK9L/n2zo6gt/Y1KKWoMkfQmgDlW4pGdI6OOR0OBvahrgXDTlwFnXHIsAd
         yEYaVfeQMEN+vmEgqfcxlV/B1GoveTE50P8miACC33IVTHSPWHfJUS6DV1qmkuZqA2K2
         bZQSk7m5VE9ZurMBpJLWpU/yP9xM9vCo1viqP53xrDsdVXyADoP4LGEdAuPlNjOxgxz2
         QW1VhZHpNJaNLYH7is3YOQny27S2nPvfsCBMew1q7oHaF+R1N7QjfMOpyheC5uyuap7Q
         66bA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781098532; x=1781703332; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WboogWqcoT+OL/ZD2SYskMF+y3oh6ksVJtvN7OeY8rI=;
        b=Hu1zpaaWTprKykg//N+jU0fpHLBi6TBgbeiL9ecG1HBfhGwB2Pm02v0Tra82Mtn5UX
         xt0JQrtJuVyK7pIPmrKVn3NclFnRvjSxIJK12xz5FFeS5ie7sknRY/eMzOh7hH4madQF
         62wsDztEd74MJSYUETAkDD5OgiBKKEHGluNM3xf8Rx/lJf1oxMBH+xer18Typ1ZwWo8B
         UEbSJxEGcAINXxvisdq59RPR6OupUfcIVWCznD55b6KBygAITAViFE9KJdokwG/n16o0
         URU4RXZdQY1Pkv1To0zXucvsrfotN1eJvDwpFAXGU60hsrBat7858iF5misC1OPaZHcL
         OR6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781098532; x=1781703332;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WboogWqcoT+OL/ZD2SYskMF+y3oh6ksVJtvN7OeY8rI=;
        b=Zo8DdfxVqcojC0wdCtp9WyuJTvkKSTs7LCR0UiA2aqd079/KaF2mTPMI1VHX5RHHWM
         euXd4lmUkyrU/OnulkEtDxWqr75O92k2Yn5m4Ea3CnFzVZSjkE7jle/MI+QQoYYjLD/x
         WghCYqxgwQkUSkuF6/IxjaB8mv5Q1w/39dMVxEi0DRmnw6GUPsIinyz9ivJHhpm2vNEj
         x2BEl7kBtNC7Itmf7nDh2MAT3DEczG7bARkVD2rsPna/hGT1ZUlZVT9sBYR1JWeeX8qZ
         aHmMhKzoH+Km5zdRXmEdDYLJi3lgSkCB7Sdos+oany4ROAmP+rC8TuLncMbxQ0vHed29
         aVgg==
X-Forwarded-Encrypted: i=1; AFNElJ90VI9VQbHQHuxVG+YykaOlEIsxTzLVQuzKjaRrOKiaTwPQwDqgVPBR2X5NFIQoljPXSnQFXzuDJ822iq+yqw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyXaxCeL9ErHM7F8PSaVp5obKgH8CDnQ4B+mK7OQEcSsoSWDAN7
	UxM5qVLUWpBR79eOG7tuYQ3PSny3ORjkrNm6MOvS9SKtL/mcbpR3q35OlL+o06sjFl8BkTueqsg
	pjnuTQndsTZbuFLDwlx4FC7/3H5W8H0g=
X-Gm-Gg: Acq92OG/If8UWzAB+m9JvoVX7DxAh9wZiPILeoEF9/sXtQ3RpDDmC8tW1yXSKKRp7vX
	qyxOV0STY0GD19ZuiUC2/zzhPWj/g01Z0KcLl5uI+svIAcNnE9NX+e/w5+YEvm8RYgU04LQQicw
	skZw2QGfKQTkpEJwiIVyAw8trgbIGvycEYPXlbWIvm934NMZiOGX588UbGz4FtCfAeNifTfLiIy
	OQq34pyadfRAyRTAKJrMhQzr92APsUI24gJfAo3Hio7yLIfvOj21CDlo0rc7rSngmq9L4h7mU1X
	HcnQP39BvynrR2Mxjg==
X-Received: by 2002:a17:907:948e:b0:bec:5ebd:e169 with SMTP id
 a640c23a62f3a-bf37263c586mr1377264466b.22.1781098531867; Wed, 10 Jun 2026
 06:35:31 -0700 (PDT)
MIME-Version: 1.0
References: <20260604135255.62682-1-midgy971@gmail.com> <3d99569e-9c3a-49d1-93fb-1335382523e9@rock-chips.com>
 <CA+GS1Y1s78PwN63X2YJoS8VEGp7CpTERo_K65yKs00U4VRAw4Q@mail.gmail.com>
 <e5058919-9485-4de5-8eea-331ebfc2987c@rock-chips.com> <CA+GS1Y3ysdWZ3qCq3ip_Pbw+v4LxHZd95aBo=jwB+orYaMBBNw@mail.gmail.com>
 <CA+GS1Y0kAM_XGLQuKPTphif2HcQg18ZXhd8RHHr2xPOEMCDvXA@mail.gmail.com>
 <bcedaff0-abf8-4585-a0ea-057062cd0411@rock-chips.com> <CA+GS1Y2-hRqpGgsknh+oOX+-uZ3DZtdekdP9viTP6a40zhhUhg@mail.gmail.com>
 <b05f7154-e85f-4207-80ae-f080282ba780@rock-chips.com> <DJ5A9XL183RZ.20J3ASQ3EWUZ6@cknow-tech.com>
In-Reply-To: <DJ5A9XL183RZ.20J3ASQ3EWUZ6@cknow-tech.com>
From: Midgy Balon <midgy971@gmail.com>
Date: Wed, 10 Jun 2026 15:38:24 +0200
X-Gm-Features: AVVi8Cf8gCpLbNssJy_FW_CB2ltoJNgKiOGOa6bXMaOGRFQOxsnQSP0W6Cmk0Xc
Message-ID: <CA+GS1Y1xAq-9eMyMmoVE6NG9KLG7XRxgPoSr5RkW=6fT5D820g@mail.gmail.com>
Subject: Re: [RFC PATCH v3 0/9] accel: rocket: Add RK3568 NPU support
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>, tomeu@tomeuvizoso.net, ogabbay@kernel.org, 
	heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	iommu@lists.linux.dev, linux-kernel@vger.kernel.org, 
	Simon Xue <xxm@rock-chips.com>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_063534_801698_37663380 
X-CRM114-Status: GOOD (  46.46  )
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

SGVsbG8gQ2hhb3lpICYgRGllZGVyaWssCgpJIGNvbXBhcmVkIHRoZSBSSzM1NjggYW5kIFJLMzU4
OCBOUFUgcG93ZXItZG9tYWluICsgRFRTIGFzIHlvdQpzdWdnZXN0ZWQsIGFuZCBpdCBsaW5lcyB1
cApleGFjdGx5IHdpdGggd2hhdCB5b3UgZGVzY3JpYmVkLgoKVGhlIGRpZmZlcmVuY2UgaXMgdGhl
IGBuZWVkX3JlZ3VsYXRvcmAgY2FwYWJpbGl0eS4gUkszNTg4J3MgTlBVIGRvbWFpbiBpcwpgRE9N
QUlOX1JLMzU4OCgibnB1Iiwg4oCmLCBmYWxzZSwgdHJ1ZSlgIOKAlCB0aGUgdHJhaWxpbmcgYHRy
dWVgIGlzCmByZWd1bGF0b3JgL2BuZWVkX3JlZ3VsYXRvcmAuClRoZSBtYWlubGluZSBSSzM1Njgg
bWFjcm8gYERPTUFJTl9SSzM1NjgobmFtZSwgcHdyLCByZXEsIHdha2V1cClgIGhhcwpubyByZWd1
bGF0b3IgcGFyYW1ldGVyIGF0CmFsbCwgc28gYFJLMzU2OF9QRF9OUFVgIGNhbid0IGJlIG1hcmtl
ZCBuZWVkX3JlZ3VsYXRvci4gTXkgdjQgYWRkcwp0aGF0OiBhIHJlZ3VsYXRvci1jYXBhYmxlClJL
MzU2OCBOUFUgZG9tYWluIChuZWVkX3JlZ3VsYXRvciA9IHRydWUpIHBsdXMgYGRvbWFpbi1zdXBw
bHkgPQo8JnZkZF9ucHU+YCBvbiB0aGUgTlBVIG5vZGUg4oCUCmkuZS4gdGhlIHNhbWUgc2hhcGUg
YXMgUkszNTg4LgoKQW5kIHRoZSBmaXggeW91IHJlZmVyZW5jZWQgKEZyYW5rIFpoYW5nJ3MgInBt
ZG9tYWluOiByb2NrY2hpcDogRml4IGluaXQgZ2VucGQgYXMKR0VOUERfU1RBVEVfT04gYmVmb3Jl
IHJlZ3VsYXRvciByZWFkeSIsIHBsdXMgInF1aWV0IHJlZ3VsYXRvciBlcnJvciBvbgotRVBST0JF
X0RFRkVSIikgaXMKYWxyZWFkeSBpbiBteSBiYXNlICh2Ny4xLXJjNiksIHNvIHRoZSBgaWYgKG5l
ZWRfcmVndWxhdG9yKQpyb2NrY2hpcF9wZF9wb3dlcihwZCwgZmFsc2UpYApkZWZhdWx0LW9mZiBw
YXRoIGlzIGluIGVmZmVjdC4gVGhhdCdzIHdoYXQgcmVzb2x2ZXMgdGhlIGFjdHVhbCBwcm9ibGVt
CmZvciBtZTogd2l0aCByb2NrZXQKYnVpbHQgYXMgYSBtb2R1bGUgKHRoZSBub3JtYWwgY29uZmln
KSwgbmVlZF9yZWd1bGF0b3Igb24gdGhlIE5QVQpkb21haW4sIGFuZCB0aG9zZSBwbWRvbWFpbgpw
YXRjaGVzIGluIHBsYWNlLCB0aGUgYm9hcmQgYm9vdHMgY2xlYW5seSBhbmQgTlBVIGpvYnMgcnVu
IHdpdGggbm8gUkNVCnN0YWxsIC8gbm8gZGVhZGxvY2suIE15CmVhcmxpZXIgaGFuZyB3YXMgYW4g
YXJ0aWZhY3Qgb2YgYSBzZWxmLWNvbnRhaW5lZCByb2NrZXQ9eSBpbWFnZQpwcm9iaW5nIGluIHRo
ZSBpbml0Y2FsbHMgYmVmb3JlCnRoZSBJMkMgcmVndWxhdG9yIGNvcmUgd2FzIHVwIOKAlCBhcyBh
IG1vZHVsZSBpdCBsb2FkcyB+Ni44IHMgaW4sIHdlbGwKYWZ0ZXIsIHNvIGl0J3MgZ29uZS4KCkkg
YWxzbyB3ZW50IGJhY2sgYW5kIGNoZWNrZWQgdGhlIGBmd19kZXZsaW5rPXBlcm1pc3NpdmVgIHF1
ZXN0aW9uCm15c2VsZiDigJQgYW5kIGdvb2QgbmV3cywgaXQKdHVybnMgb3V0IGl0IGlzIE5PVCBu
ZWVkZWQuIEkgcmVib290ZWQgdGhlIGV4YWN0IHNhbWUga2VybmVsIHdpdGgKcGVybWlzc2l2ZSBy
ZW1vdmVkIGZyb20gdGhlCmNtZGxpbmUgKHN0cmljdCBmd19kZXZsaW5rLCB0aGUgZGVmYXVsdCks
IGFuZCB0aGUgYm9hcmQgYm9vdHMgY2xlYW5seSwKdGhlIE5QVSBwcm9iZXMKKGByb2NrZXQgZmRl
NDAwMDAubnB1OiBSb2NrY2hpcCBOUFUgY29yZSAwIHZlcnNpb246IDBgKSwgYW5kIE5QVSBqb2Jz
CnN1Ym1pdCBhbmQgcnVuIGZpdmUgdGltZXMKaW4gYSByb3cgd2l0aCBubyBkZWFkbG9jayBhbmQg
bm8gUkNVIHN0YWxsLiBTbyBzdHJpY3QgZndfZGV2bGluawpyZXNvbHZlcyB0aGUgTlBVL1BNSUMg
b3JkZXJpbmcKZmluZSB2aWEgZGVmZXJyZWQgcHJvYmUuCgpUaGUgb25lIHJlbWFpbmluZyB0aGlu
ZyBpcyBjb3NtZXRpYzogYXQgcG93ZXItZG9tYWluLWNvbnRyb2xsZXIgcHJvYmUKKH4yLjk0IHMp
IEkgc3RpbGwgZ2V0LAppbiBCT1RIIG1vZGVzICh3aXRoIG9yIHdpdGhvdXQgcGVybWlzc2l2ZSk6
CgogIHJvY2tjaGlwLXBtLWRvbWFpbiDigKY6IEZhaWxlZCB0byBjcmVhdGUgZGV2aWNlIGxpbmsg
KDB4MTgwKSB3aXRoCnN1cHBsaWVyIDAtMDAyMCDigKZwb3dlci1kb21haW5ANgoKaS5lLiBnZW5w
ZCBjYW4ndCBmb3JtIHRoZSBsaW5rIHRvIHRoZSByazgwOSAodGhlIEkyQyBQTUlDIHN1cHBseWlu
Zwp2ZGRfbnB1KSBiZWNhdXNlIHRoZSBQTUlDCmlzbid0IHJlZ2lzdGVyZWQgeWV0IGF0IHRoYXQg
cG9pbnQuIEl0J3Mgbm9uLWZhdGFsIOKAlCB0aGUgZG9tYWluCmRlZmF1bHRzIG9mZiAoRnJhbmsn
cyBwYXRjaCksCnRoZSByYWlsIGNvbWVzIHVwIHZpYSB0aGUgcmVndWxhdG9yIGNvcmUsIHRoZSBO
UFUgcHJvYmVzIGEgZmV3IHNlY29uZHMKbGF0ZXIsIGFuZCBhbGwgam9icyBydW4uCgpPbmUgcXVl
c3Rpb246IG9uIFJLMzU4OCB3aXRoIG5lZWRfcmVndWxhdG9yLCBkbyB5b3UgYWxzbyBzZWUgdGhh
dAoiRmFpbGVkIHRvIGNyZWF0ZSBkZXZpY2UKbGluayDigKYgc3VwcGxpZXIgPHBtaWM+IiBsaW5l
IGF0IHBtZG9tYWluIHByb2JlLCBvciBkb2VzIGl0IG9yZGVyCmNsZWFubHk/IElmIFJLMzU4OCBp
cyBjbGVhbiwKaXMgdGhlcmUgYSBEVFMgZGV0YWlsIChlLmcuIHRoZSByZWd1bGF0b3IncyBidXMv
cHJvYmUgb3JkZXIpIEkgc2hvdWxkCm1pcnJvciBvbiBSSzM1NjggdG8gbWFrZQp0aGUgbGluayBm
b3JtIGluIHRpbWUg4oCUIG9yIGlzIHRoaXMgbGluZSBqdXN0IGV4cGVjdGVkL2hhcm1sZXNzIGFu
ZApiZXN0IGxlZnQgYXMtaXM/CgpARGllZGVyaWsg4oCUIHRoYW5rczsgdGhlIERDRENfUkVHMiBj
aGFuZ2UgYW5kIEpvbmFzJ3MgVVNCLXN1c3BlbmQKc2VyaWVzIGxvb2sgbGlrZSBnZW5lcmFsbHkK
dXNlZnVsIFJLMzU2eCByb2J1c3RuZXNzIGZpeGVzLCB0aG91Z2ggZm9yIHRoaXMgc3BlY2lmaWMg
TlBVCmRldmljZS1saW5rIHRoZSBuZWVkX3JlZ3VsYXRvciArCkZyYW5rJ3MgcG1kb21haW4gcGF0
Y2hlcyBzZWVtIHRvIGJlIHRoZSByZWxldmFudCBwaWVjZS4gSSdsbCBrZWVwIHRoZW0KaW4gbWlu
ZCBmb3Igc3VzcGVuZC4KClRoZSBjb252b2x1dGlvbi1vdXRwdXQgLyBjb21wdXRlLWNvbXBsZXRp
b24gaXNzdWUgaXMgc3RpbGwgc2VwYXJhdGUKYW5kIG9wZW4gKEBGaW5sZXkg4oCUIHRoYXQncwp0
aGUgUFZUUExML05vQyBvbmUpOyB0aGUgcG93ZXItZG9tYWluIHNpZGUgaXMgaW4gZ29vZCBzaGFw
ZSBmb3IgdjQuCgpUaGFua3MgeSdhbGwgZm9yIHlvdXIgaGVscCA6KQoKS2luZCByZWdhcmRzLApN
aWRneQoKTGUgbWVyLiAxMCBqdWluIDIwMjYgw6AgMTI6MDUsIERpZWRlcmlrIGRlIEhhYXMKPGRp
ZWRlcmlrQGNrbm93LXRlY2guY29tPiBhIMOpY3JpdCA6Cj4KPiBIaSwKPgo+IE9uIFdlZCBKdW4g
MTAsIDIwMjYgYXQgMzoxNCBBTSBDRVNULCBDaGFveWkgQ2hlbiB3cm90ZToKPiA+IEhpIE1pZGd5
LAo+ID4KPiA+IE9uIDYvOS8yMDI2IDc6MTEgUE0sIE1pZGd5IEJhbG9uIHdyb3RlOgo+ID4+IEhl
bGxvIENoYW95aSwKPiA+Pgo+ID4+IFlvdSB3ZXJlIHJpZ2h0IC0gYnVpbGRpbmcgcm9ja2V0IGFz
IGEgbW9kdWxlIGZpeGVzIGl0LiBUaGFua3MgZm9yIHRoZSBwb2ludGVyLgo+ID4+Cj4gPj4gSSBy
ZWJ1aWx0IHdpdGggQ09ORklHX0RSTV9BQ0NFTF9ST0NLRVQ9bSAoZXZlcnl0aGluZyBlbHNlIHRo
ZSBzYW1lOgo+ID4+IG5lZWRfcmVndWxhdG9yIG9uCj4gPj4gdGhlIFJLMzU2OCBOUFUgcG93ZXIg
ZG9tYWluIHZpYSBhIERPTUFJTl9NX1IgdmFyaWFudCwgZG9tYWluLXN1cHBseSA9Cj4gPj4gPCZ2
ZGRfbnB1PiwgYW5kIHRoZQo+ID4+IHJlZ3VsYXRvci1hbHdheXMtb24gd29ya2Fyb3VuZCBkcm9w
cGVkKS4gVGhlIGJvYXJkIG5vdyBib290cyBjbGVhbmx5Cj4gPj4gYW5kLCBtb3JlIGltcG9ydGFu
dGx5LAo+ID4+IGFuIE5QVSBqb2Igc3VibWl0IG5vIGxvbmdlciBoYW5nczogSSByYW4gdGhlIHRl
c3Qgd29ya2xvYWQgZml2ZSB0aW1lcwo+ID4+IHdpdGggbm8gUkNVIHN0YWxsIGFuZAo+ID4+IG5v
IGZyZWV6ZS4KPiA+Pgo+ID4+IFNvIHdpdGggcm9ja2V0PW0gdGhlIG5lZWRfcmVndWxhdG9yIGFw
cHJvYWNoIHdvcmtzIG9uIFJLMzU2OCwgYW5kIEknbGwKPiA+PiBrZWVwIGl0IGZvciB2NAo+ID4+
IChkb21haW4tc3VwcGx5ICsgbmVlZF9yZWd1bGF0b3IsIGluc3RlYWQgb2YgbWFya2luZyB2ZGRf
bnB1Cj4gPj4gYWx3YXlzLW9uKS4gcm9ja2V0PW0gaXMgdGhlCj4gPj4gbm9ybWFsIGNvbmZpZ3Vy
YXRpb24gYW55d2F5OyBteSBlYXJsaWVyIGhhbmcgY2FtZSBmcm9tIGJ1aWxkaW5nIGl0ID15Cj4g
Pj4gaW4gYSBzZWxmLWNvbnRhaW5lZAo+ID4+IGltYWdlLCBzbyBpdCBwcm9iZWQgaW4gdGhlIGlu
aXRjYWxscyAoYXJvdW5kIDIgcykgYW5kIHRoZSBnZW5wZCAtPgo+ID4+IEkyQy1QTUlDIHJlZ3Vs
YXRvcgo+ID4+IHRyYW5zaXRpb24gcmFuIGJlZm9yZSB0aGUgc3lzdGVtIHdhcyByZWFkeS4gQXMg
YSBtb2R1bGUgaXQgbG9hZHMgZnJvbQo+ID4+IHVkZXYgbXVjaCBsYXRlcgo+ID4+ICh+Ni44IHMg
aGVyZSksIGFmdGVyIHRoZSBJMkMgY29udHJvbGxlciBhbmQgcmVndWxhdG9yIGNvcmUgYXJlIGZ1
bGx5IHVwLgo+ID4+Cj4gPj4gT24geW91ciBxdWVzdGlvbiBvZiB3aGVuIHRoZSBkZXZpY2UtbGlu
ayBlcnJvciBpcyBwcmludGVkIC0gaXQgaXMgYXQKPiA+PiBwb3dlci1kb21haW4KPiA+PiBjb250
cm9sbGVyIHByb2JlLCBub3QgYXQgdGhlIHJvY2tldCBwcm9iZToKPiA+Pgo+ID4+ICAgWyAgICAy
LjcwMDYxOF0gdmRkX25wdTogQnJpbmdpbmcgNTAwMDAwdVYgaW50byA4MjUwMDAtODI1MDAwdVYK
PiA+PiAgIFsgICAgMi43NDk2MzddIHJvY2tjaGlwLXBtLWRvbWFpbiBmZGQ5MDAwMC5wb3dlci1t
YW5hZ2VtZW50OnBvd2VyLWNvbnRyb2xsZXI6Cj4gPj4gICAgICAgICAgICAgICAgICBGYWlsZWQg
dG8gY3JlYXRlIGRldmljZSBsaW5rICgweDE4MCkgd2l0aCBzdXBwbGllciAwLTAwMjAgZm9yCj4g
Pj4gICAgICAgICAgICAgICAgICAvcG93ZXItbWFuYWdlbWVudEBmZGQ5MDAwMC9wb3dlci1jb250
cm9sbGVyL3Bvd2VyLWRvbWFpbkA2Cj4gPj4gICBbICAgIDIuOTQ1OTU1XSBwbGF0Zm9ybSBmZGU0
MDAwMC5ucHU6IEFkZGluZyB0byBpb21tdSBncm91cCAzCj4gPj4gICAuLi4KPiA+PiAgIFsgICAg
Ni44NDAzNzRdIHJvY2tldDogbG9hZGluZyBvdXQtb2YtdHJlZSBtb2R1bGUgdGFpbnRzIGtlcm5l
bC4KPiA+PiAgIFsgICAgNi44Nzc2NDddIFtkcm1dIEluaXRpYWxpemVkIHJvY2tldCAwLjAuMCBm
b3IgcmtubiBvbiBtaW5vciAwCj4gPj4gICBbICAgIDYuODc5OTUwXSByb2NrZXQgZmRlNDAwMDAu
bnB1OiBSb2NrY2hpcCBOUFUgY29yZSAwIHZlcnNpb246IDAKPiA+Pgo+ID4+IFNvIHRoZSBkZXZp
Y2UtbGluayB0byB0aGUgcms4MDkgUE1JQyAoMC0wMDIwKSBmYWlscyB0byBmb3JtIGF0IH4yLjc1
Cj4gPj4gcywgd2VsbCBiZWZvcmUgcm9ja2V0Cj4gPj4gbG9hZHMgYXQgfjYuOCBzLiBJdCBpcyBu
b24tZmF0YWwgaGVyZSAtIHRoZSB2ZGRfbnB1IHJhaWwgaXMgYnJvdWdodCB1cAo+ID4+IGJ5IHRo
ZSByZWd1bGF0b3IgY29yZQo+ID4+IGFuZCBhbGwgam9icyBydW4gLSBhbmQgdGhlcmUgaXMgbm8g
ImZhaWxlZCB0byBnZXQgYWNrIG9uIGRvbWFpbiBucHUiCj4gPj4gTm9DIHdhcm5pbmcgdGhpcyBi
b290Cj4gPj4gKHRoZSBhbHdheXMtb24ga2VybmVsIGhhZCBvbmUpLiBUaGUgY29tcGxldGUgYm9v
dCBsb2cgaXMgYXR0YWNoZWQuCj4gPj4KPiA+PiBUd28gbm90ZXMgLyBvbmUgcXVlc3Rpb246Cj4g
Pj4gLSBUaGlzIGJvb3QgdXNlZCBmd19kZXZsaW5rPXBlcm1pc3NpdmUgb24gdGhlIGNvbW1hbmQg
bGluZS4gSXMgdGhlCj4gPj4gIkZhaWxlZCB0byBjcmVhdGUgZGV2aWNlCj4gPj4gICBsaW5rIC4u
LiBzdXBwbGllciAwLTAwMjAiIGF0IHBtZG9tYWluIHByb2JlIGV4cGVjdGVkL2Jlbmlnbiwgb3Ig
aXMKPiA+PiB0aGVyZSBhIGNsZWFuIHdheSB0byBtYWtlCj4gPj4gICBpdCBvcmRlciBjb3JyZWN0
bHkgKHNvIGl0IGFsc28gd29ya3Mgd2l0aG91dCBwZXJtaXNzaXZlLCBhbmQgYSA9eQo+ID4+IGJ1
aWxkIHdvdWxkbid0IGRlYWRsb2NrIGluCj4gPj4gICB0aGUgaW5pdGNhbGxzKT8KPiA+Cj4gPiBX
ZSBlbmNvdW50ZXJlZCB0aGUgc2FtZSBpc3N1ZSBvbiB0aGUgUkszNTg4IE5QVSBiZWZvcmUuIEFu
ZCBpdCB3YXMKPiA+IHJlc29sdmVkIHdpdGggdGhlIGZvbGxvd2luZyBwYXRjaCBhdCB0aGF0IHRp
bWUuCj4gPgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUxMjE2MDU1MjQ3LjEz
MTUwLTEtcm14cHpsYkBnbWFpbC5jb20vCj4gPgo+ID4gUGxlYXNlIGNvbXBhcmUgdGhlIGRpZmZl
cmVuY2VzIGluIE5QVSBwbWRvbWFpbiBhbmQgRFRTIGNvbmZpZ3VyYXRpb24KPiA+IGJldHdlZW4g
dGhlIFJLMzU2OCBhbmQgUkszNTg4Lgo+Cj4gQWJvdXQgYSBtb250aCBhZ28gb24gI2xpbnV4LXJv
Y2tjaGlwIHdlIHdlcmUgZGlzY3Vzc2luZyBQTSAnc3R1ZmYnOgo+IGh0dHBzOi8vbGliZXJhLmNh
dGlyY2xvZ3Mub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjYtMDUtMTUjMzk5MzkxMzc7Cj4gd2hpY2gg
cmVmZXJlbmNlcyB0aGlzIHBhc3RlCj4gaHR0cHM6Ly9wYXN0ZS5zci5odC9+ZGllZGVyaWsvODlk
OWY4NGUyMjQ3NGU4MzdiNTUyODZkMjEzYjY3ZjAzODU5Y2UyZQo+IEkndmUgc2luY2UgcmVtb3Zl
ZCB0aGUgRENEQ19SRUcyIGZvciBQaW5lVGFiMiBhbmQgdGhlICdmaXgnIHNob3VsZCBsaWtlbHkK
PiBiZSBleHRlbmRlZCB0byBjb3ZlciBhbGwgUkszNTY2L1JLMzU2OCBkZXZpY2VzIHRob3VnaC4K
Pgo+IEl0J3Mgd2hhdCBJIG1hZGUgYXQgdGhlIHRpbWUgaG9waW5nIHRvIGZpeCBhIHN1c3BlbmQv
cmVzdW1lIGlzc3VlIHdoZW4KPiB0cnlpbmcgdXBzdHJlYW0gVEYtQS4gSXQgZGlkbid0IGZpeCB0
aGUgaXNzdWUgYXQgdGhlIHRpbWUsIGJ1dCBtYXkgc3RpbGwKPiBiZSB1c2VmdWwvbmVlZGVkIGFu
ZCBJIHRoaW5rIGl0J3Mgd2hhdCBDaGFveWkgaGludGVkIGF0Lgo+Cj4gSnVzdCB5ZXN0ZXJkYXks
IEpvbmFzIHBvc3RlZCB0aGlzIHBhdGNoIHdoaWNoIG1heSBiZSB1c2VmdWwvbmVlZGVkIHRvbzoK
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI2MDYwOTE1NDEyNC40
NDUxODItMS1qb25hc0Brd2lib28uc2UvCj4KPiBIVEgsCj4gICBEaWVkZXJpawo+Cj4gPj4gLSAo
VGhlIGNvbnZvbHV0aW9uIG91dHB1dCBpcyBzdGlsbCB1bmlmb3JtIHplcm8tcG9pbnQgLyB0aGUg
am9iIHRpbWVzCj4gPj4gb3V0IC0gdGhhdCBpcyB0aGUKPiA+PiAgIHNlcGFyYXRlIE5QVSBjb21w
dXRlLWNvbXBsZXRpb24gaXNzdWUsIHVucmVsYXRlZCB0byB0aGUgcG93ZXItZG9tYWluCj4gPj4g
d29yay4gRmlubGV5LCB0aGF0IGlzCj4gPj4gICB0aGUgb25lIEkgZmxhZ2dlZCBlYXJsaWVyIHJl
IFBWVFBMTC9Ob0MuKQo+ID4+Cj4gPj4gS2luZCByZWdhcmRzLAo+ID4+IE1pZGd5Cj4gPj4KPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
