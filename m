Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1820D1CDAA
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 23:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGPWSquz3ld92MHWp0rcCf7NYDWW7RZh3u3wMpre2VQ=; b=onhaJmeAJESeT0
	py2zE1spTssvVJJvzA9y7LOV0TagUOalUVwLVVdAM7o9ARCHfW3Z6xLZoKZhIUiAXUOq7P/x7pwFv
	DjNqHhjC39rXo62kQ3q9Vr4yay39XV7htIWBNcV2iYdzpE2CKrJMhQ9dIgiSQMmKfxwIw0BqpoUOo
	qZkG5XYqVw4SIgIkOURxYbjNhO63eVS3Z9MKOJHcouPp/B0KTJafjfv8wP9QEKAhjpoWqXXxU7pts
	6yNGMWzhk2LrsSVW9N1c1KozUe2Cn9mcus5oAywdJOkvO0xxVGKDBP41MdQcTd1lWwJD/o4Zc9XjJ
	9X36uma76IojRRkOyxPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQw2v-00000007FL8-0ugu;
	Wed, 03 Dec 2025 23:14:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQw2s-00000007FKj-0Lk8
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 23:14:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DF80E443FD
	for <linux-rockchip@lists.infradead.org>; Wed,  3 Dec 2025 23:14:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4EA1C19422
	for <linux-rockchip@lists.infradead.org>; Wed,  3 Dec 2025 23:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764803640;
	bh=ihgCDDT8v/z6Y4GbpIULJIyFLtkjRgYSHsJMkze5H7Y=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=m0gwMoTJTYcgUJMRzgXQ1/QMlOZTPogG0lANMdW97OT0NMuTAc8A+nwSLo+R9YCrd
	 gO1W/x5rrA/plqwmMQZoM/7pfn8gMN87Vx4+qBwzt8KD8U70cGDpIkOekXc6+u8/2G
	 0KhJdXhq4/rzApUbBldkSZ3NKFUIVyMoVDWdTjvwTsLIzLmBSbn0TpeMyURg0Io8gd
	 8FBszOVK56IQLZad9GuJPEaDuRvI8N+m6PUjLxM7zR93xTfasBiyf+9KYZCDyv9eEo
	 Pp4+P1nlVfV6DEebY83NlHuHq+LD0ylrQyXKDhUUqqPsdaJnti/AQylG5hYyHCOeBQ
	 M7g1IUsiMYgtQ==
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-7866bca6765so3011977b3.1
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Dec 2025 15:14:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWk79ZOFn3J5W3jXdXgu6iNDej25G3OgwWsygGh249h1a4pt/FzfaFRQr70Ez/6qYX2DfObv7M9G+J6qlnyfQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5Dsp79qhVTlgekoZXvJBQFh6VNKsKCat3iuwvMAKt9oH8zbbb
	AV4nqSf21OFRQh/9Y1njXpeUy1kH9f4+aCpLaVCYIR0F01+OSv96CHjntsjGMfcL4HrDryUQMOa
	Uwlsic7Tn7jhLEtJ9S+wHY2bWBEK1mYc=
X-Google-Smtp-Source: AGHT+IEB0RdV7mSFNzpNyLkv75P8Jd/BKS1HODcyk36WY9PHzOfb4L2RJP6I7Nnw9eq8aCpv+z+w6vM8/mTWmqJZTz8=
X-Received: by 2002:a05:690c:7303:b0:786:98d8:c1c7 with SMTP id
 00721157ae682-78c0bf2de2fmr30919417b3.18.1764803639941; Wed, 03 Dec 2025
 15:13:59 -0800 (PST)
MIME-Version: 1.0
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
 <20251202-mcde-drm-regression-thirdfix-v6-2-f1bffd4ec0fa@kernel.org> <c3c5f62f-98fd-49a7-9b39-c4c4f798ad2c@rock-chips.com>
In-Reply-To: <c3c5f62f-98fd-49a7-9b39-c4c4f798ad2c@rock-chips.com>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 4 Dec 2025 00:13:48 +0100
X-Gmail-Original-Message-ID: <CAD++jLmzkmZAgwbahKDnasj3dDpG4RBggoZfhPiEHj9rb09+eQ@mail.gmail.com>
X-Gm-Features: AWmQ_bnWhHUCVDnj7lqS5z50n507rDrSeB_Ghnr7X8Z3Pa5o_zJ_bBK53CBG7IY
Message-ID: <CAD++jLmzkmZAgwbahKDnasj3dDpG4RBggoZfhPiEHj9rb09+eQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/4] drm/mcde: Create custom commit tail
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Vicente Bergas <vicencb@gmail.com>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Aradhya Bhatia <a-bhatia1@ti.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_151402_183174_16C1BAD4 
X-CRM114-Status: GOOD (  13.50  )
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

