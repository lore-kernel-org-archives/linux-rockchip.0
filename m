Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 919DECCD18E
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 12:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTVIl4vVkCNf9jZXOrGq+rBI5LaD1MkZWR6qyQB/y4Y=; b=kFx9Xaff7doE9j
	nv9N7fMwPzGK1s8dRkvMZggCiHr4NfkceBOZHuwWvpdIopgpk4+0CVSKvM95aChZ+pX8BREak103I
	g4G47TatQLpg2AHxYWm7mAytncWxPMvo62SpAT0SACbN3Ca5HBZg+CpzzMWnxWJ48vtGnr2Fd1dUs
	zGqru/rNegnSDpwk5mOmooelvMp6xdA9FKfx13cdlAh2B5tKN2MjqtBIhkoGTNt+pn58WNppTYsLb
	MVbOEhHONg7GfCfHidp8UFGEVJl6f8YFTNo8dwT3kaMxE5tE6xLi5hW2VBFGBklfWQdkI7ekIK+bS
	8GTs8cIx5aiVW6PadbHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v90F8-00000001V0p-1YaX;
	Wed, 15 Oct 2025 12:04:34 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v90F6-00000001Uz1-07It
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 12:04:33 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-863fa984ef5so1097123085a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Oct 2025 05:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1760529871; x=1761134671; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yIkDzOp9lOkC64phyHj+bKX1qlxxtXvg/X9w367rNpc=;
        b=OPT5UA0OlOZZ50ueWhh5l/U1tmbQ+pAxTu2hguKgLLE5443ScxsK1meXXxsGPav9UL
         ZuqS8weG/P+ebkn7Rkh42W1i87Q5+BJDfGCP+ud2Q/oqIol9vmVxaz8Bp3TuyQafqb2+
         gG3L7WLqBMZo34M/dSoe+WXsL9sIziNaB/n7sVD+n1/6hdRnApFJemt1yddSHTHKP6qp
         I1OzdLd/p6iNEYRei42SL+PuAMyUTPID0GBTpOfHFut5z8v6DR3AwcEsdt1nndTkzyYT
         WuRwQN6gZIOwo5n+GbvCiPBE8Y8Wkg9Lkzz2HPY2obR+e31X1i91k/N98NYRWUpwDqr2
         pzEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760529871; x=1761134671;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yIkDzOp9lOkC64phyHj+bKX1qlxxtXvg/X9w367rNpc=;
        b=Ycb8rKNB1DpT48EaqsMOCZnKe0d/tPjuhNXiyWUpEiLtIvaF62HATTOk21JM9lkztJ
         PwfCfRA4myj5ozAYNA/Z2lq6SDQ+SEDOI9K/eV9YpTWhXgj4is79ldmhf/+xpBEEMY/P
         fFvrKDCS8mqMhaQGzktrNtlrIoSC0VbcAEaaLfg+SFn6XtP5iqL64FL+/jqkbS1CeE2X
         Xzs1Blgi8JNRpL67xNalBVHCv2QqElrqvCtqqIVpj2ZyddBJtShH5Uib+zd5KIUUDfDC
         u3Vj4siqgwDKyS9dIw8m4O8IG0JJ10uOcfo8hlO9ljtREdIBWxin3S4e8PmUmsHUPmxf
         UyXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMKF2hFFh7d9vb5/7BbIn/mflp13kn/eL2Zv3lbq6kUckRDCdxGwGonUYlFEUEC+iobakJDrRjLb6ezDeSMg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyLUxD60RB5WpBUTnEynNiihucAhQ0r03bTXYdFQUSPAfbEC2c5
	bZIryefch4/1FfDVafXfiUj6IsmVD7VxcnZ5cs4iSfYPaxF6ndmK0MuIHF3MBn5EHQzwGvbHKIg
	gkpfgOC57dpnSSVh4+AOKYHzggzREtnNEew+Xuh7h+A==
X-Gm-Gg: ASbGncva18ILN4jyLXNORNxkVPJrnvvYDmbk+muaLFD1ilwfBTttC+VnVk0rwXigmCD
	hJ3UQdXP36qApaKvsAccWgMATaFzOZXBrPIe1x14DBZKjO/gb1EzOFYPl3JsMURawW7oAoZ7tbU
	kJtfyM3ARWLktJIDJ5u6JQT1hXd1WGeMvOGLmHSaBAlAR3GBYUKwghmNXRaNyKrjt6cYwQfkmN6
	xU1W4ntArSzASgkXExr8PWtdL9KJklT7A==
X-Google-Smtp-Source: AGHT+IGsy4ghNUujV8ICs5xCd3l4JFRIFi1WBGAyKhaZaEA9CMFYjjgZCN0vS1WL/9stf48sqTR9sa0kj6mJ0PU2Rkg=
X-Received: by 2002:a05:620a:800b:b0:85b:5fdf:69ef with SMTP id
 af79cd13be357-883524cb7c1mr3776426285a.30.1760529870781; Wed, 15 Oct 2025
 05:04:30 -0700 (PDT)
MIME-Version: 1.0
References: <20251013060212.14583-1-vignesh.raman@collabora.com>
In-Reply-To: <20251013060212.14583-1-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 15 Oct 2025 13:04:18 +0100
X-Gm-Features: AS18NWBrg_BqO2tS4RN_x8d2btqMDE8us2R2sNEBkP2IYKjicDOGCIjh3Jp7IkM
Message-ID: <CAPj87rPDppYBRuQ99mh=VqrsSErGKcw-ZRY+zPuGrDj77G5k6Q@mail.gmail.com>
Subject: Re: [PATCH v1] drm/ci: disable broken MR check in sanity job
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch, 
	robdclark@gmail.com, guilherme.gallo@collabora.com, 
	sergi.blanch.torne@collabora.com, valentine.burley@collabora.com, 
	lumag@kernel.org, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_050432_068603_116BF566 
X-CRM114-Status: UNSURE (   6.25  )
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

SGkgVmlnbmVzaCwKCk9uIE1vbiwgMTMgT2N0IDIwMjUgYXQgMDc6MDIsIFZpZ25lc2ggUmFtYW4g
PHZpZ25lc2gucmFtYW5AY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gR2l0TGFiIHJlY2VudGx5IGNo
YW5nZWQgdGhlIHJlcXVpcmVkIHBlcm1pc3Npb25zIGZvciB0aGUKPiBhcmUtZGV2ZWxvcGVycy1h
bGxvd2VkLXRvLXB1c2gtdG8tbXktTVIgY2hlY2s6Cj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2ZyZWVkZXNrdG9wL2NpLXRlbXBsYXRlcy8tL2lzc3Vlcy84MQo+Cj4gVW50aWwgdGhh
dOKAmXMgcmVzb2x2ZWQsIGRpc2FibGUgdGhlIGNoZWNrIC0gaXTigJlzIG1vc3RseSBvYnNvbGV0
ZSBhbnl3YXkuCj4KPiBCYXNlZCBvbiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVz
YS9tZXNhLy0vbWVyZ2VfcmVxdWVzdHMvMzc3ODIKClRoYW5rcyBmb3IgZml4aW5nIHRoaXMuCgpS
ZXZpZXdlZC1ieTogRGFuaWVsIFN0b25lIDxkYW5pZWxzQGNvbGxhYm9yYS5jb20+CgpDaGVlcnMs
CkRhbmllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
