Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CA3EC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 16:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8iLUZ7oIVcv97tYGWWftq3Vn2mWqOR55yT3OEy/LNII=; b=3SMjvOZ++bJVhvrtl+0hNoXNVI
	nQ+IqErT9zzglgGV4NBaWueEalUKFZqI/DDRiQ80tLyDHugBdROrCIPTa8n0hBwsIvcwJ2mogiZTE
	mbz9cq4jLgT4SyX23M1mkUM85dv66hp2B1qxjQJfko7HA6wM6pHaCfM7O28GKsl32byK8Ku2Xj6m1
	IvDWsnZLtBw32tKYISq5DTNESQZeRq5mBSb7MDTiMyVyLYMmLm3C1CTOlhDBuZoYMUy9n/o9+Q9U1
	Off4sRM6jdI5PgkysYAs1fsHVwr9YlNCmdaQ3R8Hda23TqgXtEi/cv5z7gcvOIP65aWsUSAnU4b6E
	kaQPaNKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzLem-003K3E-Qg; Mon, 20 Dec 2021 16:37:00 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzLek-003K22-9d
 for linux-rockchip@lists.infradead.org; Mon, 20 Dec 2021 16:36:59 +0000
Received: by mail-lf1-x130.google.com with SMTP id g11so23081545lfu.2
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Dec 2021 08:36:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=c+N78WDl9K0dF3N13dZEbhlEbhbeqqk4HFIa/BtOnu0=;
 b=hPpZMPbJhP6wtRXH+sEm9QWUCYxPnrFRTQcnYsTof1GrKcDJ/5aPwWJ9oIw0x2tJad
 9Z4KPc7xyAJDJlM3kWYdAn/1pXbTOJ1fgxaEh/Gy2SFs39jjD898NSMPov2mqEQ+Lqiz
 h05Y1zENSsYKOvgG2Cu9dSZ27h4Y90ll+IKly76v4N93/kPpK2HwwOTD4CSMP6Jqnfv5
 Dq7tAtX7yTMQBsCRgylHGvLtJi2BgYqahfPeufB3gOkImcgRMzR3TENnCBH75DV5zTKX
 ahxK1x3Itn3g7On44owcV+7wrujuEaraexf231EtucyEvQcXLvvYO3wVKIcbIXtfL8Fn
 IBhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=c+N78WDl9K0dF3N13dZEbhlEbhbeqqk4HFIa/BtOnu0=;
 b=yogdr/Lt8S3ZZX/ehxBKGXphRXEq7136AN1uG098+D6KG7DDMOfez0xVJSzuwnpwTQ
 BAzgN6pv3ONV6EADszGLfQ+bA8H5IcJsQy+5HuT5Hff2bhDy2ZTjaF1FX4mZ+Xq7BIZw
 7Vp8kzQADbYZC0btzAWQCJoSRzHieeoLnDRYkTgz7jzxivfLVgcYaVtWj1Sf0GH1fKZu
 /lRq3kkMHipASU7Q66jh5EE/ngfDGuskVophVWonmDTUsh6c15vHqG7dDc3HudUtb+Po
 Bfvw2E2lo9lnLwKoZ4D86dviS7cHe00wtCgtrWU3B8YqanMLhap1XiKWGk1U4vy3g2H8
 Q+ag==
X-Gm-Message-State: AOAM532VQIJjci243kLXW2MjJ2TbuK8SqUttRPAKCaeL8H7Fm+8KnWes
 UOebiQK4kup0rbtSDhyzeAY=
X-Google-Smtp-Source: ABdhPJyFahvsEgzpy32B8BlbvcAWxb2T1XTVc1eB2QbgI9VFCP7zqP7whp3C7iKFTs0eJil9f610Tg==
X-Received: by 2002:a05:6512:32a3:: with SMTP id
 q3mr17164895lfe.473.1640018214973; 
 Mon, 20 Dec 2021 08:36:54 -0800 (PST)
Received: from [192.168.2.145] (46-138-43-24.dynamic.spd-mgts.ru.
 [46.138.43.24])
 by smtp.googlemail.com with ESMTPSA id br37sm927701lfb.99.2021.12.20.08.36.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Dec 2021 08:36:54 -0800 (PST)
Subject: Re: Aw: [PATCH v3] mfd: rk808: add reboot support to rk808.c
To: Frank Wunderlich <frank-w@public-files.de>,
 Peter Geis <pgwipeout@gmail.com>
Cc: Lee Jones <lee.jones@linaro.org>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-kernel@vger.kernel.org
References: <20211220144654.926112-1-pgwipeout@gmail.com>
 <trinity-c54ecce4-7a39-4143-b136-f53c9b40ffd1-1640018026851@3c-app-gmx-bap45>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <b0d0e2ff-4282-f104-b8f5-554b059200c9@gmail.com>
Date: Mon, 20 Dec 2021 19:36:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <trinity-c54ecce4-7a39-4143-b136-f53c9b40ffd1-1640018026851@3c-app-gmx-bap45>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_083658_373389_013C10D9 
X-CRM114-Status: GOOD (  10.66  )
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

MjAuMTIuMjAyMSAxOTozMywgRnJhbmsgV3VuZGVybGljaCDQv9C40YjQtdGCOgo+IEhpCj4gCj4+
IEdlc2VuZGV0OiBNb250YWcsIDIwLiBEZXplbWJlciAyMDIxIHVtIDE1OjQ2IFVocgo+PiBWb246
ICJQZXRlciBHZWlzIiA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPj4gQEAgLTc0OSw2ICs3OTEsOSBA
QCBzdGF0aWMgaW50IHJrODA4X3JlbW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQo+PiAg
CWlmIChwbV9wb3dlcl9vZmYgPT0gcms4MDhfcG1fcG93ZXJfb2ZmKQo+PiAgCQlwbV9wb3dlcl9v
ZmYgPSBOVUxMOwo+Pgo+PiArCWlmIChvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wobnAsICJyb2NrY2hp
cCxzeXN0ZW0tcG93ZXItY29udHJvbGxlciIpKQo+PiArCQl1bnJlZ2lzdGVyX3Jlc3RhcnRfaGFu
ZGxlcigmcms4MDhfcmVzdGFydF9oYW5kbGVyKTsKPj4gKwo+PiAgCXJldHVybiAwOwo+PiAgfQo+
IAo+IHRoaXMgY2hhbmdlIG1pc3NlcyBhIGRlY2xhcmF0aW9uCj4gCj4gc3RydWN0IGRldmljZV9u
b2RlICpucCA9IGNsaWVudC0+ZGV2Lm9mX25vZGU7CgpHb29kIGNhdGNoLCB0ZWNobmljYWxseSB0
aGUgd2hvbGUgb2ZfcHJvcGVydHlfcmVhZF9ib29sKCkgY291bGQgYmUKZHJvcHBlZCBmcm9tIHJr
ODA4X3JlbW92ZSgpIHNpbmNlIHVucmVnaXN0ZXJfcmVzdGFydF9oYW5kbGVyKCkgc3Vydml2ZXMK
aWYgaGFuZGxlciB3YXNuJ3QgcmVnaXN0ZXJlZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
