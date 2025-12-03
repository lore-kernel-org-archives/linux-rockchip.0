Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CA28D12691
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 09:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEoHZdXnEaZ0UCgpbhr2TXb7hkVxWfsPD+4JAtl0oP0=; b=uhYEMoSMZHtoEi
	uWqkXS9ejG+cIMpxw27rT7YI8cRXNXrq/KdJq6qIW2d7Hun+TKwr2SanF4E+P6GZ6cix0ljjCqDfQ
	wJYmu+QKILUTJvIs7LQ3bHg5g+HfFI5FhCmEpaLrJSof0Vt2RiGuIfRrxkFYbhDUxNrRUSyZmaigG
	eSvlAZ4LvLYtnUUsd48/ejixCz/I92LfFdAt2rtd/hbJhE3FTEzR0A0hbmjldLLBJVYukliudN29l
	YUJ/7qf2EA8pr2tJGTRsT5XVRNlNsXxKTgAdGVmtv7j9Kz1uurnWXOiBJRnCAJERs0vVH3Ntkce8R
	lpvfufwiCRd4RYvqIZGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQjZf-00000006QPT-0kuQ;
	Wed, 03 Dec 2025 09:55:03 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQjZd-00000006QOL-0WS1
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 09:55:02 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5957ac0efc2so7357474e87.1
        for <linux-rockchip@lists.infradead.org>; Wed, 03 Dec 2025 01:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764755698; x=1765360498; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bf6xekrcsFMQsZdm4tiPKUq/zdj8GQcGkChPb3cjYAQ=;
        b=prYCwxsi5SQY6jhv3tyfWzB/vcFaUof9tu0FHcCVa837Y6Or2ZYHESKSGuxbjUka0G
         9vsHixPHDtRODFwDma1gPOgRfM0YydRcQdHOALEXr13TbbH2h3JtBtxOZUCuhM7+C5GC
         w9yjlRAI9UqdtZNglNm2cVms2Dg89242Y2zE0U1X1UMSQJDw7rJAjSMeFVoHB1SiwUCc
         kH0c8t6J3e1290CIe6NkHy9Sqr3hWBXWdWECntajmlK/D4Ek/tpVskRkId+veviks0bC
         vM2fPerBDuFHqhQYuAjy9Z+khGSAbZUH8atJrKnwGlFBn1gUz0u4H+s65ZYfuh+iT0fy
         zw0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764755698; x=1765360498;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bf6xekrcsFMQsZdm4tiPKUq/zdj8GQcGkChPb3cjYAQ=;
        b=Tr7DlrqUrZy4o4Sil32BUGRtq9651/0YLTMomGXWfr9FGPS5VrPCIxTi/pGVYrTqZy
         mmpiQ6lLVcKY3ihDdJZb3QWFyy36u3d7L8JxRU3yTYPehtZJapgtH3viKa+RvHy/xzN9
         vLkJDkhJqr0+ZwP70A40tIw4afsPaq3YZgJg/MaPGOt5jtfA26BMjA8s7clQwNwSjyT0
         ycBo1uf4R1Su0KU1Xiego4chIS4Zp8tUQzEcYKtlaq0I/xUA8xfh0HA/az0H3efqA7oo
         aU2lEARpEMf5InwF6h2+9CbCSJ1a34Q91yEW3bTWjd/fSNrh8TWvRzWW0lMPg2MBlUAY
         uTfg==
X-Forwarded-Encrypted: i=1; AJvYcCUUGIHO7XzAXVgEyrLd16BWB7dbLFMT5HIreBxxwOc1cD+2G5qWf700YUbLmUGYwVC3eIAtGC937b3mIeev9A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzdSB1PC3dR1kgHa57g3sfSlXJEUnS8JwZSokUM+c4RvOJy58XU
	F9sHHaJh/qVh8T+7AcZTTQm+rTfJ4dTK9VDEx/EWqQFKTIGgw+9aboqLG/1Nrs+RBbh14GuJlRp
	ZKnc3vsHL0ieaYfsVD72vJv1x/9BxzFhfJQRGD/AY9Q==
