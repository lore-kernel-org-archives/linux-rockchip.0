Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94E40C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 12:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ByCayNVaWKqU6Cb7a5tDB/sOeOSA8vyvq6vnhkmG4U=; b=I2hP4pS1mhc73U
	lVU69tgUdUFNKB3BNdyojcyg7KlYZ5YJ7WHmAkTRHZhCdLIIDttBPlcVXdpN33Ml8tAWN7hAMqdNV
	WN1awgSvBQcjLnKw8cmCng2hhQFuL/zM1DCkSiHxrXgjjMFqz0GsCA7ciohhZP0xLUVPMIBYJ1hpT
	zXyjqeM3dTJo/EplHOBLoQ5xCwBal58yq9XMDkRcmGP9eER+OMY4kdXsKMiu/gCYVqeW3chgAbLc6
	LEIpAUifT0wmJqqLVHP2lKJ1wlevzq8CnM2PpMBvp/DOZY+3Zujls+GyjUpjVztZLCAim+d62jZD6
	Bpse9L+NJgR7V31iFfwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n018F-00AM5a-79; Wed, 22 Dec 2021 12:54:11 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n018C-00AM4O-GR
 for linux-rockchip@lists.infradead.org; Wed, 22 Dec 2021 12:54:09 +0000
Received: by mail-wr1-x42e.google.com with SMTP id q16so4726643wrg.7
 for <linux-rockchip@lists.infradead.org>; Wed, 22 Dec 2021 04:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=QIUPDb2Al9l0PriEYRa2k7fsEcDbO0MzTz3il7SpOZ4=;
 b=awpbkn22TMyUZYnw+n+pPYfeNjmdqItYTDKxBSVCmzRL+uqHw2yNuSaZQzFo8IT+uG
 d7kH2EdfswxqFfV2FqET5quFASwdz83mFTXp/wjaumyT5iJoQA1wPRKDolldfaELmuQn
 gXAYEoPf1mXkttOSfjrwo8Ux0lj+VM14lBIEZKf/U+CYfxGQxBXp6wZCC1deBg1bRzoL
 PW3Yi3Q2JLQIBIkWFb5dYx3UxNDxaghNO98VWAe2fiKU1OQuqCPkj5F/Q9h2zf2uB8bb
 lT+D0lM5korL1n/i9LRiSkR4BAxkyBQm3bcBRkg3Cz56uM2gCU6gzZ+ICDaf0VAsWidy
 lPaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=QIUPDb2Al9l0PriEYRa2k7fsEcDbO0MzTz3il7SpOZ4=;
 b=2Bymi+qu6VzA5seN3RW0TeVsVfgvUbVWCVrC0tYZZAW01sMTXsvGvXbwPrsSZgubXQ
 MsVmY5135a5iAzbZIQl7eaIRyeYufVSEWk2sinNeRE2AIL8zO7pSs/PX1tSq9XE/17jN
 /p4mUsKkTiMVi73+hlhwfqbVT+sOQWdB2u54atvUUDPGjmYM6NynRi4jTBcqmkP87Yik
 NBknvOqKHiWRcvC6s+rs5eIFn63U0LzSEe/lgWOW0JgxHDVX8rvmS/BB7NvXpbTGKUtE
 uHV3BT72a2M747zhyFRwcgXoPvClgorsOx+Jy/ckZNL4RD+UVMa7HXmyev+f2WcG3F64
 TjXA==
X-Gm-Message-State: AOAM53360/slb4O9OGznwr4cKU/YXNAzOxAqY3hL9vN6z0BwVl/saMD9
 aTo2Fvdw4tE46B+/iRmK42nK4g==
X-Google-Smtp-Source: ABdhPJwZ0cIPwiohcaickHlCzeWrf8plicrIghT5eQTF8d3wUQevpwRC9KhmCWWCaIrNRPHbfdIv9A==
X-Received: by 2002:a05:6000:c6:: with SMTP id
 q6mr2033013wrx.181.1640177646610; 
 Wed, 22 Dec 2021 04:54:06 -0800 (PST)
