Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2216D1A447
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 08:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xapfM61tBk42IdjcXFdR69ANwsRGG0v5NjTq9oNzI7I=; b=Z3Bwy5DfAwSi/Z
	mRGHAOmL2r+5FqmElqzZt128WKcHVQq8V+FYio4DOCpPW+7+0G+e4sAY7g+o02UYNN430ukoGK+8y
	4LXoTrWk33MYglnPW8cHBCBnigZFiYCmgs+lwZkv4W5QX21/e1FeWHSZomAaRR6lierk8TXyZRAGo
	d2wHY8beReFdOhsCafKFFqd/FkwqbGIWKr0ipBICnbKipShWgddeODQHMnfnuOYxUJ5Ob8G806iXy
	hETXSb4cGZdUVNUbjZ4fU56lKuxUTjzOY45vIFPAyXcO/t55eAd1W15gAyJNNoBMnYiUy6TkNoA1m
	kM7BjQhh82+yzjoNXTXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szX5q-00000000nbP-3SSl;
	Sat, 12 Oct 2024 08:03:18 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szX4u-00000000nSW-1eUg
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 08:02:21 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-2e28b75dbd6so2032202a91.0
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Oct 2024 01:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728720139; x=1729324939; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wZqk1gpDcpLbh6iDyY6xdY16qjHfIm4cSq6P6zQlQhI=;
        b=KY8aE5twJqdaE1It4U3DdlWFLqfpxZPinF5PqUAbEsPyD8xEsjaHFCSxj0WyMUqC7K
         VwQOysY6xliRaCFkrucYNLIrgDFJGsY4x+KzYMZP1OXUIEDI1dI0iULyeGdfgsU+/IJj
         88Yv6+L/43tDdbRMSJIyfvAiyyRX3n/BhQFjilx+xc5pgwfw3XUcQaRJvE0chrQODS0z
         Gb8k/CHKnFa4ifEqa4Yi8Hsb4ulsa7h1CgNm+1dzi5/Gb5Bpk9ZvWoB3mGeRqPVAgIMa
         /uv0GF1KMuBBN9G+Qr8wIQCnGmSNJ7faxUMP9iepuOSW+V8Xp5nAQnRp9tZUCavscyGP
         p1+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728720139; x=1729324939;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wZqk1gpDcpLbh6iDyY6xdY16qjHfIm4cSq6P6zQlQhI=;
        b=xJ7Bre8mEEXyyyJG62ELd4FZ+g/QhaSy43QNvYEt+KjbGD49/FKP/nspvD9UHtNMnU
         KoDi2NIw8MWzau7PqQwdUDlaIWk+A/5IM8Wi3lQ6MgkDhCnDel6SdRdI40zvqea51/uL
         LTtfpWLsXKM9vCqt3qU6zdkhE23l9E4kjgfi9QsWrugGUUMOxOZjtnpKZvzjglUxHgkV
         WXkDzYzKgg5rUn2Ur1WLnPh2eZfN4C7ux3N2QSApkwQ01IRZOgeYXWbvICGpF2RmC4c3
         YiMi+tSBXa+UeqyfxT/VyZP5/8dJ3OTSHDhRTEDNFndpaz/yvadqLBykggTUVxGTYwsA
         CJRA==
X-Forwarded-Encrypted: i=1; AJvYcCX57EtlBE1W/Hm8iwXbQbeDkyC8qEA4MMIrqbH3a8oyzfJpba4aW7glLR+YY2TPHmH10FS6dnwS+DnOGSK2BQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzpkxJG+oZ7TQ042yanWcU1SuJk6bP9cOXv8ObGF8lMK1X9yh1g
	w2YnY5Rp4cPh7vZqUl7TDMctleTglGx2/609Z06W9uurAthYGXi5LbLv5LUE1Q==
