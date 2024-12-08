Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E1D9E77180
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Dec 2024 12:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJ/In6AdC/ygjzLCw8msCq3sKix4Bp35denGAPA8HBA=; b=q84tJmA2I2ubUO
	CQK4Dzy7f27YhZBVghRw9kt4M8/K9iCchsLJ5CXPpvLl/WDrFnTLYMBdEUkPGAs3EkNtuHA5bgGjJ
	+36CsxHFi4AUr2JKQw50WPr5yLg79LPipRJl11Uy+dLVukhI1sljzWy1VDW/L/2WWzts07JT+3GU/
	yEPuoPeosyW6GDHC2VRl1Clwb2dtv1wWr5JetUUPQ4ISbtKKkdQyglKDEx9hVToeFgakn1fpcAOnZ
	1yrShICA2BY3d1O6myULYpwUbaWJvOLWM1Erj6PhyMHjlVHfQDhDYnZLMo48+P7FkvSrQx+g6UQgg
	2IeqUH5eYmxtArVRMiAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKGeV-00000005GVx-0pAg;
	Sun, 08 Dec 2024 12:44:47 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKGeR-00000005GUM-1JRN
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Dec 2024 12:44:45 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2163b0c09afso4396635ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 08 Dec 2024 04:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733661882; x=1734266682; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ObzuBtRvdTYYc5ZI72EO8xxEXcCsf9XtGeinrNeixuA=;
        b=DzsH2FligkCcErC58dCxYSv0QK7F2ynYNGzsSkt3OgTq9YgDIyZKf0uOJU7FmAhWRp
         N/fgahFlLsYAfdiC2CU/5f3TgOnDF/wzssD2k/eXnTpoZP49MMO1gYKOFIOulQbcXdg0
         tIxdE82FykheXYCDsOzglLUK+wv5/H7Fo+X6svOrQXrqXiwJHxzX3DC7vATIw7c7ked1
         6Xxr6No4R1uP56PRdHeuUpxbxM0NzV/3U1pot5HCwrwBw+rmy94ab759yjTYoa29iSQd
         /9k0AIMeePJ4k0JMvorN/ZVVRKAes83DOjtPjJP2hBlNRhnsONoDkiUnS0hpvR17L18R
         965Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733661882; x=1734266682;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ObzuBtRvdTYYc5ZI72EO8xxEXcCsf9XtGeinrNeixuA=;
        b=r8YgWngQOr9mr8ZK4aS9ZSyACEK9Zs3ZEmfHqCqiEVLgwg/vL3JwmNhY/rmQjuIJ0p
         MI7Qx0+gifcyP0MYcZ7Z1SLveVOZi7U6HHJVswItotEjLnVr+02iq1a5vgMHnh2OKUCf
         H2GmYUt9uYtakZ6JAqOAyNcrMTO2uS1MNzgBKkIPNAnvJHwDTZPzhSmEYfL0ySQql7hm
         mWW6ROwGRUab4keA2v5TtnSzqXC+mNTBFxi1EXVTskP68a1RYH7x7vdFbNffl8mmwAUc
         Gxj223MTWlidB3RDclUT3P7c9JBYKAxMcVz4Y5CBiqo8TFkKSsBzH5f3zavOgdPckFmx
         OuRg==
X-Forwarded-Encrypted: i=1; AJvYcCWYGzcA+n01V/yZIl4lAtM0CikSK6LIENxezeDNp+9KfbTIVkLXagBZ5U8E/uKoJw5fUeYOyWDKXsjaLmuejw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2+rqPhwDg+vQs0e1ZB4xpjuvsNFCWhpg2xtsnHs4FNIoxn+7B
	qCxbdyl57beUsuw4VnLWRmOcz6OdE+/LzwU66+6Uur30JKy2FrdhHVTCBdLfpg==
