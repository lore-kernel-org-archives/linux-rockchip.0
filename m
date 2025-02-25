Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCBA8C021A4
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 01:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hsEhuF62n7ykOx6X5caTnGckbByheyoGHOmAno9L/Js=; b=FzpmkkRzBA1WBO
	jDWehBHxnq/u3AOcGZZFGk/yO+z515LepjEg5LCd1RrnBP5wM/WVvsuEMcyWVsWV9LPX37DeNs1H5
	jUllUFF6H8GdES03uBCCKv1rFsc0sSyxLVm76gPA85caMbxS7Wlp5YjIPclrX6qse85/X1UxQ8v4U
	11BhxYNs2QG5OhmAwPnxZZ2wg2div9YWa0yQcK424geeS5pOvZHDoKbsNtlJgMwqUmlNdICdCtvpt
	4/csG1Ma7lHmwckS/kj+fYXzuc7WGOV0OptvmtuANySEJFfZFQibEgbAypYqkl8Q/8eANOthDc6h9
	VXqKX3VB0ZvCBzze2J8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmjwR-0000000Fiha-2awe;
	Tue, 25 Feb 2025 01:40:59 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmjwP-0000000FigM-2R73
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 01:40:58 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-30737db1aa9so49258091fa.1
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Feb 2025 17:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740447653; x=1741052453; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iiZFDEoMMUeQmVYehoWgRQ2XvY7Zgjn8HI/dvzzcXBQ=;
        b=ZwVJMwDlSyZlIslV1eubc+R+ho7E50rwwSLc7TlP7iGqyUWomQPHvXFDY9KR8RmErd
         jFbR/G8ftWYTOVC3dKpdUzkRT5GjRqrF0z/WS6r0wiAa0Lsu6AL23TUBBddT+OshTpEI
         9yWDM8NrcE6xzt1txV80jn2XTOIeWjLE6MP5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740447653; x=1741052453;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iiZFDEoMMUeQmVYehoWgRQ2XvY7Zgjn8HI/dvzzcXBQ=;
        b=ETB8Jfp/zvD7C0z5fybTEUXjQbZ/q5TCQf18HvpW0gllAM6fAjz6+BlGanVSHnyrZu
         21C4JiS41ITOcr1MBimxVe8jXRcp9g7N1xoMugk6FDe84t9jKRvu4vux1in0503W2Y9A
         +3Gq9VuaAuVfxh7qys8x4y8CKzuE1/QI0liX9U7/GsaiiAHD5AolAhhyvfRl0HovlkwM
         2AEOj8S76B7aMCS+6JNpSLaiuS5i6Yh7WSHeEi92fZE2qbdOjVVUlJF8Z3q1Z9ugmbJa
         y7J7fQOgHCfzyh3VdvPU+1ZNq6lkNFcqU4G67Dy4RvUpsgtJpRUsng7EZ8w+M47YZfoS
         ZGRg==
X-Forwarded-Encrypted: i=1; AJvYcCWxm6WSfTSNCIryJFnwNJT5LkJhJtyLYF+ZT+W7VjHNm+KmASQCCtfDa0x6QIakZ8BsO7Zo8o8GQpBBnZeV1w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1oZoSjhe8WiZfIyq93EppiFeQu3ModZtgKnK665zVG8b1HUw/
	LIXOPWL1/2k8RhfYIO0jMYBs0alnpugBFk0nRyXK1jb7KhsfV0N+Rpqr/RTajLBtvAY+v2PHAhM
	Rjkmr