X-Google-Smtp-Source: AGHT+IGoErZ1DMvXi7PdOjqOtgBagJx8Ivw1+HU2C6hiM6DJX1nWFZSKvbxbRddh3deh5/zJxscDyg==
X-Received: by 2002:a17:90b:1495:b0:2e2:e6c8:36a7 with SMTP id 98e67ed59e1d1-2e31536e312mr2565945a91.31.1728720139502;
        Sat, 12 Oct 2024 01:02:19 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e31af38baasm869855a91.41.2024.10.12.01.02.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 01:02:19 -0700 (PDT)
Date: Sat, 12 Oct 2024 13:32:13 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>,
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 3/3] PCI: rockchip: Refactor
 rockchip_pcie_disable_clocks() function signature
Message-ID: <20241012080213.rxllcpofy2at5vnz@thinkpad>
References: <20241012050611.1908-1-linux.amoon@gmail.com>
 <20241012050611.1908-4-linux.amoon@gmail.com>
 <20241012062033.2w7jbfiptvdlklzl@thinkpad>
 <CANAwSgS68sL2JE5wafq98gFV-jhWFx5594Ax6+aVW8mpiBgHnQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgS68sL2JE5wafq98gFV-jhWFx5594Ax6+aVW8mpiBgHnQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_010220_464575_91B1908E 
X-CRM114-Status: GOOD (  15.62  )
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

T24gU2F0LCBPY3QgMTIsIDIwMjQgYXQgMTI6NTU6MzhQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBIaSBNYW5pdmFubmFuLAo+IAo+IFRoYW5rcyBmb3IgeW91ciByZXZpZXcgY29tbWVudHMu
Cj4gCj4gT24gU2F0LCAxMiBPY3QgMjAyNCBhdCAxMTo1MCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFt
Cj4gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBT
YXQsIE9jdCAxMiwgMjAyNCBhdCAxMDozNjowNUFNICswNTMwLCBBbmFuZCBNb29uIHdyb3RlOgo+
ID4gPiBSZWZhY3RvciB0aGUgcm9ja2NoaXBfcGNpZV9kaXNhYmxlX2Nsb2NrcyBmdW5jdGlvbiB0
byBhY2NlcHQgYQo+ID4gPiBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSBwb2ludGVyIGluc3RlYWQgb2Yg
YSB2b2lkIHBvaW50ZXIuIFRoaXMgY2hhbmdlCj4gPiA+IGltcHJvdmVzIHR5cGUgc2FmZXR5IGFu
ZCBjb2RlIHJlYWRhYmlsaXR5IGJ5IGV4cGxpY2l0bHkgc3BlY2lmeWluZwo+ID4gPiB0aGUgZXhw
ZWN0ZWQgZGF0YSB0eXBlLgo+ID4gPgo+ID4gPiBSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPiA+ID4gU2lnbmVkLW9m
Zi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21haWwuY29tPgo+ID4gPiAtLS0KPiA+ID4g
djc6IE5vbmUKPiA+ID4gdjY6IEZpeCB0aGUgc3ViamVjdCwgYWRkIHRoZSBtaXNzaW5nICgpIGlu
IHRoZSBmdW5jdGlvbiBuYW1lLgo+ID4KPiA+IERpZCB5b3UgcmVtb3ZlIGl0IGluIHY3PyBQbGVh
c2UgZG9uJ3QgZG8gdGhhdCwgaXQganVzdCBpbmNyZWFzZXMgdGhlIGJ1cmRlbiBvbgo+ID4gcmV2
aWV3ZXJzLgo+ID4KPiA+IC0gTWFuaQo+IEVhcmxpZXIsIGl0IHdhcyByZXBvcnRlZCB0aGF0IGZ1
bmN0aW9uICgpIHNob3VsZCBiZSB1c2VkIGluIHRoZSBmdW5jdGlvbiBuYW1lLgoKSG1tLiBXaHkg
Y2FuJ3QgeW91IGRvIHRoZSBzYW1lIGZvciB0aGUgZGVzY3JpcHRpb24gYWxzbz8KCi0gTWFuaQoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
