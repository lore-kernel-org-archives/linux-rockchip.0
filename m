Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4489CEACEF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 22:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGZKgq70Z/XTL1LxQlCrCu58ktTjroEg73wuke095lg=; b=nHB8UpLWx9IutX
	druX5z1qDR0i3RNcgbr98NS+XTuhm4qNf4Qib7OGRjNjFA5jMaLssbE5riNxxBJChnG3awf4vxsO7
	jYrsIcRhBdmD298+dMrNjJOz1g9kOCdOPfKSRJJ9m4SSNloMQRuOvd9kZmoU2ECXC0WokfAfKjiVE
	4Mh8x5tEQQeDG+hRws0UXni0ePx4bYG2e97SfgCat8lkMV6D43nCApcLE9GL9sdoK2uGKu0iqFJes
	sRf2g+L6Biciv4gE5pbeSIX9W17l/8BPW7O9AIqt+S2/vyhyBdviFs1WvkpamfpxDGFHntCciAWvI
	6TvWZWkw3WDwtzVheKRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL7be-0000000Gwnn-48uB;
	Mon, 17 Nov 2025 22:21:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL7bd-0000000GwnJ-04ip;
	Mon, 17 Nov 2025 22:21:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=MgLSx7e64sWUF9mZjgijgEncCA3Ifjs0gQT6anRu8Go=; b=tk6NOalizXnAmyQ7QCnKbfCYVl
	yD8blSj86GmwPEJJ+W2g5TMggFbNvs9xpzRpEFkd4ttqZ6GJbstDzxWnPayyYyEtpW3ArUWpW1qKg
	F3xiXxC8Q+cNyjJTVGm+uz8BgXdlcH/3sbF+prPJsjEJ/xv+/UEb2eqkbUYO9ei9gNYiMNTEyXBFE
	X2CEQHxRY8XqBv9/D/NTnzE8TK0K/h3it4jEtpya16JSr3m4kL4KTDsdttvu24XxJ714KuQR23Rq9
	YxTGZjRIF2m2J0xwaGqp0QosSjyD6TbsDtjO2RdXZ4LOMYJdKakw2zJOBL+qEVvNrf0plWccFiunX
	eEf43V3g==;
Received: from [31.12.4.86] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vL7bb-0001Qb-8j; Mon, 17 Nov 2025 23:21:51 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip defconfig64 changes for 6.18 #1
Date: Mon, 17 Nov 2025 23:21:50 +0100
Message-ID: <2738363.Lt9SDvczpP@phil>
In-Reply-To: <2101096.usQuhbGJ8B@phil>
References: <2101096.usQuhbGJ8B@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_142153_054044_7AB1DED1 
X-CRM114-Status: GOOD (  12.64  )
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

QW0gTW9udGFnLCAxNy4gTm92ZW1iZXIgMjAyNSwgMjM6MTk6MzAgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBIZWlrbyBTdHVlYm5lcjoKPiBUaGUgZm9sbG93aW5nIGNoYW5n
ZXMgc2luY2UgY29tbWl0IDNhODY2MDg3ODgzOWZhYWRiNGYxYTZkZDcyYzMxNzljMWRmNTY3ODc6
CgpUaGlzIGlzIG1lYW50IGZvciA2LjE5IC4uLiBJIG1lc3NlZCB1cCB0aGUgc3ViamVjdCB3aXRo
IHRoZSB3cm9uZyByZWxlYXNlLgoKU29ycnkgYWJvdXQgdGhhdApIZWlrbwoKCj4gCj4gICBMaW51
eCA2LjE4LXJjMSAoMjAyNS0xMC0xMiAxMzo0MjozNiAtMDcwMCkKPiAKPiBhcmUgYXZhaWxhYmxl
IGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKPiAKPiAgIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC9tbWluZC9saW51eC1yb2NrY2hpcC5naXQgdGFncy92Ni4x
OS1yb2NrY2hpcC1kZWZjb25maWc2NC0xCj4gCj4gZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVw
IHRvIDYwNzA1YjAzOWY5NjAzNzhiYjJhMGE4NDRmOTM3ODY0NmJjMGM2Yzg6Cj4gCj4gICBhcm02
NDogZGVmY29uZmlnOiBlbmFibGUgcm9ja2NoaXAgY2FtZXJhIGludGVyZmFjZSAoMjAyNS0xMS0x
NiAwMDozNDoyNyArMDEwMCkKPiAKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gUm9ja2NoaXAgc3VwcG9ydCBmb3IgYmFz
aWMgY2FtZXJhIGludGVyZmFjZSAoQ0lGKSBhbmQgU3lub3BzaXMgRFctRFAKPiBkcml2ZXIsIGFz
IHdlbGwgYXMgdGhlIENFQyBleHRlbnNpb24gdG8gdGhlIERXLUhETUktUVAgZHJpdmVyLgo+IAo+
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiBBbmR5IFlhbiAoMSk6Cj4gICAgICAgYXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxl
IFJvY2tjaGlwIGV4dGVuc2lvbnMgZm9yIFN5bm9wc3lzIERXIERQCj4gCj4gQ3Jpc3RpYW4gQ2lv
Y2FsdGVhICgxKToKPiAgICAgICBhcm02NDogZGVmY29uZmlnOiBFbmFibGUgRFcgSERNSSBRUCBD
RUMgc3VwcG9ydAo+IAo+IE1pY2hhZWwgUmllc2NoICgxKToKPiAgICAgICBhcm02NDogZGVmY29u
ZmlnOiBlbmFibGUgcm9ja2NoaXAgY2FtZXJhIGludGVyZmFjZQo+IAo+ICBhcmNoL2FybTY0L2Nv
bmZpZ3MvZGVmY29uZmlnIHwgMyArKysKPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KQo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
