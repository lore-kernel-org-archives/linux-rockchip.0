Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1D62D2F7F8
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Dec 2025 14:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAn4jYwBoUfAs6C4XlP7n4LulKgs75KawWScaHrDpGo=; b=mKoh/mojb7x/bO
	4FsAwMjlx1E/GUqtcXsMPeqBlD0nENQ5Hp5D++NlqpIoj250GaQLRkHolofWRCapkucjZy22xaXEF
	0UyPn7gBqM4Q6/dPGlESI/fO5wT1W3oJ3s4GnhMEAj1L2r270KnpX2wXpzut+IfxCZObLMDZOGDob
	iBPHcg/GGGxluVFK0g0ezBBnWL8S+YKLykN3r7aJnFV45nmoTJPB/u8NMHtHV04VjftG+3BcuzyPt
	qe1lyXv5arLGbdHivljygiLWw+LhOcehDDgo2+gZzhxTa/8zfPQ2TsYIClbvnRnvH+nEf10JaArWt
	YS5QDB/TaK0EEswiW7Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWWm-00000009Z3V-0L4f;
	Fri, 05 Dec 2025 14:11:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWWl-00000009Z3N-007p
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Dec 2025 14:11:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 28041601F3
	for <linux-rockchip@lists.infradead.org>; Fri,  5 Dec 2025 14:11:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA673C19425
	for <linux-rockchip@lists.infradead.org>; Fri,  5 Dec 2025 14:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764943877;
	bh=ZMCm7W6YKxTJT59+fIMuX3/S1J4Ngcse8UNpCxHCdqM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=mpn7+3GUJWOLIo6G0WA39on4/7X3i64R1qKnP37EhtEVpuMwpK8CtoXM63HejKTy8
	 9mqfRySr+b2S9fWVlgZcCCYHKrI7/Ce7sKtNxicMMPtZoHJW9+sUf3vmgNPPh0IbUI
	 B3ih2abaQqnvLOiOAJvfaZYpNDAV2iru3mYNkSs02rsRCBtKUN736wPZVEkcYIWioC
	 Ci1ucR01Ixq5cLjt4USfu0MPI+nKaQea+frZP5IyHtYTU8AVAhjdkQwfNLgFxGWCla
	 9tXxV//zK9TXO3OGzlxI/G1Udu2NDeJZRajVYpE9f0lmNnabA6/NPZm9d9FhqYusz3
	 qrArgB8Tol9EA==
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-6420c08f886so2457363d50.3
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Dec 2025 06:11:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXzSlKqE4MQ2zJz8CtUBqD+Cq7Vsvz9eL9Tk+2PCYAMF8brRsHtonadEjVuebWagGpO8dUdFKrPXDWoug/FFg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzOq3JPSNOYCvP9aB0uGTi/qhAd7vY48JOLIpQ4/Uc8Xj5Rw2zg
	e5uzN+OLFMOCDh5E04LwC+hY84R6sDrJ8/XGSte+syRHSFqpeFH/u1prXWTEGapnutW/X9EjEH0
	4HyPs1r+jZLOmQvhGQT8H5XHAdzIrMCs=
X-Google-Smtp-Source: AGHT+IEIfvC759yuVcH02RE4GW4qH2Ys7uHp2NQ72HenyKnTBQYRbNArLc/QN0zNZJGg6Ck/JosV6/HWxtziBHNuB3Y=
X-Received: by 2002:a05:690e:13cf:b0:63f:aef7:d01b with SMTP id
 956f58d0204a3-64436f96e35mr6953289d50.8.1764943877033; Fri, 05 Dec 2025
 06:11:17 -0800 (PST)
MIME-Version: 1.0
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
 <20251202-mcde-drm-regression-thirdfix-v6-4-f1bffd4ec0fa@kernel.org>
 <5d6e8e0e-3129-49f1-8c5f-c2f837a36139@rock-chips.com> <CACRpkdZwgsbVezfQBRP6pX-o8TLvtFMt+M+rL7GrTmeuzN8xvQ@mail.gmail.com>
 <20251205-strong-dandelion-newt-a776af@houat>
