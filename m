Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 713F5C54EBE
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jan 2023 10:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ul8IVvvmh7d72DumNQCyy/MogD4pKhRPp7EJtOlgYLI=; b=H5cmb6INCR6tqC
	O1/KcqIsIdlATtwPJxPQiAS3OfiXPHHVVzw49RNZNesLmxFUVTTTXjn3yuk4Dak92PEUm82j0RN0f
	iIlbTYk1BpkWjJ7v6w3uWmbUlsBZB2oG59DQ0c312tQwda+Vl1RRvlSLg3E4b3LuipTOZ5wCcN7y8
	QiXOnJ0edn4vD3u0y4JkZEgr/7YtYOiFB+qq1kxx//zfvrKcbVei7DyjQcK6l0XVeCN6POfvRx4kk
	EGnxc+WH778fbPfrnYfixxv91/H3RE6lWc12w88p4dvAQkHN/qHjo0KQQG/0/En6HbgBlGx42CBrN
	6wTl2KO5tw5YiuRp+NAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGHB3-001jig-Ko; Fri, 13 Jan 2023 10:20:49 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGHAo-001jd3-39
	for linux-rockchip@lists.infradead.org; Fri, 13 Jan 2023 10:20:35 +0000
Received: by mail-wm1-x32f.google.com with SMTP id bi26-20020a05600c3d9a00b003d3404a89faso539086wmb.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Jan 2023 02:20:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qeK7zBle1ZG8rV3Y7IGNN3bCq+zsGncHZ2BZANEY/2E=;
        b=u90TOsedAG5PruNssZwJ3VR4f6qnkzc8XgchIvdKCtH/wj87kHdywB1sloPpydYhP0
         IyWctUAbUQJQw0K7kh4NgC342XKpyMnM5buQ7TXSeVEjZq0ecOzYCvgkyuYh1pBAt5N1
         jIyBszkYXbKNXKy0EkgTPiYkKrkIE1TPzUkPHZytlYplu+BI1D8lJ9Xj1UukoqlZuv25
         yRNHjXWgp7h3uKBMPhHg8kNzoA6ZIsUOOLVu7c6kyNsf4tCe5gdtvfiS8O185EXX3cAR
         qbmVI5Iz3+dZIyzeZFB0Lx4P40QlWIkvtmBymBZkj4bJQd48hKvhuJ2uy0s+J/s92/Fz
         clSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qeK7zBle1ZG8rV3Y7IGNN3bCq+zsGncHZ2BZANEY/2E=;
        b=k5/u4rAEXd3wbF7/jLLryYMKth4gmbvNSHB/VUsFe+wU1q4LodM31O+9eSETBOfqzn
         rROaRc3114/acTllsdmWJeWRG1B/OOrQxsxSZJVQYGehRth0c5s++uHBZzXqWG9St7Yf
         DlCSZcFtuyHFKQlPmKZ9MlYbuFCAP58iTz+2dlhVvx3O9R5/mEJhOGdP1ADU+Ix/svgN
         qxj+E/FRSwiuDVZsX+rPQSsVsuYQusp0QvsSSakDaoylpIz2/eVc2IszQ77bE0SEDylm
         7XzXpT+pemKSH8J7v7TXPtZvf8S6IZfw5zcMAtZr7Ozg8PaAXMoPHSA4eVtxYHi9ZzJZ
         /fsQ==
X-Gm-Message-State: AFqh2kqkVA7S4YQBib/CrSE1XTyH00nszE18VZMpamMGDsIxpihAe4w0
	Lg4cyX04zBGOhhv/UwLKoBVOhA==
