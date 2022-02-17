Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91CCCC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 16:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebWLboeRNUm4RKhKW+R1IUtQSHaTCOxF9CNrudJo4pw=; b=O65hbypJsSFMjT
	rQlt2pKSXfBK35Q7ZSsqt1HxezT+3BdnPnm+Po2Fj9RBQ9LbOyR0P96hmw2Nn3Zp6uQx+tRFz0Hqt
	OI1xU7OTfalb3bd45oZ+C+56MPC2cK/oagpx6OR1sOTyqWwe/8wvr0efhp/94cdpkJ3kYVQ3K7m+p
	SfiPAJnaWrVz7sMsqsoCN5CYsUWEjI1Iqcf+Yvj9ILsNWSXvS61O7M7zDVXRrAtLnUtV9K+eP3++1
	1S1eABS+kCejPVdc3+Z5Gb7zZpIUeUGOqHI+gkp+k6ovw1g57zMxvNVAyaE1L7t7x2j+adWLZao8i
	DRLx2a72ulF46chGU6+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKk87-00BWQD-AM; Thu, 17 Feb 2022 16:59:43 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKk7u-00BWOz-H4; Thu, 17 Feb 2022 16:59:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id BF5F11F46169
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1645117168;
 bh=h7AJTVAuzazEP/DL/m+GeC4fCl6qypW09UJ/r563xOo=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=GmtpIfjXozt247NQrOj8RTlTJN5EWtAHsFkWp/WST3gsK5nJDY5EfOz6inSHULUVT
 qonh/z+mv7dh9xhb1vPfxszQxZmeOhMU+4QRgF148mpoqT4xN65LhbPd2RgxAQ1LE9
 jp9NZ2+Ck3aGXv95kAfke7W6XZnPuf9h9/gE7otG1rDPszdP0zJS2G7Z5kLrSGWA/H
 qsknMpMhN0+ZqGDr5EAFRSitFybFpglvUxsyXHGQFWmaR9LiJlk8H/3FgD0aH9MBDm
 OLTjuFlO8TpXQx9XiSD+7x87VPMqHMPmAn71/3Uh4m34NxavQYLOSp88Fd7YrO8TBe
 gNpeVpJCvf4sA==
Message-ID: <15952d98-960b-76b7-4e74-257d0e069f74@collabora.com>
Date: Thu, 17 Feb 2022 19:59:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 09/23] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, Dmitry Osipenko <digetx@gmail.com>
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, kernel@pengutronix.de,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Peter Geis <pgwipeout@gmail.com>, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-10-s.hauer@pengutronix.de>
 <cd66c9da-15c2-54e1-8016-8d951926eaa2@gmail.com>
 <20220217150041.GS18637@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220217150041.GS18637@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_085930_798304_197CEF56 
X-CRM114-Status: GOOD (  13.75  )
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

MTcuMDIuMjAyMiAxODowMCwgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4gT24gVGh1LCBGZWIg
MTcsIDIwMjIgYXQgMDM6MzU6MDhQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+PiAx
Ny4wMi4yMDIyIDExOjI5LCBTYXNjaGEgSGF1ZXIg0L/QuNGI0LXRgjoKPj4+IFRoZSByazM1Njgg
SERNSSBoYXMgYW4gYWRkaXRpb25hbCBjbG9jayB0aGF0IG5lZWRzIHRvIGJlIGVuYWJsZWQgZm9y
IHRoZQo+Pj4gSERNSSBjb250cm9sbGVyIHRvIHdvcmsuIFRoZSBwdXJwb3NlIG9mIHRoYXQgY2xv
Y2sgaXMgbm90IGNsZWFyLiBJdCBpcwo+Pj4gbmFtZWQgImhjbGsiIGluIHRoZSBkb3duc3RyZWFt
IGRyaXZlciwgc28gdXNlIHRoZSBzYW1lIG5hbWUuCj4+Cj4+IEhhdmUgeW91IGNoZWNrZWQgdGhh
dCBEU0kgd29ya3Mgd2l0aG91dCB0aGUgZW5hYmxlZCBoY2xrPyBJJ2QgZXhwZWN0IHRoZQo+PiB3
aG9sZSBWT1AgdG8gYmUgY2xvY2stZ2F0ZWQuCj4gCj4gTm8sIEkgaGF2ZW4ndCBjaGVja2VkIHRo
YXQuCj4gCj4gSSBhbSBub3Qgc3VyZSB3aGVyZSB5b3UgYWltaW5nIGF0LiBUaGUgSENMS19WT1Ag
aXMgc3VwcGxpZWQgdG8gdGhlIHZvcDIKPiBhcyB3ZWxsIGFuZCB0aGUgdm9wMiBkcml2ZXIgYWxz
byBlbmFibGVzIHRoaXMgY2xvY2suIFN0aWxsLCB3aGVuIHRoZQo+IEhETUkgcmVnaXN0ZXJzIGFy
ZSBhY2Nlc3NlZCBiZWZvcmUgdGhlIHZvcDIgZHJpdmVyIGVuYWJsZXMgSENMS19WT1AgdGhlbgo+
IHRoZSBzeXN0ZW0gaGFuZ3MsIHNvIHRoZSBIRE1JIG5lZWRzIGl0IGFsc28uCgpIRE1JLCBNSVBJ
IGFuZCBldGMgYXJlIGEgcGFydCBvZiBWT1AuIEknbSBjdXJpb3VzIHdoZXRoZXIgTUlQSSBzaG91
bGQKYWxzbyBoYW5nLCBhdCBsZWFzdCBkYXRhc2hlZXQgc3VnZ2VzdHMgdGhhdCBpdCBzaG91bGQg
c2luY2UgaGNsayB1bmdhdGVzCnRoZSBBSEIgcGFydCBvZiB0aGUgVk9QJ3MgaC93IG1vZHVsZSwg
d2hpY2ggaXMgdXNlZCBmb3IgcmVnaXN0ZXJzIGFjY2Vzcy4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
