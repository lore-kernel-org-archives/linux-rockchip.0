Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2048CC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 May 2022 13:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reXNp7MG7MsKj9htvjSYYJk8GIO4/dMSQMX7JgyD+Fk=; b=h9hcnZv6JtWaxZ
	SjEbXU/ivhW+oPQ3hniRJ3nnqrMLUPLpQQ/z1JeeGZudpkSPsy01B9u4h3m7goAZSa76K/wHfUajD
	Z8nfFkmdCur4YudR0H902LQ8Obn1m5NC+jnc79bSo1Ka7uUNghwjp3vgKO/WwPcN/S3JyIK+j/iO6
	IeSkAUC+JxBX4GjqdzDRN1fCBlXs+Cjm0oq88qwaT44gf31rB2Saf39TjW9sVZ9Da2uxKQwggqKK1
	d/h55K+q6ouzFuNOp9dp21VfvJn4/XFWRWiJCzE9iZFhuK0YLR+cg+tROUGGakaJ0KmzgwUepM31G
	eN0eBwalIoak9B6Bd5nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noQFH-002L9P-Rq; Tue, 10 May 2022 13:49:47 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noQF5-002L5I-2m; Tue, 10 May 2022 13:49:38 +0000
Received: by mail-lj1-x235.google.com with SMTP id q130so20892569ljb.5;
 Tue, 10 May 2022 06:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=fhyetRl0+XtSQ8inEVdE1Z7bqWcZkmFId3JNUI9ZZ/s=;
 b=iBSBnjuojXncJbWUNQh+FcoAri2q5utp07Svkg2cJP8lgkIjQ+0jK07gf+snxFBkc0
 RpBs+YBp+Kr5/Z84US0jK7AZSEha7j5CUa3TTaeQfmgyso41u7XKdYMjPorn3miALgUW
 cfWpi6bnvoD4/sJsynTuzmJHXtvReInDLexFLcDohvjmNR40Co1UxFVN59JWnrKI3W++
 i0zG1zsny/omb1sOl8q35ddnOlDvjUGo+OGxAvU3lwp8G4kf45F6r+XrWfX9h9sYwDz2
 UjuL8F+JcXwyNyRRZewVbZeFD9qV3aGsx1KtCFvYc8bEVj+dndjf33kTs83nJwCyt7qc
 NwlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=fhyetRl0+XtSQ8inEVdE1Z7bqWcZkmFId3JNUI9ZZ/s=;
 b=DJDOUy8iibvUJjK0Po+ef66iAd1eDVZvHfqtjHKRTHhUKvoeFvb4gKzI+c/v39TIxv
 QAHgnHvYrZq0jwpliZ4hBdQQYkVGJwoF9shULJJu2HDoGjWk1vqq9RrMAKzzB1B6Eu2J
 uukZSdYHntgAdTPylmmyud4j7DH68IX+0F543QB6aTpgnuHOdvRTMCMoosQT7EXbAD7W
 HGXrs8GL+eLacj6ZqCcJAlP2Q71xC0FgCHHmfsiEl6Sft2n5SSfhT4PdcDTPWE4m3Ccv
 OObJCPLV62+F4wpxQ4Wmeqyr9tKUQy7H4wtXLIOQHZC6RnYDhJp6eww+ZCQt0nODVTct
 11BA==
X-Gm-Message-State: AOAM533C7GiQ7Z48BMOV+7go+mlqll2ul7wUvHQ6tAoCcFbsKDG9kI9D
 0h4L/cTxtS5M99mfjWfwJxo=
X-Google-Smtp-Source: ABdhPJzsmCunC7oz57z6DIfJLz/imDwVtRjrJHN0HTIbDvffAXk7ZlZVYXRq8otV6UTBM/eeajzghA==
X-Received: by 2002:a2e:bc10:0:b0:250:59ed:405a with SMTP id
 b16-20020a2ebc10000000b0025059ed405amr13392125ljf.301.1652190571163; 
 Tue, 10 May 2022 06:49:31 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 q19-20020a0565123a9300b0047255d211b6sm2292920lfu.229.2022.05.10.06.49.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 May 2022 06:49:30 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYrsaNED+oMj+z2b4fK7pt32Qg=nXDk3SA0KFDDCJ2XY0g@mail.gmail.com>
Date: Tue, 10 May 2022 15:49:28 +0200
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 kernel test robot <lkp@intel.com>
Message-Id: <F1728C93-CFF8-4C51-B95C-A5049E0DC46A@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <812AC0DB-A6D0-4DA3-BCDC-7743E8F61821@gmail.com>
 <CAMdYzYozewYUbM=Q+iJ2wdM5TrB6dGrjS6zh0qmVgWD4XPVR+Q@mail.gmail.com>
 <ABC61229-B851-4BB7-8B55-688F8A8D841A@gmail.com>
 <CAMdYzYrsaNED+oMj+z2b4fK7pt32Qg=nXDk3SA0KFDDCJ2XY0g@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_064935_158152_1F0FD2A4 
X-CRM114-Status: GOOD (  10.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+IHcgZG5pdSAxMC4wNS4yMDIyLCBvIGdvZHouIDE0OjA4Ogo+IAo+IAo+IFlvdSBhcmUg
b24gdGhlIGNsa19ydGMzMmtfZnJhYyB3aGljaCBpcyBhIGZyYWN0aW9uYWwgZGl2aWRlciB0aGF0
IGlzCj4gZmVkIGZyb20gdGhlIDI0bSBjbG9jay4gWW91ciBjbG9jayBsaWtlbHkgaXNuJ3QgdGhl
IGlzc3VlIGhlcmUuIEknZAo+IHJlY29tbWVuZCBzZXR0aW5nIHVwIHRoZSBjZWMtZ3BpbyBub2Rl
IHRvIHZhbGlkYXRlIHlvdXIgaGFyZHdhcmUKPiB3b3Jrcy4KClBldGVyLAoKSGVyZSBpcyB3aGF0
IGkgZG9uZSB0byB2ZXJpZnkgbXkgcm9jazMtYSBIVzoKCjEuZG93bmxvYWQgJiBidXJuIG9uIFNE
IFJhZHhhIFVidW50dQoyLmJvb3QgYW5kIGluc3RhbGwgdjRsLXV0aWxzCjMucnVuIGNlYy1jb21w
bGlhbmNlIC12IC1ULiBJdCBmYWlscyB3aXRoIGVycm9yIC0yMgo0LmRlY29tcGlsZSBVYnVubnR1
IERULgo1LkNoZWNrIHdoYXQgSERNSVRYX0NFQ19NIGhkbWkgdXNlcy4gSXQgd2FzIE0wCjYuQ2hl
bmdlIHRvIEhETUlUWF9DRUNfTTE7IGNvbXBpbGUgZHRiOyBpbnN0YWxsIG9uIHNkCjcucmVib290
Lgo4LmNlYy1jb21wbGlhbmNlIC12IC1UIGdpdmVzIGFsbCB0ZXN0cyBPSwo5LmNlYy1jdGwgLS1p
bWFnZS12aWV3LW9uIC10MCB0dXJucy1vbiBteSBUVgoKaG9wZSB0aGlzIHByb3ZlcyBteSBIVyBp
cyBvaz8KIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