X-Gm-Gg: ASbGncvqEn/iHlPXKsfQi7QEEY9ETebgpjJBdxNn8QeyhoyMUvhsOHt5ICEL344YTC1
	rvu/hIqHerLBY2NvRsAgtExSfnUtd8e2ECnU6wHrdm9DwPi3seXst5II0Xz5mENwudvWVG+nJhd
	thypPr27AuG3sdjcUF6R4mXU4CupK8A2bLBjv3gI0RGv5J5+saT07StqxwptWqhMhAxax10O3y4
	fKuLm50odmXYx6efFM6Kli975yIVouv/DqE9yMNJermlZqy5lZLl924HE3UuXOTEs5XVmc=
X-Google-Smtp-Source: AGHT+IHPuIKwxz1VJ5GILJ384/PXefNP+n3NPV2VlQgZ4nbetMc71L02vArjvfuIYkxo4JwTlS+BXfDTbbd4MfnOmfA=
X-Received: by 2002:a05:6512:6181:b0:594:48e6:26b8 with SMTP id
 2adb3069b0e04-597d3fea0cbmr771950e87.39.1764755698430; Wed, 03 Dec 2025
 01:54:58 -0800 (PST)
MIME-Version: 1.0
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
 <20251202-mcde-drm-regression-thirdfix-v6-4-f1bffd4ec0fa@kernel.org> <5d6e8e0e-3129-49f1-8c5f-c2f837a36139@rock-chips.com>
In-Reply-To: <5d6e8e0e-3129-49f1-8c5f-c2f837a36139@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Dec 2025 10:54:45 +0100
X-Gm-Features: AWmQ_bkoUmfhb8re1685S4T8kLpKSzEGo5JqBtrDagJzf8b9dtmfohMBjnGs5MY
Message-ID: <CACRpkdZwgsbVezfQBRP6pX-o8TLvtFMt+M+rL7GrTmeuzN8xvQ@mail.gmail.com>
Subject: Re: [PATCH v6 4/4] RFT: drm/rockchip: Create custom commit tail
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Linus Walleij <linusw@kernel.org>, Vicente Bergas <vicencb@gmail.com>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Aradhya Bhatia <a-bhatia1@ti.com>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Aradhya Bhatia <aradhya.bhatia@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_015501_203656_AE213BC6 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

T24gV2VkLCBEZWMgMywgMjAyNSBhdCA0OjEw4oCvQU0gQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVu
QHJvY2stY2hpcHMuY29tPiB3cm90ZToKCj4gSXQgc2VlbXMgdGhhdCBtdWx0aXBsZSBkcml2ZXJz
IGN1cnJlbnRseSBkZXBlbmQgb24gdGhlIENSVEMgYmVpbmcKPiBlbmFibGVkIGFuZCB0aGV5IGlt
cGxlbWVudCB0aGUgc2FtZSBhdG9taWNfY29tbWl0X3RhaWwoKS4KPgo+IFdoeSBub3QgaW1wbGVt
ZW50IHRoaXMgaW4gZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X3RhaWxfcnBtKCkgaW5zdGVhZD8K
PiBPciB3aHkgbm90IHVzZSBhbm90aGVyIGNvbW1vbiBoZWxwZXIgZnVuY3Rpb24gZm9yIHRoaXM/
CgpTbyBteSB2MiB2ZXJzaW9uIG9mIHRoZSBwYXRjaCBzZXJpZXMgYWRkZWQgYSBuZXcgc3BlY2lh
bCBjYXNlCmhlbHBlciB0YWlsIGZ1bmN0aW9uIHRvIGRvIHRoYXQ6Cmh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2RyaS1kZXZlbC8yMDI1MTExOC1tY2RlLWRybS1yZWdyZXNzaW9uLXYyLTMtNGZlZGYx
MGIxOGY2QGxpbmFyby5vcmcvCgpJdCB3YXMgcG9saXRlbHkgTkFDS2VkIGZvciBjb21wbGljYXRp
bmcgdGhlIGhlbHBlcnMgbGlicmFyeSAoc2hvcnQgc3RvcnkpLgoKSXQncyBwYXJ0IG9mIHRoZSB0
cmFpbCBvZiBob3cgd2UgZ290IHRvIHRoaXMgY3VycmVudCBwYXRjaCBzZXJpZXMuCgpZb3VycywK
TGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
