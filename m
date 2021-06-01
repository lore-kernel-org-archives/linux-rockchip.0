Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED7F6C47080
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 15:58:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF88B6139A
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 15:58:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF88B6139A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3P9LROvkJDQaoDjruHR6LgA85ecml91ztC+UWr0hA7c=; b=YddKDBJ78aVf50
	EOM1lhx28cMUAYbBuiaVipI8Agf/Nq0TRlxyXemga4rYICqD9Zz2dOYXHDLAxBDiPofn16YdPDRtQ
	zhnR6yWWbXmD0rrlbrSkwgZ62xpQ63BSJA52tGQZ4NHPGWWuDIGcKmdZE967BaRvDtDkEq8j1Pk7N
	k4xDYYG9ZJn8Td5CqLZv/8btY/jLpycEbgaReGS/11U55f6LmNlT7a3+yLDYCT1ad85hA5WsUUacE
	oy2q7GYmnKaLapAm4iMFZQXhTmWwVgO0uxFYBs5AeuNW7lBImb8SXsNlRra7gRsJBeGLio2+EuJs5
	tIdcrlNzwGn8lqtaPb+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo6mv-00HMqI-9T; Tue, 01 Jun 2021 15:58:41 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo6ms-00HMnp-On
 for linux-rockchip@lists.infradead.org; Tue, 01 Jun 2021 15:58:40 +0000
Received: by mail-wm1-x32c.google.com with SMTP id g204so5294983wmf.5
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Jun 2021 08:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=DfdeHTGjcCYPTchbky8FXiwy44uVWCQdaNoLYkK3gGA=;
 b=bZ9MxfqPj25Sllazfq16qEXmkBVdfRBnrSCMmS/fJaDhTbPtW1VB2MzqzmNJhzv5xw
 MmhdUesnw7wu+B6P6xJd67gFVV638kzdxwAEv5/YF0bcWYJNpWU53+ZIzz4MDEf+BErp
 8wVKwB11ob2HGzwNsdAk2Y/p4t1aF4jftNHIpcAU0vmDB/IZxvnLTu8VP0+vPW9T47gQ
 NKJ3ag4Ega/Y3Im7My7v6rnJobGbT7hdQjZUcvfusme1CUNgEiPbH7dMda1V6sbelQ6A
 3hThdSAP29YJDsgr1HtKyMYB4q3b7EBvc0oDzI/UVtZdG5Qv0Or3oSkzx6g8s1IMoNn6
 PLPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=DfdeHTGjcCYPTchbky8FXiwy44uVWCQdaNoLYkK3gGA=;
 b=O6uivO4ASygRrcguctoEvZrc7OKG3XO33lx4qoENuz3r7APjwSgeLiWmHnzDjrgkTK
 WRqp2MrKCfse6GeKvkSyt9ldEZBmbyxMYblP5ll7atDfk09MgGja3WK+fdC8oG2USPwR
 +PtpbXDgmHkwqi1jG/2t9pn9yk9lRv99voJfeu774ckl5KF35cd2MHGhvXsjBrq0kFC6
 IT/UKnRQeWWDk1VDeuB2HGeWuli/2Fh50NQQBu13mlGL7LDn5hAGekkHGY0hpbSbM3jv
 6tf3J6Smh/Mlfe9RrkZ5+s51IJ3A4lQ6H1Qph85/KX5MYWnh5jMjRqBvREVjH4Gr0sSE
 JGRQ==
X-Gm-Message-State: AOAM530yv1P00oy1uwkjZbXVp9B3ZI76Csh8ssTv1dvicetTD9YgIFkz
 2si915wtd1vwn2aRvxRaAskX5g==
X-Google-Smtp-Source: ABdhPJxS4orObivxiUr7tCfWqSfkjoAv1xblsQUGN0WKI7maOGwBGJsigyuynzIzzbcA96eMcNrvJQ==
X-Received: by 2002:a7b:c94a:: with SMTP id i10mr12465034wml.29.1622563115864; 
 Tue, 01 Jun 2021 08:58:35 -0700 (PDT)
