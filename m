Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAC89C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jan 2022 17:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3nGYL9UFfijYKY8RlVbzy/cR3AOJqfU6uFCCzSFnl8=; b=1D/4bLX4RP6Az+
	EUnaOe8X5/mjlf9ppLDHkx5rv6PFnUMK4dGLA6bmdIZl39/0/nH9/66qORakb5Jle+MgNGiopthlV
	E+C6SpdSIUvkxIoLxQiYHjwCeP370N6f6VYezr+586/tLdJrte1LZM0JEzmqTkEtV/WnmNb8sxusH
	scKuw9P9EFXUwqb/Abpbwq1JCyYbiLoJzupegUyrztYot7JN6fdFAHdYIx7C0Gyp1iRS5R2E4Wqox
	HITAkjWzc9b7B95NBKdYnQgFU/NYOQkwGlYDjuZIBebGdBiBhY31YzF4pVvgKIlVEdrYbujtS1XlQ
	qs4W7lLYo3ny9jfr1qFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8Qo5-009ywr-Ns; Fri, 14 Jan 2022 17:56:09 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Qo3-009ywE-9b; Fri, 14 Jan 2022 17:56:08 +0000
Received: by mail-lf1-x12b.google.com with SMTP id x22so32593957lfd.10;
 Fri, 14 Jan 2022 09:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=I8hcofcLYD+Zpm5J0maGDlJJKWipNGz/q/C4EW7Hvh8=;
 b=kp4cXZBX/aQFlQodYxApNBklNJKixR8jnBHVFEmL/B1DSfx9L5Smn/SSPket0SNZ/C
 Gu7K4ILGsEXn5F1G8a4B1tPKVG+lGoqfxyjdPDC+rIbcYJUDQgribnP4ulHeJEQ0Fe8Y
 0oWCvVwOGgSVCxGg8u1qC+52p0andGU1L4YaHYnEbltBgd2BXWtNJFQmatyz6M6veMOf
 RuAadUjG5TEhgLS4efBFvKSG5mTcYuPwaj9SXcOVla8XAZfjQz8heowzgiEftTe7iTYW
 iYJlio93NEVZ1I0Lyq4LM5d1ODkgG5Y6DbRcqZ/gr7Mjc1vMRUUdAUJUf/2n7pUBCM5g
 qSWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=I8hcofcLYD+Zpm5J0maGDlJJKWipNGz/q/C4EW7Hvh8=;
 b=CH4QJwqbBsCPnk6dHDEDmJunqfMMnZfsPAHXeJUQKVfVKgxBuafvYeaPJnzeS8d+Hn
 RDstSEGz3fE6ZSgSe/y931jil9zbkxeLOX8PFAa9cgRG1jgXRxrO2kSlGzA3sheQrGG+
 HU3x3S74OjKW2rdQ/kMY8mvHbmxIlAQUWJZYYEDR6YaktnQoLB7rG1L07Mh3ZbOyDFp+
 fSBBrP2W0jRRx8EohfvtSYQ1CM80BO6h/Qlq1SQpOoyLo025Vs8pKAc1bRebGghuBhhD
 l499OiqR+Mw+eSorRSlHdQbvEKbyeL0L64wOoWAKrI6QHtOCug1n7Ct+364n1DWtEHSd
 WIiA==
X-Gm-Message-State: AOAM533/NRMm/HKHhDiQ5Q9jy/PUYny363xNXGR7sOjd9qJ1MFeCkMHk
 EoMYyfcRAIksUFU+JsRnDGnYoUmVI9A=
X-Google-Smtp-Source: ABdhPJyTW+5UwoYjNipAZmvmCmGzRo7aTk2SYc+F3kvAVXytxsSgHRB1o8u7jRFQ6LpxtDWk5J5yiQ==
X-Received: by 2002:a2e:bba0:: with SMTP id y32mr7190379lje.24.1642182965558; 
 Fri, 14 Jan 2022 09:56:05 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id g26sm644542lfb.105.2022.01.14.09.56.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jan 2022 09:56:05 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Enable the GPU on Quartz64
 Model A
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <d2d54776-b4ee-2cda-334d-f868a6bbdf8b@arm.com>
Date: Fri, 14 Jan 2022 18:56:03 +0100
Cc: Alex Bee <knaerzche@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-rockchip@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Message-Id: <37D4623A-2DEA-4CA6-8DD8-1E3E88CBB250@gmail.com>
References: <20211126151729.1026566-1-knaerzche@gmail.com>
 <20211126151729.1026566-5-knaerzche@gmail.com>
 <EB2E04F1-BACA-4A4F-97F9-0257F29D57B5@gmail.com>
 <d2d54776-b4ee-2cda-334d-f868a6bbdf8b@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_095607_355031_1638CB49 
X-CRM114-Status: UNSURE (   8.32  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5
QGFybS5jb20+IHcgZG5pdSAxNC4wMS4yMDIyLCBvIGdvZHouIDE3OjQyOgo+IAo+PiAKPiAKPiA1
MTcgaXMgRVBST0JFX0RFRkVSLCB3aGljaCBpbXBsaWVzIGl0J3Mgd2FpdGluZyBmb3IgdGhlIHJl
bGV2YW50IGNsb2NrIHByb3ZpZGVyIHRvIHNob3cgdXAuIEkgc2VlIGZyb20gcGF0Y2ggIzIgdGhh
dCBTQ01JIGlzIGludm9sdmVkLCBzbyBJJ2QgY2hlY2sgdGhhdCB0aGF0J3Mgd29ya2luZyBhbmQg
eW91IGhhdmUgQ09ORklHX0NPTU1PTl9DTE9DS19TQ01JIGVuYWJsZWQuCj4gCj4gUm9iaW4uCgpS
b2JpbiwKCk1hbnkgdGh4IQpJbmRlZWQgaXNzdWUgd2FzIHdpdGggU0NNaSBDTEsuCk5vdyBpIHNl
ZToKClsgICAgMy4wOTIzNTBdIHBhbmZyb3N0IGZkZTYwMDAwLmdwdTogY2xvY2sgcmF0ZSA9IDU5
NDAwMDAwMApbICAgIDMuMDkyOTA2XSBwYW5mcm9zdCBmZGU2MDAwMC5ncHU6IGJ1c19jbG9jayBy
YXRlID0gNTAwMDAwMDAwClsgICAgMy4xMzgzNDBdIHBhbmZyb3N0IGZkZTYwMDAwLmdwdTogY2xv
Y2sgcmF0ZSA9IDU5NDAwMDAwMApbICAgIDMuMTM4OTA0XSBwYW5mcm9zdCBmZGU2MDAwMC5ncHU6
IGJ1c19jbG9jayByYXRlID0gNTAwMDAwMDAwClsgICAgMy4xNzEyNDRdIHBhbmZyb3N0IGZkZTYw
MDAwLmdwdTogY2xvY2sgcmF0ZSA9IDU5NDAwMDAwMApbICAgIDMuMTcxODg4XSBwYW5mcm9zdCBm
ZGU2MDAwMC5ncHU6IGJ1c19jbG9jayByYXRlID0gNTAwMDAwMDAwCgpnb29kLgoKKHVuZm9ydHVu
YXRlbHkgbWVzYSAyMS4zLjQgc3RpbGwgZ29lcyB3aXRoIGxsdm1waXBlIGJ1dCB0aGlzIHNlZW1z
IHRvIGJlIG90aGVyIGlzc3VlIGkgbmVlZCB0byBpbnZlc3RpZ2F0ZSkKCnRoeCBhZ2FpbiEKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