In-Reply-To: <20251205-strong-dandelion-newt-a776af@houat>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 5 Dec 2025 15:11:06 +0100
X-Gmail-Original-Message-ID: <CAD++jLkjMRQ3piayZYdKEMDmiwzARfxY36b3=PVUepw0PqUyTA@mail.gmail.com>
X-Gm-Features: AQt7F2ooVl-aRLrmmqtuqQJpJ731dmMHgmyyfa05zyP1eQASt7uZOJRtxkCEx78
Message-ID: <CAD++jLkjMRQ3piayZYdKEMDmiwzARfxY36b3=PVUepw0PqUyTA@mail.gmail.com>
Subject: Re: [PATCH v6 4/4] RFT: drm/rockchip: Create custom commit tail
To: Maxime Ripard <mripard@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	Vicente Bergas <vicencb@gmail.com>, Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Aradhya Bhatia <a-bhatia1@ti.com>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Aradhya Bhatia <aradhya.bhatia@linux.dev>
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

T24gRnJpLCBEZWMgNSwgMjAyNSBhdCAyOjUz4oCvUE0gTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBr
ZXJuZWwub3JnPiB3cm90ZToKCj4gLSBXZSBuZWVkIHRvIGZpZ3VyZSBvdXQgdGhlIGJyaWRnZSBv
cmRlcmluZyBtZXNzIGluIHRoZSBmaXJzdCBwbGFjZQoKSSB3YXMgdGhpbmtpbmcgYWJvdXQgd2hh
dCB3ZSBjYW4gZG8gaGVyZSwgYWRkaW5nIHZhcmlvdXMgZmxhZ3Mgd2FzCmRpc2N1c3NlZCBhbmQg
ZGVlbWVkIHRvbyBrbHVkZ3kuCgpXaGF0IGV4aXN0cyBpbiB0aGUga2VybmVsIGFyZSB0aGluZ3Mg
c3VjaCBhcyB0aGUgTU1DIHBvd2VyIHNlcXVlbmNlcgp3aGljaCBjYW4gYmUgZm91bmQgaW4KCmRy
aXZlcnMvbW1jL2NvcmUvcHdyc2VxX3NpbXBsZS5jCmRyaXZlcnMvbW1jL2NvcmUvcHdyc2VxX2Vt
bWMuYwpkcml2ZXJzL21tYy9jb3JlL3B3cnNlcV9zZDg3ODcuYwoKd2l0aCBzb21lIERUIGJpbmRp
bmdzIGluCgpEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tYy1wd3JzZXEt
c2ltcGxlLnlhbWwKRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9tbWMtcHdy
c2VxLWVtbWMueWFtbApEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tYy1w
d3JzZXEtc2Q4Nzg3LnlhbWwKClNvIGhlcmUgdGhlIGFwcHJvYWNoIGlzIHRoYXQgdGhlIHNwZWNp
ZmljIHNlcXVlbmNpbmcgcmVxdWlyZW1lbnRzCmFyZSBhZGRlZCB0byB0aGUgaGFyZHdhcmUgZGVz
Y3JpcHRpb24gKHRoZSBkZXZpY2UgdHJlZSkgYnV0IHRoZXJlIHRoZQpyZXNvdXJjZXMgYXJlIHJl
YWxseSBmbGF0LCB0aGVuIHRoZSBkcml2ZXIgZm9yIGVhY2ggdHlwZSBvZiBzZXF1ZW5jZQp0YWtl
cyBjYXJlIG9mIHRoZSBzZW1hbnRpY3MsIGkuZS4gdGhlIGFjdHVhbCBzZXF1ZW5jaW5nIGFuZCBv
cmRlcmluZy4KCk1heWJlIHdlIHdhbnQgdG8gbG9vayBpbnRvIHNvbWV0aGluZyBsaWtlIHRoaXM/
CgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
