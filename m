Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D92B9C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jan 2022 14:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Sek4Go/PS1G+i8WRf9VFpajna7Wk9TILoHqbs5669U=; b=J24HIC5RRpAYlx
	FVeGp9LPmuUJ5KVB9Ae/FNJnnkQ1Q6XtcatCOKQ5wpXg+Hsa5kpiVQ3Is1AHaSHjMGflzMcYShPji
	mX8fyTfXAmtfdBOR1n7baZVKaOu4YzteJrmrR+NOyTDBZeMEdrzaDqzNhKPby8ki6ISJKUI1jjA1S
	TsVGzMdLrwHv1hlc2CiAwS02M/7uOd+7Pt3133wdwarRWOcMTnIrGFCjzFpGryVQKCJhjKHH8dtfp
	qfM5y+7lc0ZS554RrmS8nBrNvleFk1rLclqCI1TdnJI93QktuyDsQKuqRKlJj+2bK1YSUlsnIElID
	tvpSHyq4EmfrNh0Fe0yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9TNn-00FFWh-ON; Mon, 17 Jan 2022 14:53:19 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9TNb-00FFRz-AR; Mon, 17 Jan 2022 14:53:08 +0000
Received: by mail-lf1-x12a.google.com with SMTP id x22so58475085lfd.10;
 Mon, 17 Jan 2022 06:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=onWdt0fyeqqEsMifvTUGSb7FG4MeJVVCrnl4WB/xhwg=;
 b=HlBqFcVJUgeG+7AzJjGBH0RvzQNnFMma5/bY22sKBRoLna4EicyPr5dp5uy+m/kif7
 sw4UvpGlY1XCqoek48qGhJoVrK1PV41rEYtzYJ1FhoQGb0vb1z2eaSTlWDTkBRjsPFgA
 iJmJcExF29aZEVSsKjpMHdBDdar/ZYhsYQEhQ9dT2CdgZHoDZ5eA4leKvMVLYiwJE1Nr
 k37RKbl6BCJ41ZStGYk/h33vS9OpAHi9av8S/VOCGIfa1QL5jSuqwN97WCV+GIGF3Cy3
 Sk4XDGZly2uPs1+RLDGjolamZ91PIuGkTrBy2bzKdoNMIM1hEBbY30rcf5Bd/k8fdYu1
 wUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=onWdt0fyeqqEsMifvTUGSb7FG4MeJVVCrnl4WB/xhwg=;
 b=nbj8m9PhYV2Si9URhuoN/w5qbOr4AtCv8MmeWlrwpRgavNUssBgRL09FyZbEr3yhNR
 FV8tKNro60MIw/08mHplo2B3apc9RoLuqwDKMuBaTZtXgdu6PxJDhj4IcUpWfn7Ugsmk
 /5adpXh+uQocH/ge3Ull6N8D3a0p2w+krlxIJd/CB6fifu1+zG87FwwmVkkHZlZ9HDYj
 vAuA0XcTBKnslSFLRIDMOT+exIvhxJLqecR+JvqcBJe1Z3URHQeH6SFiWqN4foI0dS5e
 f6Zi/99eaDdacGPozsB89pM76BeFc9PNyiLwDslmVRW+ObOY2Fh/91dw9DgegW+X1Kde
 UlsA==
X-Gm-Message-State: AOAM530oGywnZDlLiLUjN8Brow518n464/0iu7TVOozVhOk1fSzWl0y0
 EJx/kpGa/uIXwnnRmCSEWz0=
