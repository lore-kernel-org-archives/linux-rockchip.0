Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A33C0C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 14:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1KlkaRmtm8Q9b112IJVUDHy7nJgTx9DZYPtl09CqFsQ=; b=OCViztQ2vCfB4XNMtyH/M+VSze
	WlEyVta4Ui0/Qr/V5BgVfF8S/m09eIKqwWhZF7RVhwtdLTtNLLuZkOMrrlHMhei8b9EMRjc75fVvA
	FokSmqaBA46HeGrHg9/AFtvdOg2x3qOO4vDpU7EnG+QT1ww82n+/exLTGRHHiHtBdNChrmXQonBFI
	H0rZb7nvKkiv2NpbQPc2G+jbPK3cUQPyhqObnvSXXShFlAE9YlJy8f2QhzF1oYFUipAMw4fkcJAPh
	LGzER+4i/Hb0roBcpmp5tQPztkZswlwbGat/4fMJcL1mKSY3dSjY+4hOaYMpKOTLIx0gPoTvrgN2l
	J+6GiOgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzK2n-002wRI-8v; Mon, 20 Dec 2021 14:53:41 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzK2Z-002wKG-Ep
 for linux-rockchip@lists.infradead.org; Mon, 20 Dec 2021 14:53:28 +0000
Received: by mail-lj1-x22f.google.com with SMTP id bn20so16382660ljb.8
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Dec 2021 06:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KkU1bsAofLPS+mp8FievzE25/EmplJ7+cysz+vbgjSY=;
 b=oyOXtiMXVCSqQnGo42RS7sg+FkByQov34gijMOE9Bbz9aNJO+3lnkjorTyMuwiX5A0
 GUYExv12m2nv1xN37NKA06cjnwqLw0HMCtQ2legOegubnWnEJpPOKzuR5y7x6CWX6Q8+
 ZtdXJKCxC8aDGp0IMgscW4U0sUfdJVmqrP2d2zpAWoduxOLLeq8b2HaE3m2Ak6ieoyWk
 oJXTpEv29XQys/4qy+MAhGPATZfb5DNa4ZZvUi4R4PHItok5oAzV62qeZJjA9exi9obB
 2hzYZ6ZyQyRPkLA1IfOCS2O/uYcCinEC7R29T4/UZwZlA33N4dqb0WsxPBikgDbQa9Zt
 s8HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KkU1bsAofLPS+mp8FievzE25/EmplJ7+cysz+vbgjSY=;
 b=UwIaQwePrba2H6rXTE2fAepzeua6qkIdDVXCKBsBrnD3N9h3+ciwWz0k28DK9e8CPr
 B8EnNDGV1sPSIgcB90K63RT8SAGq5m4oidfLivI9GMDHUWVvBRhKc1G/XhxdrukTZx+8
 2HE4m3sxxR2j8yHeABGH3IiNzNMrFpCfcyZVUvXot9geCAOVoC3ULB0q44o2nwhitbuB
 DL3GmZ+r0WUdBtgvkdnIkDzpZYFUM11SD8+H5rNrCuFQJktBOpBacM5waGWKI4MCc71W
 BZjT1Rnpm+Xlse8V024/ziG+l3s0epryNskMliH42XJjDACK+pEdxmCtKh2FG9qvIDIi
 zTPg==
X-Gm-Message-State: AOAM533VDzwW0d0/zjbf6JUnl1Ztp7HrpTKKufhcrjE1rprInT4MJw9P
 lkfazujLSLfy3sMQQwAr/aU=
X-Google-Smtp-Source: ABdhPJwaD1Pe3ClH9yjQltppD2TGjKsIpwJHPO/Jle41COkkKIAbTkWC5F/480DufJNcEeCJvViVTw==
X-Received: by 2002:a2e:a785:: with SMTP id c5mr14397856ljf.384.1640012004748; 
 Mon, 20 Dec 2021 06:53:24 -0800 (PST)
Received: from [192.168.2.145] (46-138-43-24.dynamic.spd-mgts.ru.
 [46.138.43.24])
 by smtp.googlemail.com with ESMTPSA id i23sm844450lfv.261.2021.12.20.06.53.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Dec 2021 06:53:24 -0800 (PST)
Subject: Re: [PATCH v3] mfd: rk808: add reboot support to rk808.c
To: Peter Geis <pgwipeout@gmail.com>, Lee Jones <lee.jones@linaro.org>
Cc: Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, linux-kernel@vger.kernel.org
References: <20211220144654.926112-1-pgwipeout@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <67131f4a-2544-0365-1a92-261983cdd979@gmail.com>
Date: Mon, 20 Dec 2021 17:53:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211220144654.926112-1-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_065327_544145_9A76F378 
X-CRM114-Status: UNSURE (   8.98  )
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

MjAuMTIuMjAyMSAxNzo0NiwgUGV0ZXIgR2VpcyDQv9C40YjQtdGCOgo+ICtzdGF0aWMgaW50IHJr
ODA4X3Jlc3RhcnRfbm90aWZ5KHN0cnVjdCBub3RpZmllcl9ibG9jayAqdGhpcywgdW5zaWduZWQg
bG9uZyBtb2RlLCB2b2lkICpjbWQpCj4gK3sKPiArCWludCByZXQ7Cj4gKwl1bnNpZ25lZCBpbnQg
cmVnLCBiaXQ7Cj4gKwlzdHJ1Y3Qgcms4MDggKnJrODA4ID0gaTJjX2dldF9jbGllbnRkYXRhKHJr
ODA4X2kyY19jbGllbnQpOwoKU3VjaCBjb2RlIHVzdWFsbHkgc2hvdWxkIGJlIHdyaXR0ZW4gaW4g
YSBmb3JtIG9mIHJldmVyc2UgWG1hcyB0cmVlIGluCmtlcm5lbCwgYnV0IG5vIG5lZWQgdG8gcmVz
cGluIGp1c3QgYmVjYXVzZSBvZiBpdC4gVGhlIHBhdGNoIGxvb2tzIGdvb2QKdG8gbWUsIHRoYW5r
IHlvdS4KClJldmlld2VkLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