Received: from dell ([91.110.221.249])
 by smtp.gmail.com with ESMTPSA id e27sm4300744wra.50.2021.06.01.08.58.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Jun 2021 08:58:35 -0700 (PDT)
Date: Tue, 1 Jun 2021 16:58:32 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [GIT PULL] Immutable branch between MFD and ASoC due for the
 v5.14 merge window
Message-ID: <20210601155832.GC2165650@dell>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
 <20210601140145.GH543307@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210601140145.GH543307@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_085838_830382_DF26334F 
X-CRM114-Status: GOOD (  13.64  )
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

T24gVHVlLCAwMSBKdW4gMjAyMSwgTGVlIEpvbmVzIHdyb3RlOgoKPiBJJ3ZlIGFwcGxpZWQgdGhl
IG5vbi1Bcm0gcGF0Y2hlcy4KPiAKPiBUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0
IDZlZmI5NDNiODYxNmVjNTNhNWU0NDQxOTNkY2NmMWFmOWFkNjI3YjU6Cj4gCj4gICBMaW51eCA1
LjEzLXJjMSAoMjAyMS0wNS0wOSAxNDoxNzo0NCAtMDcwMCkKPiAKPiBhcmUgYXZhaWxhYmxlIGlu
IHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKPiAKPiAgIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC9sZWUvbWZkLmdpdCB0Yi1tZmQtYXNvYy12NS4xNAo+IAo+IGZv
ciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byA0MzdmYWFhNmNlYmFkZjhmZjRjMmMyOGQ3Y2Iy
NmVkNGUzNGFlYjE0Ogo+IAo+ICAgZHQtYmluZGluZ3M6IEFkZCBSb2NrY2hpcCByazgxNyBhdWRp
byBDT0RFQyBzdXBwb3J0ICgyMDIxLTA2LTAxIDEzOjQwOjQxICswMTAwKQo+IAo+IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiBJbW11dGFibGUgYnJhbmNoIGJldHdlZW4gTUZEIGFuZCBBU29DIGR1ZSBmb3IgdGhlIHY1LjE0
IG1lcmdlIHdpbmRvdwo+IAo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBDaHJpcyBNb3JnYW4gKDMpOgo+ICAgICAgIG1m
ZDogQWRkIFJvY2tjaGlwIHJrODE3IGF1ZGlvIENPREVDIHN1cHBvcnQKPiAgICAgICBBU29DOiBB
ZGQgUm9ja2NoaXAgcms4MTcgYXVkaW8gQ09ERUMgc3VwcG9ydAo+ICAgICAgIGR0LWJpbmRpbmdz
OiBBZGQgUm9ja2NoaXAgcms4MTcgYXVkaW8gQ09ERUMgc3VwcG9ydAo+IAo+ICBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JrODA4LnR4dCB8IDE4OCArKysrKysrKysKPiAg
ZHJpdmVycy9tZmQvcms4MDguYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgODEgKysr
Kwo+ICBpbmNsdWRlL2xpbnV4L21mZC9yazgwOC5oICAgICAgICAgICAgICAgICAgICAgICB8ICA4
MSArKysrCj4gIHNvdW5kL3NvYy9jb2RlY3MvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAg
IHwgICA2ICsKPiAgc291bmQvc29jL2NvZGVjcy9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAg
ICAgfCAgIDIgKwo+ICBzb3VuZC9zb2MvY29kZWNzL3JrODE3X2NvZGVjLmMgICAgICAgICAgICAg
ICAgICB8IDUzOSArKysrKysrKysrKysrKysrKysrKysrKysKPiAgNiBmaWxlcyBjaGFuZ2VkLCA4
OTcgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgc291bmQvc29jL2NvZGVjcy9y
azgxN19jb2RlYy5jCgpMb29rcyBsaWtlIHRoZSBidWlsZGVycyByZXBvcnRlZCBhIFc9MSB3YXJu
aW5nIGludHJvZHVjZWQgYnkgdGhlIHNldC4KCldvdWxkIHlvdSBsaWtlIG1lIHRvIGZpeCBpdCBh
bmQgc3VibWl0IGEgcGF0Y2g/CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNo
bmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVy
IHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