X-Google-Smtp-Source: ABdhPJzCgLZE2f1V4ZTHHLY0+82A8Z0lem/5f4KqeZD0C75yveNJ5NrqaZPCkP/ybtda2xUf2KLx8g==
X-Received: by 2002:a05:6512:2606:: with SMTP id
 bt6mr16873651lfb.202.1642431185384; 
 Mon, 17 Jan 2022 06:53:05 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id p13sm1418432lfa.42.2022.01.17.06.53.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jan 2022 06:53:04 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH 5/9] arm64: dts: rockchip: add rk3568 tsadc nodes
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYqsPgAbLBt+xwDL2s7ViLDJw5mnzDnupimRVESt0xFksQ@mail.gmail.com>
Date: Mon, 17 Jan 2022 15:53:03 +0100
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-Id: <A6AF0F12-FB41-4C60-96AA-660C1E8B379C@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-6-pgwipeout@gmail.com>
 <C3AE0A81-A829-4241-A65E-EB28825E3C33@gmail.com>
 <CAMdYzYo2gkNvNYjU9_kc4cTwNBFU+kg3bRwaS3yCCAsMdo-Tow@mail.gmail.com>
 <E3AA167E-1E40-45CD-8CBB-3EB280856604@gmail.com>
 <CAMdYzYqsPgAbLBt+xwDL2s7ViLDJw5mnzDnupimRVESt0xFksQ@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_065307_381585_DABE94EE 
X-CRM114-Status: GOOD (  12.05  )
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
bC5jb20+IHcgZG5pdSAxNy4wMS4yMDIyLCBvIGdvZHouIDE1OjM4Ogo+IAo+IAo+IAo+IFlvdXIg
aXNzdWUgaXMgaW4geW91ciBkdHMuCj4gWW91IGhhdmUgcmV0YWluZWQgdGhlIHF1YXJ0ejY0LWEg
JmNwdV90aGVybWFsIGFjdGl2ZSB0aGVybWFsIG5vZGUKPiB3aXRob3V0IHR5aW5nIGluIGFuIGFj
dGl2ZSB0aGVybWFsIGNvbnRyb2wgZGV2aWNlIChhIGZhbikuCj4gQnkgZGVmYXVsdCB0aGUgcmsz
NTZ4IGR0c2kgcGFzc2l2ZSB0aGVybWFsIHRyaXBzIGFyZSBob29rZWQgdXAgYW5kCj4gd2lsbCB0
aHJvdHRsZSB0aGUgZGV2aWNlIGluIGNhc2Ugb2Ygb3ZlcnRlbXAuCj4gSWYgeW91ciBkZXZpY2Ug
aGFzIG5vIGFjdGl2ZSB0aGVybWFsIGNvbnRyb2wsIHlvdSBkb24ndCBuZWVkIHRvIGFkZAo+IHRo
ZSAmY3B1X3RoZXJtYWwgbm9kZSBhdCBhbGwgdG8geW91ciBkdHMuCj4gCj4+IAo+PiBidHcyOiBm
b3IgcmszNTY2IGknbSB1c2luZyBtYWpvcml0eSBvZiB5b3VyIHBhdGNoZXMhCj4+IEdyZWF0IHdv
cmsgb2YgeW91IQoKUGV0ZXIsCgpNYW55IHRoeCEKCk5vdyBpdCB3b3JrcyBuaWNlbHk6CgpjcHVf
dGhlcm1hbC12aXJ0dWFsLTAKQWRhcHRlcjogVmlydHVhbCBkZXZpY2UKdGVtcDE6ICAgICAgICAr
MzMuOMKwQyAgKGNyaXQgPSArOTUuMMKwQykKCmdwdV90aGVybWFsLXZpcnR1YWwtMApBZGFwdGVy
OiBWaXJ0dWFsIGRldmljZQp0ZW1wMTogICAgICAgICszNC40wrBDICAoY3JpdCA9ICs5NS4wwrBD
KQoKYWdhaW46IG1hbnkgdGh4IQoKCgpmb3JnaXZlIG1lIHVucmVsYXRlZCBxOgptYXkgaGludCBt
ZSBmb3Igc2NyaXB0IHlvdSBhcmUgdXNpbmcgaW4geW91ciBnaXRsYWIgY2kgZm9yIGJ1aWxkaW5n
IHF1YXJ0ejY0IHUtYm9vdCBpbiBjaSBwaXBlbGluZT8KSSdtIHVzaW5nIHlvdXJzIGJpbmFyaWVz
IC0gYnV0IHdhbnQgdG8gYWRkIGJ1aWxkaW5nIGZyb20gc291cmNlcyBpbiBteSBwcm9qZWN0Li4u
LiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
