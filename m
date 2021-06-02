Return-Path: <SRS0=F5E9=K4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51F2C4708F
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 09:42:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E8F56135D
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 09:42:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8E8F56135D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMnbku60Z16+lWdgtB8i9sIxZegcwUXl0VXyelKo6ZM=; b=G7Qmy8cghvj8qu
	JZilQp4E0HTAsy/x4ch9UUr4QQ/kNOebVjJ1xgFqdW2bu6gX2gZ53bPxwYtGv+KqiAynXj7OQFQIA
	PJ1weTWxQb9Y7Bu2sYvZPRtOHwJirwr+WMchQ2uU6RgRtcDJ0nh5A8ojQyOnR9MMsKndiiOlO7A8M
	BiKdHc23/duwON0elU4WRNEiS5VSS8kzYpSQCEYaiKb0hlc+y2VB6YNtXJcT6HerKwi8bnObdU1VY
	qwqFCKZ+O/nApoKDBxAvd6RMqt0YgqxlzIh0gbxoFXFttgoJInnYdDc7H+F1DjTv/3H2fr54xwVoK
	fsNvr7DdEzPdlGo1SLzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNOU-0031xF-Dg; Wed, 02 Jun 2021 09:42:34 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNON-0031us-1U
 for linux-rockchip@lists.infradead.org; Wed, 02 Jun 2021 09:42:33 +0000
Received: by mail-wr1-x432.google.com with SMTP id z8so1575666wrp.12
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Jun 2021 02:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=1bwvnBt46b5Md91UtcUGWL/AlFfTVV7qxAksQIq9DBA=;
 b=h9/S1lbEio3I0k1sJsuUnAl5NZ+gKun1O9ELFxpqHub3f3exMh1Uj2Q4mTJJ2VMmE3
 0+LpXNLdH7wDf47ouPCSBVNePxbIOqrEFiOL4EtsSt2ogKUZVT6oS2ECqgSA6YvOu0s3
 p5C9SI6LpxXCzPHSVwvO0eEMeu/fwiHDTFwXhfHB5jBfsclLy0zsOMo/bz8WbvqWlmSg
 +r8OOi+4QLTLZ9O4Rq6+8YAU4NIDxRIbHFfgaDxll3M9TtNsqdXid2GJnYI+Nkoz6Brx
 aOb4rdL1voEE2aveKYeo0jezHEYS7ORAK8pzaAiLskQ0UjAStuNICXYhy9/2hxCnsuzK
 bBaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=1bwvnBt46b5Md91UtcUGWL/AlFfTVV7qxAksQIq9DBA=;
 b=YE9ykRTzv6OpykEYk9XxeDQo/rxvoHFjckZTyUNkeyIBWaoazWSPg2wLMlAs0DflcE
 UPurnZl4aZ9QnkGuUwOvEQ00++snYcvP4YOmwzaZehhRBtYRQjQWrI+ArixZOwds1p8s
 SU1XNiYhw9tDOAZbnA9iA0eZohMjPbGb25pNfTB6h0CebWOpNBuTmii+R89x5mVdvxpl
 OktDAJCDm2jVlzrb23JXgX7pCzTBzQoFQg8gPy3AI2I1p5UMbBq9YoxVzr/Lqh6M196f
 yG78nBrlBhCNWm7eYEAQfkDKq6/F+8f6LwqSE56dGckynvHDhKgErHzp8JadWRKjYTPw
 xSNQ==
X-Gm-Message-State: AOAM531vWlkh7UwEpQEWvNg2wyYCDjYg0fRv2Ofzpufc434zaosoDvVx
 jP5NDqHqwXAJhej+dSVhlTRGbyvawPzccQ==
X-Google-Smtp-Source: ABdhPJx10PafmAQ/VY0pzK8DIrLGFxB4haVNs3NLBwzgdx69yethsNuxYQSzr9BSWt4jSReAeofErw==
X-Received: by 2002:adf:a401:: with SMTP id d1mr20952564wra.55.1622626944677; 
 Wed, 02 Jun 2021 02:42:24 -0700 (PDT)
Received: from dell ([91.110.221.214])
 by smtp.gmail.com with ESMTPSA id z12sm2515907wmc.5.2021.06.02.02.42.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 02:42:24 -0700 (PDT)
Date: Wed, 2 Jun 2021 10:42:22 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [GIT PULL v2] Immutable branch between MFD and ASoC due for the
 v5.14 merge window
Message-ID: <20210602094222.GF2173308@dell>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
 <20210601140145.GH543307@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210601140145.GH543307@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_024227_133267_ADD1984E 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
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

RW5qb3khCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDZlZmI5NDNiODYxNmVj
NTNhNWU0NDQxOTNkY2NmMWFmOWFkNjI3YjU6CgogIExpbnV4IDUuMTMtcmMxICgyMDIxLTA1LTA5
IDE0OjE3OjQ0IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6
CgogIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9sZWUvbWZk
LmdpdCB0YWdzL3RiLW1mZC1hc29jLXY1LjE0LTEKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1
cCB0byBlZjc1NzBiNjc1NDFkOGI5MzhkZjFlNDVmNTZlNTRiZTcwYmYxMzYwOgoKICBBU29DOiBy
azgxNzogZml4IGEgd2FybmluZyBpbiByazgxN19wcm9iZSgpICgyMDIxLTA2LTAyIDA4OjA1OjIz
ICswMTAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQpJbW11dGFibGUgYnJhbmNoIGJldHdlZW4gTUZEIGFuZCBBU29DIGR1
ZSBmb3IgdGhlIHY1LjE0IG1lcmdlIHdpbmRvdwoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpDaHJpcyBNb3JnYW4gKDQpOgog
ICAgICBtZmQ6IEFkZCBSb2NrY2hpcCByazgxNyBhdWRpbyBDT0RFQyBzdXBwb3J0CiAgICAgIEFT
b0M6IEFkZCBSb2NrY2hpcCByazgxNyBhdWRpbyBDT0RFQyBzdXBwb3J0CiAgICAgIGR0LWJpbmRp
bmdzOiBBZGQgUm9ja2NoaXAgcms4MTcgYXVkaW8gQ09ERUMgc3VwcG9ydAogICAgICBBU29DOiBy
azgxNzogZml4IGEgd2FybmluZyBpbiByazgxN19wcm9iZSgpCgogRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL21mZC9yazgwOC50eHQgfCAxODggKysrKysrKysrCiBkcml2ZXJzL21m
ZC9yazgwOC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA4MSArKysrCiBpbmNsdWRl
L2xpbnV4L21mZC9yazgwOC5oICAgICAgICAgICAgICAgICAgICAgICB8ICA4MSArKysrCiBzb3Vu
ZC9zb2MvY29kZWNzL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICB8ICAgNiArCiBzb3Vu
ZC9zb2MvY29kZWNzL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICB8ICAgMiArCiBzb3Vu
ZC9zb2MvY29kZWNzL3JrODE3X2NvZGVjLmMgICAgICAgICAgICAgICAgICB8IDUzOCArKysrKysr
KysrKysrKysrKysrKysrKysKIDYgZmlsZXMgY2hhbmdlZCwgODk2IGluc2VydGlvbnMoKykKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBzb3VuZC9zb2MvY29kZWNzL3JrODE3X2NvZGVjLmMKCi0tIApMZWUg
Sm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZp
Y2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xs
b3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