X-Gm-Gg: ASbGncv0KmIHXd+9HTPuStuXADu++lJmv4kS80gb8j8udLsUIiYE31IKD6TgZfVd2nS
	H1c2CLVOYkY4pKnzdBARiSPPfwfIL9KTcrAGCDQKLTu6giZYOoMy7XulY8YMB2L7174qpuRRoeS
	7JUQsJKl7/HI6/zSOs6IlWewvnE7OXpbEJCpFH4l+XMPlJ3Gg24fDek4jx5B9kpF1PP3jHJgWOe
	7am1UfUXgNx0N2NwxqpZ9TTRx1qZrOG2ry1Wlby1DkpOm4b3xHrM7u21EQ=
X-Google-Smtp-Source: AGHT+IFWStgtABEgXeuwa+0us5wTIZE6ArS1wlJLYxBQNATuRowJR77uhfkJK4Vk9aSU1pZvjciMaw==
X-Received: by 2002:a17:902:e5cd:b0:215:9a73:6c45 with SMTP id d9443c01a7336-21614d45334mr158926955ad.22.1733661882268;
        Sun, 08 Dec 2024 04:44:42 -0800 (PST)
Received: from thinkpad ([36.255.19.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21617531ba7sm39465845ad.106.2024.12.08.04.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 04:44:41 -0800 (PST)
Date: Sun, 8 Dec 2024 18:14:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: Re: [PATCH v2] PCI: rockchip-ep: Fix error code in
 rockchip_pcie_ep_init_ob_mem()
Message-ID: <20241208124436.vicbi72xyomahp3s@thinkpad>
References: <Z014ylYz_xrrgI4W@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z014ylYz_xrrgI4W@stanley.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_044444_161481_905E9BB4 
X-CRM114-Status: GOOD (  15.24  )
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

T24gTW9uLCBEZWMgMDIsIDIwMjQgYXQgMTI6MDc6MjJQTSArMDMwMCwgRGFuIENhcnBlbnRlciB3
cm90ZToKPiBSZXR1cm4gLUVOT01FTSBpZiBwY2lfZXBjX21lbV9hbGxvY19hZGRyKCkgZmFpbHMu
ICBEb24ndCByZXR1cm4gc3VjY2Vzcy4KPiAKPiBGaXhlczogOTQ1NjQ4MDE5NDY2ICgiUENJOiBy
b2NrY2hpcC1lcDogUmVmYWN0b3Igcm9ja2NoaXBfcGNpZV9lcF9wcm9iZSgpIG1lbW9yeSBhbGxv
Y2F0aW9ucyIpCj4gU2lnbmVkLW9mZi1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBs
aW5hcm8ub3JnPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5h
bi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgotIE1hbmkKCj4gUmV2aWV3ZWQtYnk6IERhbWllbiBM
ZSBNb2FsIDxkbGVtb2FsQGtlcm5lbC5vcmc+Cj4gLS0tCj4gdjI6IFVwZGF0ZSB0aGUgZ2l0IGhh
c2ggZm9yIHRoZSBGaXhlcyB0YWcgYmVjYXVzZSB0aGUgdHJlZSB3YXMgcmViYXNlZCBJIGd1ZXNz
Lgo+IAo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYyB8IDEgKwo+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtcm9ja2NoaXAtZXAuYwo+IGluZGV4IDEwNjRiN2IwNmNlZi4uMzQxNjJjYTE0MDkz
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5j
Cj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMKPiBAQCAt
Nzg0LDYgKzc4NCw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9lcF9pbml0X29iX21lbShz
dHJ1Y3Qgcm9ja2NoaXBfcGNpZV9lcCAqZXApCj4gIAkJCQkJCSAgU1pfMU0pOwo+ICAJaWYgKCFl
cC0+aXJxX2NwdV9hZGRyKSB7Cj4gIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcmVzZXJ2ZSBt
ZW1vcnkgc3BhY2UgZm9yIE1TSVxuIik7Cj4gKwkJZXJyID0gLUVOT01FTTsKPiAgCQlnb3RvIGVy
cl9lcGNfbWVtX2V4aXQ7Cj4gIAl9Cj4gIAo+IC0tIAo+IDIuNDUuMgo+IAoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