Received: from google.com ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id p2sm1806840wrs.112.2021.12.22.04.54.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 04:54:06 -0800 (PST)
Date: Wed, 22 Dec 2021 12:53:59 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Dmitry Osipenko <digetx@gmail.com>, linux-kernel@vger.kernel.org
Subject: Re: Re: [PATCH v3] mfd: rk808: add reboot support to rk808.c
Message-ID: <YcMf56MvFv0ym7E5@google.com>
References: <20211220144654.926112-1-pgwipeout@gmail.com>
 <trinity-c54ecce4-7a39-4143-b136-f53c9b40ffd1-1640018026851@3c-app-gmx-bap45>
 <YcGU6pQqfEPBqjrO@google.com>
 <4963E4A2-63B4-48A1-BDDD-5F9D07D71598@public-files.de>
 <YcMHhJTsQMLDRRsN@google.com>
 <trinity-4d94e8dd-1499-4d5f-84c3-85075a4085dd-1640172673779@3c-app-gmx-bs44>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-4d94e8dd-1499-4d5f-84c3-85075a4085dd-1640172673779@3c-app-gmx-bs44>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_045408_574174_922DD76B 
X-CRM114-Status: GOOD (  12.88  )
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

T24gV2VkLCAyMiBEZWMgMjAyMSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gPiBHZXNlbmRl
dDogTWl0dHdvY2gsIDIyLiBEZXplbWJlciAyMDIxIHVtIDEyOjA5IFVocgo+ID4gVm9uOiAiTGVl
IEpvbmVzIiA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gPiBBbjogIkZyYW5rIFd1bmRlcmxpY2gi
IDxmcmFuay13QHB1YmxpYy1maWxlcy5kZT4KPiA+ID4gSGVyZSBpIGhhdmUgc3F1YXNoZWQgdGhl
IGNoYW5nZSBpbjoKPiA+ID4KPiA+ID4gaHR0cHM6Ly9naXRodWIuY29tL2ZyYW5rLXcvQlBJLVIy
LTQuMTQvY29tbWl0LzA2NDMwZmZjYjZkNThkMzMwMTRmYjk0MDI1NmRlNzc4MDdlZDYyMGYKPiA+
ID4KPiA+ID4gV2l0aCB0aGUgY2hhbmdlIGkgY2FuIGNvbXBpbGUgaXQuLi4KPiA+Cj4gPiBOb3Qg
c3VyZSBJIHVuZGVyc3RhbmQuCj4gPgo+ID4gUGxlYXNlIG1ha2Ugc3VyZSBhbGwgcGF0Y2hlcyB5
b3Ugc2VuZCBmb3IgaW5jbHVzaW9uIGludG8gdGhlIExpbnV4Cj4gPiBrZXJuZWwgYXJlIGZ1bGx5
IHRlc3RlZC4gIFRoZXkgc2hvdWxkIGFsc28gYmUgYmlzZWN0YWJsZSBpLmUuIG5vdAo+ID4gZGVw
ZW5kIG9uIHBhdGNoZXMgYXBwbGllZCAqb24gdG9wKi4KPiA+Cj4gPiA+IEJ1dCBpbiB2NCAocGF0
Y2ggaXMgdGFnZ2VkIGFzIHYzIHRvbykgdGhlIG9mX3Byb3BlcnR5X3JlYWRfYm9vbCB3YXMgZHJv
cHBlZCBjb21wbGV0ZWx5Lgo+ID4gPiByZWdhcmRzIEZyYW5rCj4gCj4gb25seSB2MSB3YXMgc2Vu
dCBieSBtZSA6KQo+IAo+IHY0IGlzIGNvbXBpbGFibGUgYW5kIHdvcmtzIG9uIHJrODA5IChCYW5h
bmFwaSByMiBwcm8pCgpNeSBjb21tZW50cyBhcmUgZGlyZWN0ZWQgYXQgd2hvZXZlciBzZW50IHBh
dGNoZXMgd2l0aG91dCB0ZXN0aW5nLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3Ig
VGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdp
dHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