T24gV2VkLCBEZWMgMywgMjAyNSBhdCA3OjI34oCvQU0gQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVu
QHJvY2stY2hpcHMuY29tPiB3cm90ZToKCj4gVGhlIGJyaWRnZSBkb2N1bWVudCBzYXlzOiAiVGhl
IGRpc3BsYXkgcGlwZSAoaS5lLiBjbG9ja3MgYW5kIHRpbWluZwo+IHNpZ25hbHMpIGZlZWRpbmcg
dGhpcyBicmlkZ2Ugd2lsbCBub3QgeWV0IGJlIHJ1bm5pbmcgd2hlbiB0aGUKPiBAYXRvbWljX3By
ZV9lbmFibGUgaXMgY2FsbGVkLiIKPgo+IFRoZXJlZm9yZSwgeW91ciBhcHByb2FjaCBzZWVtcyB0
byBiZSBtZXJlbHkgYSB3b3JrYXJvdW5kIGFuZCBkb2VzIG5vdAo+IG1lZXQgdGhlIGN1cnJlbnQg
cmVxdWlyZW1lbnRzIG9mIHRoZSBicmlkZ2UuCj4KPiBBbmQgZG9jdW1lbnQgYWxzbyBzYXlzOiAi
VGhlIGJyaWRnZSBjYW4gYXNzdW1lIHRoYXQgdGhlIGRpc3BsYXkgcGlwZQo+IChpLmUuIGNsb2Nr
cyBhbmQgdGltaW5nIHNpZ25hbHMpIGZlZWRpbmcgaXQgaXMgcnVubmluZyB3aGVuCj4gQGF0b21p
Y19lbmFibGUgY2FsbGJhY2sgaXMgY2FsbGVkLiIKPgo+IElmIERTSSBjb21tYW5kcyBuZWVkIHRv
IHdhaXQgZm9yIHRoZSBkaXNwbGF5IHBpcGUgKENSVEMpIHRvIGJlIHJlYWR5LAo+IHdoeSBub3Qg
cGVyZm9ybSB0aGVtIGluc2lkZSBAYXRvbWljX2VuYWJsZSBpbnN0ZWFkIG9mIEBhdG9taWNfcHJl
X2VuYWJsZT8KClRoYXQgd2FzIGV4YWN0bHkgd2hhdCB0aGUgdjEgYW5kIHYyIHZlcnNpb25zIG9m
IHRoaXMgcGF0Y2ggc2V0IHdhcwpkb2luZywgYW5kIGl0IHdhcyAocG9saXRlbHkpIE5BQ0tlZCwg
YW5kIHRoYXQgaXMgd2h5IHdlIGFyZQpoZXJlLgpodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmkt
ZGV2ZWwvMjAyNTEwMjMtZml4LW1jZGUtZHJtLXJlZ3Jlc3Npb24tdjEtMC1lZDlhOTI1ZGI4YzdA
bGluYXJvLm9yZy8KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzIwMjUxMDI2LWZp
eC1tY2RlLWRybS1yZWdyZXNzaW9uLXYyLTAtOGQ3OTllNDg4Y2Y5QGxpbmFyby5vcmcvCgpJbiBl
c3NlbmNlLCBUb21pIHJlbWFya2VkIHRoYXQgZHJpdmVycyBzaG91bGQgYmUgYWJsZSB0byBzZW5k
IERTSQpjb21tYW5kcyBhdCBhdG9taWNfcHJlX2VuYWJsZSgpIHdoaWNoIGlzIGZvciBleGFtcGxl
Cm1hcHBlZCB0byB0aGUgLnByZXBhcmUoKSBjYWxsYmFjayBpbiB0aGUgRFNJIHBhbmVsIGJyaWRn
ZS4KQW5kIGhlIGhhcyBhIGdvb2QgcG9pbnQgaW4gdGhpcywgSSBqdXN0IGNvbnZlcnRlZCB0aGUg
ZmV3IHBhbmVsCmRyaXZlcnMgdGhhdCBJIHdhcyBhZmZlY3RlZCBieSwgYnV0IHRoZXJlIGFyZSBt
YW55IG1vcmUgc3VjaAphbmQgcHJvYmFibHkgc29tZSBicmlkZ2VzIGFzIHdlbGwuCgpZb3VycywK
TGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