X-Google-Smtp-Source: AMrXdXuhhYEJ7t5G1KF89cVh8Tloh/FZBKX5kD0tp9/HIy0e3XB/M1kRbQYwrXKq94eyzY1a6QkTYQ==
X-Received: by 2002:a05:600c:4e13:b0:3c6:e63d:fcfc with SMTP id b19-20020a05600c4e1300b003c6e63dfcfcmr57949084wmq.35.1673605231785;
        Fri, 13 Jan 2023 02:20:31 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id c18-20020adffb52000000b0025e86026866sm21746450wrs.0.2023.01.13.02.20.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 02:20:31 -0800 (PST)
Message-ID: <35b1b4bb-dcbd-3c71-5619-775677721898@linaro.org>
Date: Fri, 13 Jan 2023 11:20:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] thermal: rockchip: fix kernel-doc warnings
Content-Language: en-US
To: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Amit Kucheria
 <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20230113064500.16103-1-rdunlap@infradead.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230113064500.16103-1-rdunlap@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_022034_217031_651B3B10 
X-CRM114-Status: UNSURE (   9.18  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTMvMDEvMjAyMyAwNzo0NSwgUmFuZHkgRHVubGFwIHdyb3RlOgo+IERvbid0IHVzZSAiLyoq
IiB0byBiZWdpbiBub24ta2VybmVsLWRvYyBjb21tZW50cy4KPiBDb252ZXJ0IG9uZSBmdW5jdGlv
biBkZXNjcmlwdGlvbiB0byBrZXJuZWwtZG9jIGZvcm1hdC4KPiBQcmV2ZW50cyB0aGVzZSBrZXJu
ZWwtZG9jIHdhcm5pbmdzOgo+IAo+IGRyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmM6
NjQ6IHdhcm5pbmc6IFRoaXMgY29tbWVudCBzdGFydHMgd2l0aCAnLyoqJywgYnV0IGlzbid0IGEg
a2VybmVsLWRvYyBjb21tZW50LiBSZWZlciBEb2N1bWVudGF0aW9uL2RvYy1ndWlkZS9rZXJuZWwt
ZG9jLnJzdAo+ICAgKiBUaGUgbWF4IHNlbnNvcnMgaXMgdHdvIGluIHJvY2tjaGlwIFNvQ3MuCj4g
ZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYzoxNzk6IHdhcm5pbmc6IGV4cGVjdGlu
ZyBwcm90b3R5cGUgZm9yIFRTQURDIFNlbnNvciBSZWdpc3RlciBkZXNjcmlwdGlvbigpLiBQcm90
b3R5cGUgd2FzIGZvciBUU0FEQ1YyX1VTRVJfQ09OKCkgaW5zdGVhZAo+IGRyaXZlcnMvdGhlcm1h
bC9yb2NrY2hpcF90aGVybWFsLmM6MTM0Mjogd2FybmluZzogVGhpcyBjb21tZW50IHN0YXJ0cyB3
aXRoICcvKionLCBidXQgaXNuJ3QgYSBrZXJuZWwtZG9jIGNvbW1lbnQuIFJlZmVyIERvY3VtZW50
YXRpb24vZG9jLWd1aWRlL2tlcm5lbC1kb2MucnN0Cj4gICAqIFJlc2V0IFRTQURDIENvbnRyb2xs
ZXIsIHJlc2V0IGFsbCB0c2FkYyByZWdpc3RlcnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFuZHkg
RHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+Cj4gQ2M6ICJSYWZhZWwgSi4gV3lzb2NraSIg
PHJhZmFlbEBrZXJuZWwub3JnPgo+IENjOiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9A
bGluYXJvLm9yZz4KPiBDYzogQW1pdCBLdWNoZXJpYSA8YW1pdGtAa2VybmVsLm9yZz4KPiBDYzog
WmhhbmcgUnVpIDxydWkuemhhbmdAaW50ZWwuY29tPgo+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPgo+IENjOiBsaW51eC1wbUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiAtLS0KCkFwcGxpZWQsIHRoYW5rcwoKLS0gCjxodHRwOi8vd3d3Lmxp
bmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNv
Q3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJv
PiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwK
PGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