X-Gm-Gg: ASbGnct76kHBL8+MHjdO8i18+nMwfpuPRiV2iofLAqbKxbllH0pKTRaki3rC6UaMURY
	65dLcGVo2aeGvqcaUnED3SsGkzUqssjGUlymcWPUpsxELvxjZryUp2dEAYj7WKzJUv8Fgqke5be
	xfQUNyv5pvHFZ3lqryQ8my+WVz91ngUX6ZWws01e6MD2U+bDoRjUtbnWK4Mg12iW2glY7jusxJV
	1gNJ2tUIYzQ5shF2tHbfYpvy2JIR4Kt2aYI7/JvVXBFXTS3pgmXabj54RRSYFl3s0fxyAlVoNJy
	0mPiL01yRYxtYPRvCZFLzLG3TQojhbXEO8DYzg5MJ6M2Dk4+iJOEiuL4R+BR+v4ucQ==
X-Google-Smtp-Source: AGHT+IEiMs4WPoAtKnimtrOCEAlIrEARycjqEtlGv9Sn/XDhA3M2d4mr2zm07Quml4Rh56BYu+skcg==
X-Received: by 2002:a2e:871a:0:b0:307:9054:2a20 with SMTP id 38308e7fff4ca-30a598f4745mr50011671fa.21.1740447653474;
        Mon, 24 Feb 2025 17:40:53 -0800 (PST)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com. [209.85.167.51])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a81ae80besm851721fa.93.2025.02.24.17.40.52
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 17:40:52 -0800 (PST)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-54838cd334cso4015281e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Feb 2025 17:40:52 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWJK1Qe8123QYxmm3t+A+9SMko7QAZJmCYFmHTx3Pr5Wwg14fzY1QJcuq+EXn8ElyTGQwD6ujGG+7RQ2QU4Pw==@lists.infradead.org
X-Received: by 2002:a05:6512:1591:b0:545:102f:8788 with SMTP id
 2adb3069b0e04-54838ee917cmr5921345e87.19.1740447651791; Mon, 24 Feb 2025
 17:40:51 -0800 (PST)
MIME-Version: 1.0
References: <20250224081325.96724-1-damon.ding@rock-chips.com> <20250224081325.96724-4-damon.ding@rock-chips.com>
In-Reply-To: <20250224081325.96724-4-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Feb 2025 17:40:39 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UJb=-TsXS3bgv-rgiON5-4icGgh81gYEJuA=ieDaBT+Q@mail.gmail.com>
X-Gm-Features: AWEUYZnEpuNKLIwyvEJM2DgjUifuLCeYu_2BU0vlX35x8eRwRX1_fUCYojEGI6Y
Message-ID: <CAD=FV=UJb=-TsXS3bgv-rgiON5-4icGgh81gYEJuA=ieDaBT+Q@mail.gmail.com>
Subject: Re: [PATCH v7 03/15] drm/bridge: analogix_dp: Add irq flag
 IRQF_NO_AUTOEN instead of calling disable_irq()
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_174057_611654_55740CDA 
X-CRM114-Status: GOOD (  11.38  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, dmitry.baryshkov@linaro.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBNb24sIEZlYiAyNCwgMjAyNSBhdCAxMjoxNOKAr0FNIERhbW9uIERpbmcgPGRhbW9u
LmRpbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gVGhlIElSUUZfTk9fQVVUT0VOIGNhbiBi
ZSB1c2VkIGZvciB0aGUgZHJpdmVycyB0aGF0IGRvbid0IHdhbnQKPiBpbnRlcnJ1cHRzIHRvIGJl
IGVuYWJsZWQgYXV0b21hdGljYWxseSB2aWEgZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycSgpLgo+
IFVzaW5nIHRoaXMgZmxhZyBjYW4gcHJvdmlkZSBiZSBtb3JlIHJvYnVzdCBjb21wYXJlZCB0byB0
aGUgd2F5IG9mCj4gY2FsbGluZyBkaXNhYmxlX2lycSgpIGFmdGVyIGRldm1fcmVxdWVzdF90aHJl
YWRlZF9pcnEoKSB3aXRob3V0IHRoZQo+IElSUUZfTk9fQVVUT0VOIGZsYWcuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYyB8IDUgKyst
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKClN1
Z2dlc3RlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgpSZXZp
ZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
