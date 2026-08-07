Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51BAEC5AC7A
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 13:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=juKIsYGsZkbhLoVcPggCr2I5BRjG1R4NSfRgKFZCefE=; b=pdGAyqQDUgk3Z8
	rlHFtL2m2VxhYr9t3NGVK2hQXHAGWszj6uW1gXoySHS/Adv7FA7q70NKdPbzv7ffUYH0xe90YKcvG
	lQ9VCKjoAiDDE4datwd0sCvvD4Ot1o3ocqpbkObh+M7HWiSwqhurYrvpz3a0oqQpRfWPqRIaChquA
	cvPYYtVtU0zOFnOM1FG5h6+t4h29tJ25VrztVdehdNfDSN78BqisTD7Quglnp5P7gRkyS4OX345Kk
	NzgodOdrUGLcpd6X7tKBOFibxwOlZP6lbPBTO6L263FepUyRYRIiCytdJ+/KcQ5SqcgjjRWdns7J1
	0rcVFqwye0q7v0G3MsDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKHe-000000084IO-0J5G;
	Fri, 07 Aug 2026 13:06:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKHb-000000084Hg-3lUq;
	Fri, 07 Aug 2026 13:06:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A31C34345F;
	Fri,  7 Aug 2026 13:06:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB9EA1F00A3D;
	Fri,  7 Aug 2026 13:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786108003;
	bh=CXX/Bi8Y2FZ+7Zdt7AeANTyk7dP+AYybMHHS1M7s9UI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jB5AKa1RZSweMdUxxv8J2cI0Ho2q0FBsVIRIEYWCk+E5dtyVi32TlQYUJIS3EWbmB
	 w1zIEGR53974J0EaffMzxeAFInGoWGzdaHJt/FZn5/i8kB24IHB/faGq4tGAF+CyXa
	 uigl9xliuwzWaqDHPNIlN6E982qwb59vPEShKBGnWWINQkdmDLyP0oULKdBsSmdNvk
	 Lj0qXQINua0YX4YWD1KR0G7lV5sggdy8QA6Ako4rB7zubH3lXJRzggONFi2i1U41H6
	 Pj7PGA3WwcMPano9kIUUQfbpCxCKtQLFUyVVqL35R7KDAOJMgO+ZxW2sKenxcvLR+g
	 tgGcrJt39PQXg==
Date: Fri, 7 Aug 2026 15:06:34 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Thomas =?utf-8?Q?Niederpr=C3=BCm?= <dubito@online.de>, Simon Wright <simon@symple.nz>, 
	Diederik de Haas <diederik@cknow-tech.com>, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v5 06/10] phy: rockchip: samsung-hdptx: Drop TMDS rate
 setup workaround
Message-ID: <igbrec5wab2rzoq54pzsh22hdxb6tfg6tpqenyu2zuorsjxcbz@rwwrayoovxxm>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-6-8e786067865f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-hdptx-clk-fixes-v5-6-8e786067865f@collabora.com>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6NDE6NDlQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+IFNpbmNlIGNvbW1pdCBiYTljMmZlMThjMTcgKCJkcm0vcm9ja2NoaXA6IGR3
X2hkbWlfcXA6IFN3aXRjaCB0bwo+IHBoeV9jb25maWd1cmUoKSIpIHRoZSBUTURTIHJhdGUgc2V0
dXAgZG9lc24ndCByZWx5IGFueW1vcmUgb24gdGhlCj4gdW5jb252ZW50aW9uYWwgdXNhZ2Ugb2Yg
dGhlIGJ1cyB3aWR0aCwgaW5zdGVhZCBpdCBpcyBtYW5hZ2VkIGV4Y2x1c2l2ZWx5Cj4gdGhyb3Vn
aCB0aGUgSERNSSBQSFkgY29uZmlndXJhdGlvbiBBUEkuCj4gCj4gRHJvcCB0aGUgbm93IG9ic29s
ZXRlIHdvcmthcm91bmQgdG8gcmV0cmlldmUgdGhlIFRNRFMgY2hhcmFjdGVyIHJhdGUgdmlhCj4g
cGh5X2dldF9idXNfd2lkdGgoKSBkdXJpbmcgcG93ZXJfb24oKS4KPiAKPiBUZXN0ZWQtYnk6IFRo
b21hcyBOaWVkZXJwcsO8bSA8ZHViaXRvQG9ubGluZS5kZT4KPiBUZXN0ZWQtYnk6IFNpbW9uIFdy
aWdodCA8c2ltb25Ac3ltcGxlLm56Pgo+IFRlc3RlZC1ieTogRGllZGVyaWsgZGUgSGFhcyA8ZGll
ZGVyaWtAY2tub3ctdGVjaC5jb20+ICAjIE5hbm9QQy1UNiBMVFMKPiBSZXZpZXdlZC1ieTogQW5k
eSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFu
IENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1i
eTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxj
b21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTg
rr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
